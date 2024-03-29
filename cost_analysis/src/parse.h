#ifndef PARSE
#define PARSE
using namespace SVF;
using namespace llvm;


class FieldIndex{
	public:
		int index;
		int pre_size;
		int size;
	FieldIndex(){
		index = 0;
		pre_size = 0;
		size = 0;
	}
	FieldIndex(int index,
            int pre_size,
            int size):index(index), pre_size(pre_size),size(size){}
};

int calculateSize(Type* ty);

class FieldTransform{
public:
	int index;
	std::shared_ptr<std::vector<FieldIndex>> fields;
	const VFGNode* param;

	FieldTransform(){
		index = 0;
  	}

	FieldTransform(int index, std::shared_ptr<std::vector<FieldIndex>> fields, const VFGNode* param) 
	: index(index), fields(std::move(fields)), param(param){}

  int get_def(){
    auto val_type = param->getValue()->getType();
		int def_num = 0;
		while(val_type->isPointerTy()){
			val_type = val_type->getPointerElementType();
			def_num++;
		}
    return def_num;
  }

	void output(){
		auto val_type = param->getValue()->getType();
		int def_num = 0;
		while(val_type->isPointerTy()){
			val_type = val_type->getPointerElementType();
			def_num++;
		}
		std::cout << "(var_field: *-"<< def_num<<"-arg_" <<  index;
    std::cout << "size "<< fields->size();
		if(fields->size() > 0){
			int temp_def_num = 0;
			int offset = 0;
			vector<FieldIndex>::iterator iter;
			vector<FieldIndex>::iterator eiter;
			for(iter = fields->begin(), eiter = fields->end(); iter != eiter;){
				if(!(val_type->isStructTy()) || val_type->getStructNumElements() <= (*iter).index){
					std::cout << endl << "Error: variable_field" << endl;
					break;
				}
				val_type = val_type->getStructElementType((*iter).index);
        offset += (*iter).pre_size;

				while(val_type->isPointerTy()){
					val_type = val_type->getPointerElementType();
					temp_def_num++;
				}

				int current_size = iter->size; 
				if(temp_def_num > 0){
					current_size = calculateSize(val_type);
				}

				iter++;
				if(temp_def_num > 0 || iter == eiter){
					std::cout << "-" << offset << "-" << current_size << "-*" << temp_def_num;
					temp_def_num = 0;
					offset = 0;
				}
				//std::cout << "." << (*iter).index; 
			}
		}
		std::cout << ")";
	}
};

extern std::map<const SVFFunction*, std::map<int, FieldTransform>> param_transforms;
extern std::map<Type*, int> type_cost;


int calculateSize(Type* ty){
    if(type_cost.find(ty) != type_cost.end()){
        return type_cost[ty];
    }
    if(ty->getPrimitiveSizeInBits() > 0){
        int result = ty->getPrimitiveSizeInBits();
        type_cost[ty] = result;
        return result;
    }
    if(llvm::ArrayType::classof(ty)){
        int result = ty->getArrayNumElements() * calculateSize(ty->getArrayElementType());
        type_cost[ty] = result;
        return result;
    }
    if(llvm::PointerType::classof(ty)){
        type_cost[ty] = 64;
        return 64;
    }
    if(llvm::StructType::classof(ty)){
        if(ty->getStructNumElements() == 0){
          type_cost[ty] = 0;
          return 0;
        }
        int result = 0;
        int max = 0;
        for(Type::subtype_iterator ib = ty->subtype_begin(), ie = ty->subtype_end(); 
        ib != ie; ib++){
            int temp = calculateSize(*ib);
            if(temp > max)
              max = temp;
            result += temp;
        }
        //result = ((result+max-1) / max) * max;
        type_cost[ty] = result;
        return result;
    }
    if(llvm::FixedVectorType::classof(ty)){
        std::cout << "vectorType" << endl;
        int result = ty->getArrayNumElements() * calculateSize(ty->getArrayElementType());
        std::cout << "vectorType:" << result << endl;
        type_cost[ty] = result;
        return result;
    }
    if(llvm::ScalableVectorType::classof(ty)){
        std::cout << "ScalarVector:" << endl;
        type_cost[ty] = ty->getScalarSizeInBits();
        return ty->getScalarSizeInBits();
    }
    type_cost[ty] = 0;
    return 0;
}

int calculatePreSize(Type* ty, int index){
    int pre_size = 0;
    int count = 0;
    for(Type::subtype_iterator ib = ty->subtype_begin(), ie = ty->subtype_end();
        ib != ie; ib++){
        if(count >= index)
            break;
        count++;
        pre_size += calculateSize(*ib);
    }
    return pre_size;
}



int calculateOffset(std::vector<FieldIndex>* fields);

enum ExprTypes {
  expr_null = 0,
  expr_constant = 1,
  expr_variable = 2,
  expr_binary = 3,
  expr_none = 4,
  expr_phi = 5,
  expr_var_field = 6,
  expr_cfg_phi = 7,
  expr_loop_none = 8,
};


