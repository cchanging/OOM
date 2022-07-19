//===- svf-ex.cpp -- A driver example of SVF-------------------------------------//
//
//                     SVF: Static Value-Flow Analysis
//
// Copyright (C) <2013->  <Yulei Sui>
//

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//===-----------------------------------------------------------------------===//


#include "Util/SVFUtil.h"
#include "SVF-FE/LLVMUtil.h"
#include "Graphs/SVFG.h"
#include "Graphs/VFG.h"
#include "WPA/Andersen.h"
#include "SVF-FE/SVFIRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Demangle/Demangle.h"
#include <iostream>
#include <stdio.h>
#include <sys/types.h>
#include "parse.h"
#include "handle_constant.h"
#include "handle_VFGNode.h"
#include "avfg_lib.h"
#include <stack>
#include <string>

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

using namespace SVF;
using namespace llvm;
using namespace std;

static llvm::cl::opt<std::string> InputFilename(cl::Positional,
        llvm::cl::desc("<input bitcode>"), llvm::cl::init("-"));

std::map<const std::string, const SVFFunction*> func_map;
std::map<const SVFFunction*, FuncExpr> funcs_expr;
std::map<const std::string, std::set<std::vector<const SVFFunction*>>> trait_map;
std::map<const std::string, std::string> trait_name_map;
const SVFFunction* rust_alloc_function;
const SVFFunction* rust_realloc_function;
const SVFFunction* umul_function;
const SVFFunction* uadd_function;
const SVFFunction* i64_ctlz_function;
std::set<const SVFFunction*> oom_safe_function;
bool debug_flag;
std::map<Type*, int> type_cost;
std::map<const SVFFunction*, std::map<int, FieldTransform>> param_transforms;

 static bool isItaniumEncoding(const char *S) {
   // Itanium encoding requires 1 or 3 leading underscores, followed by 'Z'.
   return std::strncmp(S, "_Z", 2) == 0 || std::strncmp(S, "___Z", 4) == 0;
 }
  
 static bool isRustEncoding(const char *S) { return S[0] == '_' && S[1] == 'R'; }
  
 static bool isDLangEncoding(const std::string &MangledName) {
   return MangledName.size() >= 2 && MangledName[0] == '_' &&
          MangledName[1] == 'D';
 }

std::vector<std::string> stringSplit(const std::string& str, char delim) {
    std::stringstream ss(str);
    std::string item;
    std::vector<std::string> elems;
    while (std::getline(ss, item, delim)) {
        if (!item.empty()) {
            elems.push_back(item);
        }
    }
    return elems;
}

std::string printPts(PointerAnalysis* pta, Value* val)
{

    std::string str;
    raw_string_ostream rawstr(str);

    NodeID pNodeId = pta->getPAG()->getValueNode(val);
    const PointsTo& pts = pta->getPts(pNodeId);
    for (PointsTo::iterator ii = pts.begin(), ie = pts.end();
            ii != ie; ii++)
    {
        rawstr << " " << *ii << " ";
        PAGNode* targetObj = pta->getPAG()->getGNode(*ii);
        if(targetObj->hasValue())
        {
            rawstr << "(" <<*targetObj->getValue() << ")\t ";
        }
    }

    return rawstr.str();

}

