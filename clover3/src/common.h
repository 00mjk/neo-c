#ifndef COMMON_H
#define COMMON_H 
#include "config.h"

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <limits.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <ctype.h>
#include <stdarg.h>
#include <locale.h>
#include <pcre.h>
#include <dlfcn.h>
#include <termios.h>
#ifndef __USE_XOPEN
#define __USE_XOPEN
#endif
#ifndef _USE_MISC
#define _USE_MISC
#endif
#ifndef __USE_BSD
#define __USE_BSD
#endif

#include <termios.h>

#define cllong long long      // for 32 bit cpu

//////////////////////////////////////////
/// limits
//////////////////////////////////////////
#define GENERICS_TYPES_MAX 32
#define VM_STACK_MAX 1024
#define PARAMS_MAX 32
#define HEAP_INIT_SIZE 128
#define HEAP_HANDLE_INIT_SIZE 128
#define VAR_NAME_MAX 128
#define ELIF_MAX 64
#define JOB_TITLE_MAX 32

//////////////////////////////////////////
/// runtime side
//////////////////////////////////////////
struct sCLType;
struct sCLClass;
struct sCompileInfo;
struct sVMInfo;
struct sCLNode;
struct sCLNodeBlock;

typedef unsigned int CLObject;

union CLVALUE {
    int mIntValue;
    CLObject mObjectValue;
    wchar_t mCharValue;
};

struct sCLParam {
    char mName[VAR_NAME_MAX];
    sCLType* mType;
};

struct sCLType {
    string mName;
    
    sCLClass* mClass;

    int mNumGenericsTypes;
    sCLType* mGenericsTypes[GENERICS_TYPES_MAX];

    bool mNullable;

    sCLParam mParams[PARAMS_MAX];
    int mNumParams;

    sCLType* mResultType;

    int mVarNum;
};

typedef bool (*fNativeMethod)(CLVALUE** stack_ptr, CLVALUE* lvar, sVMInfo* info);


struct sCLMethod {
    string mName;

    sCLParam mParams[PARAMS_MAX];
    int mNumParams;

    sCLType* mResultType;

    buffer*% mByteCodes;
    fNativeMethod mNativeMethod;

    sCLNodeBlock* mNodeBlock;
};

struct sCLField {
    string mName;

    sCLType* mResultType;
    CLVALUE mValue;
    int mIndex;
};

struct sCLClass {
    string mName;

    map<string,sCLMethod*%>*% mMethods;
    map<string, sCLField*%>*% mFields;
    map<string, sCLField*%>*% mClassFields;
};

extern map<string, sCLClass*%>* gClasses;
extern vector<CLObject>* gJobs;

/// class.nc ///
void class_init();
void class_final();
void append_class(char* name);
bool eval_class(char* source, sCompileInfo* vminfo, char* sname, int sline);

//////////////////////////////////////////
/// compiler side
//////////////////////////////////////////
struct sCLNode {
    int type;
    
    char sname[PATH_MAX];
    int sline;
    
    union {
        int mIntValue;

        struct {
            sCLNode* mIfExpression;
            sCLNodeBlock* mIfNodeBlock;
            int mNumElif;
            void* mElifExpressions[ELIF_MAX];
            void* mElifBlocks[ELIF_MAX];
            sCLNodeBlock* mElseBlock;
        } uIfExpression;
        struct {
            sCLNodeBlock* mNodeBlock;
            sCLParam mParams[PARAMS_MAX];
            int mNumParams;
            sCLType* mResultType;
        } uLambda;
        struct {
            int mNumParams;
            sCLNode* mParams[PARAMS_MAX];
            bool mLastMethodChain;
        } uMethodCall;
    } uValue;
    
    string mClassName;
    string mStringValue;
    buffer*% mBufferValue;
    
    struct sCLNode* left;
    struct sCLNode* middle;
    struct sCLNode* right;
};

struct sVar {
    string mName
    int mIndex;
    sCLType* mType;

    int mBlockLevel;
    bool mReadOnly;
};

struct sVarTable {
    map<string, sVar*%>*% mLocalVariables;
    int mVarNum;
    int mMaxBlockVarNum;

    int mBlockLevel;
    
    sVarTable* mParent;
};

impl sVarTable
{
    initialize();
}

struct sCLNodeBlock {
    vector<sCLNode*>*% nodes;
    vector<sVarTable*%>*% vtables;
    bool has_last_value;

    int mNumParams;
    sCLParam mParams[PARAMS_MAX];

    sCLType* mResultType;
    int mVarNum;

    buffer*% codes;

    int head_params;
};

