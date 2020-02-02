#include <limits.h>

/// limits ///
#define TINYVM_STACK_SIZE 4096

/// tinyvm01 ///
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

/// tinyvm02base.nc ///
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
    };

    TinyNode* left;
    TinyNode* right;
    TinyNode* middle;
};

impl TinyNode {
    finalize();
}

union TVALUE {
    int intValue;
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
