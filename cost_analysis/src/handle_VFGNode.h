#ifndef HANDLE_VFGNode
#define HANDLE_VFGNode
#include "Util/SVFUtil.h"
#include "avfg_lib.h"
#include <stack>

using namespace SVF;
using namespace llvm;

std::shared_ptr<ExprVFG> findAndParse(const VFGNode* node, const SVFG *svfg, AVFG *avfg, std::stack<FieldIndex> *extract_index, FILOWorkList<CallSiteID> *call_stack, int depth, bool *error_flag);


int getGepIndex(const VFGNode* node){
	const GepVFGNode* gp = static_cast<const GepVFGNode*>(node);
	const Instruction *inst = gp->getInst();
	if(!llvm::GetElementPtrInst::classof(inst)){
		return -1;
	}
	const GetElementPtrInst *g_inst = SVFUtil::dyn_cast<GetElementPtrInst>(inst);
	int index = -1;
	for(auto i = g_inst->idx_begin(); i != g_inst->idx_end(); ++i){
		if(llvm::ConstantInt::classof(*i)){
			const ConstantInt* constant = SVFUtil::dyn_cast<ConstantInt>(i);
			index = constant->getSExtValue();
		}
	}
	return index;
}

void pop_FILO(std::stack<FieldIndex> *extract_index, int index_num){
	for(int i = 0; i < index_num; i++){
		if(extract_index->size() == 0)
			break;
		extract_index->pop();
	}
}

int getLoadIndexList(const VFGNode* node, const SVFG *svfg, std::stack<FieldIndex> *extract_index){
	const VFGNode* current_node = node;
	auto pag = svfg->getPAG();
	int index_num = 0;
	while(true){
		if(current_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Gep){
			const GepVFGNode* gp = static_cast<const GepVFGNode*>(current_node);
			const Instruction *inst = gp->getInst();
			if(llvm::GetElementPtrInst::classof(inst)){
				int index = getGepIndex(current_node);
				const GetElementPtrInst *g_inst = SVFUtil::dyn_cast<GetElementPtrInst>(inst);
				if(index != -1){
					int size = calculateSize(g_inst->getResultElementType());
					int pre_size = calculatePreSize(g_inst->getSourceElementType(), index);
					FieldIndex field_info(index, pre_size, size);
					extract_index->push(field_info);
					const PAGNode *pag_node = pag->getGNode(pag->getValueNode(g_inst->getPointerOperand()));
					current_node = svfg->getDefSVFGNode(pag_node);
					index_num++;
					continue;
				}
			}
			else{ 
				auto temp_edge = *(current_node->InEdgeBegin());
				current_node = temp_edge->getSrcNode();
				if(current_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
					const CopyVFGNode* cp = static_cast<const CopyVFGNode*>(current_node);
					const Instruction *inst = cp->getInst();
					if(inst && llvm::BitCastInst::classof(inst)){
						current_node = (*(current_node->InEdgeBegin()))->getSrcNode();
						continue;
					}
				}
			}
		}
		if(current_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
			const CopyVFGNode* cp = static_cast<const CopyVFGNode*>(current_node);
			const Instruction *inst = cp->getInst();
			if(inst && llvm::BitCastInst::classof(inst)){
				const llvm::BitCastInst *b_inst = SVFUtil::dyn_cast<llvm::BitCastInst>(inst);

				auto src = b_inst->getSrcTy();
				auto dest = b_inst->getDestTy();
				while(src->isPointerTy() && dest->isPointerTy()){
					src = src->getPointerElementType();
					dest = dest->getPointerElementType();
				}
				if(src->isStructTy() && src->getStructNumElements() > 0){
					int src_type_index = 0;
					auto s = src->getStructElementType(src_type_index);
					auto y = calculateSize(src->getStructElementType(src_type_index));
					while(src_type_index < src->getStructNumElements()-1 && src->getStructElementType(src_type_index) && (calculateSize(src->getStructElementType(src_type_index)) == 0)){
						src_type_index += 1;
					}
					
					if(src->getStructElementType(src_type_index) == dest){
						int dst_type_size = calculateSize(dest);
						FieldIndex field_info(src_type_index, 0, dst_type_size);
						extract_index->push(field_info);
						index_num++;
						auto temp_edge = *(current_node->InEdgeBegin());
						current_node = temp_edge->getSrcNode();
						continue;
					}
				}
			}
		}
		break;
	}
	return index_num;
}