class ExprVFG {
protected:
  ExprTypes type;
public:
  ExprVFG() {
    type = expr_null;
  }
  virtual ~ExprVFG() = default;
  virtual void output(){}
  virtual void transform(std::map<int, FieldTransform>* param_transform){}
  virtual bool isZero(){return true;}
  virtual long getVal(){ return 0;}
  virtual void setVal(const VFGNode* node){ return;}
  ExprTypes getKind(){
    return type;
  };

  virtual std::shared_ptr<ExprVFG> simplify();
  virtual bool exist_none();
  virtual bool exist_loop(const VFGNode* node);
  virtual bool exist_binary(const VFGNode* node);
  virtual std::shared_ptr<ExprVFG> clone();
  virtual std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src);
  virtual void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr);
};

bool equal_field(std::shared_ptr<ExprVFG> LHS, std::shared_ptr<ExprVFG> RHS);
bool less_field(std::shared_ptr<ExprVFG> LHS, std::shared_ptr<ExprVFG> RHS);




/// constant
class ConstantVFG : public ExprVFG {
  double val;

public:
  ConstantVFG(){
    val = 0.0;
    type = expr_constant;
  }
  ConstantVFG(double val) : val(val){
    type = expr_constant;
  }
  bool isZero(){return val == 0;}
  bool exist_none(){return false;}
  bool exist_binary(const VFGNode* node){return false;}
  bool exist_loop(const VFGNode* node){return false;}
  long getVal() override{
    return val;
  }
  void transform(std::map<int, FieldTransform>* param_transform) override{}
  void output() override{
    std::cout << "(c:" << val << ")";
  }
  std::shared_ptr<ExprVFG> simplify(){
    return std::make_shared<ConstantVFG>(val);
  }
  std::shared_ptr<ExprVFG> clone(){
    return std::make_shared<ConstantVFG>(val);
  }
  std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src){
      return std::make_shared<ConstantVFG>(val);
  }
  void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    fold_expr->push_back(std::make_shared<ConstantVFG>(val));
  }
};


class NoneVFG : public ExprVFG {
  double val;
  
public:
  const VFGNode* vals;
  NoneVFG(){
    val = 0;
    type = expr_none;
    vals = 0;
  }

  NoneVFG(const VFGNode* vals_1){
    val = 0;
    vals = vals_1;
    type = expr_loop_none;
  }

  void output() override{
    if(type == expr_loop_none){
      std::cout << "(LoopNone)";
      if(vals != 0)
        std::cout <<vals->toString();
    }
    else
      std::cout << "(None)";
  }
  
  void transform(std::map<int, FieldTransform>* param_transform) override{}
  bool isZero(){return true;}
  bool exist_none(){return true;}
  bool exist_binary(const VFGNode* node){
    if (node == vals){
      vals = 0;
    }
    return false;
  }
  bool exist_loop(const VFGNode* node){
    if (node == vals){
      return true;
    }
    else{
      return false;
    }
  }

  std::shared_ptr<ExprVFG> simplify(){
    if(vals == 0 && type == expr_loop_none){
      return std::make_shared<ConstantVFG>(0);
    }
    return std::make_shared<NoneVFG>();
  }
  std::shared_ptr<ExprVFG> clone(){
    return std::make_shared<NoneVFG>();
  }
  std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src){
    return std::make_shared<NoneVFG>();
  }

  void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    fold_expr->push_back(std::make_shared<NoneVFG>());
  }
};

///variable
class VariableVFG : public ExprVFG {
public:
  int def;
  int index;
  const VFGNode* val;
  int offset;
  int actual_size;

public:
  VariableVFG(){
    def = -1;
    index = -1;
    actual_size = -1;
    val = 0;
    type = expr_variable;
    offset = 0;
  }
  bool isZero(){return val == 0;}
  bool exist_none(){return false;}
  bool exist_binary(const VFGNode* node){return false;}
  bool exist_loop(const VFGNode* node){return false;}
  VariableVFG(const VFGNode* val) : val(val){
    def = -1;
    index = -1;
    actual_size = -1;
    type = expr_variable;
    offset = 0;
  }

  VariableVFG(const VFGNode* val, int offset, int actual_size) : val(val), offset(offset), actual_size(actual_size){
    def = -1;
    index = -1;
    type = expr_variable;
  }

  long getVal() override{
    return val->getId();
  }
  void output() override{
    auto val_type = val->getValue()->getType();
    int def_num = 0;
    while(val_type->isPointerTy()){
      val_type = val_type->getPointerElementType();
      def_num++;
    }
    if(def != -1)
      def_num = def;
    int current_size = 0;
    if(actual_size != -1)
      current_size = actual_size;
    else
      current_size = calculateSize(val_type);
    const Argument* argument = SVFUtil::dyn_cast<Argument>(val->getValue());
    int output_index = argument->getArgNo();
    if(index != -1)
      output_index = index;
    std::cout << "(v:*-"<< def_num<<"-arg_" <<  output_index <<"-" << offset << "-" << current_size << ")";
  }
  
  int getNo(){
    const Argument* argument = SVFUtil::dyn_cast<Argument>(val->getValue());
    return argument->getArgNo();
  }

