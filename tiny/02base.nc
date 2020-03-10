#include "common.h"
#include <stdio.h>
#include <signal.h>

impl TinyNode version 2
{
TinyNode*% createIntNode(TinyNode*% self, TinyParser* parser, int value) {
    self.type = NODETYPE_INT;

    self.sname = clone parser.sname;
    self.sline = parser.sline;

    self.intValue = value;

    self.stackValue = 1;

    return self;
}

TinyNode*% createPlusNode(TinyNode*% self, TinyParser* parser, TinyNode*% left, TinyNode*% right) {
    self.type = NODETYPE_PLUS;

    self.sname = clone parser.sname;
    self.sline = parser.sline;

    self.left = left;
    self.right = right;

    self.stackValue = 1;

    return self;
}

TinyNode*% createMinusNode(TinyNode*% self, TinyParser* parser, TinyNode*% left, TinyNode*% right) {
    self.type = NODETYPE_MINUS;

    self.sname = clone parser.sname;
    self.sline = parser.sline

    self.left = left;
    self.right = right;

    self.stackValue = 1;

    return self;
}

TinyNode*% createPopNode(TinyNode*% self, TinyParser* parser, int value) {
    self.type = NODETYPE_POP;

    self.sname = clone parser.sname;
    self.sline = parser.sline

    self.intValue = value;

    self.stackValue = 0;

    return self;
}

void debug(TinyNode* self) {
    self.debug_runned_default = false;

    printf("source %s sline %d\n", self.sname, self.sline);

    switch(self.type) {
        case NODETYPE_POP :
            printf("pop node %d\n", self.intValue);
            break;

        case NODETYPE_INT :
            printf("int node %d %p\n", self.intValue, self);
            break;

        case NODETYPE_PLUS :
            printf("plus node left %p\n", self);
            self.left.debug();
            printf("plus node right %p\n", self);
            self.right.debug();
            break;

        case NODETYPE_MINUS :
            printf("minus node left %p\n", self);
            self.left.debug();
            printf("minus node right %p\n", self);
            self.right.debug();
            break;

        default:
            self.debug_runned_default = true;
            break;
    }
}
}

impl TinyParser version 2 
{
void errMessage(TinyParser* self, char* message) {
    fprintf(stderr, "%s %d: %s\n", self.sname, self.sline, message);
}
void skipSpaces(TinyParser* self) {
    while(*self.p == ' ' || *self.p == '\t' || (*self.p == '\n')) {
        if(*self.p == '\n') {
            self.sline++;
        }

        self.p++;
    }
}

TinyNode*% node(TinyParser* self) {
    if(*self.p >= '0' && *self.p <= '9') {
        int value = 0;
        while(*self.p >= '0' && *self.p <= '9') {
            value = value * 10 + *self.p - '0';
            self.p++;
        }
        self.skipSpaces();
        return new TinyNode.createIntNode(self, value);
    }
    else if(*self.p == '#') {
        while(*self.p != '\n' && *self.p) {
            self.p++;
        }
        self.skipSpaces();
        return self.expression();
    }

    return null;
}

TinyNode*% mult_div(TinyParser* self) {
    var node = self.node();

    if(node == null) {
        return null;
    }

    return node;
}

TinyNode*% plus_minus(TinyParser* self) {
    var node = self.mult_div();

    if(node == null) {
        return null;
    }
    
    while(*self.p) {
        if(*self.p == '+' && *(self.p+1) != '=' && *(self.p+1) != '+') 
        {
            self.p++;
            self.skipSpaces();

            var right = self.mult_div();

            if(right == null) {
                self.errMessage("require right value for operator +");
                self.err_num++;
                return null;
            }

            return new TinyNode.createPlusNode(self, clone node, right);
        }
        else if(*self.p == '-' && *(self.p+1) != '=' && *(self.p+1) != '-') 
        {
            self.p++;
            self.skipSpaces();

            var right = self.mult_div();

            if(right == null) {
                self.errMessage("require right value for operator -");
                self.err_num++;
                return null;
            }

            return new TinyNode.createMinusNode(self, clone node, right);
        }
        else {
            break;
        }
    }

    return node;
}

TinyNode*% expression(TinyParser* self) {
    return self.plus_minus();
}
}

