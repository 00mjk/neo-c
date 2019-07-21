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
std::map<std::string, std::pair<Type*, sNodeType*>> gLLVMStructType;

GlobalVariable* gLVTableValue;

#if LLVM_VERSION_MAJOR >= 7
LoopAnalysisManager loopAnalysisManager(false);
#endif

LVALUE* gLLVMStack;
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

void arrange_stack(sCompileInfo* info, int top)
{
    if(info->stack_num > top) {
        dec_stack_ptr(info->stack_num-top, info);
    }
    if(info->stack_num < top) {
        fprintf(stderr, "%s %d: unexpected stack value. The stack num is %d. top is %d\n", info->sname, info->sline, info->stack_num, top);
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

    Type* lvtable_type;
    if(!create_llvm_type_from_node_type(&lvtable_type, lvtable_node_type, NULL))
    {
        fprintf(stderr, "unexpected err\n");
        exit(2);
    }

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
    /// malloc ///
    type_params.clear();
    
    result_type = PointerType::get(Type::getVoidTy(TheContext), 0);

    param1_type = IntegerType::get(TheContext, 64);
    type_params.push_back(param1_type);

    function_type = FunctionType::get(result_type, type_params, false);
    Function::Create(function_type, Function::ExternalLinkage, "malloc", TheModule);
*/

/*
    /// free ///
    type_params.clear();
    
    result_type = Type::getVoidTy(TheContext);

    param1_type = PointerType::get(Type::getVoidTy(TheContext), 0);
    type_params.push_back(param1_type);

    function_type = FunctionType::get(result_type, type_params, false);
    Function::Create(function_type, Function::ExternalLinkage, "xfree", TheModule);
*/

    Type* lvtable_type = get_lvtable_type();

    gLVTableValue = new GlobalVariable(*TheModule, lvtable_type, false, GlobalValue::InternalLinkage, 0, "gLVTable");
    gLVTableValue->setAlignment(8);

    ConstantAggregateZero* initializer = ConstantAggregateZero::get(lvtable_type);

    gLVTableValue->setInitializer(initializer);
}

Value* load_address_to_lvtable(int index, sNodeType* var_type, sCompileInfo* info)
{
    Value* lvtable_value2 = Builder.CreateCast(Instruction::BitCast, gLVTableValue, PointerType::get(PointerType::get(IntegerType::get(TheContext, 8), 0), 0));

    Value* lvalue = lvtable_value2;
    Value* rvalue = ConstantInt::get(TheContext, llvm::APInt(32, index));
    Value* element_address_value = Builder.CreateGEP(lvalue, rvalue);

    Value* pointer_value = Builder.CreateAlignedLoad(element_address_value, 8);

    int alignment = get_llvm_alignment_from_node_type(var_type);

    Type* llvm_type;
    (void)create_llvm_type_from_node_type(&llvm_type, var_type, info);

    Value* pointer_value2 = Builder.CreateCast(Instruction::BitCast, pointer_value, PointerType::get(llvm_type, 0));

    return pointer_value2;
}

Value* store_lvtable()
{
    Type* lvtable_type = get_lvtable_type();

    Value* lvtable = Builder.CreateAlloca(lvtable_type, 0, "lvtable");

    Function* fun = TheModule->getFunction("xmemcpy");

    if(fun == nullptr) {
        fprintf(stderr, "require xmemcpy\n");
        exit(2);
    }

    std::vector<Value*> params2;

    Value* param = lvtable;
    param = Builder.CreateCast(Instruction::BitCast, param, PointerType::get(IntegerType::get(TheContext, 8), 0));
    params2.push_back(param);

    Value* param2 = gLVTableValue;
    param2 = Builder.CreateCast(Instruction::BitCast, param2, PointerType::get(IntegerType::get(TheContext, 8), 0));
    params2.push_back(param2);

    Value* param3 = ConstantInt::get(TheContext, llvm::APInt(32, 8*LOCAL_VARIABLE_MAX, true));
    params2.push_back(param3);

    Builder.CreateCall(fun, params2);

    return lvtable;
}

void restore_lvtable(Value* lvtable)
{
    Function* fun = TheModule->getFunction("xmemcpy");

    if(fun == nullptr) {
        fprintf(stderr, "require xmemcpy\n");
        exit(2);
    }

    std::vector<Value*> params2;

    Value* param = gLVTableValue;
    param = Builder.CreateCast(Instruction::BitCast, param, PointerType::get(IntegerType::get(TheContext, 8), 0));
    params2.push_back(param);

    Value* param2 = lvtable;
    param2 = Builder.CreateCast(Instruction::BitCast, param2, PointerType::get(IntegerType::get(TheContext, 8), 0));
    params2.push_back(param2);

    Value* param3 = ConstantInt::get(TheContext, llvm::APInt(32, 8*LOCAL_VARIABLE_MAX, true));
    params2.push_back(param3);

    Builder.CreateCall(fun, params2);
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
    char sname2[PATH_MAX];
    xstrncpy(sname2, sname, PATH_MAX);

    char* sname3 = basename(sname2);

    char sname4[PATH_MAX];
    xstrncpy(sname4, sname3, PATH_MAX);

    char* p = sname4 + strlen(sname4);
    while(p >= sname4) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    char module_name[PATH_MAX + 128];
    snprintf(module_name, PATH_MAX, "Module %s", sname4);
    TheModule = new Module(module_name, TheContext);

    TheFPM = llvm::make_unique<FunctionPassManager>(TheModule);

    create_internal_functions();
    TheLabels.clear();
  
    gLLVMStack = (LVALUE*)xcalloc(1, sizeof(LVALUE)*NEO_C_STACK_SIZE);
}

void output_native_code(char* sname, BOOL optimize)
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

    char sname2[PATH_MAX];
    xstrncpy(sname2, sname, PATH_MAX);

    char* p = sname2 + strlen(sname2);
    while(p >= sname2) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    char module_name[PATH_MAX];
    xstrncpy(module_name, sname, PATH_MAX);

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
    snprintf(path, PATH_MAX, "%s.bc", sname2);

    (void)unlink(path);

    std::error_code ecode;
    llvm::raw_fd_ostream output_stream(path, ecode, llvm::sys::fs::F_None);

    std::string err_str;
    raw_string_ostream err_ostream(err_str);

    verifyModule(*TheModule);

    llvm::WriteBitcodeToFile(*TheModule, output_stream, true);
    output_stream.flush();
#elif LLVM_VERSION_MAJOR >= 4
    char path[PATH_MAX]; snprintf(path, PATH_MAX, "%s.bc", sname2);

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
    snprintf(path, PATH_MAX, "%s.bc", sname2);

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

    snprintf(command, PATH_MAX+128, "llvm-dis %s.bc", sname2);
    int rc = system(command);
    if(rc != 0) {
        fprintf(stderr, "faield to compile\n");
        exit(2);
    }

    snprintf(command, PATH_MAX+128, "llc %s.bc", sname2);
    rc = system(command);
    if(rc != 0) {
        fprintf(stderr, "faield to compile\n");
        exit(2);
    }

    snprintf(command, PATH_MAX+128, "clang -c -o %s.o %s.s", sname2, sname2);
    rc = system(command);
    if(rc != 0) {
        fprintf(stderr, "faield to compile\n");
        exit(2);
    }
}

