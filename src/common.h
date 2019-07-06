#ifndef COMMON_H
#define COMMON_H 1

#include "buffer.h"
#include "xfunc.h"
#include "alignment.h"

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>
#include <limits.h>
#include <string.h>

//////////////////////////////
/// limits 
//////////////////////////////
#define GENERICS_TYPES_MAX 10
#define VAR_NAME_MAX 32
#define CLASS_NUM_MAX 512
#define PARSER_ERR_MSG_MAX 5
#define COMPILE_ERR_MSG_MAX 5
#define NEO_C_STACK_SIZE 512
#define LOCAL_VARIABLE_MAX 256
#define PARAMS_MAX 32
#define METHOD_DEFAULT_PARAM_MAX 128
#define SOURCE_EXPRESSION_MAX 4096*2
#define ELIF_NUM_MAX 32
#define STRUCT_FIELD_MAX 32
#define REAL_FUN_NAME_MAX (VAR_NAME_MAX*PARAMS_MAX+32)
#define REAL_STRUCT_NAME_MAX (VAR_NAME_MAX*PARAMS_MAX+32)
#define IMPL_DEF_MAX 512

#define clint64 long long      // for 32 bit cpu

//////////////////////////////
/// progressive declaration
//////////////////////////////
struct sParserInfoStruct;
struct sNodeBlockStruct;
struct sCompileInfoStruct;

//////////////////////////////
/// constant.c 
//////////////////////////////
struct sConstStruct
{
    char* mConst;
    unsigned int mSize;
    unsigned int mLen;
};

typedef struct sConstStruct sConst;

#define CONS_str(constant, offset) (char*)((constant)->mConst + offset)

void sConst_init(sConst* self);
void sConst_init_with_size(sConst* self, unsigned int size);
void sConst_free(sConst* self);
void sConst_clone(sConst* self, sConst* constant);

unsigned int sConst_append(sConst* self, void* data, int size, BOOL no_output);
unsigned int append_int_value_to_constant_pool(sConst* constant, int n, BOOL no_output);
unsigned int append_float_value_to_constant_pool(sConst* constant, float n, BOOL no_output);
unsigned int append_double_value_to_constant_pool(sConst* constant, double n, BOOL no_output);
unsigned int append_str_to_constant_pool(sConst* constant, char* str, BOOL no_output);
unsigned int append_wstr_to_constant_pool(sConst* constant, char* str, BOOL no_output);

//////////////////////////////
/// klass.c 
//////////////////////////////
#define CLASS_FLAGS_PRIMITIVE 0x01
#define CLASS_FLAGS_STRUCT 0x02
#define CLASS_FLAGS_NUMBER 0x04
#define CLASS_FLAGS_UNSIGNED_NUMBER 0x08
#define CLASS_FLAGS_GENERICS 0x10
#define CLASS_FLAGS_METHOD_GENERICS 0x20

struct sCLClassStruct {
    clint64 mFlags;

    unsigned int mGenericsParamNameOffsets[GENERICS_TYPES_MAX];
    unsigned int mGenericsParamTypeOffsets[GENERICS_TYPES_MAX];

    sConst mConst;

    int mClassNameOffset;

    int mGenericsNum;
    int mMethodGenericsNum;
    
    char mFieldNameOffsets[STRUCT_FIELD_MAX];
    struct sNodeTypeStruct* mFields[STRUCT_FIELD_MAX];
    int mNumFields;
};

#define CLASS_NAME(klass) (CONS_str((&(klass)->mConst), (klass)->mClassNameOffset))

typedef struct sCLClassStruct sCLClass;

struct sClassTableStruct
{
    char* mName;
    sCLClass* mItem;
    BOOL mFreed;
    BOOL mInitialized;

    struct sClassTableStruct* mNextClass;
};

typedef struct sClassTableStruct sClassTable;

extern sClassTable* gHeadClassTable;


void class_init();
void class_final();

sCLClass* get_class(char* class_name);
sCLClass* alloc_struct(char* class_name, int num_fields, char field_name[STRUCT_FIELD_MAX][VAR_NAME_MAX], struct sNodeTypeStruct* fields[STRUCT_FIELD_MAX]);
unsigned int get_hash_key(char* name, unsigned int max);
int get_field_index(sCLClass* klass, char* var_name);