/*
	Analysis for callsite. Gain expressions for parameters and performing replacement.  
*/
std::shared_ptr<ExprVFG> parseCallSite(SVFIR *pag, AVFG* avfg, const SVFG *svfg, AllocCall *alloc_call){
	const SVFFunction* call_function = alloc_call->getFunction();
	const ICFGNode* call_site = alloc_call->getCallSite();
	FILOWorkList<CallSiteID> call_stack;
	std::stack<FieldIndex> extract_index;
	if(call_function == rust_alloc_function){
		bool error_flag = false;
		const VFGNode* param = alloc_call->paramlist[0];
		std::shared_ptr<ExprVFG> arg0 = parseVFGNode(param, svfg, avfg, &extract_index, &call_stack, 0, &error_flag);
		return arg0;
	}
	else if(call_function == rust_realloc_function){
		bool error_flag = false;
		const VFGNode* param = alloc_call->paramlist[3];
		std::shared_ptr<ExprVFG> arg3 = parseVFGNode(param, svfg, avfg, &extract_index, &call_stack, 0, &error_flag);
		return arg3;
	}
	else{
		bool error_flag = false;
		FuncExpr& func_expr = funcs_expr[call_function];
		int param_size = alloc_call->paramlist.size();
		std::shared_ptr<ExprVFG> f_expr = func_expr.expr->clone();
		if (pag->hasFunArgsList(call_function)){ 
			auto arg_nodes = pag->getFunArgsList(call_function);
			std::vector<const VFGNode*> temp_vector;
			for(auto iter : arg_nodes){
				temp_vector.push_back(svfg->getDefSVFGNode(iter)); 
			}
			for(int i = 0; i < param_size; i++){
				if (func_expr.used[i] && i < param_size){
					const VFGNode* param = alloc_call->paramlist[i];
					std::stack<FieldIndex> extract_index;
					if(func_expr.param_field.find(i) != func_expr.param_field.end()){
						auto field = func_expr.param_field[i];
						for(vector<FieldIndex>::reverse_iterator iter = field.rbegin(); iter != field.rend(); iter++){
							extract_index.push(*iter);
						}
					}
					//----------------debug output------------------------
					if(debug_flag){
						std::cout << "begin param" << " " << i << ": "<< param->toString() << endl;
					}
					std::shared_ptr<ExprVFG> temp = parseVFGNode(param, svfg, avfg, &extract_index, &call_stack, 0, &error_flag);
					
					if(error_flag)
						break;
					//----------------debug output------------------------
					if(temp->getKind() == expr_binary){
						temp = move(temp->simplify());
					}
					auto param_src = std::make_shared<VariableVFG>(temp_vector[i]);
					
					//----------------debug output------------------------
					if(debug_flag){
						std::cout << "param dest before replace：";
						temp->output();
						std::cout << endl;
						std::cout << "param src before replace：";
						param_src->output();
						std::cout << endl;
						std::cout << "param f_expr before replace：";
						f_expr->output();
						std::cout << endl;
					}

					f_expr = f_expr->replace(temp, param_src);
					f_expr = f_expr->simplify();
					//----------------debug output------------------------
					if(debug_flag){
						std::cout << "param f_expr after replace：";
						f_expr->output();
						std::cout << endl;
					}
				}
			}
		}
		for(auto field : func_expr.fields){  
			if(error_flag)
				break;
			std::stack<FieldIndex> extract_index;
			for(vector<FieldIndex>::reverse_iterator iter = field->getfield()->rbegin(); iter != field->getfield()->rend(); iter++){
				extract_index.push(*iter);
			}
			auto formal_in_node = field->getVFG();
			const VFGNode* next_node = 0;
			for (auto it = formal_in_node->InEdgeBegin(), eit = formal_in_node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				if(SVF::CallIndSVFGEdge::classof(edge)){
					if(edge->getSrcNode()->getFun() == call_site->getFun()){
						next_node = edge->getSrcNode();
						if(next_node->getICFGNode() == call_site){
							break;
						}
					}
				}
			}
			if(next_node == 0){
				std::cout << "Error: can not find callsite" << endl;
				continue;
			}
			//----------------debug output------------------------
			if(debug_flag){
				std::cout << "begin param_field:" << field->getVFG()->toString() << endl;
			}
			std::shared_ptr<ExprVFG> temp = parseVFGNode(next_node, svfg, avfg, &extract_index, &call_stack, 0, &error_flag);
			if(error_flag)
				break;
			if(temp->getKind() == expr_var_field && temp->isZero()){//+ TODO 有可能是phi里面两个field
				const VFGNode *current_param_node = field->getParam();
				for (auto f_it = current_param_node->InEdgeBegin(), f_eit = current_param_node->InEdgeEnd(); f_it != f_eit; ++f_it) {
					auto first_edge = *f_it;
					if(first_edge->isIndirectVFGEdge()){
						continue;
					}
					const VFGNode *param_node = first_edge->getSrcNode();

					std::stack<FieldIndex> record_index;		
					while(!SVF::FormalParmVFGNode::classof(param_node)){//TODO  
						auto old_param = param_node;
						if(debug_flag)
							std::cout << "field param find path:" << param_node->toString() << endl;
						if(param_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Gep){
							const GepVFGNode* gp = static_cast<const GepVFGNode*>(param_node);
							const Instruction *inst = gp->getInst();
							if(llvm::GetElementPtrInst::classof(inst)){
								int index = getGepIndex(param_node);
								const GetElementPtrInst *g_inst = SVFUtil::dyn_cast<GetElementPtrInst>(inst);
								if(index != -1){
									int size = calculateSize(g_inst->getResultElementType());
									int pre_size = calculatePreSize(g_inst->getSourceElementType(), index);
									FieldIndex field_info(index, pre_size, size);
									record_index.push(field_info);
									const PAGNode *pag_node = pag->getGNode(pag->getValueNode(g_inst->getPointerOperand()));
									param_node = svfg->getDefSVFGNode(pag_node);
									continue;
								}
							}
						}
						if(param_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
							const CopyVFGNode* cp = static_cast<const CopyVFGNode*>(param_node);
							const Instruction *inst = cp->getInst();
							if(inst && llvm::BitCastInst::classof(inst)){
								const llvm::BitCastInst *b_inst = SVFUtil::dyn_cast<llvm::BitCastInst>(inst);
								auto src = b_inst->getSrcTy()->getPointerElementType();
								auto dest = b_inst->getDestTy()->getPointerElementType();
								if(src->isStructTy() && src->getStructNumElements() > 0 && src->getStructElementType(0) == dest){
									int dst_type_size = calculateSize(dest);
									FieldIndex field_info(0, 0, dst_type_size);
									record_index.push(field_info);
								}
							}
						}
						for (auto it = param_node->InEdgeBegin(), eit = param_node->InEdgeEnd(); it != eit; ++it) {
							auto edge = *it;
							if(!edge->isIndirectVFGEdge()){
								param_node = edge->getSrcNode();
								break;
							}
						}
						if(old_param == param_node)
							break;
					}
					if(avfg->paramlist.find(param_node) != avfg->paramlist.end()){
						temp->setVal(param_node);
						std::shared_ptr<VarFieldVFG> result = std::static_pointer_cast<VarFieldVFG>(temp);
						if(!record_index.empty()){
							std::stack<FieldIndex> temp_index;
							for(vector<FieldIndex>::reverse_iterator i = result->getfield()->rbegin(); i != result->getfield()->rend(); i++){
								temp_index.push(*i);
							}
							result->getfield()->clear();
							while(!record_index.empty()){
								result->getfield()->push_back(record_index.top());
								record_index.pop();
							}
							while(!temp_index.empty()){
								result->getfield()->push_back(temp_index.top());
								temp_index.pop();
							}
						}
						avfg->fields.push_back(result); //clone?
						break;
					}
					else{
						continue;
					}
				}
				if(temp->isZero()){
					temp = make_shared<NoneVFG>();
				}
			}

			if(temp->getKind() == expr_binary){
				temp = move(temp->simplify());
			}

			//----------------debug output------------------------
			if(debug_flag){
				std::cout << "field dest before replace：";
				temp->output();
				std::cout << endl;
				std::cout << "field src before replace：";
				field->output();
				std::cout << endl;
				std::cout << "f_expr before replace：";
				f_expr->output();
				std::cout << endl;
			}

			f_expr = f_expr->replace(temp, field);
			f_expr = f_expr->simplify();

			//----------------debug output------------------------
			if(debug_flag){
				std::cout << "f_expr after replace：";
				f_expr->output();
			}
		}
		if(error_flag){
			return make_shared<NoneVFG>();
		}
		return f_expr;
	}
}