static void create_real_struct_name(char* real_struct_name, int size_real_struct_name, char* struct_name, int num_generics, sNodeType* generics_types[GENERICS_TYPES_MAX])
{
    xstrncpy(real_struct_name, struct_name, size_real_struct_name);

    if(num_generics > 0) {
        xstrncat(real_struct_name, "_", size_real_struct_name);
    }

    int i;
    for(i=0; i<num_generics; i++) {
        sNodeType* node_type = generics_types[i];
        sCLClass* class_name = node_type->mClass;

        xstrncat(real_struct_name, CLASS_NAME(class_name), size_real_struct_name);

        if(i != num_generics-1) {
            xstrncat(real_struct_name, "_", size_real_struct_name);
        }
    }
}

void create_undefined_llvm_struct_type(sNodeType* node_type)
{
    sCLClass* klass = node_type->mClass;

    char* class_name = CLASS_NAME(klass);

    char real_struct_name[REAL_STRUCT_NAME_MAX];
    int size_real_struct_name = REAL_STRUCT_NAME_MAX;

    create_real_struct_name(real_struct_name, size_real_struct_name, class_name, node_type->mNumGenericsTypes, node_type->mGenericsTypes);

    if(gLLVMStructType[real_struct_name].first == nullptr) 
    {
        StructType* struct_type = StructType::create(TheContext, real_struct_name);

        std::pair<Type*, sNodeType*> pair_value;
        pair_value.first = struct_type;
        pair_value.second = clone_node_type(node_type);

        gLLVMStructType[real_struct_name] = pair_value;

        klass->mUndefinedStructType = struct_type;
    }
}