  std::shared_ptr<ExprVFG> simplify(){
    return std::make_shared<VariableVFG>(val, offset, actual_size);
  }
  std::shared_ptr<ExprVFG> clone(){
    return std::make_shared<VariableVFG>(val, offset, actual_size);
  }

  void transform(std::map<int, FieldTransform>* param_transform){
    const Argument* argument = SVFUtil::dyn_cast<Argument>(val->getValue());
    int key = argument->getArgNo();
    auto info = (*param_transform)[key];
    index = info.index;
    def = info.get_def()-1;
    if(info.fields->size() > 0){
      for(auto iter : *(info.fields)){
        offset += iter.pre_size;
      }
    }
  }

  std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src){
    if (val->getId() == src->getVal()){
      return dst;
    }
    else{
      return std::make_shared<VariableVFG>(val, offset, actual_size);
    }
  }
  void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    fold_expr->push_back(std::make_shared<VariableVFG>(val, offset, actual_size));
  }
};

//variable field
class VarFieldVFG : public ExprVFG {
public:
  int def;
  int index;
  const VFGNode* val;
  const VFGNode* param;
  std::shared_ptr<std::vector<FieldIndex>> fields; //改双向队列


  VarFieldVFG(){
    def = -1;
    index = -1;
    val = 0;
    param = 0;
    type = expr_var_field;
  }
  bool isZero(){return param == 0;}
  bool exist_none(){
    if(!param) return true;
    return false;
  }
  bool exist_binary(const VFGNode* node){return false;}
  bool exist_loop(const VFGNode* node){return false;}
  const VFGNode* getVFG() {
    return val;
  }
  const VFGNode* getParam() {
    return param;
  }
  std::shared_ptr<std::vector<FieldIndex>> getfield() {
    return fields;
  }

  VarFieldVFG(const VFGNode* val, std::shared_ptr<std::vector<FieldIndex>> fields) 
  : val(val), fields(std::move(fields)){
    def = -1;
    index = -1;
    type = expr_var_field;
    param = 0;
  }

    VarFieldVFG(const VFGNode* val, const VFGNode* param, std::shared_ptr<std::vector<FieldIndex>> fields) 
  : val(val), param(param), fields(std::move(fields)){
    def = -1;
    index = -1;
    type = expr_var_field;
    param = 0;
  }
  long getVal() override{
    return val->getId();
  }
  void setVal(const VFGNode* node) override{
    if(param == 0)
      param = node;
    return;
  }
  void output() override{
    if(!param){
      std::cout << "(f:None)";
      return;
    }

    auto val_type = param->getValue()->getType();
    int def_num = 0;
    while(val_type->isPointerTy()){
      val_type = val_type->getPointerElementType();
      def_num++;
    }
    if(def != -1)
      def_num = def;
    const Argument* argument = SVFUtil::dyn_cast<Argument>(param->getValue());
    int output_index = argument->getArgNo();
    if(index != -1)
      output_index = index;
    std::cout << "(f:*-"<< def_num<<"-arg_" <<  output_index;
    if(fields->size() > 0){
      int temp_def_num = 0;
      int offset = 0;
      vector<FieldIndex>::iterator iter;
      vector<FieldIndex>::iterator eiter;
      for(iter = fields->begin(), eiter = fields->end();
      iter != eiter;){
        if(!(val_type->isStructTy())){
          std::cout << "-" << 0 << "-" << iter->size << "-*" << 0;
          iter++;
          continue;
        }
        if(val_type->getStructNumElements() <= (*iter).index){
          std::cout << endl << "Error: variable_field" << (*iter).index << endl;
          break;
        }
        val_type = val_type->getStructElementType((*iter).index);
        offset += (*iter).pre_size;
        while(val_type->isPointerTy()){
          val_type = val_type->getPointerElementType();
          temp_def_num++;
        }

        int current_size = iter->size; 
        if(temp_def_num > 0){
          current_size = calculateSize(val_type);
        }

        iter++;
        if(temp_def_num > 0 || iter == eiter){
          std::cout << "-" << offset << "-" << current_size << "-*" << temp_def_num;
          temp_def_num = 0;
          offset = 0;
        }
        //std::cout << "." << (*iter).index; 
      }
    }
    std::cout << ")";
  }
  
  std::shared_ptr<ExprVFG> simplify(){
    return std::make_shared<VarFieldVFG>(val, param, fields);
  }

  std::shared_ptr<ExprVFG> clone(){
    std::vector<FieldIndex> fields_clone;
    int size = fields->size();
    for(vector<FieldIndex>::iterator iter = fields->begin(), eiter = fields->end();
    iter != eiter; iter++){
      fields_clone.push_back(*iter);
    }
    auto fields_temp = make_shared<std::vector<FieldIndex>>(fields_clone);
    return std::make_shared<VarFieldVFG>(val, param, fields_temp);
  }

  void transform(std::map<int, FieldTransform>* param_transform){
    if(!param) return;
    const Argument* argument = SVFUtil::dyn_cast<Argument>(param->getValue());
    int key = argument->getArgNo();
    auto info = (*param_transform)[key];
    index = info.index;
    def = info.get_def()-1;
    if(info.fields->size() > 0){
      std::vector<FieldIndex> fields_append;
      for(auto iter = info.fields->begin(), eiter = info.fields->end(); iter != eiter;){
        fields_append.push_back(*iter);
      }
      for(auto iter = fields->begin(), eiter = fields->end(); iter != eiter;){
        fields_append.push_back(*iter);
      }
      fields = make_shared<std::vector<FieldIndex>>(fields_append);
    }
  }