/*
	Analysis for cfg.
*/
const ICFGNode* parseFunctionCFG(SVFIR *pag, const SVFG *svfg, const ICFGNode *entry, ICFG *icfg, AVFG* avfg, std::set<const SVFFunction*> *target_func){
	FIFOWorkList<const ICFGNode*> worklist;
	std::set<const ICFGNode*> visited;
	avfg->cfg_depend[entry] = entry;
	worklist.push(entry);
	//std::shared_ptr<ExprVFG> result = std::make_shared<ConstantVFG>(0);
	const ICFGNode* exit_node;
	bool oom_safe_flag = false;
	int count_index = 0;
	std::vector<std::string> trait_name_vector;
	std::vector<int> trait_num_vector;
	while (!worklist.empty()) {
		const ICFGNode* i_node = worklist.pop();
		if(CallICFGNode::classof(i_node)){
			ICFGNode::const_iterator it = i_node->OutEdgeBegin();
			const ICFGEdge* edge = *(it);
			const ICFGNode* succ_node = edge->getDstNode();
			const CallICFGNode* call_node = static_cast<const CallICFGNode*>(i_node);
			auto temp_call_site = call_node->getCallSite();
			const CallBase* call_base = static_cast<const CallBase*>(temp_call_site);

			
			if(llvm::Function::classof(call_base->getCalledOperand())){
				const SVFFunction* succ_func = SVF::SVFUtil::getFunction(call_base->getCalledOperand()->getName());
				if(func_map.find(succ_func->getValue()) != func_map.end())
					succ_func = func_map[succ_func->getValue()];
				auto function_name = llvm::demangle(succ_func->getName());
				if(oom_safe_flag == false && function_name.substr(0,17) == "OOMGuardAllocator"){
					oom_safe_function.insert(avfg->getFunction());
					oom_safe_flag = true;
				}
				// if(function_name.find("get_trait_name") != string::npos){
				// 	const ICFGNode* call_site = i_node;
				// 	auto vfg_nodes = call_site->getVFGNodes(); 
				// 	unsigned record = 0;
				// 	for(auto iter : vfg_nodes){
				// 		if(record == 1){
				// 			record++;
				// 			continue;
				// 		}
				// 		if(record == 2){
				// 			FILOWorkList<CallSiteID> call_stack;
				// 			std::stack<FieldIndex> extract_index;
				// 			bool error_flag = false;
 				// 			std::shared_ptr<ExprVFG> arg = parseVFGNode(iter, svfg, avfg, &extract_index, &call_stack, -5000, &error_flag);
				// 			if (arg->getKind() == ExprTypes::expr_variable){
				// 				std::shared_ptr<VariableVFG> v_arg = std::static_pointer_cast<VariableVFG>(arg);
				// 				trait_num_vector.push_back(v_arg->getNo() + 1);
				// 			}
				// 			break;
				// 		}
				// 		if(SVF::ActualParmVFGNode::classof(iter)){
				// 			const VFGEdge *t_edge = *(iter->InEdgeBegin());
				// 			auto next_node = t_edge->getSrcNode();
				// 			t_edge = *(next_node->InEdgeBegin());
				// 			next_node = t_edge->getSrcNode();
				// 			const GlobalVariable* gv = static_cast<const GlobalVariable*>(next_node->getValue());
				// 			auto temp = gv->getInitializer();
				// 			unsigned index = 0;
				// 			auto field = temp->getAggregateElement(index);
				// 			auto trait_name = field->getNameOrAsOperand();
				// 			trait_name_vector.push_back(trait_name.substr(2,trait_name.size()-3));
				// 			record++;
				// 		}
				// 	}
				// }
			
			//if(succ_node->getNodeKind() == SVF::ICFGNode::ICFGNodeK::FunEntryBlock){
			//auto succ_func = succ_node->getFun();
				if((target_func->find(succ_func) != target_func->end()) && (funcs_expr.find(succ_func) != funcs_expr.end())
				&& oom_safe_function.find(succ_func) == oom_safe_function.end()){
					const ICFGNode* call_site = i_node;
					auto vfg_nodes = call_site->getVFGNodes(); 
					AllocCall alloc_call(succ_func, call_site);
					for(auto iter : vfg_nodes){
						if(SVF::ActualParmVFGNode::classof(iter)) 
							alloc_call.paramlist.push_back(iter);
					}
					std::shared_ptr<ExprVFG> call_cost = parseCallSite(pag, avfg, svfg, &alloc_call);
					std::set<const ICFGNode*> depends;
					depends.insert(avfg->cfg_depend[i_node]);
					avfg->cfg_expr[i_node] = std::move(call_cost);
					avfg->cfg_depend[i_node] = i_node;
					avfg->cfg_phi_depend[i_node] = move(make_shared<std::set<const ICFGNode*>>(depends));
				}
			}
			else{
				if(call_base->hasMetadata("dbg")){
					auto meta = call_base->getMetadata("dbg");
					if(DILocation::classof(meta)){
						const DILocation* location = static_cast<const DILocation*>(meta);
						cout << "Line" << location->getLine() << endl;
						cout << "Column" << location->getColumn() << endl;
						auto file = location->getScope()->getFile()->getFilename();
						std::vector<string> file_name = stringSplit(file.str(), '.');
						string filename = file_name[0];
						string key = filename + '_' + to_string(location->getLine()) + '_' + to_string(location->getColumn());
						std::cout << trait_name_map[key] << endl;
					}
				}
				auto called = call_base->getCalledOperand();
				if(llvm::Instruction::classof(called)){
					FILOWorkList<CallSiteID> call_stack;
					std::stack<FieldIndex> extract_index;
					bool error_flag = false;
					const PAGNode *pag_node = pag->getGNode(pag->getValueNode(called));
					auto param_node = svfg->getDefSVFGNode(pag_node);
					std::shared_ptr<ExprVFG> arg = parseVFGNode(param_node, svfg, avfg, &extract_index, &call_stack, -5000, &error_flag);
					int target_index = 0;
					std::shared_ptr<VariableVFG> v_arg = std::static_pointer_cast<VariableVFG>(arg);
					for(int i = 0; i < trait_num_vector.size(); i++){
						if(trait_num_vector[i] == v_arg->getNo()){
							std::cout << trait_name_vector[i] << endl;
							std::set<std::vector<const SVFFunction*>>& trait_set_ref = trait_map[trait_name_vector[i]];
							for(auto iter1 : trait_set_ref){
								for(auto iter2: iter1){
									std::cout << iter2->getValue() << endl;
								}
							}
							break;
						}
					}
				}
			}
		}
		for (ICFGNode::const_iterator it = i_node->OutEdgeBegin(), eit = i_node->OutEdgeEnd(); it != eit; ++it) {
			ICFGEdge* edge = *it;
			const ICFGNode* succ_node = edge->getDstNode();
			if(succ_node == i_node)
				continue;
			if(!CallICFGNode::classof(i_node) && succ_node->getNodeKind() == SVF::ICFGNode::ICFGNodeK::FunExitBlock){
				exit_node = succ_node;
				avfg->cfg_depend[succ_node] = i_node;
				continue;
			}
			if(CallICFGNode::classof(i_node)){
				const CallICFGNode* call_node = static_cast<const CallICFGNode*>(i_node);
				succ_node = call_node->getRetICFGNode();
			}
			if (visited.find(succ_node) == visited.end()) {
				int in_size = 0;
				for (ICFGNode::const_iterator phi_it = succ_node->InEdgeBegin(), phi_eit = succ_node->InEdgeEnd(); phi_it != phi_eit; ++phi_it){
					ICFGEdge* phi_edge = *phi_it;
					ICFGNode* phi_succ_node = phi_edge->getSrcNode();
					if(!FunExitICFGNode::classof(phi_succ_node) && phi_succ_node != succ_node){
						in_size++;
					}
				}
				if(in_size > 1){
					std::set<const ICFGNode*> depends;
					depends.insert(avfg->cfg_depend[i_node]);
					avfg->cfg_depend[succ_node] = succ_node;
					avfg->cfg_phi_depend[succ_node] = move(make_shared<std::set<const ICFGNode*>>(depends));
				}
				else{
					avfg->cfg_depend[succ_node] = avfg->cfg_depend[i_node];
				}
				visited.insert(succ_node);
				worklist.push(succ_node);
			}
			else{
				auto d_node = avfg->cfg_depend[i_node];
				if(avfg->cfg_phi_depend[succ_node]->find(d_node) == avfg->cfg_phi_depend[succ_node]->end())
					avfg->cfg_phi_depend[succ_node]->insert(d_node);
			}
			
		}
	}
	return exit_node;
}