BOOL create_llvm_struct_type(sNodeType* node_type, sCompileInfo* info)
{
    sCLClass* klass = node_type->mClass;

    char* class_name = CLASS_NAME(klass);

    char real_struct_name[REAL_STRUCT_NAME_MAX];
    int size_real_struct_name = REAL_STRUCT_NAME_MAX;

    create_real_struct_name(real_struct_name, size_real_struct_name, class_name, node_type->mNumGenericsTypes, node_type->mGenericsTypes);

    if(gLLVMStructType[real_struct_name].first == nullptr) 
    {
        StructType* struct_type = StructType::create(TheContext, real_struct_name);
        std::vector<Type*> fields;

        std::pair<Type*, sNodeType*> pair_value;
        pair_value.first = struct_type;
        pair_value.second = clone_node_type(node_type);

        gLLVMStructType[real_struct_name] = pair_value;

        int i;
        for(i=0; i<klass->mNumFields; i++) {
            sNodeType* field = klass->mFields[i];

            if(!solve_generics(&field, node_type))
            {
                return FALSE;
            }

            if(field->mClass == klass && field->mPointerNum == 0)
            {
                return FALSE;
            }

            Type* field_type;
            if(!create_llvm_type_from_node_type(&field_type, field, info))
            {
                return FALSE;
            }

            fields.push_back(field_type);
        }

        if(struct_type->isOpaque()) {
            struct_type->setBody(fields, false);
        }
    }
    else if(klass->mUndefinedStructType) {
        StructType* struct_type = (StructType*)klass->mUndefinedStructType;
        std::vector<Type*> fields;

        int i;
        for(i=0; i<klass->mNumFields; i++) {
            sNodeType* field = klass->mFields[i];

            if(!solve_generics(&field, node_type))
            {
                return FALSE;
            }

            if(field->mClass == klass && field->mPointerNum == 0)
            {
                return FALSE;
            }

            Type* field_type;
            if(!create_llvm_type_from_node_type(&field_type, field, info))
            {
                return FALSE;
            }

            fields.push_back(field_type);
        }

        if(struct_type->isOpaque()) {
            struct_type->setBody(fields, false);
        }

        klass->mUndefinedStructType = NULL;
    }

    return TRUE;
}