  std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src){
    if(src->getKind() != expr_var_field)
      return std::make_shared<VarFieldVFG>(val, param, fields);
    std::shared_ptr<VarFieldVFG> src_field = std::static_pointer_cast<VarFieldVFG>(src);
    if (val == src_field->getVFG() && src_field->getfield()->size() == fields->size()){
      int size = fields->size();
      bool equal_flag = true;
      for(vector<FieldIndex>::iterator iter = fields->begin(), src_iter = src_field->getfield()->begin();
      ; iter++, src_iter++, size--){
        if(size == 0){
          break;
        }
        if((*iter).index != (*src_iter).index){
          equal_flag = false;
          break;
        } 
      }
      if(equal_flag)
        return dst;
    }
    return std::make_shared<VarFieldVFG>(val, param, fields);
  }

  void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    fold_expr->push_back(std::make_shared<VarFieldVFG>(val, param, fields));
  }
};


class BinaryVFG : public ExprVFG {
  std::shared_ptr<ExprVFG> LHS, RHS;
  
public:
  char op;
  BinaryVFG(){
    type = expr_binary;
    op = '+';
  }
  BinaryVFG(std::shared_ptr<ExprVFG> LH,
            std::shared_ptr<ExprVFG> RH,
            char oper):LHS(std::move(LH)), RHS(std::move(RH)){
        type = expr_binary;
        op = oper;
  }
  
  long getVal() override{
    return LHS->getVal() + op*op + RHS->getVal();
  }
  char get_op(){
    return op;
  }
  std::shared_ptr<ExprVFG> get_LHS(){
    return LHS;
  }
  std::shared_ptr<ExprVFG> get_RHS(){
    return RHS;
  }
  bool exist_none(){return LHS->exist_none() || RHS->exist_none();}
  bool exist_loop(const VFGNode* node){return LHS->exist_loop(node) || RHS->exist_loop(node);}
  bool exist_binary(const VFGNode* node){
    return LHS->exist_loop(node) || RHS->exist_loop(node);
  }
  void output() override{
    std::cout << "(";
    LHS->output();
    if(op == '#')
      std::cout << '#';
    else
      std::cout << op;
    RHS->output();
    std::cout << ")";
  }