std::shared_ptr<ExprVFG> get_result(int depth, const ICFGNode* node,  AVFG* avfg, FILOWorkList<const ICFGNode*> *depend_stack, bool *error_flag, bool *log_flag){
	if(*error_flag)
		return make_shared<NoneVFG>();
	if(depth > 5000){
		std::cout << "ERROR: get result over depth" << endl;
		*error_flag = true;
		return std::make_shared<NoneVFG>();
	}

	if(depend_stack->find(node)){  
		if(*log_flag == false)
			std::cout << "ERROR: f1 CIRCLE FIND" << endl;
		*log_flag = true;
		return std::make_shared<ConstantVFG>(0);
	}
	depend_stack->push(node);

	if(avfg->cfg_expr.find(node) != avfg->cfg_expr.end()){
		const ICFGNode* succ_node = *(avfg->cfg_phi_depend[node]->begin());
		auto result = get_result(depth+1, succ_node, avfg, depend_stack, error_flag, log_flag);
		depend_stack->pop();
		return parseBinaryOp(result, avfg->cfg_expr[node], '#');
	}
	if (avfg->cfg_phi_depend.find(node) != avfg->cfg_phi_depend.end()){
		std::vector<std::shared_ptr<ExprVFG>> exprs;
		std::vector<const ICFGNode*> temp_record;
		for (auto iter : *(avfg->cfg_phi_depend[node])){
			temp_record.push_back(iter);
		}
		for(auto iter : temp_record){
			if(avfg->cfg_phi_depend[node]->find(iter) == avfg->cfg_phi_depend[node]->end()){
				continue;
			}
			if(depend_stack->find(iter)){  
				if(*log_flag == false)
					std::cout << "ERROR: f2 CIRCLE FIND" << endl;
				avfg->cfg_phi_depend[node]->erase(iter);
				exprs.push_back(std::make_shared<ConstantVFG>(0));
				*log_flag = true;
			}

			std::shared_ptr<ExprVFG> result = get_result(depth+1, iter, avfg, depend_stack, error_flag, log_flag);
			if(!(result->getKind() == expr_constant && result->getVal() == 0)){
				exprs.push_back(std::move(result));
			}
		}
		if(exprs.size() > 0){
			std::shared_ptr<std::vector<std::shared_ptr<ExprVFG>>> phi_exprs = make_shared<std::vector<std::shared_ptr<ExprVFG>>>(exprs);
			depend_stack->pop();
			return std::make_shared<CFG_PHIVFG>(std::move(phi_exprs));
		}
		else{
			depend_stack->pop();
			return std::make_shared<ConstantVFG>(0);
		}
	}

	auto target = avfg->cfg_depend[node];
	if (target != node){
		auto result = get_result(depth+1, target, avfg, depend_stack, error_flag, log_flag);
		depend_stack->pop();
		return result;
	}
	depend_stack->pop();
	return std::make_shared<ConstantVFG>(0);
}

