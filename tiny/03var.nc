#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 3 {
    finalize() {
        inherit(self);

        if(self.type == NODETYPE_VAR) {
            delete self.varValue.name;
            delete self.varValue.value;
        }
    }
    TinyNode*% createMultNode(TinyNode*% self, TinyNode*% left, TinyNode*% right) {
        self.type = NODETYPE_MULT;

        managed left;
        managed right;

        self.left = left;
        self.right = right;

        return self;
    }
    TinyNode*% createDivNode(TinyNode*% self, TinyNode*% left, TinyNode*% right) {
        self.type = NODETYPE_DIV;

        managed left;
        managed right;

        self.left = left;
        self.right = right;

        return self;
    }

    TinyNode*% createAssignNode(TinyNode%* self, string name, TinyNode*% value) 
    {
        self.type = NODETYPE_VAR;

        self.varValue.name = borrow clone name;
        self.varValue.value = borrow clone value;

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

            case NODETYPE_VAR :
                puts("var node");
                self.varValue.value.debug();
                break;
        }
    }
}

impl TinyParser version 3 {
    string parseWord(TinyParser* self) {
        var buf = new buffer.initialize();

        while(isalpha(*self.p) || *self.p == '_') {
            buf.append_char(*self.p);
            self.p++;
        }
        self.skipSpaces();

        return string(buf.buf);
    }

    TinyNode*% node(TinyParser* self) {
        var parent_result = inherit(self);

        if(parent_result) {
            return parent_result;
        }

        if(isalpha(*self.p)) {
            var buf = self.parseWord();

            if(strcmp(buf, "var") == 0) {
                var name = self.parseWord();

                if(strcmp(name, "") == 0) {
                    self.errMessage("require variable name");
                    self.errNumber++;
                    return null;
                }

                if(*self.p == '=') {
                    self.p++;
                }
                else {
                    self.errMessage("require = character");
                    self.errNumber++;
                    return null;
                }

                var value = self.expression();

                if(value == null) {
                    self.errMessage("Null expression");
                    self.errNumber++;
                    return null;
                }

                return new TinyNode.createAssignNode(name, value);
            }
        }

        return null;
    }

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

impl TinyVarTable {
    initialize() {
        self.vtable = new map<string, TinyVar*%>.initialize();
        self.blockLevel = 0;
    }
}

impl TinyVM version 3 {
    initialize(char* source_name) {
        inherit(self, source_name);

        self.vtable = new vector<TinyVarTable*%>.initialize();
        var vtable = new TinyVarTable.initialize();
        self.vtable.push_back(vtable);
    }
    
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

            case NODETYPE_VAR : {
                if(!self.compile(node.varValue.value)) {
                    return false;
                }

                TVALUE default_value;
                
                default_value.type = NULL_VALUE;
                default_value.uValue.intValue = 0;

                TVALUE value = self.stack.pop_back(default_value);

                self.stack.push_back(value);
                }
                break;

        }

        return true;
    }
};