  void setVal(const VFGNode* node) override{
    LHS->setVal(node);
    RHS->setVal(node);
    return;
  }
  void push_to_vector(std::vector<std::shared_ptr<ExprVFG>> *input_vec){
    if(LHS->getKind() == expr_binary){
      std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(LHS);
      if(binary->op == '#'){
        binary->push_to_vector(input_vec);
      }
      else{
        input_vec->push_back(LHS);
      }
    }
    else{input_vec->push_back(LHS);}

    if(RHS->getKind() == expr_binary){
      std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(RHS);
      if(binary->op == '#'){
        binary->push_to_vector(input_vec);
      }
      else{
        input_vec->push_back(RHS);
      }
    }
    else{input_vec->push_back(RHS);}
    
  }
  bool isZero(){return LHS->isZero() && RHS->isZero();}
  std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src){
    return std::make_shared<BinaryVFG>(LHS->replace(dst,src), RHS->replace(dst,src), op);
  }

  std::shared_ptr<ExprVFG> clone(){
    return std::make_shared<BinaryVFG>(LHS->clone(), RHS->clone(), op);
  }

  void transform(std::map<int, FieldTransform>* param_transform){
    LHS->transform(param_transform);
    RHS->transform(param_transform);
  }

  std::shared_ptr<ExprVFG> simplify(){
    if(LHS->getKind() == expr_binary || expr_phi || expr_cfg_phi){
      LHS = move(LHS->simplify());
    }
    if(RHS->getKind() == expr_binary || expr_phi || expr_cfg_phi){
      RHS = move(RHS->simplify());
    }
    switch (op)
    {
      case '-':{
        //if(LHS->getKind() == expr_var_field && RHS->getKind() == expr_var_field){
          if(equal_field(LHS, RHS)){
            return make_shared<ConstantVFG>(0);
          }
        //}
      }
      case '+':
      {
        if (LHS->getKind() == expr_constant && LHS->isZero())
          return RHS;
        if (RHS->getKind() == expr_constant && RHS->isZero())
          return LHS;
        break;
      }
      case '/':
      {
        if (LHS->getKind() == expr_constant && LHS->isZero())
          return make_shared<ConstantVFG>(0);
        break;
      }
      case '}':
      case '>':
      case '<':
      {
        if (RHS->getKind() == expr_constant && RHS->isZero())
          return LHS;
        break;
      }
      case '#':
      {
        if (LHS->getKind() == expr_constant && LHS->isZero())
          return RHS;
        if (RHS->getKind() == expr_constant && RHS->isZero())
          return LHS;
        break;
      }
      case 'x':
      {
        if (LHS->getKind() == expr_constant && LHS->isZero()
        || RHS->getKind() == expr_constant && RHS->isZero())
          return std::make_shared<ConstantVFG>(0);
        
        if (LHS->getKind() == expr_constant && LHS->getVal() == 1){
          return RHS;
        }
        if (RHS->getKind() == expr_constant && RHS->getVal() == 1){
          return LHS;
        }
        if(LHS->getKind() == expr_binary){
          std::shared_ptr<BinaryVFG> LHS_binary = std::static_pointer_cast<BinaryVFG>(LHS);
          if(LHS_binary->get_op() == 'x'){
            auto RHS_new = std::make_shared<BinaryVFG>(LHS_binary->get_RHS(), RHS, '*');
            auto LHS_new = LHS_binary->get_LHS();
            RHS_new->simplify();
            std::shared_ptr<BinaryVFG> result = std::make_shared<BinaryVFG>(LHS_new, RHS_new, 'x');
            return result;
          }
        }
        break;
      }
      case '*':
      {
        if (LHS->getKind() == expr_constant && LHS->isZero()
        || RHS->getKind() == expr_constant && RHS->isZero())
          return std::make_shared<ConstantVFG>(0);
        
        if (LHS->getKind() == expr_constant && LHS->getVal() == 1){
          return RHS;
        }
        if (RHS->getKind() == expr_constant && RHS->getVal() == 1){
          return LHS;
        }
        if(LHS->getKind() == expr_binary){
          std::shared_ptr<BinaryVFG> LHS_binary = std::static_pointer_cast<BinaryVFG>(LHS);
          if(LHS_binary->get_op() == 'x'){
            auto RHS_new = std::make_shared<BinaryVFG>(LHS_binary->get_RHS(), RHS, '*');
            auto LHS_new = LHS_binary->get_LHS();
            RHS_new->simplify();
            std::shared_ptr<BinaryVFG> result = std::make_shared<BinaryVFG>(LHS_new, RHS_new, 'x');
            return result;
          }
        }
        break;
      }
      default:
      {
        break;
      }
    }
    if(LHS->getKind() == expr_constant && RHS->getKind() == expr_constant){
      switch(op){
        case '+':
          return std::make_shared<ConstantVFG>(LHS->getVal() + RHS->getVal());
          break;
        case '*':
          return std::make_shared<ConstantVFG>(LHS->getVal() * RHS->getVal());
          break;
        case '-':
          return std::make_shared<ConstantVFG>(LHS->getVal() - RHS->getVal());
          break;
        case '|':
          return std::make_shared<ConstantVFG>(LHS->getVal() | RHS->getVal());
          break;
        case '&':
          return std::make_shared<ConstantVFG>(LHS->getVal() & RHS->getVal());
          break;
        case '^':
          return std::make_shared<ConstantVFG>(LHS->getVal() ^ RHS->getVal());
          break;
        case '/':
          return std::make_shared<ConstantVFG>(LHS->getVal() / RHS->getVal());
          break;
        case '<':
          return std::make_shared<ConstantVFG>(LHS->getVal() << RHS->getVal());
          break;
        case '>':
          return std::make_shared<ConstantVFG>(LHS->getVal() >> RHS->getVal());
          break;
        case '}':
        {
          unsigned long temp = LHS->getVal();
          return std::make_shared<ConstantVFG>(temp >> RHS->getVal());
          break;
        }
        case 'c':
        {
          long value = LHS->getVal();
          long number = 0;
          while(value > 0){
            value = value >> 1;
            number += 1;
          }
          return std::make_shared<ConstantVFG>(RHS->getVal()-number); 
        }
        default:
          break;
      }
    }
    return std::make_shared<BinaryVFG>(LHS, RHS, op); //move
  }
  void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    if(op == '#'){
      LHS->foldExpr(fold_expr);
      RHS->foldExpr(fold_expr);
    }
    else{
      fold_expr->push_back(std::make_shared<BinaryVFG>(LHS, RHS, op));
    }
  }
};

//phi
class PHIVFG : public ExprVFG {
public:
  std::shared_ptr<std::vector<std::shared_ptr<ExprVFG>>> exprs;


  PHIVFG(){
    type = expr_phi;
  }
  PHIVFG(std::shared_ptr<std::vector<std::shared_ptr<ExprVFG>>> t_exprs)
     : exprs(std::move(t_exprs)){
       if(exprs->size() == 0){
         std::cout << "size = 0!!!" << endl;
       }
       type = expr_phi;
     }
  
