#ifndef LLVM_COMMON_H
#define LLVM_COMMON_H 1

extern "C"
{
#include "common.h"
}

#include "llvm/IR/Verifier.h"
#include "llvm/ADT/APFloat.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/IR/Attributes.h"

#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/Passes/PassBuilder.h"

#if LLVM_VERSION_MAJOR >= 4
#include "llvm/Bitcode/BitcodeWriter.h"
#else
#include "llvm/Bitcode/ReaderWriter.h"
#endif

//#include "llvm/IR/LegacyPassManager.h"
//#include "llvm/IR/DerivedTypes.h"
//#include "llvm/Support/raw_ostream.h"
//#include "llvm/ExecutionEngine/Orc/LambdaResolver.h"
//#include "llvm/Transforms/Scalar.h"
//#include "llvm/ADT/iterator_range.h"
//#include "llvm/ADT/STLExtras.h"
//#include "llvm/ExecutionEngine/JITSymbol.h"
//#include "llvm/ExecutionEngine/RTDyldMemoryManager.h"
//#include "llvm/ExecutionEngine/RuntimeDyld.h"
//#include "llvm/ExecutionEngine/SectionMemoryManager.h"
//#include "llvm/ExecutionEngine/Orc/CompileUtils.h"
//#include "llvm/ExecutionEngine/Orc/IRCompileLayer.h"
//#include "llvm/IR/DataLayout.h"
//#include "llvm/IR/Mangler.h"
//#include "llvm/Support/FileSystem.h"
//#include "llvm/Support/SourceMgr.h"
//#include "llvm/Support/MemoryBuffer.h"
//#include "llvm/Support/DynamicLibrary.h"
/*
#if LLVM_VERSION_MAJOR == 3
#include "llvm/ExecutionEngine/Orc/ObjectLinkingLayer.h"
#endif
#include "llvm/Target/TargetMachine.h"
#include "llvm-c/BitWriter.h"
#include "llvm/IRReader/IRReader.h"
#if LLVM_VERSION_MAJOR == 3
#include "llvm/Bitcode/ReaderWriter.h"
#endif
*/
//#include <fstream>
//#include <iostream>
//using namespace llvm::orc;

#include <string>
#include <map>

using namespace llvm;

extern LLVMContext TheContext;
extern IRBuilder<> Builder;
extern Function* gFunction;
extern Module* TheModule;
extern std::unique_ptr<FunctionPassManager> TheFPM;
extern FunctionAnalysisManager TheFAM;
extern std::map<Value*, std::pair<sNodeType*, bool>> gHeapObjects;

struct LVALUEStruct {
    sNodeType* type;
    Value* value;
    Value* address;
    sVar* var;
};

typedef struct LVALUEStruct LVALUE;

struct sFunctionStruct {
    char mName[VAR_NAME_MAX];
    char mRealName[REAL_FUN_NAME_MAX];

    sNodeType* mResultType;
    char mParamNames[PARAMS_MAX][VAR_NAME_MAX];
    sNodeType* mParamTypes[PARAMS_MAX];
    int mNumParams;

    BOOL mVarArg;

    BOOL mCFFIFunction;

    int mNumMethodGenerics;
    char mMethodGenericsTypeNames[GENERICS_TYPES_MAX][VAR_NAME_MAX];

    char* mBlockText;
    char* mSName;
    int mSLine;

    int mNumGenerics;
    char mGenericsTypeNames[GENERICS_TYPES_MAX][VAR_NAME_MAX];

    BOOL mGenericsFunction;
};

typedef struct sFunctionStruct sFunction;

typedef struct LVALUEStruct LVALUE;

extern LVALUE* gLLVMStack;

extern "C"
{
void push_value_to_stack_ptr(LVALUE* value, sCompileInfo* info);
void dec_stack_ptr(int value, sCompileInfo* info);

LVALUE* get_value_from_stack(int offset);

int get_llvm_alignment_from_node_type(sNodeType* node_type);
BOOL create_llvm_type_from_node_type(Type** result_type, sNodeType* node_type);

Value* llvm_create_string(char* str);
BOOL cast_right_type_to_left_type(sNodeType* left_type, sNodeType** right_type, LVALUE* rvalue, struct sCompileInfoStruct* info);
void store_address_to_lvtable(int index, Value* address);
Value* load_address_to_lvtable(int index, sNodeType* var_type);
BOOL get_size_from_node_type(uint64_t* result, sNodeType* node_type);
void std_move(Value* var_address, sNodeType* lvar_type, LVALUE* rvalue, BOOL alloc, sCompileInfo* info);
Value* clone_object(sNodeType* node_type, Value* address, sCompileInfo* info);
void free_right_value_objects(sCompileInfo* info);
void llvm_change_block(BasicBlock* current_block, BasicBlock** current_block_before, sCompileInfo* info);
Value* store_lvtable();
void restore_lvtable(Value* lvtable);
}

#endif