/*
	Analysis for a function.
*/
void analysisAVFG(const SVFFunction* F, SVFG *svfg, SVFIR *pag, ICFG *icfg, std::set<const SVFFunction*> *target_func){
	AVFG avfg(F);
	std::cout << F->getValue() << "-------------------------:" << endl;
	// if (F->getValue() == "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hab29dcdbf93897d1E" ||
	// F->getValue() == "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h6fa4af459a0f3e88E"){
	// 	debug_flag = true;
	// }
	// else{
	// 	debug_flag = false;
	// }
	if (pag->hasFunArgsList(F)){
		auto arg_nodes = pag->getFunArgsList(F);
		for(auto iter : arg_nodes){
			const VFGNode* arg_node = svfg->getDefSVFGNode(iter);
			avfg.paramlist[arg_node] = false;      
			avfg.param_vector.push_back(arg_node); 
		}
	}
	auto func_begin_node = icfg->getFunEntryICFGNode(F);
	FILOWorkList<const ICFGNode*> depend_stack;
	const ICFGNode* exit_node = parseFunctionCFG(pag, svfg, func_begin_node, icfg, &avfg, target_func);
	bool error_flag = false;
	bool log_flag = false;
	std::shared_ptr<ExprVFG> function_cost = get_result(0, exit_node, &avfg, &depend_stack, &error_flag, &log_flag);
	function_cost = function_cost->simplify();
	FuncExpr func_expr(std::move(function_cost));
	int field_index = 0;
	for(auto iter : avfg.param_vector){
		if(avfg.paramlist[iter]){
			func_expr.used.push_back(true);
		}
		else{
			func_expr.used.push_back(false);
		}
		if(avfg.param_field.find(iter) != avfg.param_field.end()){
			func_expr.param_field[field_index] = avfg.param_field[iter];
		}
		field_index++;
	}
	for(auto iter: avfg.fields){
		func_expr.fields.push_back(iter);
	}
	std::cout << llvm::demangle(F->getValue()) << ":" << endl;
	func_expr.expr->output();
	std::cout << endl << endl;
	funcs_expr[F] = std::move(func_expr);
}