  void output() override{
    std::cout << "(p:";
    for(int i = 0; i < exprs->size(); i++){
      (*exprs)[i]->output();
    }
    std::cout << ")";
  }
  bool isZero(){return false;}
  bool exist_none(){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      if((*exprs)[i]->exist_none()){
        return true;
      }
    }
    return false;
  }
  void setVal(const VFGNode* node) override{
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      (*exprs)[i]->setVal(node);
    }
    return;
  }
  bool exist_loop(const VFGNode* node){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      if((*exprs)[i]->exist_loop(node)){
        return true;
      }
    }
    return false;
  }
  bool exist_binary(const VFGNode* node){ 
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      if((*exprs)[i]->exist_binary(node)){
        return true;
      }
      if((*exprs)[i]->getKind()==expr_loop_none){
        (*exprs)[i] = make_shared<ConstantVFG>(0);
      }
    }
    return false;
  }

  std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      (*exprs)[i] = (*exprs)[i]->replace(dst,src);
    }
    return std::make_shared<PHIVFG>(exprs);
  }

  std::shared_ptr<ExprVFG> clone(){
    std::vector<std::shared_ptr<ExprVFG>> exprs_clone;
    int exprs_size = exprs->size();
    for(int i = 0; i < exprs_size; i++){
      exprs_clone.push_back((*exprs)[i]->clone());
    }
    auto phi_exprs = make_shared<std::vector<std::shared_ptr<ExprVFG>>>(exprs_clone);
    return std::make_shared<PHIVFG>(std::move(phi_exprs));
  }

  void transform(std::map<int, FieldTransform>* param_transform){
    int exprs_size = exprs->size();
    for(int i = 0; i < exprs_size; i++){
      (*exprs)[i]->transform(param_transform);
    }
  }

  void foldphi(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      if((*exprs)[i]->getKind() == expr_phi){
        std::shared_ptr<PHIVFG> phi = std::static_pointer_cast<PHIVFG>((*exprs)[i]);
        phi->foldphi(fold_expr);
      }
      else{
        bool push_flag = true;
        for(auto iter:*fold_expr){
          if(equal_field(iter, (*exprs)[i]) || 
          ((*exprs)[i]->getKind() == expr_constant && (*exprs)[i]->getVal() == 0)){
            push_flag = false;
            break;
          }
        }
        if(push_flag)
          fold_expr->push_back((*exprs)[i]);
      }      
    }
  }

  std::shared_ptr<ExprVFG> simplify(){
    bool flag = true;
    if(exprs->size() == 0){
      std::cout << "size = 0!!!" << endl;
    }
    if(exprs->size() == 1){
      return (*exprs)[0]->simplify();
    }
    std::set<long> contains;
    long max = -1;
    std::vector<std::shared_ptr<ExprVFG>> new_vector;
    for(int i = 0; i < exprs->size(); i++){
      (*exprs)[i] = (*exprs)[i]->simplify();
      if(flag && (*exprs)[i]->getKind() == expr_constant){
        if ((*exprs)[i]->getVal() > max)
          max = (*exprs)[i]->getVal();
      }
      else{
        flag = false;
      }
      //remove duplication
      long target = (long)&*((*exprs)[i]);
      if((*exprs)[i]->getKind() == expr_constant || (*exprs)[i]->getKind() == expr_variable
        || (*exprs)[i]->getKind() == expr_binary || (*exprs)[i]->getKind() == expr_var_field)
        target = (*exprs)[i]->getVal();
      if (contains.find(target) == contains.end()){
        contains.insert(target);
      }
      else if(contains.size() == 1 && i == exprs->size()-1){
        return (*exprs)[i]->simplify();
      }
    }
    if(flag){
      return std::make_shared<ConstantVFG>(max);
    }
    else{
      if(exprs->size() == 2){
        if((*exprs)[0]->getKind() == expr_constant && (*exprs)[0]->getVal() <= 0){
          return (*exprs)[1]->simplify();
        }
        if((*exprs)[1]->getKind() == expr_constant && (*exprs)[1]->getVal() <= 0){
          return (*exprs)[0]->simplify();
        }
      }
      foldphi(&new_vector);
      return std::make_shared<PHIVFG>(std::make_shared<std::vector<std::shared_ptr<ExprVFG>>>(new_vector)); //move
    }
  }



  void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    fold_expr->push_back(std::make_shared<PHIVFG>(exprs));
  }
};

class CFG_PHIVFG : public ExprVFG {
public:
std::shared_ptr<std::vector<std::shared_ptr<ExprVFG>>> exprs;
  CFG_PHIVFG(){
    type = expr_cfg_phi;
  }
  CFG_PHIVFG(std::shared_ptr<std::vector<std::shared_ptr<ExprVFG>>> t_exprs)
  : exprs(std::move(t_exprs)){
    if(exprs->size() == 0){
      std::cout << "size = 0!!!" << endl;
    }
    type = expr_cfg_phi;
  }