std::stack<FieldIndex> getStoreIndexList(const VFGNode* node, const SVFG *svfg, std::stack<FieldIndex> *extract_index, bool &match_flag){
	const VFGNode* current_node = node;
	std::stack<FieldIndex> record_index;
	std::stack<FieldIndex> return_index;
	auto pag = svfg->getPAG();
	while(true){
		if(current_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Gep && !extract_index->empty()){
			const GepVFGNode* gp = static_cast<const GepVFGNode*>(current_node);
			const Instruction *inst = gp->getInst();
			if(llvm::GetElementPtrInst::classof(inst)){
				int index = getGepIndex(current_node);
				const GetElementPtrInst *g_inst = SVFUtil::dyn_cast<GetElementPtrInst>(inst);
				if(index != -1){
					const PAGNode *pag_node = pag->getGNode(pag->getValueNode(g_inst->getPointerOperand()));
					current_node = svfg->getDefSVFGNode(pag_node);
					int size = calculateSize(g_inst->getResultElementType());
					int pre_size = calculatePreSize(g_inst->getSourceElementType(), index);
					FieldIndex field_info(index, pre_size, size);
					record_index.push(field_info);
					continue;
				}
			}
			else{ 
				auto temp_edge = *(current_node->InEdgeBegin());
				current_node = temp_edge->getSrcNode();
				if(current_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
					const CopyVFGNode* cp = static_cast<const CopyVFGNode*>(current_node);
					const Instruction *inst = cp->getInst();
					if(inst && llvm::BitCastInst::classof(inst)){
						current_node = (*(current_node->InEdgeBegin()))->getSrcNode();
						continue;
					}
				}
			}
		}
		if(current_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
			const CopyVFGNode* cp = static_cast<const CopyVFGNode*>(current_node);
			const Instruction *inst = cp->getInst();
			if(inst && llvm::BitCastInst::classof(inst)){  //TODO:递归用size来判断, bitcast扩大
				const llvm::BitCastInst *b_inst = SVFUtil::dyn_cast<llvm::BitCastInst>(inst);
				auto src = b_inst->getSrcTy()->getPointerElementType();
				auto dest = b_inst->getDestTy()->getPointerElementType();
				int src_type_index = 0;
				while(src->isStructTy() && src_type_index < src->getStructNumElements()-1 && (src->getStructElementType(src_type_index)) && (calculateSize(src->getStructElementType(src_type_index)) == 0)){
					src_type_index += 1;
				}
				if(src->isStructTy() && src->getStructNumElements() > 0 && src->getStructElementType(src_type_index) == dest){
					int dst_type_size = calculateSize(dest);
					FieldIndex field_info(src_type_index, 0, dst_type_size);
					record_index.push(field_info);
					auto temp_edge = *(current_node->InEdgeBegin());
					current_node = temp_edge->getSrcNode();
					continue;
				}
			}
		}
		break;
	}
	while(!record_index.empty() && !extract_index->empty()){
		auto record = record_index.top();
		auto target = extract_index->top();
		record_index.pop();
		extract_index->pop();
		return_index.push(target);
		if(target.index != record.index){
			record_index.push(target);
			break;
		}
	}
	if(!record_index.empty()){ 
		while(!return_index.empty()){
			extract_index->push(return_index.top());
			return_index.pop();
		}
		match_flag = false;
	}
	return return_index;
}