//////////////////////////////
/// node_type.c
//////////////////////////////
struct sNodeTypeStruct {
    sCLClass* mClass;

    struct sNodeTypeStruct* mGenericsTypes[GENERICS_TYPES_MAX];
    int mNumGenericsTypes;

    int mArrayNum;
    BOOL mNullable;
    int mPointerNum;

    struct sNodeTypeStruct* mParamTypes[PARAMS_MAX];
    struct sNodeTypeStruct* mResultType;
    int mNumParams;

    BOOL mHeap;
};

typedef struct sNodeTypeStruct sNodeType;

void init_node_types();
void free_node_types();

sNodeType* clone_node_type(sNodeType* node_type);
sNodeType* create_node_type_with_class_name(char* class_name);
sNodeType* create_node_type_with_class_pointer(sCLClass* klass);
BOOL cast_posibility(sNodeType* left_type, sNodeType* right_type);
BOOL auto_cast_posibility(sNodeType* left_type, sNodeType* right_type);

struct sCompileInfoStruct;
BOOL substitution_posibility(sNodeType* left_type, sNodeType* right_type, struct sCompileInfoStruct* info);
BOOL type_identify(sNodeType* left, sNodeType* right);
BOOL type_identify_with_class_name(sNodeType* left, char* right_class_name);
BOOL is_number_type(sNodeType* node_type);
void show_node_type(sNodeType* node_type);
BOOL solve_generics(sNodeType** node_type, sNodeType* generics_type);
BOOL solve_method_generics(sNodeType** node_type, int num_method_generics_types, sNodeType* method_generics_types[GENERICS_TYPES_MAX]);
BOOL included_generics_type(sNodeType* node_type);
BOOL get_type_of_method_generics(sNodeType* method_generics_types[GENERICS_TYPES_MAX], sNodeType* fun_param_type, sNodeType* param_type);
  
//////////////////////////////
/// vtable.c
//////////////////////////////
struct sVarStruct {
    char mName[VAR_NAME_MAX];
    int mIndex;
    sNodeType* mType;

    int mBlockLevel;

    BOOL mReadOnly;
    void* mLLVMValue;
};

typedef struct sVarStruct sVar;

struct sVarTableStruct {
    sVar mLocalVariables[LOCAL_VARIABLE_MAX];  // open address hash
    int mVarNum;
    int mMaxBlockVarNum;

    int mBlockLevel;

    struct sVarTableStruct* mParent;            // make linked list
    struct sVarTableStruct* mNext;              // for free var table
};

typedef struct sVarTableStruct sVarTable;

void init_vtable();
void final_vtable();

sVarTable* init_block_vtable(sVarTable* lv_table);

sVarTable* init_var_table();
sVarTable* clone_var_table(sVarTable* lv_table);
void restore_var_table(sVarTable* left, sVarTable* right);

void set_max_block_var_num(sVarTable* new_table, sVarTable* lv_table);

int get_variable_index(sVarTable* table, char* name, BOOL* parent);

void check_already_added_variable(sVarTable* table, char* name, struct sParserInfoStruct* info);

// result: (true) success (false) overflow the table or a variable which has the same name exists
BOOL add_variable_to_table(sVarTable* table, char* name, sNodeType* type_, BOOL readonly, void* llvm_value, int index);

// result: (null) not found (sVar*) found
sVar* get_variable_from_table(sVarTable* table, char* name);

// result: (null) not found (sVar*) found
sVar* get_variable_from_index(sVarTable* table, int index);

int get_var_num(sVarTable* table);
void show_vtable(sVarTable* table);

int get_parent_var_num_of_sum(sVarTable* table);

void free_objects(sVarTable* table, struct sCompileInfoStruct* info);

//////////////////////////////
/// parser.c
//////////////////////////////
struct sParserInfoStruct
{
    char* p;
    char* sname;
    char* source;
    char* module_name;
    int sline;
    int err_num;
    int parse_phase;
    sVarTable* lv_table;
    int mNumGenerics;
    char mGenericsTypeNames[GENERICS_TYPES_MAX][VAR_NAME_MAX];

    int mNumMethodGenerics;
    char mMethodGenericsTypeNames[GENERICS_TYPES_MAX][VAR_NAME_MAX];

