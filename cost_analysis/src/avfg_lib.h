#ifndef AVFG_LIB
#define AVFG_LIB
#include "parse.h"
using namespace SVF;
using namespace llvm;

class FuncExpr{
public:
	std::vector<bool> used;  		 
	std::shared_ptr<ExprVFG> expr;
	std::vector<std::shared_ptr<VarFieldVFG>> fields;	
	std::map<int, std::vector<FieldIndex>> param_field;
	FuncExpr(){
	}
	FuncExpr(std::shared_ptr<ExprVFG> func_expr){
		expr = func_expr;
	}
};


class VisitedRecord{
public:
	const VFGNode* node; 		 
	int call_index;
	VisitedRecord(){
		node = 0;
		call_index = 0;
	}
	VisitedRecord(const VFGNode* node_in, int call_index_in){
		node = node_in;
		call_index = call_index_in;
	}
	bool operator== (const VisitedRecord &b) const{
        if(node == b.node){
            if(call_index == b.call_index)
                return true;
        }
        return false;
    }

    bool operator< (const VisitedRecord &b) const{
        if(node == b.node){
            return call_index < b.call_index;
        }
        return node < b.node;
    }
};


class AllocCall{      		
    const SVFFunction* F;
    const ICFGNode* call_site;
    int times;

public:
	std::vector<const VFGNode*> paramlist;
	AllocCall(){
		times = 1;
		F = 0;
	}
	AllocCall(const SVFFunction* func, const ICFGNode* site){
		times = 1;
		F = func;
		call_site = site;
	}
	const SVFFunction* getFunction(){
		return F;
	}
	const ICFGNode* getCallSite(){
		return call_site;
	}
};


class AVFG{
	const SVFFunction* F;
public:
	FIFOWorkList<const VFGNode*> worklist;
	std::map<const VFGNode*, bool> paramlist;    
	std::map<const VFGNode*, std::vector<FieldIndex>> param_field;
	std::vector<std::shared_ptr<VarFieldVFG>> fields;	
	std::vector<AllocCall> calllist;		
	std::map<const VFGNode*, std::shared_ptr<ExprVFG>> expr_map;   
	std::map<const ICFGNode*, std::shared_ptr<ExprVFG>> cfg_expr; 
	std::map<const ICFGNode*, const ICFGNode*> cfg_depend;
	std::map<const ICFGNode*, std::vector<std::shared_ptr<ExprVFG>>> expr_depend; 
	std::vector<const VFGNode*> param_vector;				
	AVFG(){}
	AVFG(const SVFFunction* F): F(F){}
	const SVFFunction* getFunction(){
		return F;
	}
};





extern std::map<const std::string, const SVFFunction*> func_map;
extern std::map<const std::string, std::set<const SVFFunction*>> trait_map;
extern std::map<const SVFFunction*, FuncExpr> funcs_expr;
extern std::set<const SVFFunction*> oom_safe_function;
extern const SVFFunction* rust_alloc_function;
extern const SVFFunction* umul_function;
extern const SVFFunction* uadd_function;
extern const SVFFunction* i64_ctlz_function;
extern bool debug_flag;


#endif