struct sParserInfo {
    char sname[PATH_MAX];
    int sline;
    
    int err_output_num;
    
    int err_num;
    
    char* p;
    
    vector<sCLNode*%>* nodes;
    vector<sVarTable*%>* vtables;
    vector<sCLNodeBlock*%>* blocks;
    vector<sCLType*%>* types;

    int max_var_num;
};

enum { kNodeTypeInt, kNodeTypeString, kNodeTypeAdd, kNodeTypeStoreVariable, kNodeTypeLoadVariable, kNodeTypeEqual, kNodeTypeNotEqual, kNodeTypeTrue, kNodeTypeFalse, kNodeTypeIf, kNodeTypeLambda, kNodeTypeClass, kNodeTypeCreateObject, kNodeTypeMethodCall, kNodeTypeCommandCall, kNodeTypeBlockObjectCall, kNodeTypeMethodBlock, kNodeTypeJobs, kNodeTypeFg, kNodeTypeStoreField, kNodeTypeLoadField };

struct sCompileInfo {
    char sname[PATH_MAX];
    int sline;
    
    int err_num;
    
    int stack_num;
    
    sParserInfo* pinfo;
    buffer* codes;
    
    sCLType* type;

    bool no_output;
};

enum { OP_POP, OP_INT_VALUE, OP_STRING_VALUE, OP_IADD, OP_STORE_VARIABLE, OP_LOAD_VARIABLE, OP_IEQ, OP_INOTEQ, OP_COND_JUMP, OP_COND_NOT_JUMP, OP_GOTO, OP_CREATE_OBJECT, OP_INVOKE_METHOD, OP_CREATE_BLOCK_OBJECT, OP_INVOKE_BLOCK_OBJECT, OP_INVOKE_COMMAND, OP_JOBS, OP_FG, OP_LOAD_FIELD, OP_STORE_FIELD };

void parser_err_msg(sParserInfo* info, char* msg);
void skip_spaces_and_lf(sParserInfo* info);
bool parse_params(sCLParam* params, int* num_params, sParserInfo* info);
string parse_word(sParserInfo* info);
bool parse_type(sCLType** type, sParserInfo* info);
void expected_next_character(char c, sParserInfo* info);

bool expression(sCLNode** node, sParserInfo* info);
bool compile(sCLNode* node, sCompileInfo* info);
void compile_err_msg(sCompileInfo* info, char* msg);

void init_var_table(sParserInfo* info);
void final_var_table(sParserInfo* info);
void add_variable_to_table(sParserInfo* info, char* name, sCLType* type, bool readonly);
sVar* get_variable_from_table(sParserInfo* info, char* name);
void check_already_added_variable(sParserInfo* info, char* name);
int get_var_num(vector<sVarTable*%>* vtables);

/// type.nc ///
sCLType* create_type(char* type_name, sParserInfo* info);
bool type_identify(sCLType* left_type, sCLType* right_type);
bool substitution_posibility(sCLType* left_type, sCLType* right_type);
bool type_identify_with_class_name(sCLType* left_type, char* right_class, sParserInfo* info);
void show_type(sCLType* type);

sCLNode* sNodeTree_create_add(sCLNode* left, sCLNode* right, sParserInfo* info);
sCLNode* sNodeTree_create_int_value(int value, sParserInfo* info);
sCLNode* sNodeTree_create_store_variable(char* var_name, sCLNode* exp, sParserInfo* info);
sCLNode* sNodeTree_create_load_variable(char* var_name, sParserInfo* info);
sCLNode* sNodeTree_create_equal(sCLNode* left, sCLNode* right, sParserInfo* info);
sCLNode* sNodeTree_create_not_equal(sCLNode* left, sCLNode* right, sParserInfo* info);
sCLNode* sNodeTree_create_string_value(char* value, sParserInfo* info);
sCLNode* sNodeTree_create_true_value(sParserInfo* info);
sCLNode* sNodeTree_create_false_value(sParserInfo* info);
sCLNode* sNodeTree_create_if_expression(sCLNode* if_expression, sCLNodeBlock* if_node_block, int num_elif, sCLNode** elif_expressions, sCLNodeBlock** elif_blocks, sCLNodeBlock* else_block, sParserInfo* info);
sCLNode* sNodeTree_create_lambda(int num_params, sCLParam* params, sCLNodeBlock* node_block, sCLType* block_type, sParserInfo* info);
sCLNode* sNodeTree_create_method_block(char* sname, int sline, buffer*% block_text, sParserInfo* info);
sCLNode* sNodeTree_create_class(char* source, char* sname, int sline, sParserInfo* info);
sCLNode* sNodeTree_create_object(char* class_name_, sParserInfo* info);
CLObject create_block_object(int* codes, int codes_len, int head_params, int var_num, int stack_frame_index, sVMInfo* info);
sCLNode* sNodeTree_create_method_call(char* name, int num_params, sCLNode** params, sParserInfo* info);
sCLNode* sNodeTree_create_command_call(sCLNode* node, char* name, int num_params, sCLNode** params, sParserInfo* info);
sCLNode* sNodeTree_create_block_object_call(int num_params, sCLNode** params, sParserInfo* info);
sCLNode* sNodeTree_create_jobs(sParserInfo* info);
sCLNode* sNodeTree_create_fg(int job_num, sParserInfo* info);
sCLNode* sNodeTree_create_load_field(sCLNode* obj, char* name, sParserInfo* info);
sCLNode* NodeTree_create_store_field(sCLNode* obj, char* name, sCLNode* exp, sParserInfo* info);
sCLNode* sNodeTree_create_load_field(sCLNode* obj, char* name, sParserInfo* info);
sCLNode* sNodeTree_create_store_field(sCLNode* obj, char* name, sCLNode* exp, sParserInfo* info);

