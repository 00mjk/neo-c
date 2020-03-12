#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 3 
{
TinyNode*% createMultNode(TinyNode*% self, TinyParser* parser, TinyNode*% left, TinyNode*% right) {
    self.type = NODETYPE_MULT;

    self.sname = clone parser.sname;
    self.sline = parser.sline;

    self.left = left;
    self.right = right;

    self.stackValue = 1;

    return self;
}
TinyNode*% createDivNode(TinyNode*% self, TinyParser* parser, TinyNode*% left, TinyNode*% right) {
    self.type = NODETYPE_DIV;

    self.sname = clone parser.sname;
    self.sline = parser.sline;

    self.left = left;
    self.right = right;

    self.stackValue = 1;

    return self;
}

void debug(TinyNode* self) {
    inherit(self);

    if(!self.debug_runned_default) {
        return;
    }
    
    switch(self.type) {
        case NODETYPE_MULT :
            printf("mult node left %p\n", self);
            self.left.debug();
            printf("mult node right %p\n", self);
            self.right.debug();
            break;

        case NODETYPE_DIV :
            printf("div node left %p\n", self);
            self.left.debug();
            printf("div node right %p\n", self);
            self.right.debug();
            break;

        default:
            self.debug_runned_default = true;
            break;
    }
}
}

impl TinyParser version 3 
{
TinyNode*% mult_div(TinyParser* self) {
    var node = self.node();

    if(node == null) {
        return null;
    }
    
    while(*self.p) {
        if(*self.p == '*' && *(self.p+1) != '=') 
        {
            self.p++;
            self.skipSpaces();

            var right = self.node();

            if(right == null) {
                self.errMessage("require right value for operator *");
                self.err_num++;
                return null;
            }

            return new TinyNode.createMultNode(self, clone node, right);
        }
        else if(*self.p == '/' && *(self.p+1) != '=') 
        {
            self.p++;
            self.skipSpaces();

            var right = self.node();

            if(right == null) {
                self.errMessage("require right value for operator /");
                self.err_num++;
                return null;
            }

            return new TinyNode.createDivNode(self, clone node, right);
        }
        else {
            break;
        }
    }

    return node;
}
};


impl TinyVM version 3 
{
bool compile(TinyVM* self, TinyNode* node) {
    if(!inherit(self, node)) {
        return false;
    }

    if(!self.runned_default) {
        return true;
    }

    switch(node.type) {
        case NODETYPE_MULT : {
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
            value3.intValue = value1.intValue * value2.intValue;
            
            self.stack.push_back(value3);
            }
            break;

        case NODETYPE_DIV : {
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
            value3.intValue = value1.intValue / value2.intValue;
            
            self.stack.push_back(value3);
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}
}