BOOL create_llvm_union_type(sNodeType* node_type, sCompileInfo* info)
{
    sCLClass* klass = node_type->mClass;

    char* class_name = CLASS_NAME(klass);

    char real_struct_name[REAL_STRUCT_NAME_MAX];
    int size_real_struct_name = REAL_STRUCT_NAME_MAX;

    create_real_struct_name(real_struct_name, size_real_struct_name, class_name, node_type->mNumGenericsTypes, node_type->mGenericsTypes);

    if(gLLVMStructType[real_struct_name].first == nullptr) 
    {
        StructType* struct_type = StructType::create(TheContext, real_struct_name);
        std::vector<Type*> fields;

        uint64_t max_size = 0;
        Type* max_size_field = NULL;

        int i;
        for(i=0; i<klass->mNumFields; i++) {
            sNodeType* field = klass->mFields[i];

            if(!solve_generics(&field, node_type))
            {
                return FALSE;
            }

            Type* field_type;
            if(!create_llvm_type_from_node_type(&field_type, field, info))
            {
                return FALSE;
            }

            uint64_t alloc_size = 0;
            if(!get_size_from_node_type(&alloc_size, field, info))
            {
                return FALSE;
            }

            if(alloc_size > max_size) {
                max_size = alloc_size;

                max_size_field = field_type;
            }
        }

        if(max_size_field) {
            fields.push_back(max_size_field);
        }

        if(struct_type->isOpaque()) {
            struct_type->setBody(fields, false);
        }

        std::pair<Type*, sNodeType*> pair_value;
        pair_value.first = struct_type;
        pair_value.second = clone_node_type(node_type);

        gLLVMStructType[real_struct_name] = pair_value;
    }
    else if(klass->mUndefinedStructType) {
        StructType* struct_type = (StructType*)klass->mUndefinedStructType;
        std::vector<Type*> fields;

        uint64_t max_size = 0;
        Type* max_size_field = NULL;

        int i;
        for(i=0; i<klass->mNumFields; i++) {
            sNodeType* field = klass->mFields[i];

            if(!solve_generics(&field, node_type))
            {
                return FALSE;
            }

            Type* field_type;
            if(!create_llvm_type_from_node_type(&field_type, field, info))
            {
                return FALSE;
            }

            uint64_t alloc_size = 0;
            if(!get_size_from_node_type(&alloc_size, field, info))
            {
                return FALSE;
            }

            if(alloc_size > max_size) {
                max_size = alloc_size;

                max_size_field = field_type;
            }
        }

        if(max_size_field) {
            fields.push_back(max_size_field);
        }

        if(struct_type->isOpaque()) {
            struct_type->setBody(fields, false);
        }

        klass->mUndefinedStructType = NULL;
    }

    return TRUE;
}

static void create_real_union_name(char* real_union_name, int size_real_union_name, char* union_name)
{
    xstrncpy(real_union_name, union_name, size_real_union_name);
}