/*
	Analysis for Call Graph. Begin from __rust_alloc.
	
*/
void traverseOnCallGraph(PTACallGraph *callgraph, SVFG *svfg, SVFIR *pag, ICFG *icfg){
	FIFOWorkList<PTACallGraphNode*> worklist;
	FIFOWorkList<PTACallGraphNode*> del_list;
	PTACallGraphNode* init_node_alloc = 0;
	PTACallGraphNode* init_node_realloc = 0;
	std::set<const SVFFunction*> visited;
	if(rust_alloc_function){
		PTACallGraphNode* init_node_alloc = callgraph->getCallGraphNode(rust_alloc_function);
		worklist.push(init_node_alloc);
		visited.insert(rust_alloc_function);
	}
	if(rust_realloc_function){
		PTACallGraphNode* init_node_realloc = callgraph->getCallGraphNode(rust_realloc_function);
		worklist.push(init_node_realloc);
		visited.insert(rust_realloc_function);
	}
	if(worklist.empty()){
		std::cout << "No Allocate Function" << endl;
		return;
	}
	while (!worklist.empty()) {
		PTACallGraphNode* f_node = worklist.pop();
		del_list.push(f_node);
		for (auto it = f_node->InEdgeBegin(), eit = f_node->InEdgeEnd(); it != eit; ++it) {
			auto edge = *it;
			auto succ_node = edge->getSrcNode();
			if (visited.find(succ_node->getFunction()) == visited.end()) {
				visited.insert(succ_node->getFunction());
				worklist.push(succ_node);
			}
		}
	}
	while (!del_list.empty()) {
		PTACallGraphNode* f_node = del_list.pop();
		worklist.push(f_node);
		for (auto it = f_node->OutEdgeBegin(), eit = f_node->OutEdgeEnd(); it != eit;) {
			auto edge = *it;
			auto succ_node = edge->getDstNode();
			if (visited.find(succ_node->getFunction()) == visited.end()) {
				++it;
				f_node->removeOutgoingEdge(edge);
			}
			else{
				++it;
			}
		}
	}
	bool flag = true;
	PTACallGraphNode* record_node = 0;
	while (!worklist.empty()) {
		PTACallGraphNode* f_node = worklist.pop();
		//std::cout << "to:" << f_node->toString() << endl;
		if(f_node->hasOutgoingEdge()){
			if(f_node == record_node && flag == false){
				std::cout << "recursion!" << f_node->toString() << endl;
				analysisAVFG(f_node->getFunction(), svfg, pag, icfg, &visited);
				for (auto it = f_node->InEdgeBegin(), eit = f_node->InEdgeEnd(); it != eit; ++it) {
					auto edge = *it;
					auto succ_node = edge->getSrcNode();
					succ_node->removeOutgoingEdge(edge);
				}
				flag = true;
				continue;
				//break;
			}
			worklist.push(f_node);
			if(flag){
				flag = false;
				record_node = f_node;
			}
			continue;
		}
		//std::cout << "analysis" << endl;
		flag = true;
		if(f_node != init_node_alloc || f_node != init_node_realloc){ //跳过__rust_alloc
			func_map[f_node->getFunction()->getValue()] = f_node->getFunction();
			analysisAVFG(f_node->getFunction(), svfg, pag, icfg, &visited);
		}
		for (auto it = f_node->InEdgeBegin(), eit = f_node->InEdgeEnd(); it != eit; ++it) {
			auto edge = *it;
			auto succ_node = edge->getSrcNode();
			succ_node->removeOutgoingEdge(edge);
		}
	}
}


void init_llvm_func(){
	rust_alloc_function = SVF::SVFUtil::getFunction("__rust_alloc");
	rust_realloc_function = SVF::SVFUtil::getFunction("__rust_realloc");
	umul_function = SVF::SVFUtil::getFunction("llvm.umul.with.overflow.i64");
	uadd_function = SVF::SVFUtil::getFunction("llvm.uadd.with.overflow.i64");
	i64_ctlz_function = SVF::SVFUtil::getFunction("llvm.ctlz.i64");
	return;
}


