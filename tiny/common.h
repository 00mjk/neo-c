#include <limits.h>

/// limits ///
#define TINYVM_STACK_SIZE 4096

/// 02base.nc ///
struct TinyParser
{
    string sourceName;
    int sourceLine;
    buffer*% source;
    
    char* p;

    int errNumber;
};

impl TinyParser {
    initialize(char* source_name);
    void debug(TinyParser* self);
};

struct TinyNode;

impl TinyParser version 2 {
    void errMessage(TinyParser* self, char* message);
    void skipSpaces(TinyParser* self);

    TinyNode*% node(TinyParser* self);
    TinyNode*% plus_minus(TinyParser* self);
    TinyNode*% mult_div(TinyParser* self);
    TinyNode*% expression(TinyParser* self);
};

enum { NODETYPE_INT, NODETYPE_PLUS, NODETYPE_MINUS };

struct TinyNode {
    int type;

    union {
        int intValue;
    
        struct {
            char* name;
            TinyNode* value;
        } varValue;
    };

    TinyNode* left;
    TinyNode* right;
    TinyNode* middle;
};

impl TinyNode {
    finalize();
    void debug(TinyNode* self);
    TinyNode*% clone(TinyNode* self);
}

enum { INT_VALUE, NULL_VALUE };

struct TVALUE {
    int type;
    
    union {
        int intValue;
    } uValue;
};

struct TinyVM
{
    TinyParser*% parser;
    vector<TinyNode%*>*% nodes;
    vector<TVALUE>*% stack;
};

impl TinyVM {
    initialize(char* source_name);

    bool parser(TinyVM* self);
    bool compile(TinyVM* self, TinyNode* node);
    bool run(TinyVM* self);
};

/// 03var.nc ///
impl TinyNode version 3 {
    finalize();
    void debug(TinyNode* self);
    TinyNode*% mult_div(TinyParser* self);
    TinyNode*% node(TinyParser* self);
};

enum { NODETYPE_MULT=NODETYPE_MINUS+1, NODETYPE_DIV, NODETYPE_VAR };

impl TinyParser version 3 {
    string parseWord(TinyParser* self);

    TinyNode*% node(TinyParser* self);
    TinyNode*% mult_div(TinyParser* self);
}

struct TinyVar
{
    string name;
    TVALUE value;
};

struct TinyVarTable
{
    map<string, TinyVar%*>*% vtable;
    int blockLevel;
};

impl TinyVarTable {
    initialize();
}

struct TinyVM version 3
{
    vector<TinyVarTable*%>*% vtable;
};

impl TinyVM version 3 {
    initialize(char* source_name);
    
    bool compile(TinyVM* self, TinyNode* node);
};

