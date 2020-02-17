#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 5 {
    finalize() {
        inherit(self);

        if(self.type == NODETYPE_IF) {
            delete self.ifValue.expressions;
            delete self.ifValue.blocks;
        }
    }

    TinyNode*% createIfNode(TinyNode%* self, int num_expressions, TinyNode**% expressions, TinyBlock**% blocks) 
    {
        self.type = NODETYPE_IF;

        self.ifValue.num_expressions = num_expressions;
        self.ifValue.expressions = borrow clone expressions;
        self.ifValue.blocks = (char**)borrow clone blocks;

        self.stackValue = 0;

        return self;
    }

    void debug(TinyNode* self) {
        inherit(self);
        
        switch(self.type) {
            case NODETYPE_IF :
                puts("if node");
                printf("expression number %d\n", self.ifValue.num_expressions);
                break;
        }
    }
}

impl TinyParser version 5 {
    TinyNode*% wordNode(TinyParser* self, string buf) {
        var word_node = inherit(self, buf);

        if(word_node != null) {
            return word_node;
        }
        else {
            if(strcmp(buf, "if") == 0) {
/*
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
*/
            }
            else {
                return null;
            }
        }
    }
};

impl TinyVM version 5 {
    bool compile(TinyVM* self, TinyNode* node) {
        if(!inherit(self, node)) {
            return false;
        }

        switch(node.type) {
            case NODETYPE_IF : {
/*
                if(!self.compile(node.varValue.value)) {
                    return false;
                }

                TVALUE default_value;
                
                default_value.type = NULL_VALUE;
                default_value.uValue.intValue = 0;

                TVALUE value = self.stack.pop_back(default_value);
                
                var vtable = self.vtable.item(-1, null);
                
                var name = clone node.varValue.name;
                
                vtable.insert(name, value);

                self.stack.push_back(value);
*/
                }
                break;
        }

        return true;
    }
};