std::shared_ptr<ExprVFG> parseVFGNode(const VFGNode* node, const SVFG *svfg, AVFG *avfg, std::stack<FieldIndex> *extract_index, FILOWorkList<CallSiteID> *call_stack, int depth, bool *error_flag){
	if(*error_flag)
		return make_shared<NoneVFG>();
	if(depth > 5000){
		std::cout << node->toString() << endl;
		std::cout << "Warning: overdepth" << depth << endl;
		*error_flag = true;
		return make_shared<NoneVFG>();
	}
	if(debug_flag){
		std::stack<FieldIndex> record_index_0;
		std::stack<CallSiteID> record_index_1;
		std::cout << node->toString() << endl;
		while(!extract_index->empty()){
			auto temp = extract_index->top();
			extract_index->pop();
			record_index_0.push(temp);
			std::cout << temp.index << ";";
		}
		while(!record_index_0.empty()){
			extract_index->push(record_index_0.top());
			record_index_0.pop();
		}
		std::cout << endl;
		while(!call_stack->empty()){
			auto temp = call_stack->pop();
			record_index_1.push(temp);
			std::cout << temp << ";";
		}
		while(!record_index_1.empty()){
			call_stack->push(record_index_1.top());
			record_index_1.pop();
		}
		std::cout << endl;
	}
	int record_number = 0;
	bool extract_flag = !extract_index->empty();
	if (node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy && llvm::ConstantPointerNull::classof(node->getValue())){
		return std::make_shared<NoneVFG>();
	}
    switch (node->getNodeKind()) {
        case SVF::VFGNode::VFGNodeK::AParm:
        {	
			if (llvm::Constant::classof(node->getValue())){
				int size = 0;
				int pre_size = 0;
				bool field_flag = false;
				if(!extract_index->empty()){
					field_flag = true;
					pre_size = extract_index->top().pre_size;
                	size = extract_index->top().size;
				}
				long const_value = parseConstant(node->getValue(), field_flag, pre_size, size);
				if(debug_flag)
					std::cout << "We got const_value:" << const_value << endl;
				return std::make_shared<ConstantVFG>(const_value);
			}
            break;
        }
        case SVF::VFGNode::VFGNodeK::ARet:
        {
			const ActualRetVFGNode* ar = static_cast<const ActualRetVFGNode*>(node);
			const CallICFGNode* ar_node = ar->getCallSite();
			const Instruction* inst = ar_node->getCallSite();
			if (llvm::CallBase::classof(inst)){
				const CallBase* cb = SVFUtil::dyn_cast<CallBase>(inst);
				auto temp = cb->getCalledOperand();
				//for llvm intrinsic functions
				if(umul_function && cb->getCalledOperand() == umul_function->getLLVMFun()){
					if(extract_index->empty()){
						std::cout << "Error: umul None!!!!!!!" << endl;
						return make_shared<NoneVFG>();
					}
					auto temp_record = extract_index->top();
					extract_index->pop();
					auto pag_vec = ar_node->getActualParms();
					auto node_l = svfg->getDefSVFGNode(pag_vec[0]);
					auto node_r = svfg->getDefSVFGNode(pag_vec[1]);
					auto result_l = parseVFGNode(node_l, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					auto result_r = parseVFGNode(node_r, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					extract_index->push(temp_record);
					return parseBinaryOp(result_l, result_r, '*');
				}
				if(uadd_function && cb->getCalledOperand() == uadd_function->getLLVMFun()){
					if(extract_index->empty()){
						std::cout << "Error: uadd None!!!!!!!" << endl;
						return make_shared<NoneVFG>();
					} 
					auto temp_record = extract_index->top();
					extract_index->pop();
					auto pag_vec = ar_node->getActualParms();
					auto node_l = svfg->getDefSVFGNode(pag_vec[0]);
					auto node_r = svfg->getDefSVFGNode(pag_vec[1]);
					auto result_l = parseVFGNode(node_l, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					auto result_r = parseVFGNode(node_r, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					extract_index->push(temp_record);
					return parseBinaryOp(result_l, result_r, '+');
				}
				if(i64_ctlz_function && cb->getCalledOperand() == i64_ctlz_function->getLLVMFun()){
					auto pag_vec = ar_node->getActualParms();
					auto node_l = svfg->getDefSVFGNode(pag_vec[0]);
					auto result_l = parseVFGNode(node_l, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					auto result = parseBinaryOp(result_l, std::make_shared<ConstantVFG>(64), 'c');
					result = result->simplify();
					return result;
				}
			}
			break;
        }
        case SVF::VFGNode::VFGNodeK::FParm: 
        {
			if(avfg->paramlist.find(node) != avfg->paramlist.end()){
				if(depth >= 0)
					avfg->paramlist[node] = true;
				if(debug_flag)
					std::cout << "We got param" << endl;
				if(extract_index->empty()){
					return std::make_shared<VariableVFG>(node);
				}
				else{
					std::vector<FieldIndex> fields;
					std::stack<FieldIndex> temp_stack;
					while(!extract_index->empty()){
						FieldIndex index = extract_index->top();
						temp_stack.push(index);
						fields.push_back(index);
						extract_index->pop();
					}
					while(!temp_stack.empty()){
						FieldIndex index = temp_stack.top();
						temp_stack.pop();
						extract_index->push(index);
					}
					avfg->param_field[node] = fields;
					int offset = calculateOffset(&fields);
					return std::make_shared<VariableVFG>(node, offset, fields.back().size);
				}
			} 
			bool empty_flag = false; 
			CallSiteID call_id = 0;
			if (call_stack->empty()){
				empty_flag = true;
			}
			else{
				call_id = call_stack->pop();
			}
			for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				if(SVF::CallDirSVFGEdge::classof(edge)){
					const CallDirSVFGEdge *call_edge = static_cast<const CallDirSVFGEdge*>(edge);
					if(!empty_flag && call_id == call_edge->getCallSiteId()){
						auto next_node = call_edge->getSrcNode();
						auto result = parseVFGNode(next_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
						if(!empty_flag)
							call_stack->push(call_id);
						return result;
					}
				}
			}
			if(!empty_flag)
				call_stack->push(call_id);
			if(debug_flag)
				std::cout << "FParm None!!!!!!" << endl;
			return std::make_shared<NoneVFG>();
        }
        case SVF::VFGNode::VFGNodeK::FRet:
        {
            break;
        }

        //BinaryOPVFGNode
        case SVF::VFGNode::VFGNodeK::BinaryOp:
        {   
			const BinaryOPVFGNode* binary_node = static_cast<const BinaryOPVFGNode*>(node);
			auto LHS = svfg->getDefSVFGNode(binary_node->getOpVer(0));
			auto RHS = svfg->getDefSVFGNode(binary_node->getOpVer(1));
			const BinaryOperator* binary_inst = SVFUtil::dyn_cast<BinaryOperator>(binary_node->getValue());
			auto result_l = parseVFGNode(LHS, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
			auto result_r = parseVFGNode(RHS, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
			std::shared_ptr<ExprVFG> result = std::make_shared<NoneVFG>();
			switch(binary_inst->getOpcode()){
				case Instruction::BinaryOps::Add:
				{	
					result = parseBinaryOp(result_l, result_r, '+');
					break;
				}
				case Instruction::BinaryOps::Sub:
				{	
					result =  parseBinaryOp(result_l, result_r, '-');
					break;
				}
				case Instruction::BinaryOps::UDiv:
				{	
					result =  parseBinaryOp(result_l, result_r, '/');
					break;
				}
				case Instruction::BinaryOps::SDiv:
				{	
					result =  parseBinaryOp(result_l, result_r, '/');
					break;
				}
				case Instruction::BinaryOps::FDiv:
				{	
					result =  parseBinaryOp(result_l, result_r, '/');
					break;
				}
				case Instruction::BinaryOps::FAdd:
				{	
					break;
				}
				case Instruction::BinaryOps::FSub:
				{
					break;
				}
				case Instruction::BinaryOps::URem:
				{	
					break;
				}
				case Instruction::BinaryOps::SRem:
				{
					break;
				}
				case Instruction::BinaryOps::FRem:
				{
					break;
				}
				case Instruction::BinaryOps::Shl:
				{	
					result =  parseBinaryOp(result_l, result_r, '<');
					break;
				}
				case Instruction::BinaryOps::LShr:
				{
					result =  parseBinaryOp(result_l, result_r, '}');
					break;
				}
				case Instruction::BinaryOps::AShr:
				{
					result =  parseBinaryOp(result_l, result_r, '>');
					break;
				}
				case Instruction::BinaryOps::Mul:
				{	
					result = parseBinaryOp(result_l, result_r, '*');
					break;
				}
				case Instruction::BinaryOps::FMul:
				{
					break;
				}
				case Instruction::BinaryOps::Or:
				{	
					result = parseBinaryOp(result_l, result_r, '|');
					break;
				}
				case Instruction::BinaryOps::And:
				{	
					result = parseBinaryOp(result_l, result_r, '&');
					break;
				}
				case Instruction::BinaryOps::Xor:
				{	
					result = parseBinaryOp(result_l, result_r, '^');
					break;
				}
				default:
					break;
			}
			if(result->getKind() == expr_binary){
				result = move(result->simplify());
				return result;
			}
			break;
        }

        //CmpVFGNode
        case SVF::VFGNode::VFGNodeK::Cmp:
        {
            break;
        }

        //Dummy
        case SVF::VFGNode::VFGNodeK::DummyVProp:
        {
            break;
        }

        //MRSVFGNode
        case SVF::VFGNode::VFGNodeK::APIN:
        {	
			for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				auto target = edge->getSrcNode();
			}
			auto it = node->InEdgeBegin();
			auto edge = *it;
			auto succ_node = edge->getSrcNode();
			if(node->getFun() == avfg->getFunction() && SVF::FormalINSVFGNode::classof(succ_node))
				break;
			std::stack<FieldIndex> record_index;
			const ActualINSVFGNode* apin_node = static_cast<const ActualINSVFGNode*>(node);
			const NodeBS& pts = apin_node->getPointsTo();
    		NodeBS::iterator ii = pts.begin();
			PAGNode* targetObj = svfg->getPAG()->getGNode(*ii);
			bool def_flag = false;
			if(targetObj->getFunction())
				if(node->getFun()->getLLVMFun() == targetObj->getFunction())
					def_flag = true;
			if(targetObj->hasValue()){
				auto alloca_value = targetObj->getValue();
				const AllocaInst* alloca_inst = static_cast<const AllocaInst*>(alloca_value);
				Type* alloca_record_type = alloca_inst->getAllocatedType();
				bool match_flag = false;
				bool match_flag_src = false;
				int number = 0;
				int number_src = 0;
				auto arg_nodes = apin_node->getCallSite()->getActualParms();
				
				auto pag = svfg->getPAG();
				auto alloca_type = alloca_record_type;
				if(def_flag == false && pag->hasFunArgsList(node->getFun())){
					auto current_arg = pag->getFunArgsList(node->getFun());
					while(alloca_type->isStructTy()){
						for(auto iter : current_arg){
							auto arg_value = svfg->getDefSVFGNode(iter)->getValue();
							if(arg_value){
								auto arg_type = arg_value->getType();
								if(arg_type->isPointerTy()){
									arg_type = arg_type->getPointerElementType();
								}
								if(arg_type == alloca_type){
									match_flag_src = true;
									break;
								}
							}
						}
						if(match_flag_src){
							break;
						}
						else{
							Type::subtype_iterator ib = alloca_type->subtype_begin();
							while(ib){
								int target_size = calculateSize(*ib);
								if(target_size > 0) break;
								ib++;
							}
							alloca_type = *ib;
							number_src++;
						}
					}
				}
				alloca_type = alloca_record_type;
				while(alloca_type->isStructTy()){
					for(auto iter : arg_nodes){
						auto arg_value = svfg->getDefSVFGNode(iter)->getValue();
						if(arg_value){
							auto arg_type = arg_value->getType();
							if(arg_type->isPointerTy()){
								arg_type = arg_type->getPointerElementType();
							}
							if(arg_type == alloca_type){
								match_flag = true;
								break;
							}
						}
					}
					if(match_flag){
						break;
					}
					else{
						int src_type_index = 0;
						int target_size = 0;
						Type::subtype_iterator ib = alloca_type->subtype_begin();
						while(ib){
							target_size = calculateSize(*ib);
							if(target_size > 0) break;
							src_type_index += 1;
							ib++;
						}
						FieldIndex field_info(src_type_index, 0, target_size);
						alloca_type = *ib;
						number++;
						record_index.push(field_info);
					}
				}
				if(match_flag && ((match_flag && match_flag_src) || match_flag && def_flag)){
					for(int i = 0; i < number - number_src; i++){
						auto record = record_index.top();
						extract_index->push(record);
						record_index.pop();
					}
					record_number = number - number_src;
				}
				else{
					record_number = 0;
					break;
				}
			}
			else{
				std::cout << "ERROR APIN ERROR" << endl;
			}
			break;
        }
        case SVF::VFGNode::VFGNodeK::APOUT: 
        {	
			std::stack<FieldIndex> record_index;
			const ActualOUTSVFGNode* apout_node = static_cast<const ActualOUTSVFGNode*>(node);
			const NodeBS& pts = apout_node->getPointsTo();
    		NodeBS::iterator ii = pts.begin();
			PAGNode* targetObj = svfg->getPAG()->getGNode(*ii);
			if(targetObj->hasValue()){
				auto alloca_value = targetObj->getValue();
				const AllocaInst* alloca_inst = static_cast<const AllocaInst*>(alloca_value);
				Type* alloca_type = alloca_inst->getAllocatedType();
				bool match_flag = false;
				int number = 0;
				auto arg_nodes = apout_node->getCallSite()->getActualParms();
				while(alloca_type->isStructTy()){
					for(auto iter : arg_nodes){
						auto arg_value = svfg->getDefSVFGNode(iter)->getValue();
						if(arg_value){
							auto arg_type = arg_value->getType();
							if(arg_type->isPointerTy()){
								arg_type = arg_type->getPointerElementType();
							}
							if(arg_type == alloca_type){
								match_flag = true;
								break;
							}
						}
					}
					if(match_flag){
						break;
					}
					else{
						Type::subtype_iterator ib = alloca_type->subtype_begin();
						alloca_type = *ib;
						number++;
					}
				}
				if(match_flag){
					for(int i = 0; i < number; i++){
						auto record = extract_index->top();
						if(record.index == 0){ 
							extract_index->pop();
							record_index.push(record);
						}
						else{
							break;
						}
					}
				}
				else{
					while(!record_index.empty()){
						record_index.pop();
					}
				}
			}
			else{
				std::cout << "ERROR: APOUT ERROR" << endl;
			}

			//-------------------------------------------------
            std::vector<std::shared_ptr<ExprVFG>> exprs;
			for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				auto succ_node = edge->getSrcNode();
				if(SVF::RetIndSVFGEdge::classof(edge)){
					const RetIndSVFGEdge *ret_edge = static_cast<const RetIndSVFGEdge*>(edge);
					call_stack->push(ret_edge->getCallSiteId());
				}
				auto result = parseVFGNode(succ_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
				if(SVF::RetIndSVFGEdge::classof(edge)){
					call_stack->pop();
				}
				if (result->getKind() == ExprTypes::expr_none){//TODO:PHI
					continue;
				}
				else{
					exprs.push_back(std::move(result));
				}
			}
			while(!record_index.empty()){
				extract_index->push(record_index.top());
				record_index.pop();
			}
			if(exprs.size() == 0){
				if(debug_flag)
					std::cout << "APOUT None!!!!!!" << endl;
				return make_shared<NoneVFG>();
			} 
			else if(exprs.size() == 1){
				return exprs[0];
			}
			else{
				std::shared_ptr<std::vector<std::shared_ptr<ExprVFG>>> ptr_exprs = make_shared<std::vector<std::shared_ptr<ExprVFG>>>(exprs);
				std::shared_ptr<ExprVFG> result = std::make_shared<PHIVFG>(std::move(ptr_exprs));
				result = result->simplify();
				return result;
			}
        }
        case SVF::VFGNode::VFGNodeK::FPIN:
        {	
			//--------------------------field-------------------------
			if(avfg->getFunction() == node->getFun()){
				if(extract_flag && node->hasIncomingEdge()){
					std::vector<FieldIndex> fields;
					std::stack<FieldIndex> temp_stack;
					while(!extract_index->empty()){
						FieldIndex index = extract_index->top();
						temp_stack.push(index);
						fields.push_back(index);
						extract_index->pop();
					}
					while(!temp_stack.empty()){
						FieldIndex index = temp_stack.top();
						temp_stack.pop();
						extract_index->push(index);
					}
					auto fields_ptr = make_shared<std::vector<FieldIndex>>(fields);
					if(debug_flag)
						std::cout << "We got a field node" << endl;
					return std::make_shared<VarFieldVFG>(node, fields_ptr);
				}
				else
					return std::make_shared<NoneVFG>();
			}
			//--------------------------field-------------------------

			bool empty_flag = false;
			CallSiteID call_id = 0;
			if (call_stack->empty()){
				empty_flag = true;
			}
			else{
				call_id = call_stack->pop();
			}

			for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				if(SVF::CallIndSVFGEdge::classof(edge)){
					const CallIndSVFGEdge *call_edge = static_cast<const CallIndSVFGEdge*>(edge);
					if(!empty_flag && call_id == call_edge->getCallSiteId()){
						auto next_node = call_edge->getSrcNode();
						auto result = parseVFGNode(next_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
						if(!empty_flag)
							call_stack->push(call_id);
						return result;
					}
				}
			}
			if(!empty_flag)
				call_stack->push(call_id);
			if(debug_flag)
				std::cout << "FPIN None!!!!!!" << endl;
			return std::make_shared<NoneVFG>();
        }
        case SVF::VFGNode::VFGNodeK::FPOUT:
        {
            break;
        }
        case SVF::VFGNode::VFGNodeK::MIntraPhi:
        {
            std::vector<std::shared_ptr<ExprVFG>> exprs;
			for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				auto succ_node = edge->getSrcNode();
				if ((edge->isIndirectVFGEdge()) && (!SVF::MRSVFGNode::classof(succ_node) || SVF::IntraMSSAPHISVFGNode::classof(succ_node) || SVF::ActualOUTSVFGNode::classof(succ_node) || SVF::FormalINSVFGNode::classof(succ_node))){
					auto temp = parseVFGNode(succ_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					if(temp->getKind() != expr_none)
						exprs.push_back(std::move(temp));
					continue;
				}
			}
			if(exprs.size() == 0){
				if(debug_flag)
					std::cout << "MIntraPhi None!!!!!!" << endl;
				return std::make_shared<NoneVFG>();
			}
			if(exprs.size() == 1)
				return exprs[0];
			std::shared_ptr<std::vector<std::shared_ptr<ExprVFG>>> ptr_exprs = make_shared<std::vector<std::shared_ptr<ExprVFG>>>(exprs);
			std::shared_ptr<ExprVFG> result = std::make_shared<PHIVFG>(std::move(ptr_exprs));
			result = result->simplify();
			return result;
        }
        case SVF::VFGNode::VFGNodeK::MInterPhi:
        {
            break;
        }

        //NullPtr
        case SVF::VFGNode::VFGNodeK::NPtr:
        {
            break;
        }

        //PHI
        case SVF::VFGNode::VFGNodeK::TIntraPhi:
        {
            break;
        }
        case SVF::VFGNode::VFGNodeK::TInterPhi:
        {
            break;
        }

        //Statement
		//AcutualParm->FormalParm, CopyVFGNode bitcast传递关系
        case SVF::VFGNode::VFGNodeK::Addr:  
        {   
            if (llvm::Constant::classof(node->getValue())){
				int size = 0;
				int pre_size = 0;
				bool field_flag = false;
				if(!extract_index->empty()){
					field_flag = true;
					pre_size = extract_index->top().pre_size;
                	size = extract_index->top().size;
				}
				long const_value = parseConstant(node->getValue(), field_flag, pre_size, size);
				if(debug_flag)
					std::cout << "We got a const_value:" << const_value << endl;
				return std::make_shared<ConstantVFG>(const_value);
			}
			
			auto edge = *(node->InEdgeBegin());
			if (!edge){
				auto result = findAndParse(node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
				if(result->getKind() == ExprTypes::expr_none && debug_flag)
					std::cout << "Addr None!!!!!" << endl;
				return result;
			}
			break;
        }
        case SVF::VFGNode::VFGNodeK::Copy:
        {   
			auto pag = svfg->getPAG();
			const CopyVFGNode* cp = static_cast<const CopyVFGNode*>(node);
			const Instruction *inst = cp->getInst();
			if(inst && llvm::BitCastInst::classof(inst)){
				
				const llvm::BitCastInst *b_inst = SVFUtil::dyn_cast<llvm::BitCastInst>(inst);
				auto src = b_inst->getSrcTy()->getPointerElementType();
				auto dest = b_inst->getDestTy()->getPointerElementType();
				int src_type_index = 0;
				while(src->isStructTy() && src_type_index < src->getStructNumElements()-1 && (src->getStructElementType(src_type_index)) && (calculateSize(src->getStructElementType(src_type_index)) == 0)){
					src_type_index += 1;
				}
				if(src->isStructTy() && src->getStructNumElements() > 0 && src->getStructElementType(src_type_index) == dest){
					int dst_type_size = calculateSize(dest);
					FieldIndex field_info(src_type_index, 0, dst_type_size);
					extract_index->push(field_info);
					auto temp_edge = *(node->InEdgeBegin());
					auto next_node = temp_edge->getSrcNode();
					std::shared_ptr<ExprVFG> result = parseVFGNode(next_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					extract_index->pop();
					return result;
				}
				break;
			}
			if(inst && string(inst->getOpcodeName()) == "extractvalue"){
				const ExtractValueInst *e_inst = SVFUtil::dyn_cast<ExtractValueInst>(inst);
				const PAGNode *pag_node = pag->getGNode(pag->getValueNode(e_inst->getAggregateOperand()));
				const VFGNode *next_node = svfg->getDefSVFGNode(pag_node);
				auto target_type = e_inst->getAggregateOperand()->getType();
				int index;
				for(auto i:e_inst->indices())
					index = i;
				int size = calculateSize(target_type->getContainedType(index));
				int pre_size = calculatePreSize(target_type, index);
				FieldIndex field_info(index, pre_size, size);
				extract_index->push(field_info);
				std::shared_ptr<ExprVFG> result = parseVFGNode(next_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
				extract_index->pop();
				return result;
			}
			if(inst && string(inst->getOpcodeName()) == "insertvalue"){
				const InsertValueInst *i_inst = SVFUtil::dyn_cast<InsertValueInst>(inst);
				const PAGNode *pag_node = pag->getGNode(pag->getValueNode(i_inst->getAggregateOperand()));
				const PAGNode *insert_node = pag->getGNode(pag->getValueNode(i_inst->getInsertedValueOperand()));
				const VFGNode *next_node = svfg->getDefSVFGNode(pag_node);
				const VFGNode *value_node = svfg->getDefSVFGNode(insert_node);
				int index;
				for(auto i : i_inst->indices()) //
					index = i;
				if(extract_index->empty()){
					if(debug_flag)
						std::cout << "insertvalue None" << endl;
					return make_shared<NoneVFG>();
				}
				FieldIndex temp_index = extract_index->top();
				extract_index->pop();
				std::shared_ptr<ExprVFG> result;
				if(temp_index.index == index){
					result = parseVFGNode(value_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
					extract_index->push(temp_index);
				}
				else{
					extract_index->push(temp_index);
					result = parseVFGNode(next_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
				}
				return result;
			}
            break;
        }
        case SVF::VFGNode::VFGNodeK::Gep:
        {
            break;
        }
        case SVF::VFGNode::VFGNodeK::Store:
        {   
			std::stack<FieldIndex> record_index;
			std::shared_ptr<ExprVFG> result = std::make_shared<NoneVFG>();
			bool none_flag = true;
            for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				auto succ_node = edge->getSrcNode();
				if (succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Gep || succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
					bool match_flag = true;
					record_index = getStoreIndexList(succ_node, svfg, extract_index, match_flag);
					if(match_flag == false && record_index.empty()){
						if(debug_flag)
							std::cout << "Store None!!!!!!" << endl;
						none_flag = false;
					}
				}
			}
			if(none_flag){
				const StoreVFGNode* st_node = static_cast<const StoreVFGNode*>(node);
				const StoreInst* store_inst = static_cast<const StoreInst*>(st_node->getInst());
				const PAGNode* src_node = st_node->getPAGSrcNode();
				const VFGNode* src = svfg->getDefSVFGNode(st_node->getPAGSrcNode());
				result = parseVFGNode(src, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
			}
			while(!record_index.empty()){
				extract_index->push(record_index.top());
				record_index.pop();
			}
			if(result->getKind() == expr_none){// && store_inst->getOpcodeName() == "call"){ 
				for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
					auto edge = *it;
					auto succ_node = edge->getSrcNode();
					if (succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Store){
						result = parseVFGNode(succ_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
						if(result->getKind() != expr_none)
							break;
					}
				}
			}
			return result;
		}
        case SVF::VFGNode::VFGNodeK::Load: 
        {   
			// The Pointers to the two fields of Vec flow to the pointer to Vec, causing the field information to be lost 
			const VFGNode *target = 0;
	        const VFGEdge *t_edge = 0;
			int index_num = 0;
			std::shared_ptr<ExprVFG> result = make_shared<NoneVFG>();
            for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
				auto edge = *it;
				auto succ_node = edge->getSrcNode();
				if (succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Gep || succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::Copy){
					index_num = getLoadIndexList(succ_node, svfg, extract_index);
				}
				if (edge->isIndirectVFGEdge()){//SVF::MRSVFGNode::classof(succ_node)){
					target = succ_node;
					t_edge = edge;
					continue;
				}
				if (succ_node->getNodeKind() == SVF::VFGNode::VFGNodeK::FParm){
					if(avfg->paramlist.find(succ_node) != avfg->paramlist.end()){
						avfg->paramlist[succ_node] = true;
						if(debug_flag)
							std::cout << "We got param node in Load" << endl;
						result = std::make_shared<VariableVFG>(succ_node);
					}
					else{
						result = parseVFGNode(succ_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag); 
					}
					pop_FILO(extract_index, index_num);
					return result;
				}
			}
			if(target){
				result = parseVFGNode(target, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
				if(result->getKind() == ExprTypes::expr_var_field && result->isZero()){
					const VFGNode *param_node = node;
					bool param_flag = false;
					while(!SVF::FormalParmVFGNode::classof(param_node)){
						param_flag = false;
						for (auto it = param_node->InEdgeBegin(), eit = param_node->InEdgeEnd(); it != eit; ++it) {
							auto edge = *it;
							if(!edge->isIndirectVFGEdge() && edge->getSrcNode()->getNodeKind() != SVF::VFGNode::VFGNodeK::Addr){
								param_node = edge->getSrcNode();
								param_flag = true;
								break;
							}
							if(edge->isIndirectVFGEdge() && edge->getSrcNode()->getNodeKind() == SVF::VFGNode::VFGNodeK::Store){
								param_node = edge->getSrcNode();
								param_flag = true;
								break;
							}
						}
						if(!param_flag){
							break;
						}
					}
            		if(avfg->paramlist.find(param_node) != avfg->paramlist.end()){
						result->setVal(param_node);
						std::shared_ptr<VarFieldVFG> temp = std::static_pointer_cast<VarFieldVFG>(result);
						avfg->fields.push_back(temp); //clone?
						pop_FILO(extract_index, index_num);
						return result;
					}
					else{
						result = std::make_shared<NoneVFG>();
					}
				}
				if(result->getKind() == ExprTypes::expr_none){
					for (auto it = node->InEdgeBegin(), eit = node->InEdgeEnd(); it != eit; ++it) {
						auto edge = *it;
						if(edge != t_edge){
							target = edge->getSrcNode();
						}
					}
					result = parseVFGNode(target, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);	
				}
				pop_FILO(extract_index, index_num);
				return result;
			}
			if(debug_flag)
				std::cout << "Load None!!!!!!" << endl;
			pop_FILO(extract_index, index_num);
			return std::make_shared<NoneVFG>();
        }

        //UnaryOp
        case SVF::VFGNode::VFGNodeK::UnaryOp:
        {
            break;
        }

        default:
            break;

    }

	const VFGEdge *t_edge = *(node->InEdgeBegin());
    if(!t_edge){
		if(record_number > 0){
			for(int i = 0; i < record_number; i++)
				extract_index->pop();
		}
		if(debug_flag)
        	std::cout << "None!!!!!!" << endl;
		return std::make_shared<NoneVFG>();
    }
    bool push_flag = false;
	if(SVF::RetDirSVFGEdge::classof(t_edge)){
		const RetDirSVFGEdge *ret_edge = static_cast<const RetDirSVFGEdge*>(t_edge);
		call_stack->push(ret_edge->getCallSiteId());
		push_flag = true;
	}
	if(SVF::RetIndSVFGEdge::classof(t_edge)){
		const RetIndSVFGEdge *ret_edge = static_cast<const RetIndSVFGEdge*>(t_edge);
		call_stack->push(ret_edge->getCallSiteId());
		push_flag = true;
	}
	auto next_node = t_edge->getSrcNode();
	auto result = parseVFGNode(next_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
	if(push_flag)
		call_stack->pop();
	if(record_number > 0){
		for(int i = 0; i < record_number; i++)
			extract_index->pop();
	}
	return result;
}

std::shared_ptr<ExprVFG> findAndParse(const VFGNode* node, const SVFG *svfg, AVFG *avfg, std::stack<FieldIndex> *extract_index, FILOWorkList<CallSiteID> *call_stack, int depth, bool *error_flag){
	if(debug_flag){
		std::cout << "find:" << node->toString() << endl;
	}
	for (auto it = node->OutEdgeBegin(), eit = node->OutEdgeEnd(); it != eit; ++it) {
		auto a_edge = *it;
		auto succ_node = a_edge->getDstNode();
		if(succ_node->hasOutgoingEdge() && SVF::GepVFGNode::classof(succ_node)){
			
			bool push_flag = false;

			if(SVF::CallDirSVFGEdge::classof(a_edge)){
				const CallDirSVFGEdge *ret_edge = static_cast<const CallDirSVFGEdge*>(a_edge);
				call_stack->push(ret_edge->getCallSiteId());
				push_flag = true;
			}
			if(SVF::CallIndSVFGEdge::classof(a_edge)){
				const CallIndSVFGEdge *ret_edge = static_cast<const CallIndSVFGEdge*>(a_edge);
				call_stack->push(ret_edge->getCallSiteId());
				push_flag = true;
			}

			auto result = findAndParse(succ_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
			
			if(push_flag)
				call_stack->pop();
			if(result->getKind() != ExprTypes::expr_none){
				return result;
			}
		}

		if (SVF::StoreVFGNode::classof(succ_node)){
			auto result = parseVFGNode(succ_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);
			if(result->getKind() == ExprTypes::expr_none)
				continue;
			else
				return result;
		}
	}
	// for (auto it = node->OutEdgeBegin(), eit = node->OutEdgeEnd(); it != eit; ++it) {
	// 	auto a_edge = *it;
	// 	auto succ_node = a_edge->getDstNode();
	// 	if (SVF::ActualParmVFGNode::classof(succ_node) || SVF::FormalParmVFGNode::classof(succ_node)){
	// 		bool push_flag = false;
	// 		if(SVF::CallDirSVFGEdge::classof(a_edge)){
	// 			const CallDirSVFGEdge *ret_edge = static_cast<const CallDirSVFGEdge*>(a_edge);
	// 			call_stack->push(ret_edge->getCallSiteId());
	// 			push_flag = true;
	// 		}
	// 		if(SVF::CallIndSVFGEdge::classof(a_edge)){
	// 			const CallIndSVFGEdge *ret_edge = static_cast<const CallIndSVFGEdge*>(a_edge);
	// 			call_stack->push(ret_edge->getCallSiteId());
	// 			push_flag = true;
	// 		}

	// 		auto result = findAndParse(succ_node, svfg, avfg, extract_index, call_stack, depth + 1, error_flag);

	// 		if(push_flag)
	// 			call_stack->pop();
	// 		if(result->getKind() != ExprTypes::expr_none){
	// 			return result;
	// 		}
	// 	}
	// }
	return make_shared<NoneVFG>();
}


#endif