void param_connect(const SVFG *svfg, const VFGNode* node, std::map<int, FieldTransform>* param_transform, int index, const VFGNode* param){
	if (SVF::FormalParmVFGNode::classof(node)){
		const Argument* argument = SVFUtil::dyn_cast<Argument>(node->getValue());
		int number = argument->getArgNo();
		FieldTransform transform(index, make_shared<std::vector<FieldIndex>>(), param);
		(*param_transform)[number] = std::move(transform);
		return;
	}
	if (SVF::StoreVFGNode::classof(node)){
		const VFGNode* record_node = node;
		const VFGNode* next_node = node;
		std::stack<FieldIndex> extract_index;
		std::vector<FieldIndex> fields;
		bool param_flag = false;
		int number = 0;
		while(!param_flag){
			next_node = record_node;
			for (auto it = record_node->InEdgeBegin(), eit = record_node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				auto succ_node = edge->getSrcNode();
				if (succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::FParm){
					const Argument* argument = SVFUtil::dyn_cast<Argument>(succ_node->getValue());
					number = argument->getArgNo();
					param_flag = true;
				}
				//memcopy
				if (succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Load || succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Store){
					next_node = succ_node;
				}
			}
			if(!param_flag){
				if(record_node == next_node)
					return;
				record_node = next_node;
			}
		}
		for (auto it = record_node->InEdgeBegin(), eit = record_node->InEdgeEnd(); it != eit; ++it) {
			auto edge = *it;
			auto succ_node = edge->getSrcNode();
			if (succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Gep || succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
				int index_num = getLoadIndexList(succ_node, svfg, &extract_index);
			}
		}
		while(!extract_index.empty()){
			fields.push_back(extract_index.top());
			extract_index.pop();
		}
		FieldTransform transform(index, make_shared<std::vector<FieldIndex>>(fields), param);
		(*param_transform)[number] = std::move(transform);
		return;
	}
	for (auto it = node->OutEdgeBegin(), eit = node->OutEdgeEnd(); it != eit; ++it) {
		auto edge = *it;
		auto succ_node = edge->getDstNode();
		if(succ_node->hasOutgoingEdge() && (SVF::GepVFGNode::classof(succ_node)|| SVF::CopyVFGNode::classof(succ_node) || SVF::StoreVFGNode::classof(succ_node))){
			param_connect(svfg, succ_node, param_transform, index, param);
		}
	}
	return;
}

void handle_parameter(const SVFFunction* oom_function, PTACallGraph *callgraph, ICFG* icfg, SVFG* svfg){
	const SVF::ICFGNode* func_begin_node = icfg->getFunEntryICFGNode(oom_function);
	auto temp_node = func_begin_node;
	std::map<int, FieldTransform> param_transform;
	while(true){
		if(!temp_node->hasOutgoingEdge()){
			//std::cout << "ERROR: find my_wrap" << endl;
			break;
		}
		auto it = temp_node->OutEdgeBegin();
		auto edge = *it;
		const SVF::ICFGNode* succ_node = edge->getDstNode();
		int index = 0;
		if(CallICFGNode::classof(temp_node)){
			const CallICFGNode* call_node = static_cast<const CallICFGNode*>(temp_node);
			auto temp_call_site = call_node->getCallSite();
			const CallBase* call_base = static_cast<const CallBase*>(temp_call_site);
			const SVFFunction* succ_func = SVF::SVFUtil::getFunction(call_base->getCalledOperand()->getName());
			auto function_name = llvm::demangle(succ_func->getValue());
			if(function_name.substr(0,26) == "OOMGuardAllocator::my_wrap"){
				//std::vector<FieldIndex> fields;
				auto vfg_nodes = call_node->getVFGNodes();
				for(auto iter : vfg_nodes){
					if(SVF::ActualParmVFGNode::classof(iter)){
						auto addr_node = (*(iter->InEdgeBegin()))->getSrcNode();
						param_connect(svfg, addr_node, &param_transform, index, iter);
						index++;
						break;
					}
				}
				//auto fields_ptr = make_shared<std::vector<FieldIndex>>(fields);
			}else if(function_name.substr(0,30) == "OOMGuardAllocator::my_wrap_end") break;
			call_node = static_cast<const CallICFGNode*>(temp_node);
			succ_node = call_node->getRetICFGNode();
		}
		temp_node = succ_node;
	}
	auto pag = svfg->getPAG();
	if (pag->hasFunArgsList(oom_function)){
		auto arg_nodes = pag->getFunArgsList(oom_function);
		for(int i = 0; i < arg_nodes.size(); i++){
			if(param_transform.find(i) == param_transform.end()){
				continue;
			}
			// param_transform[i].output();
			// std::cout << endl;
		}
	}
	param_transforms[oom_function] = std::move(param_transform);
}