    sNodeType* mMethodGenericsTypes[GENERICS_TYPES_MAX];
    int mNumMethodGenericsTypes;

    sNodeType* mGenericsType;
};

typedef struct sParserInfoStruct sParserInfo;

struct sParserParamStruct 
{
    char mName[VAR_NAME_MAX];
    sNodeType* mType;

    char mDefaultValue[METHOD_DEFAULT_PARAM_MAX];
};

typedef struct sParserParamStruct sParserParam;

void parser_init();
void parser_final();
void parser_err_msg(sParserInfo* info, const char* msg, ...);
void skip_spaces_and_lf(sParserInfo* info);
BOOL parse_word(char* buf, int buf_size, sParserInfo* info, BOOL print_out_err_msg, BOOL no_skip_lf);
void expect_next_character_with_one_forward(char* characters, sParserInfo* info);
BOOL expression(unsigned int* node, sParserInfo* info);
void create_lambda_name(char* lambda_name, size_t size_lambda_name, char* module_name);

extern int gNumLambdaName;

//////////////////////////////
/// source compiler 
//////////////////////////////
BOOL delete_comment(sBuf* source, sBuf* source2);
BOOL read_source(char* fname, sBuf* source);
BOOL compile_source(char* fname, char* source, BOOL optimize, BOOL output_object_file);

//////////////////////////////
/// node.cpp
//////////////////////////////
struct sCompileInfoStruct
{
    BOOL no_output;
    int err_num;
    struct sParserInfoStruct* pinfo;
    sNodeType* type;

    char* sname;
    int sline;

    int stack_num;

    char fun_name[VAR_NAME_MAX];

    void* current_block;

    sNodeType* generics_type;
};

typedef struct sCompileInfoStruct sCompileInfo;

enum eNodeType { kNodeTypeIntValue, kNodeTypeAdd, kNodeTypeSub, kNodeTypeStoreVariable, kNodeTypeLoadVariable, kNodeTypeCString, kNodeTypeFunction, kNodeTypeExternalFunction, kNodeTypeFunctionCall, kNodeTypeIf, kNodeTypeEquals, kNodeTypeNotEquals, kNodeTypeStruct, kNodeTypeObject, kNodeTypeStructObject, kNodeTypeStoreField, kNodeTypeLoadField, kNodeTypeWhile, kNodeTypeGteq, kNodeTypeLeeq, kNodeTypeGt, kNodeTypeLe, kNodeTypeLogicalDenial, kNodeTypeTrue, kNodeTypeFalse, kNodeTypeAndAnd, kNodeTypeOrOr, kNodeTypeFor, kNodeTypeLambdaCall, kNodeTypeSimpleLambdaParam, kNodeTypeDerefference, kNodeTypeRefference, kNodeTypeNull, kNodeTypeClone, kNodeTypeLoadElement, kNodeTypeStoreElement, kNodeTypeChar, kNodeTypeMult, kNodeTypeDiv, kNodeTypeMod, kNodeTypeCast, kNodeTypeImpl, kNodeTypeGenericsFunction, kNodeTypeTypeDef };

struct sNodeTreeStruct 
{
    enum eNodeType mNodeType;

    unsigned int mLeft;
    unsigned int mRight;
    unsigned int mMiddle;

    char* mSName;
    int mLine;

    union {
        int mIntValue;
        char mCharValue;
        sNodeType* mType;

        struct {
            char mVarName[VAR_NAME_MAX];
            BOOL mAlloc;
        } sStoreVariable;

        struct {
            char mVarName[VAR_NAME_MAX];
        } sLoadVariable;

        struct {
            char* mString;
        } sString;

        struct {
            char mName[VAR_NAME_MAX];
            sParserParam mParams[PARAMS_MAX];
            int mNumParams;
            sNodeType* mResultType;
            struct sNodeBlockStruct* mNodeBlock;
            BOOL mLambda;
            sVarTable* mVarTable;
            BOOL mVarArg;
            char mStructName[VAR_NAME_MAX];
            BOOL mOperatorFun;
            char* mBlockText;
            int mNumGenerics;
            char mGenericsTypeNames[PARAMS_MAX][VAR_NAME_MAX];