impl TinyVM 
{
initialize(char* source_name) {
    self.parser = new TinyParser.initialize(source_name);

    self.nodes = new vector<TinyNode%*>.initialize();
    self.stack = new vector<TVALUE*%>.initialize();
}

bool parser(TinyVM* self) {
    self.parser.skipSpaces();

    while(*self.parser.p) {
        var node = self.parser.expression();

        if(node == null) {
            self.parser.errMessage("null expression");
            self.parser.err_num++;
            break;
        }

        while (*self.parser.p == ';') {
            self.parser.p++;
            self.parser.skipSpaces();
        }

        int stack_num = node.stackValue;

        self.nodes.push_back(node);

        var pop_node = new TinyNode.createPopNode(self.parser, stack_num);

        self.nodes.push_back(pop_node);
    }

    if(self.parser.err_num > 0) {
        fprintf(stderr, "parser err number %d\n", self.parser.err_num);
        return false;
    }

    return true;
}

void debug(TinyVM* self) {
    puts("=+= VM stack value =+=");
    self.stack.each {
        switch(it.type) {
            case INT_VALUE:
                printf("stack[%d] int value %d\n", it2, it.intValue);
                break;

            case NULL_VALUE:
                printf("stack[%d] null value\n", it2);
                break;

            case STR_VALUE:
                printf("stack[%d] str value %s\n", it2, it.strValue);
                break;
        }
    }
}

void errMessage(TinyVM* self, char* msg) {
    fprintf(stderr, "%s %d: %s\n", self.sname, self.sline, msg);
}

bool compile(TinyVM* self, TinyNode* node) {
    self.runned_default = false;

    switch(node.type) {
        case NODETYPE_POP : {
            int stack_num = node.intValue;

            if(self.stack.length() > stack_num) {
                self.errMessage("Stack number is error.");
                return false;
            }

            for(int i=0; i<stack_num; i++) {
                var tmp = self.stack.pop_back(null);
            }
            }
            break;

        case NODETYPE_INT : {
            TVALUE*% value1 = new TVALUE;
            value1.type = INT_VALUE;
            value1.intValue = node.intValue;

            self.stack.push_back(value1);
            }
            break;

        case NODETYPE_PLUS : {
            if(!self.compile(node.left)) {
                return false;
            }
            if(!self.compile(node.right)) {
                return false;
            }

            TVALUE*% value1 = self.stack.pop_back(null);
            TVALUE*% value2 = self.stack.pop_back(null); 

            TVALUE*% value3 = new TVALUE;

            if(value1.type != INT_VALUE) {
                self.errMessage("Left value type error. Require int value");
                return false;
            }

            if(value2.type != INT_VALUE) {
                self.errMessage("Right value type error. Require int value");
                return false;
            }
            
            value3.type = INT_VALUE;
            value3.intValue = value1.intValue + value2.intValue;
            
            self.stack.push_back(value3);
            }
            break;

        case NODETYPE_MINUS : {
            if(!self.compile(node.left)) {
                return false;
            }
            if(!self.compile(node.right)) {
                return false;
            }

            TVALUE*% value1 = self.stack.pop_back(null);
            TVALUE*% value2 = self.stack.pop_back(null); 

            if(value1.type != INT_VALUE) {
                self.errMessage("Left value type error. Require int value");
                return false;
            }

            if(value2.type != INT_VALUE) {
                self.errMessage("Right value type error. Require int value");
                return false;
            }
            
            TVALUE*% value3 = new TVALUE;
            value3.type = INT_VALUE;
            value3.intValue = value1.intValue - value2.intValue;
            
            self.stack.push_back(value3);
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}

bool run(TinyVM* self) {
    struct sigaction sa;
    sigset_t signal_set;

    sigemptyset(&signal_set);
    sigaddset(&signal_set, SIGTTOU);
    sigaddset(&signal_set, SIGTTIN);
    sigaddset(&signal_set, SIGPIPE);

    sigprocmask(SIG_BLOCK, &signal_set, NULL);

    for(int i=0; i<self.nodes.length(); i++) {
        var node = self.nodes.item(i, null);

        self.sname = string(node.sname);
        self.sline = node.sline;

node.debug();
        if(!self.compile(node)) {
            return false;
        }
self.debug();
    }

    return true;
}

}