int main(int argc, char ** argv) {
    int arg_num = 0;
    char **arg_value = new char*[argc];
    std::vector<std::string> moduleNameVec;
    SVFUtil::processArguments(argc, argv, arg_num, arg_value, moduleNameVec);
    cl::ParseCommandLineOptions(arg_num, arg_value,
                                "Whole Program Points-to Analysis\n");
    SVFModule* svfModule = LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(moduleNameVec);
    svfModule->buildSymbolTableInfo();
	SVFIRBuilder builder;
    SVFIR* pag = builder.build(svfModule);
	Andersen *ander = AndersenWaveDiff::createAndersenWaveDiff(pag);
	ICFG *icfg = pag->getICFG();
	PTACallGraph *callgraph = ander->getPTACallGraph();
	SVFGBuilder svfBuilder;
    SVFG* svfg = svfBuilder.buildFullSVFG(ander);
	init_llvm_func();
	debug_flag = false;

	ifstream file;
    file.open("trait_name", ios_base::in);
    if (!file.is_open()){
        cout << "failed to open the file";
    }
	string s;
    while (getline(file, s)){
		std::vector<std::string> info = stringSplit(s, ' ');
		string trait_name = info[1];
		string func_name = info[2];
		string loc = info[0];
		trait_name_map[loc] = trait_name;
		//std::cout << loc << ";" << trait_name << ";" << func_name << endl;
    }
    file.close();


	for(auto iter : oom_safe_function){
		handle_parameter(iter, callgraph, icfg, svfg);
		FuncExpr& func_expr = funcs_expr[iter];
		std::vector<std::shared_ptr<ExprVFG>> fold_expr;
		func_expr.expr->foldExpr(&fold_expr);
		std::cout << "OOM_Function" << iter->getValue() << "~";
		for(int i = 0; i < fold_expr.size(); i++){
			fold_expr[i]->transform(&param_transforms[iter]);
			fold_expr[i]->output();
			std::cout << "|" ;
		}
		std::cout << endl;
	}


	auto global_vnode = svfg->getGlobalVFGNodes();	
	std::set<std::string> vtable_set;
	vtable_set.insert("vtable.0");
	for(auto iter : global_vnode){
		auto val = iter->getValue();
		if(val && llvm::Constant::classof(val) && llvm::GlobalVariable::classof(val)){
			const GlobalVariable* gv = static_cast<const GlobalVariable*>(val);
			std::string vtable_num = val->getName().str();
			if(vtable_num.substr(0,6) == "vtable" && vtable_set.find(vtable_num) == vtable_set.end()){
				vtable_set.insert(vtable_num);
				auto temp = gv->getInitializer();
				if(temp && llvm::ConstantStruct::classof(temp)){
					unsigned index = 1;
					auto struct_type = temp->getType();
					//std::set<const SVFFunction*> trait_set;
					std::vector<const SVFFunction*> vtable_func;
					std::string trait_name = "";
					bool trait_flag = false;
					for(Type::subtype_iterator ib = struct_type->subtype_begin(), ie = struct_type->subtype_end();
					ib != ie; ib++){
						if(ib == struct_type->subtype_begin()){
							continue;
						}
						auto field = temp->getAggregateElement(index);
						if(llvm::ConstantExpr::classof(field)){
							const ConstantExpr* expr = static_cast<const ConstantExpr*>(field);
							auto inst = expr->getAsInstruction();
							if(llvm::BitCastInst::classof(inst)){
								const llvm::BitCastInst *b_inst = SVFUtil::dyn_cast<llvm::BitCastInst>(inst);
								auto src = b_inst->getSrcTy();
								// while(src->isPointerTy()){
								// 	src = src->getPointerElementType();
								// }
								// if(src->isFunctionTy()){
								// 	auto return_type = src->getFunctionParamType(0)->getPointerElementType();
								// 	if(return_type->isStructTy()){
								// 		std::cout << return_type->getStructName().str() <<endl;
								// 		trait_name = return_type->getStructName().str();
								// 	}
								// }
								auto func = b_inst->getOperand(0); //get function name
								std::string delimiter1 = "$GT$";
								std::string delimiter2 = "..";
								std::string delimiter3 = "$GT$::";
								std::cout << llvm::demangle(func->getName().str()) << endl;
								std::string trait_demangle = llvm::demangle(func->getName().str());
								std::string trait_demangle2 = llvm::demangle(func->getName().str());
								trait_demangle = trait_demangle.substr(0, trait_demangle.find(delimiter1));
								trait_demangle2 = trait_demangle2.erase(0, trait_demangle2.find(delimiter3) + delimiter3.length());
								trait_demangle2 = trait_demangle2.substr(0,trait_demangle2.find("::"));
								while(trait_demangle.find(delimiter2) != std::string::npos){
									trait_demangle.erase(0, trait_demangle.find(delimiter2) + delimiter2.length());
								}
								std::cout << "trait_name:::" << trait_demangle << endl;
								std::cout << "func_name:::" << trait_demangle2 << endl;
								trait_name = trait_demangle;
								trait_flag = true;
								vtable_func.push_back(SVF::SVFUtil::getFunction(func->getName()));
								//std::cout << llvm::demangle(func->getName().str()) << endl;
							}
						}
						index++;
					}
					if(trait_map.find(trait_name) == trait_map.end()){
						std::set<std::vector<const SVFFunction*>> trait_set;
						trait_set.insert(vtable_func);
						trait_map[trait_name] = trait_set;
					}
					else{
						std::set<std::vector<const SVFFunction*>>& trait_set_ref = trait_map[trait_name];
						trait_set_ref.insert(vtable_func);
					}
				}	
			}
		}
		//std::cout << iter->toString() << endl;
	}
	traverseOnCallGraph(callgraph, svfg, pag, icfg);
	//callgraph->dump("cfg");
	//pag->dump("pag");
	//icfg->dump("icfg");
	//svfg->dump("svfg"); 

	
	//PM.add(new SkeletonPass());
  	//PM.run(*Mod);

	//LLVMModuleSet::getLLVMModuleSet()->dumpModulesToFile(".bc");
	return 0;
}
