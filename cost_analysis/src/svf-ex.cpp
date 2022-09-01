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
#include "warning.h"
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


std::map<const ICFGNode*, std::shared_ptr<ExprVFG>> loop_map;
std::map<const std::string, std::string> trait_key_map;
std::map<const std::string, Warning> trait_warning;
std::set<std::string> trait_flags;
std::map<const std::string, const SVFFunction*> func_map;
std::map<const SVFFunction*, FuncExpr> funcs_expr;
std::map<const std::string, std::set<const SVFFunction*>> trait_map;
std::map<const std::string, std::string> trait_name_map;
std::map<const std::string, std::string> traitfunc_name_map;
std::map<const SVFFunction*, std::set<Warning>> warning_sets;
std::map<const SVFFunction*, bool> warning_flags;
std::map<const SVFFunction*, int> allocation_count;
std::map<const SVFFunction*, int> sites_count;
std::map<const SVFFunction*, int> modify_function;
std::map<const SVFFunction*, int> oom_counts;
std::set<const SVFFunction*> count_flag;
std::map<const SVFFunction*, std::vector<const SVFFunction*>> CG_Out;
std::map<const SVFFunction*, std::vector<std::string>> trait_set_record;

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
	std::set<VisitedRecord> visited_set;
	if(call_function == rust_alloc_function){
		bool error_flag = false;
		const VFGNode* param = alloc_call->paramlist[0];
		int depth = 0;
		std::shared_ptr<ExprVFG> arg0 = parseVFGNode(param, svfg, avfg, &extract_index, &call_stack, &depth, &error_flag, &visited_set);
		return arg0;
	}
	else if(call_function == rust_realloc_function){
		bool error_flag = false;
		int depth = 0;
		const VFGNode* param = alloc_call->paramlist[3];
		std::shared_ptr<ExprVFG> arg3 = parseVFGNode(param, svfg, avfg, &extract_index, &call_stack, &depth, &error_flag, &visited_set);
		return arg3;
	}
	else{
		bool error_flag = false;
		int depth = 0;
		FuncExpr& func_expr = funcs_expr[call_function];
		int param_size = alloc_call->paramlist.size();
		std::shared_ptr<ExprVFG> f_expr = func_expr.expr->clone();
		bool warning_flag = false;
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
					std::set<VisitedRecord> visited_set;
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
					std::shared_ptr<ExprVFG> temp = parseVFGNode(param, svfg, avfg, &extract_index, &call_stack, &depth, &error_flag, &visited_set);
					
					if((temp->exist_none()) && warning_flag == false){
						warning(call_function, call_site,"");
						warning_flag = true;
						break;
					}


					if(error_flag){
						warning(call_function, call_site,"");
						warning_flag = true;
						break;
					}
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
			std::set<VisitedRecord> visited_set;
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
			int depth = 0;
			std::shared_ptr<ExprVFG> temp = parseVFGNode(next_node, svfg, avfg, &extract_index, &call_stack, &depth, &error_flag, &visited_set);
			if(error_flag){
				warning(call_function, call_site,"");
				warning_flag = true;
				break;
			}
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
						if(debug_flag){
							for (auto it = param_node->InEdgeBegin(), eit = param_node->InEdgeEnd(); it != eit; ++it) {
								auto edge = *it;
							}
						}
						for (auto it = param_node->InEdgeBegin(), eit = param_node->InEdgeEnd(); it != eit; ++it) {
							auto edge = *it;
							auto temp_param_node = edge->getSrcNode();
							if(temp_param_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Addr)
								continue;
							if(!edge->isIndirectVFGEdge() || temp_param_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Store){
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
			if(temp->exist_none() && warning_flag == false){
				warning(call_function, call_site,"");
				//std::cout << "function need mark" << endl;
				warning_flag = true;
				break;
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
		if(warning_flag){
			return make_shared<ConstantVFG>(0);
		}
		return f_expr;
	}
}

int tot = 0;
const ICFGNode* father = 0;
void tarjan(const ICFGNode* current_node, 
	std::map<const ICFGNode*, int> *dfn, 
	std::map<const ICFGNode*, int> *low, 
	FILOWorkList<const ICFGNode*> *worklist, 
	std::set<const ICFGNode*> *visited,
	std::map<const ICFGNode*, std::set<const ICFGNode*>> *nodeOut,
	std::map<const ICFGNode*, std::set<const ICFGNode*>> *nodeIn,
	AVFG* avfg,
	std::set<const ICFGNode*> *loop_expr_node,
	std::set<const ICFGNode*> *temp_node_record,
	std::map<int, const ICFGNode*> *dfn_record,
	std::map<int, int> *value_record
	){
	(*dfn)[current_node] = tot;
	(*low)[current_node] = tot++;
	worklist->push(current_node);
	visited->insert(current_node);

	//addition
	if(avfg->cfg_expr.find(current_node) != avfg->cfg_expr.end()){
		const CallICFGNode* call_node = static_cast<const CallICFGNode*>(current_node);
		auto temp_call_site = call_node->getCallSite();
		const CallBase* call_base = static_cast<const CallBase*>(temp_call_site);
		if(llvm::Function::classof(call_base->getCalledOperand())){
			temp_node_record->insert(current_node);
		}
	}
	if(loop_map.find(current_node) != loop_map.end()){
		loop_expr_node->insert(current_node);
	}
	if(nodeOut->find(current_node) != nodeOut->end()){
		int size = (*nodeOut)[current_node].size();
		for(auto iter: (*nodeOut)[current_node]){
			const ICFGNode* succ_node = iter;
			bool change_flag = false;
			if(dfn->find(succ_node) == dfn->end()){
				tarjan(succ_node, dfn, low, worklist, visited, nodeOut, nodeIn, avfg, loop_expr_node, temp_node_record, dfn_record, value_record);
				(*low)[current_node] = min((*low)[current_node], (*low)[succ_node]);
			}
			else{
				if(visited->find(succ_node) != visited->end()){
					(*dfn_record)[(*dfn)[succ_node]] = succ_node;
					(*low)[current_node] = min((*low)[current_node], (*dfn)[succ_node]);
				}
			}
		}
		for(auto iter: (*nodeOut)[current_node]){
			const ICFGNode* succ_node = iter;
			if((*low)[succ_node] > (*dfn)[current_node] && visited->find(succ_node) != visited->end()){
				auto temp_node = (*dfn_record)[(*low)[succ_node]];
				for(auto iter_node: (*temp_node_record)){
					if((*low)[iter_node] == (*low)[succ_node]){
						(*low)[iter_node] = (*low)[temp_node];
					}
				}
			}
			if((*low)[succ_node] <= (*dfn)[current_node] && (*low)[succ_node] > (*low)[current_node] && visited->find(succ_node) != visited->end()){
				(*value_record)[(*low)[succ_node]] = (*low)[current_node];
				(*low)[current_node] = (*low)[succ_node];
			}
		}
	}
	while((*low)[current_node] == (*dfn)[current_node] && value_record->find((*low)[current_node]) != value_record->end()){
		std::shared_ptr<ExprVFG> result_expr = make_shared<ConstantVFG>(0);
		std::shared_ptr<ExprVFG> loop_expr = 0;
		for(auto iter_loop:(*loop_expr_node)){
			if((*low)[iter_loop] == (*low)[current_node]){ //corresponding 
				loop_expr = loop_map[iter_loop];
				loop_expr_node->erase(iter_loop);
				break;
			}
		}
		bool find_flag = false;
		for(auto iter_node = temp_node_record->begin(); iter_node != temp_node_record->end();){
			if((*low)[*iter_node] == (*low)[current_node]){
				if(loop_expr == 0){
					avfg->cfg_expr[*iter_node] = make_shared<NoneVFG>();
				}
				else{
					find_flag = true;
					std::shared_ptr<ExprVFG> temps = parseBinaryOp(avfg->cfg_expr[*iter_node], loop_expr, 'x');
					result_expr = parseBinaryOp(temps, result_expr, '#');
				}
				temp_node_record->erase(iter_node++);
			}
			else{
				++iter_node;
			}
		}
		if(find_flag){
			result_expr->simplify();
			if(avfg->cfg_expr.find(current_node) == avfg->cfg_expr.end())
				avfg->cfg_expr[current_node] = result_expr;
			else
				avfg->cfg_expr[current_node] = parseBinaryOp(result_expr, avfg->cfg_expr[current_node], '#');
			temp_node_record->insert(current_node);
		}
		(*low)[current_node] = (*value_record)[(*low)[current_node]];
		value_record->erase((*low)[current_node]);
	}

	if((*low)[current_node] == (*dfn)[current_node]){
		const ICFGNode* temp_node = worklist->pop();
		const ICFGNode* father_node = current_node;
		if(avfg->cfg_expr.find(father_node) != avfg->cfg_expr.end()){
			const CallICFGNode* call_node = static_cast<const CallICFGNode*>(father_node);
			auto temp_call_site = call_node->getCallSite();
			const CallBase* call_base = static_cast<const CallBase*>(temp_call_site);
			if(llvm::Function::classof(call_base->getCalledOperand())){
				const SVFFunction* succ_func = SVF::SVFUtil::getFunction(call_base->getCalledOperand()->getName());
				auto cur_expr = avfg->cfg_expr[father_node];
				if(cur_expr->getKind() == expr_none){
					warning(succ_func, temp_node,":in_loop");
				}	
			}
		}
		visited->erase(father_node);
		if(temp_node_record->find(temp_node) != temp_node_record->end()){
			temp_node_record->erase(temp_node);
		}
		if(loop_expr_node->find(temp_node) != loop_expr_node->end()){
			loop_expr_node->erase(temp_node);
		}
		avfg->cfg_depend[temp_node] = father_node;
		if(temp_node != current_node && !worklist->empty()){
			std::shared_ptr<ExprVFG> result_expr = make_shared<ConstantVFG>(0);
			std::shared_ptr<ExprVFG> loop_expr = 0;
			for(auto iter_loop:(*loop_expr_node)){
				if((*low)[iter_loop] == (*low)[current_node]){ //corresponding 
					loop_expr = loop_map[iter_loop];
					loop_expr_node->erase(iter_loop);
					break;
				}
			}
			bool find_flag = false;
			for(auto iter_node = temp_node_record->begin(); iter_node != temp_node_record->end();){
				if((*low)[*iter_node] == (*low)[current_node]){
					if(loop_expr == 0){
						avfg->cfg_expr[*iter_node] = make_shared<NoneVFG>();
					}
					else{
						find_flag = true;
						std::shared_ptr<ExprVFG> temps = parseBinaryOp(avfg->cfg_expr[*iter_node], loop_expr, 'x');
						result_expr = parseBinaryOp(temps, result_expr, '#');
					}
					temp_node_record->erase(iter_node++);
				}
				else{
					++iter_node;
				}
			}
			if(find_flag){
				result_expr->simplify();
				if(avfg->cfg_expr.find(current_node) == avfg->cfg_expr.end())
					avfg->cfg_expr[current_node] = result_expr;
				else
					avfg->cfg_expr[current_node] = parseBinaryOp(result_expr, avfg->cfg_expr[current_node], '#');
				temp_node_record->insert(current_node);
			}

			while(true){
				auto& out_temp = (*nodeOut)[temp_node];
				auto& out_father = (*nodeOut)[father_node];
				auto& in_temp = (*nodeIn)[temp_node];
				auto& in_father = (*nodeIn)[father_node];
				for(auto iter:out_temp){
					if(avfg->cfg_depend[iter] != father_node){
						out_father.insert(iter);
						auto& in_delete = (*nodeIn)[iter];
						in_delete.erase(temp_node);
						in_delete.insert(father_node);
					}
				}
				for(auto iter:in_temp){
					if(avfg->cfg_depend[iter] != father_node){
						in_father.insert(iter);
						auto& out_delete = (*nodeOut)[iter];
						out_delete.erase(temp_node);
						out_delete.insert(father_node);
					}
				}
				temp_node = worklist->pop();
				visited->erase(temp_node);
				if(temp_node_record->find(temp_node) != temp_node_record->end()){
					temp_node_record->erase(temp_node);
				}
				if(loop_expr_node->find(temp_node) != loop_expr_node->end()){
					loop_expr_node->erase(temp_node);
				}
				avfg->cfg_depend[temp_node] = father_node;
				if(avfg->cfg_expr.find(temp_node) != avfg->cfg_expr.end()){
					const CallICFGNode* call_node = static_cast<const CallICFGNode*>(temp_node);
					auto temp_call_site = call_node->getCallSite();
					const CallBase* call_base = static_cast<const CallBase*>(temp_call_site);
					if(llvm::Function::classof(call_base->getCalledOperand())){
						const SVFFunction* succ_func = SVF::SVFUtil::getFunction(call_base->getCalledOperand()->getName());
						auto cur_expr = avfg->cfg_expr[temp_node];
						if(cur_expr->getKind() == expr_none){
							warning(succ_func, temp_node, ":in_loop");
						}
					}
				}
				if(temp_node == current_node)
					break;
			}
			if(nodeOut->find(father_node) != nodeOut->end()){
				auto& out_father = (*nodeOut)[father_node];
				for(set<const ICFGNode*>::iterator iter = out_father.begin(); iter != out_father.end();){
					if(avfg->cfg_depend[*iter] == father_node)
						out_father.erase(iter++);
					else
						++iter;
				}
			}
			if(nodeIn->find(father_node) != nodeIn->end()){
				auto& in_father = (*nodeIn)[father_node];
				for(set<const ICFGNode*>::iterator iter = in_father.begin(); iter != in_father.end();){
					if(avfg->cfg_depend[*iter] == father_node)
						in_father.erase(iter++);
					else
						++iter;
				}
			}
		}
	}
}

std::shared_ptr<ExprVFG> parseFunctionCFG(SVFIR *pag, const SVFG *svfg, const ICFGNode *entry, ICFG *icfg, AVFG* avfg, std::set<const SVFFunction*> *target_func){
	std::map<const ICFGNode*, std::set<const ICFGNode*>> nodeOut;
	std::map<const ICFGNode*, std::set<const ICFGNode*>> nodeIn;
	FIFOWorkList<const ICFGNode*> worklist;
	std::set<const ICFGNode*> visited;
	bool oom_safe_flag = false;
	worklist.push(entry);
	const ICFGNode* exit_node;
	allocation_count[avfg->getFunction()] = 0;
	modify_function[avfg->getFunction()] = 1;
	oom_counts[avfg->getFunction()] = 0;
	sites_count[avfg->getFunction()] = 0;
	while (!worklist.empty()) {
		const ICFGNode* i_node = worklist.pop();
		avfg->cfg_depend[i_node] = i_node;
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
				if(function_name.find("try_insert") != function_name.npos){
					continue;
				}
				if(oom_safe_flag == false && function_name.find("OOMGuardAllocator::my") != function_name.npos){
					oom_safe_function.insert(avfg->getFunction());
					oom_safe_flag = true;
				}
				if(function_name.find("OOMGuardAllocator::loop_wrap") != function_name.npos){
					auto vfg_nodes = call_node->getVFGNodes();
					auto iter = (*vfg_nodes.begin());
					FILOWorkList<CallSiteID> call_stack;
					std::stack<FieldIndex> extract_index;
					std::set<VisitedRecord> visited_set;
					bool error_flag = false;
					int depth = 0;
					std::shared_ptr<ExprVFG> arg = parseVFGNode(iter, svfg, avfg, &extract_index, &call_stack, &depth, &error_flag, &visited_set);
					loop_map[i_node] = arg;
				}

				if(count_flag.find(succ_func) == count_flag.end()){
					if(oom_safe_function.find(succ_func) != oom_safe_function.end()){
						oom_counts[avfg->getFunction()] += 1;
						if(oom_counts.find(succ_func) != oom_counts.end()){
							oom_counts[avfg->getFunction()] += oom_counts[succ_func];
						}
					}
					else{
						if(oom_counts.find(succ_func) != oom_counts.end()){
							oom_counts[avfg->getFunction()] += oom_counts[succ_func];
						}
					}
				}

				if((target_func->find(succ_func) != target_func->end()) && (funcs_expr.find(succ_func) != funcs_expr.end())){
					allocation_count[avfg->getFunction()] += 1;
					sites_count[avfg->getFunction()] += 1;
					if(allocation_count.find(succ_func) != allocation_count.end() && count_flag.find(succ_func) == count_flag.end()){
						allocation_count[avfg->getFunction()] += allocation_count[succ_func] + 1;
						sites_count[avfg->getFunction()] += sites_count[succ_func];
						modify_function[avfg->getFunction()] += modify_function[succ_func];
						count_flag.insert(succ_func);
					}
				}
				

				if((target_func->find(succ_func) != target_func->end()) && (funcs_expr.find(succ_func) != funcs_expr.end())
				&& oom_safe_function.find(succ_func) == oom_safe_function.end()){
					const ICFGNode* call_site = i_node;
					warning_flags[avfg->getFunction()] = warning_flags[succ_func] || warning_flags[avfg->getFunction()];
					auto vfg_nodes = call_site->getVFGNodes(); 
					AllocCall alloc_call(succ_func, call_site);
					for(auto iter : vfg_nodes){
						if(SVF::ActualParmVFGNode::classof(iter)) 
							alloc_call.paramlist.push_back(iter);
					}
					std::shared_ptr<ExprVFG> call_cost = parseCallSite(pag, avfg, svfg, &alloc_call);
					if(!(call_cost->getKind() == ExprTypes::expr_constant && call_cost->isZero())){
						avfg->cfg_expr[i_node] = std::move(call_cost);
					}
				}
			}
			else{ //trait function call
				if(call_base->hasMetadata("dbg")){
					auto meta = call_base->getMetadata("dbg");
					if(DILocation::classof(meta)){
						const DILocation* location = static_cast<const DILocation*>(meta);
						auto file = location->getScope()->getFile()->getFilename();
						std::vector<string> file_name = stringSplit(file.str(), '.');
						string filename = file_name[0];
						string key = filename + '_' + to_string(location->getLine()) + '_' + to_string(location->getColumn());
						std::cout << "key:" << key << endl;
						auto key_temp = trait_name_map[key] + "_" + traitfunc_name_map[key];
						if(trait_set_record.find(avfg->getFunction()) == trait_set_record.end()){
							std::vector<std::string> trait_set;
							trait_set.push_back(key_temp);
							trait_set_record[avfg->getFunction()] = trait_set;
						} else{
							std::vector<std::string> &trait_set_ref = trait_set_record[avfg->getFunction()];
							trait_set_ref.push_back(key_temp);
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
			if(CallICFGNode::classof(i_node)){
				const CallICFGNode* call_node = static_cast<const CallICFGNode*>(i_node);
				succ_node = call_node->getRetICFGNode();
			}
			if(nodeOut.find(i_node) == nodeOut.end()){
				std::set<const ICFGNode*> outSet;
				outSet.insert(succ_node);
				nodeOut[i_node] = outSet;
			} else{
				std::set<const ICFGNode*>& outSet_ref = nodeOut[i_node];
				outSet_ref.insert(succ_node);
			}
			if(nodeIn.find(succ_node) == nodeIn.end()){
				std::set<const ICFGNode*> inSet;
				inSet.insert(i_node);
				nodeIn[succ_node] = inSet;
			} else{
				std::set<const ICFGNode*>& inSet_ref = nodeIn[succ_node];
				inSet_ref.insert(i_node);
			}

			if(!CallICFGNode::classof(i_node) && succ_node->getNodeKind() == SVF::ICFGNode::ICFGNodeK::FunExitBlock){
				exit_node = succ_node;
				avfg->cfg_depend[exit_node] = exit_node;
				continue;
			}
			if (visited.find(succ_node) == visited.end()) {
				visited.insert(succ_node);
				worklist.push(succ_node);
			}
		}
	}
	auto current_func_name = avfg->getFunction()->getName();
	if(trait_key_map.find(current_func_name) != trait_key_map.end() && !oom_safe_flag){
		auto meta_callsite = avfg->getFunction()->getLLVMFun()->getMetadata("dbg");
		const DISubprogram* info = static_cast<const DISubprogram*>(meta_callsite);
		Warning warning_info(avfg->getFunction(),
			info->getName().str(),
			(info->getFile()->getFilename()).str(),
			"",
			"",
			info->getLine(),0);
		trait_warning[current_func_name] = warning_info;
		if(trait_flags.find(trait_key_map[current_func_name]) == trait_flags.end()){
			trait_flags.insert(trait_key_map[current_func_name]);
		}
	}
	std::map<const ICFGNode*, int> dfn;
	std::map<const ICFGNode*, int> low;
	FILOWorkList<const ICFGNode*> tarjan_worklist;
	std::set<const ICFGNode*> loop_expr_node;
	std::set<const ICFGNode*> temp_node_record;
	std::map<int, const ICFGNode*> dfn_record;
	std::map<int, int> value_record;
	visited.clear();
	tot = 0;
	tarjan(entry, &dfn, &low, &tarjan_worklist, &visited, &nodeOut, &nodeIn, avfg, &loop_expr_node, &temp_node_record, &dfn_record, &value_record);
	worklist.clear();
	visited.clear();
	worklist.push(entry);
	
	while (!worklist.empty()) {
		const ICFGNode* i_node = worklist.pop();
		const ICFGNode* depend_node = avfg->cfg_depend[i_node];
		std::set<const ICFGNode*>& outSet_ref = nodeOut[i_node];
		if(avfg->cfg_expr.find(depend_node) != avfg->cfg_expr.end()){
			if(avfg->expr_depend.find(depend_node) == avfg->expr_depend.end()){
				std::vector<std::shared_ptr<ExprVFG>> exprs_ts;
				std::shared_ptr<ExprVFG> temp_as = avfg->cfg_expr[depend_node];
				if(temp_as->getKind() == expr_binary){
					std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(temp_as);
					if(binary->op == '#'){
						std::vector<std::shared_ptr<ExprVFG>> adder = split_exprs(binary);
						for(auto iter2:adder){
							exprs_ts.push_back(iter2);
						}
					}
					else{
						exprs_ts.push_back(avfg->cfg_expr[depend_node]);
					}
				}else{exprs_ts.push_back(avfg->cfg_expr[depend_node]);}
				avfg->expr_depend[depend_node] = exprs_ts;
			}
		}
		for (auto iter : outSet_ref) {
			const ICFGNode* succ_node = avfg->cfg_depend[iter];
			if(avfg->cfg_depend[succ_node] == i_node)
				continue;
			std::set<const ICFGNode*>& inSet_ref = nodeIn[succ_node];
			inSet_ref.erase(i_node);
			
			if(avfg->expr_depend.find(depend_node) != avfg->expr_depend.end()){
				if(avfg->expr_depend.find(succ_node) == avfg->expr_depend.end() && inSet_ref.size() == 0){
					if(avfg->cfg_expr.find(succ_node) != avfg->cfg_expr.end()){ //#
						std::vector<std::shared_ptr<ExprVFG>> exprs;
						for(auto iter:avfg->expr_depend[depend_node]) {
							if(iter->getKind() == expr_binary){
								std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(iter);
    							if(binary->op == '#'){
									std::vector<std::shared_ptr<ExprVFG>> adder = split_exprs(binary);
									for(auto iter2:adder){
										exprs.push_back(iter2);
									}
									continue;
								}
							}
							exprs.push_back(iter);
						}
						exprs.push_back(avfg->cfg_expr[succ_node]);
						avfg->expr_depend[succ_node] = exprs;
					}
					else{
						avfg->cfg_depend[succ_node] = depend_node;
					}
				}
				else{
					//PHI
					if(avfg->expr_depend.find(succ_node) == avfg->expr_depend.end()){
						std::vector<std::shared_ptr<ExprVFG>> exprs;
						for(auto iter:avfg->expr_depend[depend_node]) {
							if(iter->getKind() == expr_binary){
								std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(iter);
    							if(binary->op == '#'){
									std::vector<std::shared_ptr<ExprVFG>> adder = split_exprs(binary);
									for(auto iter2:adder){
										exprs.push_back(iter2);
									}
									continue;
								}
							}
							exprs.push_back(iter);
						}
						avfg->expr_depend[succ_node] = exprs;
					}
					else{
						std::vector<std::shared_ptr<ExprVFG>>& expr_self = avfg->expr_depend[depend_node];
						std::vector<std::shared_ptr<ExprVFG>>& expr_ref = avfg->expr_depend[succ_node];
						std::vector<std::shared_ptr<ExprVFG>> exprs;
						for(auto iter:avfg->expr_depend[succ_node]) 
							exprs.push_back(iter);
						for(int iter = 0; iter < expr_self.size(); iter++){
							bool unfit_flag = true;
							for(int iter2 = 0; iter2 < exprs.size(); iter2++){
								if(equal_field(expr_self[iter], exprs[iter2])){
									exprs[iter2] = make_shared<NoneVFG>();
									unfit_flag = false;
									break;
								}
							}
							if(unfit_flag){
								expr_ref.push_back(expr_self[iter]);
							}
						}
					}
					
				}
			}
			if(visited.find(succ_node) == visited.end() && inSet_ref.size() == 0){
				worklist.push(succ_node);
				visited.insert(succ_node);
			}
		}
	}
	exit_node = avfg->cfg_depend[exit_node];
	std::shared_ptr<ExprVFG> exit_expr = make_shared<ConstantVFG>(0);
	if(avfg->expr_depend.find(exit_node) == avfg->expr_depend.end()){
		return std::make_shared<ConstantVFG>(0);
	}
	else{
		std::vector<std::shared_ptr<ExprVFG>>& expr_self = avfg->expr_depend[exit_node];
		for(auto iter: expr_self){
			exit_expr = parseBinaryOp(exit_expr, iter, '#');
		}
	}
	return exit_expr;
}

std::shared_ptr<ExprVFG> parseFunctionCFG_recursive(SVFIR *pag, const SVFG *svfg, const ICFGNode *entry, ICFG *icfg, AVFG* avfg, std::set<const SVFFunction*> *target_func, std::set<const SVFFunction*> *call_stack){
	std::map<const ICFGNode*, std::set<const ICFGNode*>> nodeOut;
	std::map<const ICFGNode*, std::set<const ICFGNode*>> nodeIn;
	FIFOWorkList<const ICFGNode*> worklist;
	std::set<const ICFGNode*> visited;
	bool oom_safe_flag = false;
	worklist.push(entry);
	const ICFGNode* exit_node;
	allocation_count[avfg->getFunction()] = 0;
	modify_function[avfg->getFunction()] = 1;
	oom_counts[avfg->getFunction()] = 0;
	sites_count[avfg->getFunction()] = 0;
	while (!worklist.empty()) {
		const ICFGNode* i_node = worklist.pop();
		avfg->cfg_depend[i_node] = i_node;
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
				if(function_name.find("try_insert") != function_name.npos){
					continue;
				}
				if(oom_safe_flag == false && function_name.find("OOMGuardAllocator::my") != function_name.npos){
					oom_safe_flag = true;
				}
				if(function_name.find("OOMGuardAllocator::loop_wrap") != function_name.npos){
					auto vfg_nodes = call_node->getVFGNodes();
					auto iter = (*vfg_nodes.begin());
					FILOWorkList<CallSiteID> call_stack;
					std::stack<FieldIndex> extract_index;
					std::set<VisitedRecord> visited_set;
					bool error_flag = false;
					int depth = 0;
					std::shared_ptr<ExprVFG> arg = parseVFGNode(iter, svfg, avfg, &extract_index, &call_stack, &depth, &error_flag, &visited_set);
					loop_map[i_node] = arg;
				}

				if(count_flag.find(succ_func) == count_flag.end()){
					if(oom_safe_function.find(succ_func) != oom_safe_function.end()){
						oom_counts[avfg->getFunction()] += 1;
						if(oom_counts.find(succ_func) != oom_counts.end()){
							oom_counts[avfg->getFunction()] += oom_counts[succ_func];
						}
					}
					else{
						if(oom_counts.find(succ_func) != oom_counts.end()){
							oom_counts[avfg->getFunction()] += oom_counts[succ_func];
						}
					}
				}

				if((target_func->find(succ_func) != target_func->end()) && (funcs_expr.find(succ_func) != funcs_expr.end())){
					allocation_count[avfg->getFunction()] += 1;
					sites_count[avfg->getFunction()] += 1;
					if(allocation_count.find(succ_func) != allocation_count.end() && count_flag.find(succ_func) == count_flag.end()){
						allocation_count[avfg->getFunction()] += allocation_count[succ_func] + 1;
						sites_count[avfg->getFunction()] += sites_count[succ_func];
						modify_function[avfg->getFunction()] += modify_function[succ_func];
						count_flag.insert(succ_func);
					}
				}
				

				if((target_func->find(succ_func) != target_func->end()) && (funcs_expr.find(succ_func) != funcs_expr.end())
				&& oom_safe_function.find(succ_func) == oom_safe_function.end() && call_stack->find(succ_func) == call_stack->end()){
					const ICFGNode* call_site = i_node;
					warning_flags[avfg->getFunction()] = warning_flags[succ_func] || warning_flags[avfg->getFunction()];
					auto vfg_nodes = call_site->getVFGNodes(); 
					AllocCall alloc_call(succ_func, call_site);
					for(auto iter : vfg_nodes){
						if(SVF::ActualParmVFGNode::classof(iter)) 
							alloc_call.paramlist.push_back(iter);
					}
					std::cout << "call:" << succ_func->getValue() << endl;
					std::shared_ptr<ExprVFG> call_cost = parseCallSite(pag, avfg, svfg, &alloc_call);
					if(!(call_cost->getKind() == ExprTypes::expr_constant && call_cost->isZero())){
						avfg->cfg_expr[i_node] = std::move(call_cost);
					}
				}
			}
			else{ //trait function call
				if(call_base->hasMetadata("dbg")){
					auto meta = call_base->getMetadata("dbg");
					if(DILocation::classof(meta)){
						const DILocation* location = static_cast<const DILocation*>(meta);
						auto file = location->getScope()->getFile()->getFilename();
						std::vector<string> file_name = stringSplit(file.str(), '.');
						string filename = file_name[0];
						string key = filename + '_' + to_string(location->getLine()) + '_' + to_string(location->getColumn());
						std::cout << "key:" << key << endl;
						auto key_temp = trait_name_map[key] + "_" + traitfunc_name_map[key];
						if(trait_set_record.find(avfg->getFunction()) == trait_set_record.end()){
							std::vector<std::string> trait_set;
							trait_set.push_back(key_temp);
							trait_set_record[avfg->getFunction()] = trait_set;
						} else{
							std::vector<std::string> &trait_set_ref = trait_set_record[avfg->getFunction()];
							trait_set_ref.push_back(key_temp);
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
			if(CallICFGNode::classof(i_node)){
				const CallICFGNode* call_node = static_cast<const CallICFGNode*>(i_node);
				succ_node = call_node->getRetICFGNode();
			}
			if(nodeOut.find(i_node) == nodeOut.end()){
				std::set<const ICFGNode*> outSet;
				outSet.insert(succ_node);
				nodeOut[i_node] = outSet;
			} else{
				std::set<const ICFGNode*>& outSet_ref = nodeOut[i_node];
				outSet_ref.insert(succ_node);
			}
			if(nodeIn.find(succ_node) == nodeIn.end()){
				std::set<const ICFGNode*> inSet;
				inSet.insert(i_node);
				nodeIn[succ_node] = inSet;
			} else{
				std::set<const ICFGNode*>& inSet_ref = nodeIn[succ_node];
				inSet_ref.insert(i_node);
			}

			if(!CallICFGNode::classof(i_node) && succ_node->getNodeKind() == SVF::ICFGNode::ICFGNodeK::FunExitBlock){
				exit_node = succ_node;
				avfg->cfg_depend[exit_node] = exit_node;
				continue;
			}
			if (visited.find(succ_node) == visited.end()) {
				visited.insert(succ_node);
				worklist.push(succ_node);
			}
		}
	}
	auto current_func_name = avfg->getFunction()->getName();
	if(trait_key_map.find(current_func_name) != trait_key_map.end() && !oom_safe_flag){
		auto meta_callsite = avfg->getFunction()->getLLVMFun()->getMetadata("dbg");
		const DISubprogram* info = static_cast<const DISubprogram*>(meta_callsite);
		Warning warning_info(avfg->getFunction(),
			info->getName().str(),
			(info->getFile()->getFilename()).str(),
			"",
			"",
			info->getLine(),0);
		trait_warning[current_func_name] = warning_info;
		if(trait_flags.find(trait_key_map[current_func_name]) == trait_flags.end()){
			trait_flags.insert(trait_key_map[current_func_name]);
		}
	}
	std::map<const ICFGNode*, int> dfn;
	std::map<const ICFGNode*, int> low;
	FILOWorkList<const ICFGNode*> tarjan_worklist;
	std::set<const ICFGNode*> loop_expr_node;
	std::set<const ICFGNode*> temp_node_record;
	std::map<int, const ICFGNode*> dfn_record;
	std::map<int, int> value_record;
	visited.clear();
	tot = 0;
	tarjan(entry, &dfn, &low, &tarjan_worklist, &visited, &nodeOut, &nodeIn, avfg, &loop_expr_node, &temp_node_record, &dfn_record, &value_record);
	worklist.clear();
	visited.clear();
	worklist.push(entry);
	
	while (!worklist.empty()) {
		const ICFGNode* i_node = worklist.pop();
		const ICFGNode* depend_node = avfg->cfg_depend[i_node];
		std::set<const ICFGNode*>& outSet_ref = nodeOut[i_node];
		if(avfg->cfg_expr.find(depend_node) != avfg->cfg_expr.end()){
			if(avfg->expr_depend.find(depend_node) == avfg->expr_depend.end()){
				std::vector<std::shared_ptr<ExprVFG>> exprs_ts;
				std::shared_ptr<ExprVFG> temp_as = avfg->cfg_expr[depend_node];
				if(temp_as->getKind() == expr_binary){
					std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(temp_as);
					if(binary->op == '#'){
						std::vector<std::shared_ptr<ExprVFG>> adder = split_exprs(binary);
						for(auto iter2:adder){
							exprs_ts.push_back(iter2);
						}
					}
					else{
						exprs_ts.push_back(avfg->cfg_expr[depend_node]);
					}
				}else{exprs_ts.push_back(avfg->cfg_expr[depend_node]);}
				avfg->expr_depend[depend_node] = exprs_ts;
			}
		}
		for (auto iter : outSet_ref) {
			const ICFGNode* succ_node = avfg->cfg_depend[iter];
			if(avfg->cfg_depend[succ_node] == i_node)
				continue;
			std::set<const ICFGNode*>& inSet_ref = nodeIn[succ_node];
			inSet_ref.erase(i_node);
			
			if(avfg->expr_depend.find(depend_node) != avfg->expr_depend.end()){
				if(avfg->expr_depend.find(succ_node) == avfg->expr_depend.end() && inSet_ref.size() == 0){
					if(avfg->cfg_expr.find(succ_node) != avfg->cfg_expr.end()){ //#
						std::vector<std::shared_ptr<ExprVFG>> exprs;
						for(auto iter:avfg->expr_depend[depend_node]) {
							if(iter->getKind() == expr_binary){
								std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(iter);
    							if(binary->op == '#'){
									std::vector<std::shared_ptr<ExprVFG>> adder = split_exprs(binary);
									for(auto iter2:adder){
										exprs.push_back(iter2);
									}
									continue;
								}
							}
							exprs.push_back(iter);
						}
						exprs.push_back(avfg->cfg_expr[succ_node]);
						avfg->expr_depend[succ_node] = exprs;
					}
					else{
						avfg->cfg_depend[succ_node] = depend_node;
					}
				}
				else{
					//PHI
					if(avfg->expr_depend.find(succ_node) == avfg->expr_depend.end()){
						std::vector<std::shared_ptr<ExprVFG>> exprs;
						for(auto iter:avfg->expr_depend[depend_node]) {
							if(iter->getKind() == expr_binary){
								std::shared_ptr<BinaryVFG> binary = std::static_pointer_cast<BinaryVFG>(iter);
    							if(binary->op == '#'){
									std::vector<std::shared_ptr<ExprVFG>> adder = split_exprs(binary);
									for(auto iter2:adder){
										exprs.push_back(iter2);
									}
									continue;
								}
							}
							exprs.push_back(iter);
						}
						avfg->expr_depend[succ_node] = exprs;
					}
					else{
						std::vector<std::shared_ptr<ExprVFG>>& expr_self = avfg->expr_depend[depend_node];
						std::vector<std::shared_ptr<ExprVFG>>& expr_ref = avfg->expr_depend[succ_node];
						std::vector<std::shared_ptr<ExprVFG>> exprs;
						for(auto iter:avfg->expr_depend[succ_node]) 
							exprs.push_back(iter);
						for(int iter = 0; iter < expr_self.size(); iter++){
							bool unfit_flag = true;
							for(int iter2 = 0; iter2 < exprs.size(); iter2++){
								if(equal_field(expr_self[iter], exprs[iter2])){
									exprs[iter2] = make_shared<NoneVFG>();
									unfit_flag = false;
									break;
								}
							}
							if(unfit_flag){
								expr_ref.push_back(expr_self[iter]);
							}
						}
					}
					
				}
			}
			if(visited.find(succ_node) == visited.end() && inSet_ref.size() == 0){
				worklist.push(succ_node);
				visited.insert(succ_node);
			}
		}
	}
	exit_node = avfg->cfg_depend[exit_node];
	std::shared_ptr<ExprVFG> exit_expr = make_shared<ConstantVFG>(0);
	if(avfg->expr_depend.find(exit_node) == avfg->expr_depend.end()){
		return std::make_shared<ConstantVFG>(0);
	}
	else{
		std::vector<std::shared_ptr<ExprVFG>>& expr_self = avfg->expr_depend[exit_node];
		for(auto iter: expr_self){
			exit_expr = parseBinaryOp(exit_expr, iter, '#');
		}
	}
	return exit_expr;
}


/*
	Analysis for a function.
*/
void analysisAVFG_recursive(const SVFFunction* F, SVFG *svfg, SVFIR *pag, ICFG *icfg, std::set<const SVFFunction*> *target_func, PTACallGraph *callgraph, std::set<const SVFFunction*> *call_stack){
	AVFG avfg(F);
	if(funcs_expr.find(F) != funcs_expr.end()){
		return;
	}

	if (F->getValue() == "_ZN4fuse5reply17ReplyRaw$LT$T$GT$4send17h080991f9560499f9E"){
		debug_flag = true;
	}
	else{
		debug_flag = false;
	}
	PTACallGraphNode* current_node = callgraph->getCallGraphNode(F);
	for (auto it = current_node->OutEdgeBegin(), eit = current_node->OutEdgeEnd(); it != eit; ++it) {
		auto edge = *it;
		auto succ_node = edge->getDstNode();
		if (target_func->find(succ_node->getFunction()) != target_func->end()) {
			if(funcs_expr.find(succ_node->getFunction()) == funcs_expr.end()){
				if(call_stack->find(succ_node->getFunction()) != call_stack->end()){
					cout << "recursion!" << succ_node->getFunction()->getValue() << endl;
					continue;
				}
				call_stack->insert(succ_node->getFunction());
				analysisAVFG_recursive(succ_node->getFunction(), svfg, pag, icfg, target_func, callgraph, call_stack);
				call_stack->erase(succ_node->getFunction());
			}
		}
	}

	if (pag->hasFunArgsList(F)){
		auto arg_nodes = pag->getFunArgsList(F);
		for(auto iter : arg_nodes){
			const VFGNode* arg_node = svfg->getDefSVFGNode(iter);
			avfg.paramlist[arg_node] = false;      
			avfg.param_vector.push_back(arg_node); 
		}
	}
	auto func_begin_node = icfg->getFunEntryICFGNode(F);
	std::shared_ptr<ExprVFG> function_cost= parseFunctionCFG_recursive(pag, svfg, func_begin_node, icfg, &avfg, target_func, call_stack);
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
	std::cout << F->getValue() << "-------------------------:" << endl;
	std::cout << llvm::demangle(F->getValue()) << ":" << endl;
	func_expr.expr->output();
	std::cout << endl << endl;
	funcs_expr[F] = std::move(func_expr);
}

/*
	Analysis for a function.
*/
void analysisAVFG(const SVFFunction* F, SVFG *svfg, SVFIR *pag, ICFG *icfg, std::set<const SVFFunction*> *target_func){
	AVFG avfg(F);
	std::cout << F->getValue() << "-------------------------:" << endl;
	
	if (F->getValue() == "_ZN4fuse5reply17ReplyRaw$LT$T$GT$4send17h080991f9560499f9E"){
		debug_flag = true;
	}
	else{
		debug_flag = false;
	}
	if (pag->hasFunArgsList(F)){
		auto arg_nodes = pag->getFunArgsList(F);
		for(auto iter : arg_nodes){
			const VFGNode* arg_node = svfg->getDefSVFGNode(iter);
			avfg.paramlist[arg_node] = false;      
			avfg.param_vector.push_back(arg_node); 
		}
	}
	auto func_begin_node = icfg->getFunEntryICFGNode(F);
	std::shared_ptr<ExprVFG> function_cost= parseFunctionCFG(pag, svfg, func_begin_node, icfg, &avfg, target_func);
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


void judge_oom_guard(SVFIR *pag, const SVFG *svfg, const SVFFunction* F, ICFG *icfg){
	std::map<const ICFGNode*, std::set<const ICFGNode*>> nodeOut;
	std::map<const ICFGNode*, std::set<const ICFGNode*>> nodeIn;
	FIFOWorkList<const ICFGNode*> worklist;
	std::set<const ICFGNode*> visited;
	bool oom_safe_flag = false;
	auto entry = icfg->getFunEntryICFGNode(F);
	worklist.push(entry);
	const ICFGNode* exit_node;
	int index = 0;
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
				index += 1;
				const SVFFunction* succ_func = SVF::SVFUtil::getFunction(call_base->getCalledOperand()->getName());
				if(func_map.find(succ_func->getValue()) != func_map.end())
					succ_func = func_map[succ_func->getValue()];
				auto function_name = llvm::demangle(succ_func->getName());
				if(function_name.find("try_insert") != function_name.npos){
					continue;
				}
				if(oom_safe_flag == false && function_name.find("OOMGuardAllocator::my") != function_name.npos){
					oom_safe_function.insert(F);
					oom_safe_flag = true;
					break;
				}
				if(index > 10){
					break;
				}
			}
		}
		for (ICFGNode::const_iterator it = i_node->OutEdgeBegin(), eit = i_node->OutEdgeEnd(); it != eit; ++it) {
			ICFGEdge* edge = *it;
			const ICFGNode* succ_node = edge->getDstNode();
			if(succ_node == i_node)
				continue;
			if(CallICFGNode::classof(i_node)){
				const CallICFGNode* call_node = static_cast<const CallICFGNode*>(i_node);
				succ_node = call_node->getRetICFGNode();
			}
			if(nodeOut.find(i_node) == nodeOut.end()){
				std::set<const ICFGNode*> outSet;
				outSet.insert(succ_node);
				nodeOut[i_node] = outSet;
			} else{
				std::set<const ICFGNode*>& outSet_ref = nodeOut[i_node];
				outSet_ref.insert(succ_node);
			}
			if(nodeIn.find(succ_node) == nodeIn.end()){
				std::set<const ICFGNode*> inSet;
				inSet.insert(i_node);
				nodeIn[succ_node] = inSet;
			} else{
				std::set<const ICFGNode*>& inSet_ref = nodeIn[succ_node];
				inSet_ref.insert(i_node);
			}
			if (visited.find(succ_node) == visited.end()) {
				visited.insert(succ_node);
				worklist.push(succ_node);
			}
		}
	}
}


/*
	Analysis for Call Graph. Begin from __rust_alloc.
	
*/
void traverseOnCallGraph_recursive(PTACallGraph *callgraph, SVFG *svfg, SVFIR *pag, ICFG *icfg){
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
			auto func_name = succ_node->getFunction()->getName();
			if(func_name.find("drop") != func_name.npos || func_name.find("deref") != func_name.npos || func_name.find("panic") != func_name.npos)
				continue;
			if (visited.find(succ_node->getFunction()) == visited.end()) {
				visited.insert(succ_node->getFunction());
				if(succ_node != init_node_alloc || succ_node != init_node_realloc){ //跳过__rust_alloc
					func_map[succ_node->getFunction()->getValue()] = succ_node->getFunction();
				}
				judge_oom_guard(pag, svfg, succ_node->getFunction(), icfg);
				worklist.push(succ_node);
				std::vector<const SVFFunction*> Out;
				Out.push_back(f_node->getFunction());
				CG_Out[succ_node->getFunction()] = Out;
			}
			else{
				std::vector<const SVFFunction*>& Out = CG_Out[succ_node->getFunction()];
				Out.push_back(f_node->getFunction());
			}
		}
	}

	for(auto iter : oom_safe_function){
		std::set<const SVFFunction*> call_stack;
		call_stack.insert(iter); 
		analysisAVFG_recursive(iter, svfg, pag, icfg, &visited, callgraph, &call_stack);
	}


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
			auto func_name = succ_node->getFunction()->getName();
			if(func_name.find("drop") != func_name.npos || func_name.find("deref") != func_name.npos)
				continue;
			if (visited.find(succ_node->getFunction()) == visited.end()) {
				visited.insert(succ_node->getFunction());
				worklist.push(succ_node);
				std::vector<const SVFFunction*> Out;
				Out.push_back(f_node->getFunction());
				CG_Out[succ_node->getFunction()] = Out;
			}
			else{
				std::vector<const SVFFunction*>& Out = CG_Out[succ_node->getFunction()];
				Out.push_back(f_node->getFunction());
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
			}
			worklist.push(f_node);
			if(flag){
				flag = false;
				record_node = f_node;
			}
			continue;
		}
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
	int index = 0;
	while(true){
		if(!temp_node->hasOutgoingEdge()){
			break;
		}
		auto it = temp_node->OutEdgeBegin();
		auto edge = *it;
		const SVF::ICFGNode* succ_node = edge->getDstNode();
		
		if(CallICFGNode::classof(temp_node)){
			const CallICFGNode* call_node = static_cast<const CallICFGNode*>(temp_node);
			auto temp_call_site = call_node->getCallSite();
			const CallBase* call_base = static_cast<const CallBase*>(temp_call_site);
			const SVFFunction* succ_func = SVF::SVFUtil::getFunction(call_base->getCalledOperand()->getName());
			auto function_name = llvm::demangle(succ_func->getValue());
			if(function_name.find("OOMGuardAllocator::my_wrap_end") != function_name.npos){
				break;
			}
			else if(function_name.find("OOMGuardAllocator::my_wrap") != function_name.npos){
				auto vfg_nodes = call_node->getVFGNodes();
				for(auto iter : vfg_nodes){
					if(SVF::ActualParmVFGNode::classof(iter)){
						auto addr_node = (*(iter->InEdgeBegin()))->getSrcNode();
						param_connect(svfg, addr_node, &param_transform, index, iter);
						index++;
						break;
					}
				}
			}
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
		}
	}
	param_transforms[oom_function] = std::move(param_transform);
}




void output_warning(const SVFFunction* call_function){
    if(warning_sets.find(call_function) != warning_sets.end()){
		auto &warning_temp = warning_sets[call_function];
		for(auto iter:warning_temp){
			iter.output();
		}
	}
	if(trait_set_record.find(call_function) != trait_set_record.end()){
		std::vector<std::string> &trait_set_ref = trait_set_record[call_function];
		for(auto trait_iter:trait_set_ref){
			if(trait_flags.find(trait_iter) != trait_flags.end()){
				std::set<const SVFFunction*> &trait_set = trait_map[trait_iter];
				for(auto trait_func:trait_set){
					if(trait_warning.find(trait_func->getName()) != trait_warning.end()){
						auto warning_msg = trait_warning[trait_func->getName()];
						std::cout << endl << "warning for the following trait function:" << endl;
						std::cout << "name:" << warning_msg.function_name << endl;
						std::cout << "filename:" << warning_msg.filename << endl;
						std::cout << "line:" << warning_msg.line << endl;
						output_warning(trait_func);
					}
				}
			}
		}
	}
    warning_flags[call_function] = false;
	auto &out_vector = CG_Out[call_function];
	for(auto iter:out_vector){
		bool flag = false;
		std::vector<std::string> &trait_set_ref = trait_set_record[iter];
		for(auto trait_iter:trait_set_ref){
			if(trait_flags.find(trait_iter) != trait_flags.end()){
				flag = true;
			}
		}
		if(warning_flags[iter] || flag){
			output_warning(iter);
		}
	}	
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
		traitfunc_name_map[loc] = func_name;
    }
    file.close();

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
								auto func = b_inst->getOperand(0); //get function name
								std::string delimiter1 = "$GT$";
								std::string delimiter2 = "..";
								std::string delimiter3 = "$GT$::";
								std::string trait_demangle = llvm::demangle(func->getName().str());
								std::string trait_demangle2 = llvm::demangle(func->getName().str());
								trait_demangle = trait_demangle.substr(0, trait_demangle.find(delimiter1));
								trait_demangle2 = trait_demangle2.erase(0, trait_demangle2.find(delimiter3) + delimiter3.length());
								trait_demangle2 = trait_demangle2.substr(0,trait_demangle2.find("::"));
								while(trait_demangle.find(delimiter2) != std::string::npos){
									trait_demangle.erase(0, trait_demangle.find(delimiter2) + delimiter2.length());
								}
								std::string trait_key = trait_demangle + "_" + trait_demangle2;
								const std::string func_trait_name = func->getName().str();
								trait_key_map[func_trait_name] = trait_key;
								if(trait_map.find(trait_key) == trait_map.end()){
									std::set<const SVFFunction*> trait_set;
									trait_set.insert(SVF::SVFUtil::getFunction(func->getName()));
									trait_map[trait_key] = trait_set;
								}
								else{
									std::set<const SVFFunction*>& trait_set_ref = trait_map[trait_key];
									trait_set_ref.insert(SVF::SVFUtil::getFunction(func->getName()));
								}
							}
						}
						index++;
					}
				}	
			}
		}
	}
	traverseOnCallGraph_recursive(callgraph, svfg, pag, icfg);


	//warning
	int count_try = 0;
	int count_error = 0;
	int count_func = 0;
	int count_oom_call = 0;
	for(auto iter : oom_safe_function){
		count_try += allocation_count[iter] + 1;
		count_error += sites_count[iter];
		count_func += modify_function[iter];
		count_oom_call += oom_counts[iter];
		if(warning_flags[iter]){
			std::cout << "---------------------warning:" << iter->getName() << endl;
			output_warning(iter);
		}
		//trait warning output
		if(trait_set_record.find(iter) != trait_set_record.end()){
			std::vector<std::string> &trait_set_ref = trait_set_record[iter];
			for(auto trait_iter:trait_set_ref){
				if(trait_flags.find(trait_iter) != trait_flags.end()){
					std::set<const SVFFunction*> &trait_set = trait_map[trait_iter];
					for(auto trait_func:trait_set){
						if(trait_warning.find(trait_func->getName()) != trait_warning.end()){
							auto warning_msg = trait_warning[trait_func->getName()];
							std::cout << endl << "warning for the following trait function:" << endl;
							std::cout << "name:" << warning_msg.function_name << endl;
							std::cout << "filename:" << warning_msg.filename << endl;
							std::cout << "line:" << warning_msg.line << endl;
							output_warning(trait_func);
						}
					}
				}
			}
		}
		auto &out_vector = CG_Out[iter];
		for(auto iter2:out_vector){
			bool flag = false;
			std::vector<std::string> &trait_set_ref = trait_set_record[iter2];
			for(auto trait_iter:trait_set_ref){
				if(trait_flags.find(trait_iter) != trait_flags.end()){
					flag = true;
				}
			}
			if(flag){
				output_warning(iter2);
			}
		}	
	}
	std::cout << "sum:" << count_try << endl;
	std::cout << "sum_error_handle:" << count_error << endl;
	std::cout << "sum_func:" << count_func << endl;
	std::cout << "oom_call:" << count_oom_call << endl;
	for(auto iter : oom_safe_function){
		auto names = iter->getName();
		handle_parameter(iter, callgraph, icfg, svfg);
		FuncExpr& func_expr = funcs_expr[iter];
		std::vector<std::shared_ptr<ExprVFG>> fold_expr;
		func_expr.expr->foldExpr(&fold_expr);
		
		std::cout << "OOM_Function" << names << "~";
		for(int i = 0; i < fold_expr.size(); i++){
			fold_expr[i]->transform(&param_transforms[iter]);
			fold_expr[i]->output();
			std::cout << "|" ;
		}
		std::cout << endl;
	}

	//callgraph->dump("cfg");
	//pag->dump("pag");
	//icfg->dump("icfg");
	//svfg->dump("svfg"); 

	
	//PM.add(new SkeletonPass());
  	//PM.run(*Mod);

	//LLVMModuleSet::getLLVMModuleSet()->dumpModulesToFile(".bc");
	return 0;
}
