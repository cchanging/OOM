#![feature(as_array_of_cells)]
#![feature(try_reserve_kind)]
use proc_macro::TokenStream;
use quote::{quote, ToTokens};
use std::collections::HashSet as Set;
use syn::fold::{self, Fold};
use syn::parse::{Parse, ParseStream, Result};
use syn::punctuated::Punctuated;
use syn::{parse_macro_input, parse_quote, Type, Expr, Ident, ItemFn, Local, Pat, Stmt, Token};
use std::fs;
use rustc_demangle::demangle;
use proc_macro2::Span;
use std::str::FromStr;
use std::collections::HashMap;
use std::collections::TryReserveError;
use std::collections::TryReserveErrorKind::CapacityOverflow;

struct Args{
    vars:Set<Ident>
}

impl Parse for Args{
    fn parse(input: ParseStream) -> Result<Self> {
        let vars = Punctuated::<Ident, Token![,]>::parse_terminated(input)?;
        Ok(Args {
            vars: vars.into_iter().collect(),
        })
    }
}

impl Args {
    fn should_print_expr(&self, e: &Expr) -> bool {
        match *e {
            Expr::Path(ref e) => {
 // variable shouldn't start wiht ::
                if e.path.leading_colon.is_some() {
                    false
// should be a single variable like `x=8` not n::x=0 
                } else if e.path.segments.len() != 1 {
                    false
                } else {
// get the first part
                    let first = e.path.segments.first().unwrap();
// check if the variable name is in the Args.vars hashset
                    self.vars.contains(&first.ident) && first.arguments.is_empty()
                }
            }
            _ => false,
        }
    }

// used for checking if to print let i=0 etc or not
    fn should_print_pat(&self, p: &Pat) -> bool {
        match p {
// check if variable name is present in set
            Pat::Ident(ref p) => self.vars.contains(&p.ident),
            _ => false,
        }
    }

// manipulate tree to insert print statement
    fn assign_and_print(&mut self, left: Expr, op: &dyn ToTokens, right: Expr) -> Expr {
 // recurive call on right of the assigment statement
        let right = fold::fold_expr(self, right);
// returning manipulated sub-tree
        parse_quote!({
            #left #op #right;
            println!(concat!(stringify!(#left), " = {:?}"), #left);
        })
    }

// manipulating let statement
    fn let_and_print(&mut self, local: Local) -> Stmt {
        let Local { pat, init, .. } = local;
        let init = self.fold_expr(*init.unwrap().1);
// get the variable name of assigned variable
        let ident = match pat {
            Pat::Ident(ref p) => &p.ident,
            _ => unreachable!(),
        };
// new sub tree
        parse_quote! {
            let #pat = {
                #[allow(unused_mut)]
                let #pat = #init;
                println!(concat!(stringify!(#ident), " = {:?}"), #ident);
                #ident
            };
        }
    }
}

impl Fold for Args {
    fn fold_expr(&mut self, e: Expr) -> Expr {
        match e {
// for changing assignment like a=5
            Expr::Assign(e) => {
// check should print
                if self.should_print_expr(&e.left) {
                    self.assign_and_print(*e.left, &e.eq_token, *e.right)
                } else {
// continue with default travesal using default methods
                    Expr::Assign(fold::fold_expr_assign(self, e))
                }
            }
// for changing assigment and operation like a+=1
            Expr::AssignOp(e) => {
// check should print
                if self.should_print_expr(&e.left) {
                    self.assign_and_print(*e.left, &e.op, *e.right)
                } else {
// continue with default behaviour
                    Expr::AssignOp(fold::fold_expr_assign_op(self, e))
                }
            }
// continue with default behaviour for rest of expressions
            _ => fold::fold_expr(self, e),
        }
    }

// for let statements like let d=9
    fn fold_stmt(&mut self, s: Stmt) -> Stmt {
        match s {
            Stmt::Local(s) => {
                if s.init.is_some() && self.should_print_pat(&s.pat) {
                    self.let_and_print(s)
                } else {
                    Stmt::Local(fold::fold_local(self, s))
                }
            }
            _ => fold::fold_stmt(self, s),
        }
    }
}


fn print_type(this_type: &Type, result: bool) -> Option<Type>{
    match this_type {
        syn::Type::Path(array) => {
            let first = array.path.segments.first().unwrap();
            //println!("PATH: {:?}", &first.ident);
            if result == true{
                return Some(this_type.clone());
            }
            let call_ident = Ident::new("Result", first.ident.span());
            if(first.ident == call_ident){
                match first.arguments{
                    syn::PathArguments::AngleBracketed(ref a) =>{
                        if let syn::GenericArgument::Type(b) = a.args.last().unwrap(){
                            return print_type(b, true);
                        }
                    }
                    _ => {}
                }
            }
            else{
                //println!("Warning: The return type of oom_safe function must be Result<>.");
                return None;
            }
        }
        _ => {
            //println!("Warning: The return type of oom_safe function must be Result<>.");
        }
    }
    return None;
}

static mut handle_flag:bool = false;

enum ExprAST {
    Constant(ConstantExprAST),
    Variable(VariableExprAST),
    Binary(BinaryExprAST),
    Field(FieldExprAST),
    Phi(PhiExprAST),
}

enum Tmp {
    Const(i64),
    Variable(Ident),
}

impl ToTokens for Tmp{
    fn to_tokens(&self, tokens: &mut proc_macro2::TokenStream) {
        match self{
            Tmp::Const(ref a) => {
                a.to_tokens(tokens);
            }
            Tmp::Variable(ref a) => {
                a.to_tokens(tokens);
            }
        }
    }
}

struct ConstantExprAST{
    val: i64,
}

impl ConstantExprAST{
    fn new(val:i64)->ConstantExprAST{
        ConstantExprAST{
            val:val,
        }
    }
}

struct VariableExprAST{
    offset: usize,
    index: usize,
    def: usize,
    size: usize,
}

impl VariableExprAST{
    fn new(offset:usize, index:usize, def:usize, size:usize)->VariableExprAST{
        VariableExprAST{
            offset: offset,
            index: index,
            def: def,
            size: size,
        }
    }
}

struct BinaryExprAST{
    op: char,
    LHS: Box<ExprAST>,
    RHS: Box<ExprAST>,
}

impl BinaryExprAST{
    fn new(op: char, LHS: Box<ExprAST>, RHS: Box<ExprAST>)->BinaryExprAST{
        BinaryExprAST{
            op: op,
            LHS: LHS,
            RHS: RHS,
        }
    }
}

struct FieldInfo{
    offset: usize,
    size: usize,
    def: usize,
}

struct FieldExprAST{
    def: usize,
    index: usize,
    fields: Vec<FieldInfo>,
}

impl FieldExprAST{
    fn new(def:usize, index:usize, fields:Vec<FieldInfo>)->FieldExprAST{
        FieldExprAST{
            def: def,
            index: index,
            fields: fields,
        }
    }
}

struct PhiExprAST{
    phi: Vec<Box<ExprAST>>,
}

impl PhiExprAST{
    fn new(phi: Vec<Box<ExprAST>>)->PhiExprAST{
        PhiExprAST{
            phi: phi,
        }
    }
}

struct Count{
    v: usize
}



unsafe fn parseConstant(input: &Vec<char>, siter: &mut Count)->Box<ExprAST>{
    siter.v = siter.v + 2;
    let mut end = siter.v;
    while input[end] != ')'{
        end = end + 1;
    } 
    let string = &input.iter().collect::<String>();
    let value = i64::from_str(&string[siter.v..end]).unwrap();
    siter.v = end + 1;
    return Box::new(ExprAST::Constant(ConstantExprAST::new(value)));
}

unsafe fn parseVariable(input: &Vec<char>, siter: &mut Count)->Box<ExprAST>{
    siter.v = siter.v + 4;
    let string = &input.iter().collect::<String>();
    let mut end = siter.v;
    while input[end] != '-'{
        end = end + 1;
    } 
    let def = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
    siter.v = end + 5;
    end = siter.v;
    while input[end] != '-'{
        end = end + 1;
    } 
    let index = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
    siter.v = end + 1;
    end = siter.v;
    while input[end] != '-'{
        end = end + 1;
    } 
    let offset = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
    siter.v = end + 1;
    end = siter.v;
    while input[end] != ')'{
        end = end + 1;
    } 
    let current_size = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
    siter.v = end + 1;
    return Box::new(ExprAST::Variable(VariableExprAST::new(offset, index, def, current_size)));
}

unsafe fn parseBinaryOp(input: &Vec<char>, siter: &mut Count)->Box<ExprAST>{
    let LHS = parseExpr(input, siter);
    let op = input[siter.v];
    siter.v = siter.v+1;
    let RHS = parseExpr(input, siter);
    siter.v = siter.v+1;
    return Box::new(ExprAST::Binary(BinaryExprAST::new(op,LHS,RHS)));
}

unsafe fn parseFields(input: &Vec<char>, siter: &mut Count)->Box<ExprAST>{
    siter.v = siter.v+4;
    let string = &input.iter().collect::<String>();
    let mut end = siter.v;
    while input[end] != '-'{
        end = end + 1;
    } 
    let def = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
    siter.v = end + 5;
    end = siter.v;
    while input[end] != '-'{
        end = end + 1;
    } 
    let index = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
    let mut fields = Vec::<FieldInfo>::new();
    while input[end] != ')'{
        siter.v = end + 1;
        end = siter.v;
        while input[end] != '-'{
            end = end + 1;
        } 
        let offset = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
        siter.v = end + 1;
        end = siter.v;
        while input[end] != '-'{
            end = end + 1;
        } 
        let size = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
        siter.v = end + 2;
        end = siter.v;
        while input[end] != '-' && input[end] != ')' {
            end = end + 1;
        } 
        let sub_def = std::str::FromStr::from_str(&string[siter.v..end]).unwrap();
        fields.push(FieldInfo{offset:offset, size:size, def:sub_def});
    }
    siter.v = end + 1;
    return Box::new(ExprAST::Field(FieldExprAST::new(def, index, fields)));
}

unsafe fn parsePhi(input: &Vec<char>, siter: &mut Count)->Box<ExprAST>{
    siter.v = siter.v + 2;
    let mut phi = Vec::<Box<ExprAST>>::new();
    while(input[siter.v] != ')'){
        phi.push(parseExpr(input, siter));
    }
    siter.v = siter.v + 1;
    return Box::new(ExprAST::Phi(PhiExprAST::new(phi)));
}

unsafe fn parseExpr(input: &Vec<char>, siter: &mut Count)->Box<ExprAST>{
    siter.v = siter.v+1;
    if input[siter.v] == '('{
        return parseBinaryOp(input, siter);
    } 
    if input[siter.v] == 'c'{
        return parseConstant(input, siter);
    }
    if input[siter.v] == 'v'{
        return parseVariable(input, siter);
    }
    if input[siter.v] == 'f'{
        return parseFields(input, siter);
    }
    if input[siter.v] == 'p'{
        return parsePhi(input, siter);
    }
    else{
        println!("ERROR!");
        return Box::new(ExprAST::Constant(ConstantExprAST::new(0)));
    }
}

fn output(args: &Vec::<&Ident>, args_type: &Vec::<&Type>, slot: &Box<ExprAST>, stmt: &mut Vec::<Stmt>, count: &mut Count)->Tmp{
    match **slot{
        ExprAST::Constant(ref constant) => {
            return Tmp::Const(constant.val)
        }
        ExprAST::Variable(ref variable) => {
            let p = count.v.to_string();
            let name_temp = String::from("test");
            let name = name_temp + &p;
            let t1 = Ident::new(&name, Span::call_site());
            count.v = count.v + 1;
            let param = args[variable.index];
            let param_type = args_type[variable.index];
            let mut types: Type = parse_quote! {*const u8};
            let mut cast_types: Type = parse_quote! {*const #param_type};
            let offset = variable.offset/8;
            for i in 0..variable.def{
                types = parse_quote!{*const #types};
            }
            let mut expr: Expr = parse_quote! {&#param as #cast_types as #types};
            for i in 0..variable.def{
                expr = parse_quote!{*(#expr)};
            }
            expr = parse_quote!{(#expr).add(#offset)};
            if variable.size == 32{
                expr = parse_quote!{(#expr) as *const i32};
            } 
            else{
                expr = parse_quote!{(#expr) as *const i64};
            }
            stmt.push(
                parse_quote! {
                    let #t1 = unsafe{*(#expr) as i64};
                }
            );
            return Tmp::Variable(t1);
        }
        ExprAST::Binary(ref binary) => {
            let LHS = output(args, args_type, &binary.LHS, stmt, count);
            let RHS = output(args, args_type, &binary.RHS, stmt, count);
            let p = count.v.to_string();
            let name_temp = String::from("test");
            let name = name_temp + &p;
            let t1 = Ident::new(&name, Span::call_site());
            count.v = count.v + 1;
            match binary.op{
                '+' => {
                    stmt.push(
                        parse_quote! {
                            let #t1 = #LHS + #RHS;
                        }
                    );
                    return Tmp::Variable(t1);
                }
                '*' => {
                    stmt.push(
                        parse_quote! {
                            let #t1 = #LHS * #RHS;
                        }
                    );
                    return Tmp::Variable(t1);
                }
                '-' => {
                    stmt.push(
                        parse_quote! {
                            let #t1 = #LHS as i64 - #RHS as i64;
                        }
                    );
                    return Tmp::Variable(t1);
                }
                '/' => {
                    stmt.push(
                        parse_quote! {
                            let #t1 = #LHS / #RHS;
                        }
                    );
                    return Tmp::Variable(t1);
                }
                '|' => {
                    stmt.push(
                        parse_quote! {
                            let #t1 = #LHS | #RHS;
                        }
                    );
                    return Tmp::Variable(t1);
                }
                '&' => {
                    stmt.push(
                        parse_quote! {
                            let #t1 = #LHS & #RHS;
                        }
                    );
                    return Tmp::Variable(t1);
                }
                '^' => {
                    stmt.push(
                        parse_quote! {
                            let #t1 = #LHS ^ #RHS;
                        }
                    );
                    return Tmp::Variable(t1);
                }
                _ => {
                    println!("BINARY ERROR!");
                }
            }
        }
        ExprAST::Field(ref field) => {
            let p = count.v.to_string();
            let name_temp = String::from("test");
            let name = name_temp + &p;
            let t1 = Ident::new(&name, Span::call_site());
            count.v = count.v + 1;
            let param = args[field.index];
            let param_type = args_type[field.index];
            let mut types: Type = parse_quote! {*const u8};
            let mut cast_types: Type = parse_quote! {*const #param_type};
            for i in 0..field.def{
                types = parse_quote!{*const #types};
            }
            let mut expr: Expr = parse_quote! {&#param as #cast_types as #types};
            for i in 0..field.def{
                expr = parse_quote!{*(#expr)};
            }
            for iter in &field.fields{
                let offset = iter.offset/8;
                let def = iter.def;
                expr = parse_quote!{(#expr as *const u8).add(#offset)};
                if iter.size == 32{
                    expr = parse_quote!{(#expr) as *const u32};
                } 
                else{
                    expr = parse_quote!{(#expr) as *const u64};
                }
                for i in 0.. iter.def{
                    expr = parse_quote!{*(#expr)};
                }
            }
            expr = parse_quote!{*(#expr)};
            stmt.push(
                parse_quote! {
                    let #t1 = unsafe{#expr as i64};
                }
            );
            return Tmp::Variable(t1);
        }
        ExprAST::Phi(ref phi) => {
            if phi.phi.len() != 2{
                println!("ERROR!PHILEN");
            }
            let value1 = output(args, args_type, &phi.phi[0], stmt, count);
            let value2 = output(args, args_type, &phi.phi[1], stmt, count);
            let p = count.v.to_string();
            let name_temp = String::from("test");
            let name = name_temp + &p;
            let t1 = Ident::new(&name, Span::call_site());
            count.v = count.v + 1;
            stmt.push(
                parse_quote! {
                    let #t1 = std::cmp::max(#value1, #value2);
                }
            );
            return Tmp::Variable(t1);
        }
    }
    return Tmp::Variable(Ident::new("hh", Span::call_site()));
}

fn read_file(fname: &str)->Option<Vec<Box<ExprAST>>>{
    let text_try = fs::read_to_string("/home/cj/OOM/cost_analysis/result");
    if !(text_try.is_ok()){
        return None;
    }
    let text = text_try.unwrap();
    let v: Vec<&str> = text.split('\n').collect();
    let mut vec = Vec::<&str>::new();
    for iter in v{
        if let Some(a) = iter.get(..12){
            if a == "OOM_Function"{
                vec.push(iter);
            }
        }
    }
    for iter in vec{
        let tv: Vec<&str> = iter.get(12..).unwrap().split('~').collect();
        print!("{:?}", demangle(tv[0]).to_string());
        let temp = demangle(tv[0]).to_string();
        let func_name: Vec<&str> = temp.split("::").collect();
        let function_name = func_name[1];
        println!("{:?}", function_name);
        if function_name != fname{
            continue;
        }
        let mut func_expr:Vec<Box<ExprAST>> = Vec::new();
        let slot: Vec<&str> = tv[1].split('|').collect();
        for i in 0..slot.len()-1{
            println!("{:?}", slot[i]);
            let input: Vec<char> = slot[i].chars().collect();
            unsafe{
                let mut siter = Count{v:0};
                let expr = parseExpr(&input, &mut siter);
                func_expr.push(expr);
            }
        }
        return Some(func_expr);
    }
    return None;
} 


#[proc_macro_attribute]
pub fn oom_safe(args: TokenStream, input: TokenStream) -> TokenStream{
    // unsafe{
    //     if(handle_flag == false){
    //         handle_flag = true;
    //         read_file();
    //     }
    // }
    let mut input = parse_macro_input!(input as ItemFn);
    //let mut args = parse_macro_input!(args as Args);
    let mut additional_stmt = Vec::<Stmt>::new();
    let mut args = Vec::<&Ident>::new();
    let mut args_type = Vec::<&Type>::new();
    let param_input = &input.sig.inputs;
    let function_name = &input.sig.ident.to_string();
    println!("begin {:?}:",function_name);
    let iters = param_input.iter();
    for iter in iters{
        if let syn::FnArg::Typed(a) = &iter{
            if let syn::Pat::Ident(b) = &*a.pat{
                let c = &b.ident;
                args.push(c);
                additional_stmt.push(
                    parse_quote! {
                        OOMGuardAllocator::my_wrap(& #c);
                    }
                );
                additional_stmt.push(
                    parse_quote! {
                        OOMGuardAllocator::my_wrap_end(& #c);
                    }
                );
            }
            args_type.push(&*a.ty);
        }
    }


    //handle return type check 
    //-----------------------------------
    let return_type = &input.sig.output;
    let mut result_ident : Option<Type> = None;
    unsafe{
        match return_type{
            syn::ReturnType::Default =>{
                println!("default return");
            }
            syn::ReturnType::Type(a, b) =>{
                if let Some(result) = print_type(&b, false){
                    result_ident = Some(result);
                }
            }
            _ => {}
        }
    }
    if let None = result_ident{
        println!("Warning: The return type of oom_safe function must be Result<>.");
    }
    else{
        let ident = result_ident.unwrap();
        let sig_generics = &mut input.sig.generics;
        let where_clause = {
            if let None = sig_generics.where_clause{
                sig_generics.make_where_clause()
            }
            else{
                match &mut sig_generics.where_clause {
                    Some(where_clause) => where_clause,
                    None => unreachable!(),
                }
            }
        };
        where_clause.predicates.push(
            parse_quote! {
                #ident : From<TryReserveError>
            }
        );
    }

    let func_expr = read_file(&function_name);
    if let Some(expr) = func_expr{
        let slots_num = expr.len();
        additional_stmt.push(
            parse_quote! {
                let mut arr:[i32;#slots_num] = [0;#slots_num];
            }
        );
        additional_stmt.push(
            parse_quote! {
                let hh = 0;
            }
        );
        for index in 0..slots_num{
            let mut count = Count{v:0};
            let slot = &expr[index];
            let value = output(&args, &args_type, slot, &mut additional_stmt, &mut count);
            // additional_stmt.push(
            //     parse_quote! {
            //         println!("we got {}", #value);
            //     }
            // );
            additional_stmt.push(
                parse_quote! {
                    arr[#index] = #value as i32;
                }
            );
        }
        additional_stmt.push(
            parse_quote! {
                let allocator_reservation = ALLOCATOR.reservation(&arr as *const i32, #slots_num as usize)?;
            }
        );
    }
    
    additional_stmt.append(&mut input.block.stmts);
    input.block.stmts = additional_stmt;
    TokenStream::from(quote!(#input))
}



#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        let result = 2 + 2;
        assert_eq!(result, 4);
    }
}