//////////////////////////////
/// runtime side
//////////////////////////////
struct sCLStackFrame {
    int index;

    CLVALUE* stack;
    CLVALUE** stack_ptr;
    int var_num;
};

struct sVMInfo {
    char sname[PATH_MAX];
    int sline;

    sParserInfo* pinfo;
    sCompileInfo* cinfo;

    bool in_finalize_method;

    vector<sCLStackFrame>* stack_frames;
};

void vm_err_msg(sVMInfo* info, char* msg);
bool vm(buffer* codes, int head_params, int num_params, int var_num, int parent_stack_frame_index, bool enable_parent_stack, sVMInfo* info);
CLObject alloc_heap_mem(unsigned int size, sCLClass* type, int field_num, sVMInfo* info);
void heap_init(int heap_size, int size_handles);
void heap_final(sVMInfo* info);

struct sCLHeapMem {
    sCLClass* mType;
    int mSize;
    int mArrayNum;
    void* mMem;
};

#define DUMMY_ARRAY_SIZE 32

struct sCLObject {
    sCLClass* mType;
    int mSize;
    
    int mNumFields;
    
    union {
        CLVALUE mFields[DUMMY_ARRAY_SIZE];
        void* mMem;
    };
};

struct sCLBlock {
    sCLClass* mType;
    int mSize;
    
    int mNumFields;
    
    int* codes;
    int codes_len;
    int head_params;
    int stack_frame_index;
    int var_num;
};

struct sCLCommand {
    sCLClass* mType;
    int mSize;
    
    int mNumFields;
    
    int mRCode;
    int mOutputLen;
    int mErrOutputLen;
    char* mErrData;
    char mOutput[DUMMY_ARRAY_SIZE];

};

struct sCLJob {
    sCLClass* mType;
    int mSize;
    
    int mNumFields;
    
    char mTitle[JOB_TITLE_MAX];
    termios mTermInfo;
    pid_t mPGrp;
};


struct sCLString {
    sCLClass* mType;
    int mSize;
    
    int mNumFields;
    
    char mData[DUMMY_ARRAY_SIZE];
};


#define CLOBJECT(obj) ((sCLObject*)(get_object_pointer((obj))))
#define CLBLOCK(obj) ((sCLBlock*)(get_object_pointer((obj))))
#define CLCOMMAND(obj) ((sCLCommand*)(get_object_pointer((obj))))
#define CLSTRING(obj) ((sCLString*)(get_object_pointer((obj))))
#define CLJOB(obj) ((sCLJob*)(get_object_pointer((obj))))

sCLHeapMem* get_object_pointer(CLObject obj);

CLObject create_object(sCLClass* klass, sVMInfo* info);
CLObject create_string_object(char* str, sVMInfo* info);
CLObject create_command_object(char* output, int output_len, char* err_output, int err_output_len, int rcode, sVMInfo* info);
CLObject create_job_object(char* title, termios* tinfo, pid_t pgrp, sVMInfo* info);
void mark_object(CLObject obj, unsigned char* mark_flg, sVMInfo* info);

bool free_object(CLObject self, sVMInfo* info);
void mark_belong_objects(CLObject self, unsigned char* mark_flg, sVMInfo* info);

void alignment(unsigned int* size);

bool parse_block(sCLNodeBlock** node_block, int num_params, sCLParam* params, sParserInfo* info);
bool compile_block(sCLNodeBlock* node_block, sCompileInfo* info);

#endif