  bool exist_none(){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      if((*exprs)[i]->exist_none()){
        return true;
      }
    }
    return false;
  }
  bool exist_loop(const VFGNode* node){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      if((*exprs)[i]->exist_loop(node)){
        return true;
      }
    }
    return false;
  }
  bool exist_binary(const VFGNode* node){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      if((*exprs)[i]->exist_binary(node)){
        return true;
      }
      if((*exprs)[i]->getKind()==expr_loop_none){
        (*exprs)[i] = make_shared<ConstantVFG>(0);
      }
    }
    return false;
  }

  void add_expr(std::shared_ptr<ExprVFG> dst){
    exprs->push_back(dst);
    return;
  }

  void output() override{
    std::cout << "(CFG_PHI:" << "size:" << exprs->size() <<";";
    for(int i = 0; i < exprs->size(); i++){
      (*exprs)[i]->output();
      std::cout << ";";
    }
    std::cout << ")";
  }

  std::shared_ptr<ExprVFG> replace(std::shared_ptr<ExprVFG> dst, std::shared_ptr<ExprVFG> src){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      (*exprs)[i] = (*exprs)[i]->replace(dst,src);
    }
    return std::make_shared<CFG_PHIVFG>(exprs);
  }

  std::shared_ptr<ExprVFG> clone(){
    std::vector<std::shared_ptr<ExprVFG>> exprs_clone;
    int exprs_size = exprs->size();
    for(int i = 0; i < exprs_size; i++){
      exprs_clone.push_back((*exprs)[i]->clone());
    }
    auto phi_exprs = make_shared<std::vector<std::shared_ptr<ExprVFG>>>(exprs_clone);
    return std::make_shared<CFG_PHIVFG>(std::move(phi_exprs));
  }

  void transform(std::map<int, FieldTransform>* param_transform){
    int exprs_size = exprs->size();
    for(int i = 0; i < exprs_size; i++){
      (*exprs)[i]->transform(param_transform);
    }
  }

  std::shared_ptr<ExprVFG> simplify(){
    bool flag = true;
    if(exprs->size() == 0){
      std::cout << "size = 0!!!" << endl;
    }
    if(exprs->size() == 1){
      return (*exprs)[0]->simplify();
    }

    std::set<long> contains;
    long max = -1;
    for(int i = 0; i < exprs->size(); i++){
      (*exprs)[i] = (*exprs)[i]->simplify();
      long target = (long)&*((*exprs)[i]);
      if((*exprs)[i]->getKind() == expr_constant || (*exprs)[i]->getKind() == expr_variable
        || (*exprs)[i]->getKind() == expr_binary || (*exprs)[i]->getKind() == expr_var_field)
        target = (*exprs)[i]->getVal();
      if (contains.find(target) == contains.end()){
        contains.insert(target);
      }
      else if(contains.size() == 1 && i == exprs->size()-1){
        return (*exprs)[i]->simplify();
      }
    }

    if(exprs->size() == 2){
      if((*exprs)[0]->getKind() == expr_constant && (*exprs)[0]->getVal() <= 0){
        return (*exprs)[1]->simplify();
      }
      if((*exprs)[1]->getKind() == expr_constant && (*exprs)[1]->getVal() <= 0){
        return (*exprs)[0]->simplify();
      }
    }

    return std::make_shared<CFG_PHIVFG>(exprs); //move
  }

  void foldExpr(std::vector<std::shared_ptr<ExprVFG>> *fold_expr){
    int count = exprs->size(); 
    for(int i = 0; i < count; i++){
      (*exprs)[i]->foldExpr(fold_expr);
    }
  }
};

bool equal_field(std::shared_ptr<ExprVFG> LHS, std::shared_ptr<ExprVFG> RHS){
  if(LHS->getKind() != RHS->getKind()){
    return false;
  }
  switch (LHS->getKind()){
    case expr_constant:
    {
      return LHS->getVal() == RHS->getVal();
      break;
    }
    case expr_variable:
    { 
      std::shared_ptr<VariableVFG> LHS_V = std::static_pointer_cast<VariableVFG>(LHS);
      std::shared_ptr<VariableVFG> RHS_V = std::static_pointer_cast<VariableVFG>(RHS);
      return LHS_V->actual_size == RHS_V->actual_size && LHS_V->val == RHS_V->val 
            && LHS_V->offset == RHS_V->offset;
      break;
    }
    case expr_binary:
    { 
      std::shared_ptr<BinaryVFG> LHS_B = std::static_pointer_cast<BinaryVFG>(LHS);
      std::shared_ptr<BinaryVFG> RHS_B = std::static_pointer_cast<BinaryVFG>(RHS);
      return equal_field(LHS_B->get_LHS(), RHS_B->get_LHS()) && equal_field(LHS_B->get_RHS(), RHS_B->get_RHS())
            && LHS_B->op == RHS_B->op;
      break;
    }
    case expr_phi:
    { 
      std::shared_ptr<PHIVFG> LHS_P = std::static_pointer_cast<PHIVFG>(LHS);
      std::shared_ptr<PHIVFG> RHS_P = std::static_pointer_cast<PHIVFG>(RHS);
      auto size = LHS_P->exprs->size();
      if(size != RHS_P->exprs->size()){
        return false;
      }
      for(int i = 0; i < size; i++){
        if(!equal_field((*(LHS_P->exprs))[i], (*(RHS_P->exprs))[i]))
          return false;
      }
      return true;
      break;
    }
    case expr_var_field:
    { 
      std::shared_ptr<VarFieldVFG> LHS_field = std::static_pointer_cast<VarFieldVFG>(LHS);
      std::shared_ptr<VarFieldVFG> RHS_field = std::static_pointer_cast<VarFieldVFG>(RHS);
      if(LHS_field->def != RHS_field->def 
      || LHS_field->index != RHS_field->index
      || LHS_field->param != RHS_field->param
      || LHS_field->val != RHS_field->val
      || LHS_field->fields->size() != RHS_field->fields->size())
        return false;
      int size = LHS_field->fields->size();
      for(vector<FieldIndex>::iterator iter = LHS_field->fields->begin(), src_iter = RHS_field->fields->begin();
      ; iter++, src_iter++, size--){
        if(size == 0){
          break;
        }
        if((*iter).index != (*src_iter).index){
          return false;
        } 
      }
      return true;
      break;
    }
    default:
    {
      return false;
      break;
    }
  }
  return false;
}



