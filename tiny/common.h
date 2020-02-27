#include <limits.h>

/// limits ///
#define TINYVM_STACK_SIZE 4096
#define TINYVM_IF_MAX 64

/// 02base.nc ///
struct TinyParser
{
    string sourceName;
    int sourceLine;
    buffer*% source;
    
    char* p;

    int errNumber;
};

impl TinyParser 
{
    initialize(char* source_name);
    void debug(TinyParser* self);
};

struct TinyNode;

impl TinyParser version 2 
{
    void errMessage(TinyParser* self, char* message);
    void skipSpaces(TinyParser* self);

    TinyNode*% node(TinyParser* self);
    TinyNode*% plus_minus(TinyParser* self);
    TinyNode*% mult_div(TinyParser* self);
    TinyNode*% expression(TinyParser* self);
};

enum { NODETYPE_POP, NODETYPE_INT, NODETYPE_PLUS, NODETYPE_MINUS, NODETYPE_MULT, NODETYPE_DIV, NODETYPE_VAR, NODETYPE_LOAD_VAR, NODETYPE_IF, NODETYPE_STRING, NODETYPE_FUN };

struct TinyNode {
    int type;

    union {
        int intValue;

        struct {
            char* value;
        } stringValue;

    
        struct {
            char* name;
            TinyNode* value;
        } varValue;

        struct {
            char* name;
            TinyNode** params;
            int num_params;
        } funValue;
    
        struct {
            char* name;
        } loadVarValue;

        struct {
            int num_expressions;
            TinyNode** expressions;
            void* blocks;
            void* else_block;
        } ifValue;
    };
    

    TinyNode* left;
    TinyNode* right;
    TinyNode* middle;

    int stackValue;

    bool debug_runned_default;
};

struct TinyBlock
{
    vector<TinyNode*%>*% nodes;
};

impl TinyNode 
{
    finalize();
    void debug(TinyNode* self);
    TinyNode*% clone(TinyNode* self);
    TinyNode*% createPopNode(TinyNode*% self, int value);
}

enum { INT_VALUE, NULL_VALUE, STR_VALUE, COMMAND_VALUE };

struct TVALUE {
    int type;
    
    union {
        int intValue;
        char* strValue;
        struct {
            char* value;
            char* err_value;
            int wait_status;
        } commandValue;
    } uValue;
};

struct TinyVM
{
    TinyParser*% parser;
    vector<TinyNode%*>*% nodes;
    vector<TVALUE*%>*% stack;
    bool runned_default;
};

impl TinyVM 
{
    initialize(char* source_name);

    bool parser(TinyVM* self);
    bool compile(TinyVM* self, TinyNode* node);
    bool run(TinyVM* self);
    void debug(TinyVM* self);
};

/// 03mult.nc ///
impl TinyNode version 3 
{
    void debug(TinyNode* self);
};


impl TinyParser version 3 
{
    TinyNode*% mult_div(TinyParser* self);
}

impl TinyVM version 3 
{
    bool compile(TinyVM* self, TinyNode* node);
};

/// 04var.nc 
impl TinyNode version 4 
{
    finalize();
    TinyNode*% clone(TinyNode* self);
    void debug(TinyNode* self);
}

impl TinyParser version 4 
{
    string parseWord(TinyParser* self);
    TinyNode*% node(TinyParser* self);
    TinyNode*% wordNode(TinyParser* self, string& buf);
}

struct TinyVM version 4
{
    vector<map<string, TVALUE*%>*%>*% vtable;
};

impl TinyVM version 4 
{
    initialize(char* source_name);
    bool compile(TinyVM* self, TinyNode* node);
}

/// 05if.nc 

impl TinyNode version 5 
{
    finalize();
    TinyNode*% clone(TinyNode* self);
    void debug(TinyNode* self);
}

impl TinyBlock
{
    initialize();
}

impl TinyParser version 5 
{
    void expectNextChararacter(TinyParser* self, char c);
    TinyBlock*% parseBlock(TinyParser* self);
    TinyNode*% wordNode(TinyParser* self, string& buf);
}

impl TinyVM version 5 
{
    bool compileBlock(TinyVM* self, TinyBlock* block);
    bool compile(TinyVM* self, TinyNode* node);
}

/// 06string.nc ///
impl TVALUE version 6 {
    finalize();
}

impl TinyNode version 6
{
    finalize();
    TinyNode*% clone(TinyNode* self);
    void debug(TinyNode* self);

    TinyNode*% createStringNode(TinyNode*% self, char* value);
}

impl TinyParser version 6
{
    TinyNode*% node(TinyParser* self);
}

impl TinyVM version6
{
    bool compile(TinyVM* self, TinyNode* node);
}

/// 07fun.nc
impl TVALUE version 7 {
    finalize();
}

impl TinyNode version 7
{
finalize();

TinyNode*% clone(TinyNode* self);
void debug(TinyNode* self);
}

impl TinyParser version 7
{
TinyNode*% wordNode(TinyParser* self, string& buf);
};

impl TinyVM version 7
{
bool compile(TinyVM* self, TinyNode* node);
};