            int mNumMethodGenerics;
            char mMethodGenericsTypeNames[GENERICS_TYPES_MAX][VAR_NAME_MAX];
            BOOL mSimpleLambdaParam;
            BOOL mGenericsFunction;
            BOOL mConstructorFun;
        } sFunction;

        struct {
            char mName[VAR_NAME_MAX];
            unsigned int mParams[PARAMS_MAX];
            int mNumParams;
            BOOL mMethod;
        } sFunctionCall;

        struct {
            unsigned int mExpressionNode;
            MANAGED struct sNodeBlockStruct* mIfNodeBlock;
            unsigned int mElifExpressionNodes[ELIF_NUM_MAX];
            MANAGED struct sNodeBlockStruct* mElifNodeBlocks[ELIF_NUM_MAX];
            int mElifNum;
            MANAGED struct sNodeBlockStruct* mElseNodeBlock;
        } sIf;

        struct {
            unsigned int mExpressionNode;
            MANAGED struct sNodeBlockStruct* mWhileNodeBlock;
        } sWhile;

        struct {
            sNodeType* mType;
        } sStruct;

        struct {
            sNodeType* mType;
        } sObject;

        struct {
            char mVarName[VAR_NAME_MAX];
        } sStoreField;

        struct {
            char mVarName[VAR_NAME_MAX];
        } sLoadField;

        struct {
            unsigned int mExpressionNode;
            unsigned int mExpressionNode2;
            unsigned int mExpressionNode3;
            MANAGED struct sNodeBlockStruct* mForNodeBlock;
        } sFor;

        struct {
            char* mBuf;
            char* mSName;
            int mSLine;
        } sSimpleLambdaParam;

        struct {
            unsigned int* mNodes[IMPL_DEF_MAX];
            int mNumNodes;
        } sImpl;

        struct {
            char mName[VAR_NAME_MAX];
            sNodeType* mNodeType;
        } sTypeDef;
    } uValue;
};

typedef struct sNodeTreeStruct sNodeTree;

extern sNodeTree* gNodes;
extern int gUsedNodes;

void compile_err_msg(sCompileInfo* info, const char* msg, ...);

