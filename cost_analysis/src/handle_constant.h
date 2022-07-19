#ifndef HANDLE_CONSTANT
#define HANDLE_CONSTANT
#include "Util/SVFUtil.h"
#include "avfg_lib.h"


using namespace SVF;
using namespace llvm;





long parseConstant(const Value* value, bool field_flag, int pre_size, int size){

    if(llvm::ConstantInt::classof(value)){  //Addr, ActualParmVFGNode
        const ConstantInt* constant = SVFUtil::dyn_cast<ConstantInt>(value);
        return constant->getSExtValue();
    }
    if(llvm::GlobalVariable::classof(value)){ //Addr
		const GlobalVariable* constant = SVFUtil::dyn_cast<GlobalVariable>(value);
        return parseConstant(constant->getInitializer(), field_flag, pre_size, size);
    }
    if(llvm::ConstantAggregate::classof(value)){
        const ConstantAggregate* aggregate = SVFUtil::dyn_cast<ConstantAggregate>(value);
        if(llvm::ConstantStruct::classof(value)){
            const ConstantStruct* constant_struct = SVFUtil::dyn_cast<ConstantStruct>(value);
            auto struct_type = constant_struct->getType();
            unsigned index = 0;
            for(Type::subtype_iterator ib = struct_type->subtype_begin(), ie = struct_type->subtype_end();
                ib != ie; ib++){
                int struct_size = calculateSize(*ib);
                if(pre_size < struct_size){
                    break;
                }
                index += 1;
                pre_size -= struct_size;
                if(pre_size < 0)
                    std::cout << "Error: parseConstantStruct" << endl;
            }
            return parseConstant(aggregate->getAggregateElement(index), field_flag, pre_size, size);
        }
        unsigned index = 0;
        return parseConstant(aggregate->getAggregateElement(index), field_flag, pre_size, size);
    }
    if(llvm::ConstantDataSequential::classof(value)){
        const ConstantDataSequential* seq = SVFUtil::dyn_cast<ConstantDataSequential>(value);
        if(llvm::ConstantDataVector::classof(value)){
            const ConstantDataVector* constant_vector = SVFUtil::dyn_cast<ConstantDataVector>(value);
            auto vector_type = constant_vector->getType();
            std::cout << vector_type->getNumElements() << endl;
            std::cout << vector_type->getElementType()->getPrimitiveSizeInBits() << endl;
        }
        if(llvm::ConstantDataArray::classof(value)){
            const ConstantDataArray* constant_array = SVFUtil::dyn_cast<ConstantDataArray>(value);
            auto array_type = constant_array->getType();
            if(field_flag && array_type->getElementType()->getPrimitiveSizeInBits() > 0){
                int num = array_type->getNumElements();
                int persize = calculateSize(array_type->getElementType());
                int begin_index = pre_size / persize;
                int end_index = begin_index + size / persize;
                int value = 0;
                int exp = 1;
                for (int i = begin_index; i < end_index; i++){
                    if(i >= num){
                        std::cout << "Error: parseConstantDataArray" << endl;
                        break;
                    }
                    long current_value = parseConstant(seq->getAggregateElement(i), true, 0, persize);
                    value += exp * current_value;
                    exp = exp * (1<<8);
                }
                return value;
            }
        }
        unsigned index = 0;
        return parseConstant(seq->getAggregateElement(index), field_flag, pre_size, size);
    }
    return 0;
}


#endif


