#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 3 {
    TinyNode*% createMultNode(TinyNode*% self, TinyNode*% left, TinyNode*% right) {
        self.type = NODETYPE_MULT;

        managed left;
        managed right;

        self.left = left;
        self.right = right;

        self.stackValue = -1;

        return self;
    }
    TinyNode*% createDivNode(TinyNode*% self, TinyNode*% left, TinyNode*% right) {
        self.type = NODETYPE_DIV;

        managed left;
        managed right;

        self.left = left;
        self.right = right;

        self.stackValue = -1;

        return self;
    }

    void debug(TinyNode* self) {
        inherit(self);
        
        switch(self.type) {
            case NODETYPE_MULT :
                puts("mult node left");
                self.left.debug();
                puts("mult node right");
                self.right.debug();
                break;

            case NODETYPE_DIV :
                puts("div node left");
                self.left.debug();
                puts("div node right");
                self.right.debug();
                break;
        }
    }
}

impl TinyParser version 3 {
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


impl TinyVM version 3 {
    bool compile(TinyVM* self, TinyNode* node) {
        if(!inherit(self, node)) {
            return false;
        }

        switch(node.type) {
            case NODETYPE_MULT : {
                if(!self.compile(node.left)) {
                    return false;
                }
                if(!self.compile(node.right)) {
                    return false;
                }

                TVALUE default_value;
                
                default_value.type = NULL_VALUE;
                default_value.uValue.intValue = 0;

                TVALUE value1 = self.stack.pop_back(default_value);
                TVALUE value2 = self.stack.pop_back(default_value); 

                TVALUE value3;
                
                value3.type = INT_VALUE;
                value3.uValue.intValue 
                        = value1.uValue.intValue 
                        * value2.uValue.intValue;
                
                self.stack.push_back(value3);
                }
                break;

            case NODETYPE_DIV :
                if(!self.compile(node.left)) {
                    return false;
                }
                if(!self.compile(node.right)) {
                    return false;
                }

                TVALUE default_value;
                
                default_value.type = NULL_VALUE;
                default_value.uValue.intValue = 0;

                TVALUE value1 = self.stack.pop_back(default_value);
                TVALUE value2 = self.stack.pop_back(default_value); 
                
                TVALUE value3;
                
                value3.type = INT_VALUE;
                value3.uValue.intValue 
                        = value1.uValue.intValue 
                        / value2.uValue.intValue;
                
                self.stack.push_back(value3);
                break;

        }

        return true;
    }
};