BOOL create_llvm_type_from_node_type(Type** result_type, sNodeType* node_type, sCompileInfo* info)
{
    sCLClass* klass = node_type->mClass;

    if(klass->mFlags & CLASS_FLAGS_STRUCT) 
    {
        if(klass->mUndefinedStructType && node_type->mPointerNum == 0)
        {
            return FALSE;
        }

        sCLClass* klass = node_type->mClass;

        char* class_name = CLASS_NAME(klass);

        char real_struct_name[REAL_STRUCT_NAME_MAX];
        int size_real_struct_name = REAL_STRUCT_NAME_MAX;

        create_real_struct_name(real_struct_name, size_real_struct_name, class_name, node_type->mNumGenericsTypes, node_type->mGenericsTypes);

        if(gLLVMStructType[real_struct_name].first == nullptr) 
        {
            if(!create_llvm_struct_type(node_type, info))
            {
                return FALSE;
            }
        }

        *result_type = gLLVMStructType[real_struct_name].first;
    }
    else if(klass->mFlags & CLASS_FLAGS_UNION) 
    {
        if(klass->mUndefinedStructType && node_type->mPointerNum == 0)
        {
            return FALSE;
        }

        sCLClass* klass = node_type->mClass;

        char* class_name = CLASS_NAME(klass);

        char real_struct_name[REAL_STRUCT_NAME_MAX];
        int size_real_struct_name = REAL_STRUCT_NAME_MAX;

        create_real_struct_name(real_struct_name, size_real_struct_name, class_name, node_type->mNumGenericsTypes, node_type->mGenericsTypes);

        if(gLLVMStructType[real_struct_name].first == nullptr) 
        {
            if(!create_llvm_struct_type(node_type, info))
            {
                return FALSE;
            }
        }

        *result_type = gLLVMStructType[real_struct_name].first;
    }
    else if((klass->mFlags & CLASS_FLAGS_GENERICS) || (klass->mFlags & CLASS_FLAGS_METHOD_GENERICS))
    {
        if(info && info->no_output) {
            *result_type = IntegerType::get(TheContext, 64);
        }
        else {
            return FALSE;
        }
    }
    else if(type_identify_with_class_name(node_type, "char"))
    {
        *result_type = IntegerType::get(TheContext, 8);
    }
    else if(type_identify_with_class_name(node_type, "short"))
    {
        *result_type = IntegerType::get(TheContext, 16);
    }
    else if(type_identify_with_class_name(node_type, "int"))
    {
        *result_type = IntegerType::get(TheContext, 32);
    }
    else if(type_identify_with_class_name(node_type, "long"))
    {
        *result_type = IntegerType::get(TheContext, 64);
    }
    else if(type_identify_with_class_name(node_type, "any"))
    {
        *result_type = IntegerType::get(TheContext, 64);
    }
    else if(type_identify_with_class_name(node_type, "bool"))
    {
        *result_type = IntegerType::get(TheContext, 1);
    }
    else if(type_identify_with_class_name(node_type, "void"))
    {
        if(node_type->mPointerNum > 0) {
            *result_type = IntegerType::get(TheContext, 8);
        }
        else {
            *result_type = Type::getVoidTy(TheContext);
        }
    }
    else if(type_identify_with_class_name(node_type, "lambda"))
    {
        int num_params = node_type->mNumParams;
        sNodeType* fun_result_type = node_type->mResultType;

        Type* llvm_result_type;
        if(!create_llvm_type_from_node_type(&llvm_result_type, fun_result_type, info))
        {
            return FALSE;
        }

        std::vector<Type *> llvm_param_types;

        int i;
        for(i=0; i<num_params; i++) {
            sNodeType* param_type = node_type->mParamTypes[i];

            Type* llvm_param_type;
            if(!create_llvm_type_from_node_type(&llvm_param_type, param_type, info))
            {
                return FALSE;
            }

            llvm_param_types.push_back(llvm_param_type);
        }
    
        *result_type = FunctionType::get(llvm_result_type, llvm_param_types, false);

        *result_type = PointerType::get(*result_type, 0);
    }

    int i;
    for(i=0; i<node_type->mPointerNum; i++) {
        *result_type = PointerType::get(*result_type, 0);
    }
    
    if(node_type->mArrayNum > 0) {
        *result_type = ArrayType::get(*result_type, node_type->mArrayNum);
    }

    return TRUE;
}

