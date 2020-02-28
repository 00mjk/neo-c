#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 3 
{
TinyNode*% createMultNode(TinyNode*% self, TinyNode*% left, TinyNode*% right) {
    self.type = NODETYPE_MULT;

    managed left;
    managed right;

    self.left = left;
    self.right = right;

    self.stackValue = 1;

    return self;
}
TinyNode*% createDivNode(TinyNode*% self, TinyNode*% left, TinyNode*% right) {
    self.type = NODETYPE_DIV;

    managed left;
    managed right;

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
                self.errNumber++;
                return null;
            }

            return new TinyNode.createMultNode(clone node, right);
        }
        else if(*self.p == '/' && *(self.p+1) != '=') 
        {
            self.p++;
            self.skipSpaces();

            var right = self.node();

            if(right == null) {
                self.errMessage("require right value for operator /");
                self.errNumber++;
                return null;
            }

            return new TinyNode.createDivNode(clone node, right);
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

            TVALUE*% value3 = new TVALUE;
            
            value3.type = INT_VALUE;
            value3.uValue.intValue 
                    = value1.uValue.intValue 
                    * value2.uValue.intValue;
            
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
            
            TVALUE*% value3 = new TVALUE;
            
            value3.type = INT_VALUE;
            value3.uValue.intValue 
                    = value1.uValue.intValue 
                    / value2.uValue.intValue;
            
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

