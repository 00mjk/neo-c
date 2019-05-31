#include "llvm_common.hpp"
#include <libgen.h>

LLVMContext TheContext;
IRBuilder<> Builder(TheContext);
Module* TheModule;
std::unique_ptr<FunctionPassManager> TheFPM;
std::map<std::string, BasicBlock*> TheLabels;
FunctionAnalysisManager TheFAM(false);
CGSCCAnalysisManager cGSCCAnalysisManager(false);
ModuleAnalysisManager moduleAnalysisManager(false);
std::map<std::string, Type*> gLLVMStructType;

GlobalVariable* gLVTableValue;

#if LLVM_VERSION_MAJOR >= 7
LoopAnalysisManager loopAnalysisManager(false);
#endif

LVALUE* gLLVMStack;
char gSourceName[PATH_MAX];
//Function* gNeoCMainFunction;
Function* gFunction;

extern "C"
{

void llvm_init()
{
    InitializeNativeTarget();
    InitializeNativeTargetAsmPrinter();
    InitializeNativeTargetAsmParser();
}

void llvm_final()
{
}

void push_value_to_stack_ptr(LVALUE* value, sCompileInfo* info)
{
    *gLLVMStack= *value;
    gLLVMStack++;

    info->stack_num++;
}

void dec_stack_ptr(int value, sCompileInfo* info)
{
    gLLVMStack -= value;

    info->stack_num -= value;
}

void arrange_stack(sCompileInfo* info)
{
    if(info->stack_num > 0) {
        dec_stack_ptr(info->stack_num, info);
    }
    if(info->stack_num < 0) {
        fprintf(stderr, "unexpected stack value\n");
        exit(2);
    }
}

LVALUE* get_value_from_stack(int offset)
{
    return gLLVMStack + offset;
}

static Type* get_lvtable_type()
{
    char buf[128];

    snprintf(buf, 128, "char*[%d]", LOCAL_VARIABLE_MAX);

    sNodeType* lvtable_node_type = create_node_type_with_class_name(buf);

    Type* lvtable_type = create_llvm_type_from_node_type(lvtable_node_type);

    return lvtable_type;
}

void create_internal_functions()
{
    Type* result_type;
    std::vector<Type *> type_params;
    Type* param1_type;
    Type* param2_type;
    Type* param3_type;
    Type* param4_type;
    Type* param5_type;
    Type* param6_type;
    Type* param7_type;
    Type* param8_type;
    Type* param9_type;
    Type* param10_type;
    Type* param11_type;
    Type* param12_type;
    Type* param13_type;
    Type* param14_type;
    Type* param15_type;
    FunctionType* function_type;

/*
    /// exit ///
    type_params.clear();
    
    result_type = Type::getVoidTy(TheContext);

    param1_type = IntegerType::get(TheContext, 32);
    type_params.push_back(param1_type);

    function_type = FunctionType::get(result_type, type_params, false);
    Function::Create(function_type, Function::ExternalLinkage, "exit", TheModule);
*/

    Type* lvtable_type = get_lvtable_type();

    gLVTableValue = new GlobalVariable(*TheModule, lvtable_type, false, GlobalValue::InternalLinkage, 0, "gLVTable");
    gLVTableValue->setAlignment(8);

    ConstantAggregateZero* initializer = ConstantAggregateZero::get(lvtable_type);

    gLVTableValue->setInitializer(initializer);

}

void store_address_to_lvtable(int index, Value* address)
{
    Value* lvtable_value2 = Builder.CreateCast(Instruction::BitCast, gLVTableValue, PointerType::get(PointerType::get(IntegerType::get(TheContext, 8), 0), 0));

    Value* lvalue = lvtable_value2;
    Value* rvalue = ConstantInt::get(TheContext, llvm::APInt(32, index));
    Value* element_address_value = Builder.CreateGEP(lvalue, rvalue);
    Value* address2 = Builder.CreateCast(Instruction::BitCast, address, PointerType::get(IntegerType::get(TheContext, 8), 0));

    Builder.CreateAlignedStore(address2, element_address_value, 8);
}

Value* load_address_to_lvtable(int index, sNodeType* var_type)
{
    Value* lvtable_value2 = Builder.CreateCast(Instruction::BitCast, gLVTableValue, PointerType::get(PointerType::get(IntegerType::get(TheContext, 8), 0), 0));

    Value* lvalue = lvtable_value2;
    Value* rvalue = ConstantInt::get(TheContext, llvm::APInt(32, index));
    Value* element_address_value = Builder.CreateGEP(lvalue, rvalue);

    Value* pointer_value = Builder.CreateAlignedLoad(element_address_value, 8);

    int alignment = get_llvm_alignment_from_node_type(var_type);

    Type* llvm_type = create_llvm_type_from_node_type(var_type);

    Value* pointer_value2 = Builder.CreateCast(Instruction::BitCast, pointer_value, PointerType::get(llvm_type, 0));

    Value* value = Builder.CreateAlignedLoad(pointer_value2, alignment);

    return value;
}

void store_value_to_lvtable(Value* value, int index, sNodeType* var_type)
{
    Value* lvtable_value2 = Builder.CreateCast(Instruction::BitCast, gLVTableValue, PointerType::get(PointerType::get(IntegerType::get(TheContext, 8), 0), 0));

    Value* lvalue = lvtable_value2;
    Value* rvalue = ConstantInt::get(TheContext, llvm::APInt(32, index));
    Value* element_address_value = Builder.CreateGEP(lvalue, rvalue);

    Value* pointer_value = Builder.CreateAlignedLoad(element_address_value, 8);

    int alignment = get_llvm_alignment_from_node_type(var_type);

    Type* llvm_type = create_llvm_type_from_node_type(var_type);

    Value* pointer_value2 = Builder.CreateCast(Instruction::BitCast, pointer_value, PointerType::get(llvm_type, 0));

    Builder.CreateAlignedStore(value, pointer_value2, alignment);
}

Function* create_llvm_function(const std::string& name)
{
    std::vector<Type *> params;

    Type* result_type = IntegerType::get(TheContext, 32);
    FunctionType* function_type = FunctionType::get(result_type, params, false);

    Function* function = Function::Create(function_type, Function::ExternalLinkage, name, TheModule);

    return function;
}

void start_to_make_native_code(char* sname)
{
    xstrncpy(gSourceName, sname, PATH_MAX);

    char* sname2 = basename(sname);

    char sname3[PATH_MAX];
    xstrncpy(sname3, sname2, PATH_MAX);

    char* p = sname3 + strlen(sname3);
    while(p >= sname3) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    char module_name[PATH_MAX + 128];
    snprintf(module_name, PATH_MAX, "Module %s", sname3);
    TheModule = new Module(module_name, TheContext);

    TheFPM = llvm::make_unique<FunctionPassManager>(TheModule);

    create_internal_functions();
    TheLabels.clear();
  
    gLLVMStack = (LVALUE*)xcalloc(1, sizeof(LVALUE)*NEO_C_STACK_SIZE);
}

/*
void start_neo_c_main_function()
{
    char* sname = gSourceName;

    char sname2[PATH_MAX];
    xstrncpy(sname2, sname, PATH_MAX);

    char* sname3 = basename(sname2);

    char* p = sname3 + strlen(sname3);
    while(p >= sname3) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    char* func_path = sname3;

    std::string func_name(func_path);
    gNeoCMainFunction = create_llvm_function(func_name);
    gFunction = gNeoCMainFunction;

    BasicBlock* current_block = BasicBlock::Create(TheContext, "entry", gNeoCMainFunction);
    Builder.SetInsertPoint(current_block);
}

void finish_neo_c_main_function()
{
    gFunction = gNeoCMainFunction;

//    IRBuilder<> builder(&gFunction->getEntryBlock());

    // Finish off the function.
    Value* ret_value = ConstantInt::get(TheContext, llvm::APInt(32, 1, true));

    Builder.CreateRet(ret_value);

    // Validate the generated code, checking for consistency.
    verifyFunction(*gNeoCMainFunction);

    // Run the optimizer on the function.
    //TheFPM->run(*gNeoCMainFunction, TheFAM);
}

void create_main_function()
{
    Type* result_type = IntegerType::get(TheContext, 32);

    std::vector<Type *> type_params;

    Type* param1_type = IntegerType::get(TheContext, 32);
    type_params.push_back(param1_type);

    Type* param2_type = PointerType::get(PointerType::get(IntegerType::get(TheContext, 8), 0), 0);
    type_params.push_back(param2_type);

    FunctionType* function_type = FunctionType::get(result_type, type_params, false);
    Function* main_function = Function::Create(function_type, Function::ExternalLinkage, "main", TheModule);

    BasicBlock* current_block = BasicBlock::Create(TheContext, "entry", main_function);
    Builder.SetInsertPoint(current_block);

    std::vector<Value*> params2;

    Value* result = Builder.CreateCall(gNeoCMainFunction, params2);

    // Finish off the function.
    Value* ret_value = ConstantInt::get(TheContext, llvm::APInt(32, 0, true));
    params2.push_back(ret_value);

    Builder.CreateRet(ret_value);

    verifyFunction(*main_function);
}
*/

int gResultCode = 0;

void output_native_code(BOOL optimize, BOOL output_object_file)
{
    free(gLLVMStack);

    //create_main_function();

#if LLVM_VERSION_MAJOR >= 7
    if(optimize) {
        puts("OPTIMIZATION PHASE");

        llvm::PassBuilder passBuilder;

        passBuilder.registerModuleAnalyses(moduleAnalysisManager);
        passBuilder.registerCGSCCAnalyses(cGSCCAnalysisManager);
        passBuilder.registerFunctionAnalyses(TheFAM);
        passBuilder.registerLoopAnalyses(loopAnalysisManager);

        passBuilder.buildModuleOptimizationPipeline(llvm::PassBuilder::OptimizationLevel::O3, false);
    }
#endif

    char* sname2 = gSourceName;

    char sname3[PATH_MAX];
    xstrncpy(sname3, sname2, PATH_MAX);

    char* p = sname3 + strlen(sname3);
    while(p >= sname3) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    char module_name[PATH_MAX];
    xstrncpy(module_name, gSourceName, PATH_MAX);

    char* module_name2 = basename(module_name);

    char module_name3[PATH_MAX];
    xstrncpy(module_name3, module_name2, PATH_MAX);

    p = module_name3 + strlen(module_name3);
    while(p >= module_name3) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    TheModule->print(llvm::errs(), nullptr);

#if LLVM_VERSION_MAJOR >= 7
    char path[PATH_MAX];
    snprintf(path, PATH_MAX, "%s.bc", sname3);

    (void)unlink(path);

    std::error_code ecode;
    llvm::raw_fd_ostream output_stream(path, ecode, llvm::sys::fs::F_None);

    std::string err_str;
    raw_string_ostream err_ostream(err_str);

    verifyModule(*TheModule);

    llvm::WriteBitcodeToFile(*TheModule, output_stream, true);
    output_stream.flush();
#elif LLVM_VERSION_MAJOR >= 4
    char path[PATH_MAX]; snprintf(path, PATH_MAX, "%s.bc", sname3);

    (void)unlink(path);

    std::error_code ecode;
    llvm::raw_fd_ostream output_stream(path, ecode, llvm::sys::fs::F_None);

    std::string err_str;
    raw_string_ostream err_ostream(err_str);

    verifyModule(*TheModule);

    llvm::WriteBitcodeToFile(TheModule, output_stream, true);
    output_stream.flush();
#else
    char path[PATH_MAX];
    snprintf(path, PATH_MAX, "%s.bc", sname3);

    (void)unlink(path);

    std::error_code ecode;
    llvm::raw_fd_ostream output_stream(path, ecode, llvm::sys::fs::F_None);

    std::string err_str;
    raw_string_ostream err_ostream(err_str);

    verifyModule(*TheModule);

    llvm::WriteBitcodeToFile(TheModule, output_stream, true);
    output_stream.flush();
#endif

    delete TheModule;

    char command[PATH_MAX+128];

    snprintf(command, PATH_MAX+128, "llvm-dis %s.bc", sname3);
    int rc = system(command);
    if(rc != 0) {
        fprintf(stderr, "faield to compile\n");
        exit(2);
    }

    snprintf(command, PATH_MAX+128, "llc %s.bc", sname3);
    rc = system(command);
    if(rc != 0) {
        fprintf(stderr, "faield to compile\n");
        exit(2);
    }

    snprintf(command, PATH_MAX+128, "clang++ -o %s %s.s", module_name3, sname3);
    rc = system(command);
    if(rc != 0) {
        fprintf(stderr, "faield to compile\n");
        exit(2);
    }

    snprintf(command, PATH_MAX+128, "./%s", module_name3);
    rc = system(command);

    gResultCode = WEXITSTATUS(rc);
}

Type* create_llvm_type_from_node_type(sNodeType* node_type)
{
    Type* result_type = NULL;
    sCLClass* klass = node_type->mClass;

    if(klass->mFlags & CLASS_FLAGS_STRUCT) 
    {
        char* class_name = CLASS_NAME(klass);
        
        if(gLLVMStructType[class_name] == nullptr) 
        {
            StructType* struct_type = StructType::create(TheContext, CLASS_NAME(klass));;
            std::vector<Type*> fields;

            int i;
            for(i=0; i<klass->mNumFields; i++) {
                sNodeType* field = klass->mFields[i];

                Type* field_type = create_llvm_type_from_node_type(field);
                fields.push_back(field_type);
            }

            if(struct_type->isOpaque()) {
                struct_type->setBody(fields, false);
            }

            gLLVMStructType[class_name] = struct_type;

            result_type = struct_type;
        }
        else {
            result_type = gLLVMStructType[class_name];
        }
    }
    else if(type_identify_with_class_name(node_type, "int"))
    {
        result_type = IntegerType::get(TheContext, 32);
    }
    else if(type_identify_with_class_name(node_type, "char"))
    {
        result_type = IntegerType::get(TheContext, 8);
    }
    else if(type_identify_with_class_name(node_type, "bool"))
    {
        result_type = IntegerType::get(TheContext, 1);
    }
    else if(type_identify_with_class_name(node_type, "void"))
    {
        result_type = Type::getVoidTy(TheContext);
    }
    else if(type_identify_with_class_name(node_type, "lambda"))
    {
        int num_params = node_type->mNumParams;
        sNodeType* fun_result_type = node_type->mResultType;

        Type* llvm_result_type = create_llvm_type_from_node_type(fun_result_type);
        std::vector<Type *> llvm_param_types;

        int i;
        for(i=0; i<num_params; i++) {
            sNodeType* param_type = node_type->mParamTypes[i];

            Type* llvm_param_type = create_llvm_type_from_node_type(param_type);
            llvm_param_types.push_back(llvm_param_type);
        }

        result_type = FunctionType::get(llvm_result_type, llvm_param_types, false);

        result_type = PointerType::get(result_type, 0);
    }

    int i;
    for(i=0; i<node_type->mPointerNum; i++) {
        result_type = PointerType::get(result_type, 0);
    }

    if(node_type->mArrayNum > 0) {
        result_type = ArrayType::get(result_type, node_type->mArrayNum);
    }

    return result_type;
}

int get_llvm_alignment_from_node_type(sNodeType* node_type)
{
    int result = 0;

    sCLClass* klass = node_type->mClass;

    if(klass->mFlags & CLASS_FLAGS_STRUCT) {
        result = 8;
    }
    else if(node_type->mPointerNum > 0) {
        result = 8;
    }
    else if(type_identify_with_class_name(node_type, "int"))
    {
        result = 4;
    }
    else if(type_identify_with_class_name(node_type, "bool"))
    {
        result = 1;
    }
    else if(type_identify_with_class_name(node_type, "lambda"))
    {
        result = 8;
    }

    return result;
}

Value* llvm_create_string(char* str)
{
    Constant* str_constant = ConstantDataArray::getString(TheModule->getContext(), str, true);

    GlobalVariable* gvar = new GlobalVariable(*TheModule, ArrayType::get(IntegerType::get(TheContext, 8), strlen(str)+1), true, GlobalValue::PrivateLinkage, 0, "global_string");
    gvar->setAlignment(1);

    gvar->setInitializer(str_constant);

    Value* value = Builder.CreateCast(Instruction::BitCast, gvar, PointerType::get(IntegerType::get(TheContext, 8), 0));

    return value;
}

void cast_right_type_to_left_type(sNodeType* left_type, sNodeType** right_type, LVALUE* rvalue, struct sCompileInfoStruct* info)
{
    if(type_identify(left_type, *right_type)) {
    }
    else if(type_identify_with_class_name(left_type, "int"))
    {
        if(type_identify_with_class_name(*right_type, "long") || type_identify_with_class_name(*right_type, "ulong"))
        {
            rvalue->value = Builder.CreateCast(Instruction::Trunc, rvalue->value, IntegerType::get(TheContext, 32));
            rvalue->type = create_node_type_with_class_name("int");

            *right_type = rvalue->type;
        }
        else if(type_identify_with_class_name(*right_type, "short") || type_identify_with_class_name(*right_type, "ushort") || type_identify_with_class_name(*right_type, "char") || type_identify_with_class_name(*right_type, "uchar") || type_identify_with_class_name(*right_type, "bool"))
        {
            rvalue->value = Builder.CreateCast(Instruction::SExt, rvalue->value, IntegerType::get(TheContext, 32));
            rvalue->type = create_node_type_with_class_name("int");

            *right_type = rvalue->type;
        }
    }
    else if(type_identify_with_class_name(left_type, "bool"))
    {
        if(type_identify_with_class_name(*right_type, "bool"))
        {
        }
        else {
            rvalue->value = Builder.CreateCast(Instruction::Trunc, rvalue->value, IntegerType::get(TheContext, 1));
            rvalue->type = create_node_type_with_class_name("bool");

            *right_type = rvalue->type;
        }
    }
}


}