unsigned int sNodeTree_create_int_value(int value, sParserInfo* info);
unsigned int sNodeTree_create_add(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_sub(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_equals(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_not_equals(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);

unsigned int sNodeTree_create_store_variable(char* var_name, int right, BOOL alloc, sParserInfo* info);

unsigned int sNodeTree_create_external_function(char* fun_name, sParserParam* params, int num_params, BOOL var_arg, sNodeType* result_type, char* struct_name, BOOL operator_fun, sParserInfo* info);

unsigned int sNodeTree_create_c_string_value(MANAGED char* value, int len, int sline, sParserInfo* info);

unsigned int sNodeTree_create_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, MANAGED struct sNodeBlockStruct* node_block, BOOL lambda, sVarTable* block_var_table, char* struct_name, BOOL operator_fun, BOOL constructor_fun, BOOL simple_lambda_param, sParserInfo* info, BOOL generics_function);

unsigned int sNodeTree_create_function_call(char* fun_name, unsigned int* params, int num_params, BOOL method, sParserInfo* info);
unsigned int sNodeTree_create_load_variable(char* var_name, sParserInfo* info);
unsigned int sNodeTree_if_expression(unsigned int expression_node, MANAGED struct sNodeBlockStruct* if_node_block, unsigned int* elif_expression_nodes, MANAGED struct sNodeBlockStruct** elif_node_blocks, int elif_num, MANAGED struct sNodeBlockStruct* else_node_block, sParserInfo* info, char* sname, int sline);
unsigned int sNodeTree_struct(sNodeType* struct_type, sParserInfo* info, char* sname, int sline);
unsigned int sNodeTree_create_object(sNodeType* node_type, unsigned int object_num, char* sname, int sline);
unsigned int sNodeTree_create_store_field(char* var_name, unsigned int left_node, unsigned int right_node, sParserInfo* info);
unsigned int sNodeTree_create_load_field(char* name, unsigned int left_node, sParserInfo* info);
unsigned int sNodeTree_while_expression(unsigned int expression_node, MANAGED struct sNodeBlockStruct* while_node_block, sParserInfo* info);
unsigned int sNodeTree_create_gteq(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_leeq(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_gt(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_le(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_logical_denial(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_true(sParserInfo* info);
unsigned int sNodeTree_create_false(sParserInfo* info);
unsigned int sNodeTree_create_and_and(unsigned int left_node, unsigned int right_node, sParserInfo* info);
unsigned int sNodeTree_create_or_or(unsigned int left_node, unsigned int right_node, sParserInfo* info);
unsigned int sNodeTree_for_expression(unsigned int expression_node1, unsigned int expression_node2, unsigned int expression_node3, MANAGED struct sNodeBlockStruct* for_node_block, sParserInfo* info);
unsigned int sNodeTree_create_block_object(sParserParam* params, int num_params, sNodeType* result_type, MANAGED struct sNodeBlockStruct* node_block, sParserInfo* info);
unsigned int sNodeTree_create_lambda_call(unsigned int lambda_node, unsigned int* params, int num_params, sParserInfo* info);
unsigned int sNodeTree_create_simple_lambda_param(char* buf, char* sname, int sline, sParserInfo* info);
unsigned int sNodeTree_create_struct_object(sNodeType* node_type, char* sname, int sline);
unsigned int sNodeTree_create_dereffernce(unsigned int left_node, sParserInfo* info);
unsigned int sNodeTree_create_reffernce(unsigned int left_node, sParserInfo* info);
unsigned int sNodeTree_create_null(sParserInfo* info);
unsigned int sNodeTree_create_clone(unsigned int left, sParserInfo* info);
unsigned int sNodeTree_create_borrow(unsigned int left, sParserInfo* info);
unsigned int sNodeTree_create_load_array_element(unsigned int array, unsigned int index_node, sParserInfo* info);
unsigned int sNodeTree_create_store_element(unsigned int array, unsigned int index_node, unsigned int right_node, sParserInfo* info);
unsigned int sNodeTree_create_character_value(char c, sParserInfo* info);
unsigned int sNodeTree_create_mult(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_div(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_mod(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info);
unsigned int sNodeTree_create_cast(sNodeType* left_type, unsigned int left_node, sParserInfo* info);
unsigned int sNodeTree_create_generics_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, MANAGED char* block_text, char* struct_name, char* sname, int sline, sParserInfo* info);
unsigned int sNodeTree_create_impl(unsigned int* nodes, int num_nodes, sParserInfo* info);
unsigned int sNodeTree_create_typedef(char* name, sNodeType* node_type, sParserInfo* info);
void create_operator_fun_name(char* fun_name, char* real_fun_name, size_t size_real_fun_name, sNodeType** param_types, int num_params);

void show_node(unsigned int node);
BOOL compile(unsigned int node, sCompileInfo* info);

//////////////////////////////
/// node_block.c
//////////////////////////////
struct sNodeBlockStruct
{
    unsigned int* mNodes;
    unsigned int mSizeNodes;
    unsigned int mNumNodes;

    sVarTable* mLVTable;

    sBuf mSource;
    char* mSName;
    int mSLine;
    
    BOOL mHasResult;
};

typedef struct sNodeBlockStruct sNodeBlock;

BOOL parse_block_easy(ALLOC sNodeBlock** node_block, sParserInfo* info);
BOOL parse_block(sNodeBlock* node_block, sParserInfo* info);
BOOL compile_block(sNodeBlock* block, sCompileInfo* info, sNodeType* result_type);

//////////////////////////////
/// node_alloc.cpp
//////////////////////////////
void init_nodes();
void free_nodes();

unsigned int alloc_node();

ALLOC sNodeBlock* sNodeBlock_alloc();
void sNodeBlock_free(sNodeBlock* block);

void append_node_to_node_block(sNodeBlock* node_block, unsigned int node);

//////////////////////////////
/// llvm.cpp
//////////////////////////////
void llvm_init();
void llvm_final();

void start_to_make_native_code(char* sname);
void output_native_code(BOOL optimize, BOOL output_object_file);
extern int gResultCode;

void arrange_stack(sCompileInfo* info, int top);
void start_neo_c_main_function();
void finish_neo_c_main_function();
void free_object(sNodeType* node_type, void* address, sCompileInfo* info);
BOOL create_llvm_struct_type(sNodeType* node_type, sCompileInfo* info);

/// typedef.cpp ///
void add_typedef(char* name, sNodeType* node_type);
sNodeType* get_typedef(char* name);

#endif