std::shared_ptr<ExprVFG> parseBinaryOp(std::shared_ptr<ExprVFG> LHS, std::shared_ptr<ExprVFG> RHS, char op){
  switch (op)
  {
    case '+':
    {
      if (LHS->getKind() == expr_constant && LHS->isZero())
        return RHS;
      if (RHS->getKind() == expr_constant && RHS->isZero())
        return LHS;
      break;
    }
    case '/':
    {
      if (LHS->getKind() == expr_constant && LHS->isZero())
        return make_shared<ConstantVFG>(0);
      break;
    }
    case '&':
    {
      if (LHS->getKind() == expr_constant && LHS->getVal() == -1)
        return RHS;
      if (RHS->getKind() == expr_constant && RHS->getVal() == -1)
        return LHS;
      break;
    }
    case '#':
    {
      if (LHS->getKind() == expr_constant && LHS->isZero())
        return RHS;
      if (RHS->getKind() == expr_constant && RHS->isZero())
        return LHS;
      break;
    }
    case '}':
    case '>':
    case '<':
    {
      if (RHS->getKind() == expr_constant && RHS->isZero())
        return LHS;
      break;
    }
    case '*':
    {
      if (LHS->getKind() == expr_constant && LHS->isZero()
      || RHS->getKind() == expr_constant && RHS->isZero())
        return std::make_shared<ConstantVFG>(0);
      
      if (LHS->getKind() == expr_constant && LHS->getVal() == 1){
        return RHS;
      }
      if (RHS->getKind() == expr_constant && RHS->getVal() == 1){
        return LHS;
      }
      break;
    }
    case 'x':
    {
      if (LHS->getKind() == expr_constant && LHS->isZero()
      || RHS->getKind() == expr_constant && RHS->isZero())
        return std::make_shared<ConstantVFG>(0);
      
      if (LHS->getKind() == expr_constant && LHS->getVal() == 1){
        return RHS;
      }
      if (RHS->getKind() == expr_constant && RHS->getVal() == 1){
        return LHS;
      }
      if(LHS->getKind() == expr_binary){
        std::shared_ptr<BinaryVFG> LHS_binary = std::static_pointer_cast<BinaryVFG>(LHS);
        if(LHS_binary->get_op() == '#'){
          auto LHS_new = parseBinaryOp(LHS_binary->get_LHS(), RHS, 'x');
          auto RHS_new = parseBinaryOp(LHS_binary->get_RHS(), RHS, 'x');
          LHS_new->simplify();
          RHS_new->simplify();
          std::shared_ptr<BinaryVFG> result = std::make_shared<BinaryVFG>(LHS_new, RHS_new, '#');
          return result;
        }
      }
      break;
    }
    default:
    {
      break;
    }
  }
  std::shared_ptr<BinaryVFG> result = std::make_shared<BinaryVFG>(LHS, RHS, op);
  return result;
}

int calculateOffset(std::vector<FieldIndex>* fields){
  int offset = 0;
  for(auto iter : *fields){
    offset += iter.pre_size;
  }
  return offset;
}


std::vector<std::shared_ptr<ExprVFG>> split_exprs(std::shared_ptr<BinaryVFG> expr){
  std::vector<std::shared_ptr<ExprVFG>> record;
  expr->push_to_vector(&record);
  return record;
} 

bool findfNone(std::shared_ptr<ExprVFG> expr){
  if(expr->getKind() != expr_phi)
   return false;
  std::shared_ptr<PHIVFG> phi = std::static_pointer_cast<PHIVFG>(expr);
  bool flag = false;
  for(auto iter: *(phi->exprs)){
    if(iter->getKind() == expr_var_field){
      std::shared_ptr<VarFieldVFG> field = std::static_pointer_cast<VarFieldVFG>(iter);
      if(field->getParam() == 0)
        return true;
    }
    flag = flag || findfNone(iter);
    if(flag) return flag;
  }
  return flag;
}

std::shared_ptr<ExprVFG> returnfNone(std::shared_ptr<ExprVFG> expr){
  if(expr->getKind() != expr_phi)
   return make_shared<NoneVFG>();
  std::shared_ptr<PHIVFG> phi = std::static_pointer_cast<PHIVFG>(expr);
  bool flag = false;
  for(auto iter: *(phi->exprs)){
    if(iter->getKind() == expr_var_field){
      std::shared_ptr<VarFieldVFG> field = std::static_pointer_cast<VarFieldVFG>(iter);
      if(field->getParam() == 0)
        return field;
    }
    flag = flag || findfNone(iter);
    if(flag) return make_shared<NoneVFG>();
  }
  return make_shared<NoneVFG>();
}



#endif