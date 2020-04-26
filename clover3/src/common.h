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

//////////////////////////////////////////
/// runtime side
//////////////////////////////////////////
typedef unsigned int CLObject;

union CLVALUE {
    int mIntValue;
    CLObject mObjectValue;
    wchar_t mCharValue;
    bool mBoolValue;
};

struct sCLStack {
    CLVALUE* mStack;
    CLVALUE** mStackPtr;
};

struct sCLType;
struct sCLClass;
struct sCompileInfo;

struct sCLParam {
    string mName;
    sCLType%* mType;
};

struct sCLBlockType {
    sCLType* mParams[PARAMS_MAX];
    int mNumParams;

    sCLType* mResultType;
};

struct sCLType {
    string mName;
    
    sCLClass* mClass;

    int mNumGenericsTypes;
    sCLType* mGenericsTypes[GENERICS_TYPES_MAX];

    bool mNullable;

    sCLBlockType%* mBlockType;
};

struct sVMInfo {
    char sname[PATH_MAX];
    int sline;

    CLVALUE* stack;
};

typedef bool (*fNativeMethod)(CLVALUE** stack_ptr, CLVALUE* lvar, sVMInfo* info);


struct sCLMethod {
    string mName;

    sCLParam mParams[PARAMS_MAX];
    int mNumParams;

    sCLType*% mResultType;

    buffer*% mByteCodes;
    fNativeMethod mNativeMethod;
    
    int mVarNum;

    int mNumGenerics;
    unsigned int mGenericsParamTypeOffsets[GENERICS_TYPES_MAX];
};

struct sCLField {
    string mName;

    sCLType*% mResultType;
    CLVALUE mValue;
};

struct sCLClass {
    string mName;
    buffer*% mConst;

    list<sCLMethod*%>*% mMethods;
    list<sCLField*%>*% mFields;
    list<sCLField*%>*% mClassFields;
};

extern map<char*, sCLClass*%>* gClasses;

/// class.nc ///
void class_init();
void class_final();
void append_class(char* name);

/// type.nc ///
sCLType* create_type(char* type_name, sCompileInfo* info);
bool type_identify(sCLType* left_type, sCLType* right_type);
bool type_identify_with_class_name(sCLType* left_type, char* right_class, sCompileInfo* info);
void show_type(sCLType* type);

//////////////////////////////////////////
/// parser, compiler side
//////////////////////////////////////////
struct sCLNode {
    int type;
    
    char sname[PATH_MAX];
    int sline;
    
    union {
        int mIntValue;
    } uValue;
    
    struct sCLNode* left;
    struct sCLNode* middle;
    struct sCLNode* right;
};

struct sParserInfo {
    char sname[PATH_MAX];
    int sline;
    
    int err_output_num;
    
    int err_num;
    
    char* p;
    
    vector<sCLNode*%>* nodes;
};

enum { kNodeTypeInt, kNodeTypeAdd };

struct sCompileInfo {
    char sname[PATH_MAX];
    int sline;
    
    int err_num;
    
    sParserInfo* pinfo;
    buffer* codes;
    
    vector<sCLType*%>* types;
    
    sCLType* type;
};

enum { OP_POP, OP_INT_VALUE, OP_IADD };

bool expression(sCLNode** node, sParserInfo* info);
bool compile(sCLNode* node, sCompileInfo* info);

sCLNode* sNodeTree_create_add(sCLNode* left, sCLNode* right, sParserInfo* info);
sCLNode* sNodeTree_create_int_value(int value, sParserInfo* info);

#endif