int get_llvm_alignment_from_node_type(sNodeType* node_type)
{
    int result = 0;

    sCLClass* klass = node_type->mClass;

    if(klass->mFlags & CLASS_FLAGS_STRUCT) {
        result = 8;
    }
    else if(klass->mFlags & CLASS_FLAGS_UNION) {
        result = 8;
    }
    else if(node_type->mPointerNum > 0) {
        result = 8;
    }
    else if(type_identify_with_class_name(node_type, "char"))
    {
        result = 1;
    }
    else if(type_identify_with_class_name(node_type, "short"))
    {
        result = 2;
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

Value* get_dummy_value(sNodeType* node_type, sCompileInfo* info)
{
    Type* llvm_type;
    if(!create_llvm_type_from_node_type(&llvm_type, node_type, info))
    {
        return FALSE;
    }

    Value* address = Builder.CreateAlloca(llvm_type, 0, "dummy");

    int alignment = get_llvm_alignment_from_node_type(node_type);

    return Builder.CreateAlignedLoad(address, alignment, "dummy_value");
}

BOOL get_size_from_node_type(uint64_t* result, sNodeType* node_type, sCompileInfo* info)
{
    Type* llvm_type;
    if(!create_llvm_type_from_node_type(&llvm_type, node_type, info))
    {
        return FALSE;
    }

    DataLayout data_layout(TheModule);

    *result = data_layout.getTypeAllocSize(llvm_type);

    return TRUE;
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

BOOL cast_right_type_to_left_type(sNodeType* left_type, sNodeType** right_type, LVALUE* rvalue, struct sCompileInfoStruct* info)
{
    sCLClass* left_class = left_type->mClass;
    sCLClass* right_class = (*right_type)->mClass;

    if(left_type->mPointerNum > 0) 
    {
        if((*right_type)->mPointerNum > 0) {
            if(rvalue) {
                Type* llvm_type;
                if(!create_llvm_type_from_node_type(&llvm_type, left_type, info))
                {
                    return FALSE;
                }

                rvalue->value = Builder.CreateCast(Instruction::BitCast, rvalue->value, llvm_type);
                rvalue->type = clone_node_type(left_type);
            }

            *right_type = clone_node_type(left_type);
        }
    }
    else if(type_identify_with_class_name(left_type, "lambda")) {
        if(rvalue) {
            Type* llvm_type;
            if(!create_llvm_type_from_node_type(&llvm_type, left_type, info))
            {
                return FALSE;
            }

            rvalue->value = Builder.CreateCast(Instruction::BitCast, rvalue->value, llvm_type);
            rvalue->type = left_type;
        }

        *right_type = clone_node_type(left_type);
    }
    else if(type_identify_with_class_name(left_type, "bool"))
    {
        if(rvalue) {
            rvalue->value = Builder.CreateCast(Instruction::Trunc, rvalue->value, IntegerType::get(TheContext, 1));
            rvalue->type = create_node_type_with_class_name("bool");
        }

        *right_type = create_node_type_with_class_name("bool");
    }
    else if(type_identify_with_class_name(left_type, "char"))
    {
        if(type_identify_with_class_name(*right_type, "long") || type_identify_with_class_name(*right_type, "int") || type_identify_with_class_name(*right_type, "short"))
        {
            if(rvalue) {
                rvalue->value = Builder.CreateCast(Instruction::Trunc, rvalue->value, IntegerType::get(TheContext, 8));
                rvalue->type = create_node_type_with_class_name("short");
            }

            *right_type = create_node_type_with_class_name("char");
        }
        else if(type_identify_with_class_name(*right_type, "bool"))
        {
            if(rvalue) {
                rvalue->value = Builder.CreateCast(Instruction::SExt, rvalue->value, IntegerType::get(TheContext, 8));
                rvalue->type = create_node_type_with_class_name("short");
            }

            *right_type = create_node_type_with_class_name("char");
        }
    }
    else if(type_identify_with_class_name(left_type, "short"))
    {
        if(type_identify_with_class_name(*right_type, "long") || type_identify_with_class_name(*right_type, "int"))
        {
            if(rvalue) {
                rvalue->value = Builder.CreateCast(Instruction::Trunc, rvalue->value, IntegerType::get(TheContext, 16));
                rvalue->type = create_node_type_with_class_name("short");
            }

            *right_type = create_node_type_with_class_name("short");
        }
        else if(type_identify_with_class_name(*right_type, "char") || type_identify_with_class_name(*right_type, "bool"))
        {
            if(rvalue) {
                rvalue->value = Builder.CreateCast(Instruction::SExt, rvalue->value, IntegerType::get(TheContext, 32));
                rvalue->type = create_node_type_with_class_name("short");
            }

            *right_type = create_node_type_with_class_name("short");
        }
    }
    else if(type_identify_with_class_name(left_type, "int"))
    {
        if(type_identify_with_class_name(*right_type, "long"))
        {
            if(rvalue) {
                rvalue->value = Builder.CreateCast(Instruction::Trunc, rvalue->value, IntegerType::get(TheContext, 32));
                rvalue->type = create_node_type_with_class_name("int");
            }

            *right_type = create_node_type_with_class_name("int");
        }
        else if(type_identify_with_class_name(*right_type, "short") || type_identify_with_class_name(*right_type, "char") || type_identify_with_class_name(*right_type, "bool"))
        {
            if(rvalue) {
                rvalue->value = Builder.CreateCast(Instruction::SExt, rvalue->value, IntegerType::get(TheContext, 32));
                rvalue->type = create_node_type_with_class_name("int");
            }

            *right_type = create_node_type_with_class_name("int");
        }
    }
    else if(type_identify_with_class_name(left_type, "long"))
    {
        if(type_identify_with_class_name(*right_type, "long"))
        {
            *right_type = create_node_type_with_class_name("long");
        }
        else if(type_identify_with_class_name(*right_type, "int") || type_identify_with_class_name(*right_type, "short") || type_identify_with_class_name(*right_type, "char") || type_identify_with_class_name(*right_type, "bool"))
        {
            if(rvalue) {
                rvalue->value = Builder.CreateCast(Instruction::SExt, rvalue->value, IntegerType::get(TheContext, 64));
                rvalue->type = create_node_type_with_class_name("long");
            }

            *right_type = create_node_type_with_class_name("long");
        }
    }

    return TRUE;
}

void std_move(Value* var_address, sNodeType* lvar_type, LVALUE* rvalue, BOOL alloc, sCompileInfo* info)
{
    if(!info->no_output) {
        sVar* rvar = rvalue->var;
        sNodeType* rvalue_type = rvalue->type;

        if(lvar_type->mHeap && rvalue_type->mHeap) {
            if(var_address && !alloc) {
                free_object(lvar_type, var_address, info);
            }

            if(rvar) {
                rvar->mLLVMValue = NULL;
            }
        }

        if(lvar_type->mHeap) {
            if(gHeapObjects[rvalue->value].first != nullptr) {
                gHeapObjects[rvalue->value].second = false;
            }
        }
    }
}

static void free_right_value_object(sNodeType* node_type, void* obj, sCompileInfo* info)
{
printf("free %p\n", obj);
    Value* obj2 = (Value*)obj;
    sCLClass* klass = node_type->mClass;

    sNodeType* node_type2 = clone_node_type(node_type);
    node_type2->mPointerNum = 0;

    Type* llvm_struct_type;
    (void)create_llvm_type_from_node_type(&llvm_struct_type, node_type2, info);

    int i;
    for(i=0; i<klass->mNumFields; i++) {
        sNodeType* field_type = klass->mFields[i];
        sCLClass* field_class = field_type->mClass;

        Type* llvm_field_type;
        (void)create_llvm_type_from_node_type(&llvm_field_type, field_type, info);

        if(field_type->mHeap)
        {
printf("field %d\n", i);
#if LLVM_VERSION_MAJOR >= 7
            Value* field_address = Builder.CreateStructGEP(obj2, i);
#else
            Value* field_address = Builder.CreateStructGEP(llvm_struct_type, obj2, i);
#endif

            Value* field_obj = Builder.CreateAlignedLoad(field_address, 8);

            free_right_value_object(field_type, field_address, info);
        }
    }

    /// free ///
    Function* fun = TheModule->getFunction("xfree");

    if(fun == nullptr) {
        fprintf(stderr, "require xfree\n");
        exit(2);
    }

    std::vector<Value*> params2;
    Value* param = Builder.CreateCast(Instruction::BitCast, obj2, PointerType::get(IntegerType::get(TheContext, 8), 0));

    params2.push_back(param);
    Builder.CreateCall(fun, params2);
}

void free_right_value_objects(sCompileInfo* info)
{
    for(std::pair<Value*, std::pair<sNodeType*, bool>> it: gHeapObjects) {
        Value* address = it.first;
        sNodeType* node_type = it.second.first; 
        bool flag = it.second.second;

        if(flag) {
            free_right_value_object(node_type, address, info);
        }
    }

    gHeapObjects.clear();
}

static void call_destructor(Value* obj, sNodeType* node_type, sCompileInfo* info)
{
    Value* params[PARAMS_MAX];

    params[0] = obj;

    LVALUE llvm_value;
    llvm_value.value = obj;
    llvm_value.type = clone_node_type(node_type);
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    int num_params = 1;

    char* struct_name = CLASS_NAME(node_type->mClass);

    (void)call_function("finalize", params, num_params, struct_name, info);
}

void free_object(sNodeType* node_type, void* address, sCompileInfo* info)
{
    sCLClass* klass = node_type->mClass;

    Value* obj = Builder.CreateAlignedLoad((Value*)address, 8);

    call_destructor(obj, node_type, info);

    sNodeType* node_type2 = clone_node_type(node_type);
    node_type2->mPointerNum = 0;

    Type* llvm_struct_type;
    (void)create_llvm_type_from_node_type(&llvm_struct_type, node_type2, info);

    int i;
    for(i=0; i<klass->mNumFields; i++) {
        sNodeType* field_type = klass->mFields[i];
        (void)solve_generics(&field_type, node_type);
        sCLClass* field_class = field_type->mClass;

        Type* llvm_field_type;
        (void)create_llvm_type_from_node_type(&llvm_field_type, field_type, info);

        if(field_type->mHeap)
        {
#if LLVM_VERSION_MAJOR >= 7
            Value* field_address = Builder.CreateStructGEP(obj, i);
#else
            Value* field_address = Builder.CreateStructGEP(llvm_struct_type, obj, i);
#endif
            free_object(field_type, field_address, info);
        }
    }

    /// free ///
    Function* fun = TheModule->getFunction("xfree");

    if(fun == nullptr) {
        fprintf(stderr, "require xfree\n");
        exit(2);
    }

    std::vector<Value*> params2;
    Value* param = Builder.CreateCast(Instruction::BitCast, obj, PointerType::get(IntegerType::get(TheContext, 8), 0));

    params2.push_back(param);
    Builder.CreateCall(fun, params2);
}

Value* clone_object(sNodeType* node_type, Value* address, sCompileInfo* info)
{
    sCLClass* klass = node_type->mClass;

    Value* src_obj = Builder.CreateAlignedLoad(address, 8);

    /// memdup ///
    Function* fun = TheModule->getFunction("xmemdup");

    if(fun == nullptr) {
        fprintf(stderr, "require xmemdup\n");
        exit(2);
    }

    std::vector<Value*> params2;
    Value* param = Builder.CreateCast(Instruction::BitCast, src_obj, PointerType::get(IntegerType::get(TheContext, 8), 0));

    params2.push_back(param);
    Value* address2 = Builder.CreateCall(fun, params2);

    Type* llvm_obj_type;
    (void)create_llvm_type_from_node_type(&llvm_obj_type, node_type, info);

    Value* address3 = Builder.CreateCast(Instruction::BitCast, address2, llvm_obj_type);

    sNodeType* node_type2 = clone_node_type(node_type);
    node_type2->mPointerNum = 0;

    Type* llvm_struct_type;
    (void)create_llvm_type_from_node_type(&llvm_struct_type, node_type2, info);

/*
    Value* dest_obj = Builder.CreateAlignedLoad(address3, 8);
*/

    int i;
    for(i=0; i<klass->mNumFields; i++) {
        sNodeType* field_type = klass->mFields[i];
        sCLClass* field_class = field_type->mClass;

        Type* llvm_field_type;
        (void)create_llvm_type_from_node_type(&llvm_field_type, field_type, info);

        int alignment = get_llvm_alignment_from_node_type(field_type);

        if(field_type->mHeap)
        {
#if LLVM_VERSION_MAJOR >= 7
           Value* field_address = Builder.CreateStructGEP(address3, i);
#else
           Value* field_address = Builder.CreateStructGEP(llvm_struct_type, address3, i);
#endif
           Value* field_value = clone_object(field_type, field_address, info);

            Builder.CreateAlignedStore(field_value,  field_address, alignment);
        }
    }

    return address3;
}

void llvm_change_block(BasicBlock* current_block, BasicBlock** current_block_before, sCompileInfo* info)
{
    free_right_value_objects(info);

    *current_block_before = (BasicBlock*)info->current_block;

    Builder.SetInsertPoint(current_block);
    info->current_block = current_block;
}

}
