#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 5 {
    finalize() {
        inherit(self);

        if(self.type == NODETYPE_IF) {
            TinyBlock** blocks = (TinyBlock**)self.ifValue.blocks;
            
            for(int i=0; i<self.ifValue.num_expressions; i++) {
                delete self.ifValue.expressions[i];
                delete blocks[i];
            }
            
            delete blocks;
        }
    }

    TinyNode*% createIfNode(TinyNode%* self, int num_expressions, TinyNode** expressions, TinyBlock** blocks) 
    {
        self.type = NODETYPE_IF;

        self.ifValue.num_expressions = num_expressions;
        self.ifValue.expressions = borrow clone expressions;
        TinyBlock** blocks2 = borrow clone blocks;
        for(int i=0; i<num_expressions; i++) {
            self.ifValue.expressions[i] = borrow clone expressions[i];
            blocks2[i] = borrow clone blocks[i];
        }
        self.ifValue.blocks = (void*)blocks2;

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

impl TinyBlock
{
    initialize() {
        self.nodes = new vector<TinyNode*%>.initialize();
    }
}

impl TinyParser version 5 {
    void expectNextChararacter(TinyParser* self, char c) {
        if(*self.p == c) {
            self.p++;
            self.skipSpaces();
        }
        else {
            self.errMessage(xasprintf("require %c character", c));
            self.errNumber++;
        }
    }
    TinyBlock*% parseBlock(TinyParser* self) {
        self.expectNextChararacter('{');

        var result = new TinyBlock.initialize();

        while(*self.p) {
            var node = self.expression();

            if(node == null) {
                self.errMessage("null expression");
                self.errNumber++;
                break;
            }

            int stack_num = node.stackValue;

            result.nodes.push_back(node);

            var pop_node = new TinyNode.createPopNode(stack_num);

            result.nodes.push_back(pop_node);
        }

        self.expectNextChararacter('}');

        return result;
    }
    TinyNode*% wordNode(TinyParser* self, string buf) {
        var word_node = inherit(self, buf);

        if(word_node != null) {
            return word_node;
        }
        else {
            if(strcmp(buf, "if") == 0) {
                self.expectNextChararacter('(');

                var expression = self.expression();

                if(expression == null) {
                    self.errMessage("Null expression");
                    self.errNumber++;

                    return null;
                }

                self.expectNextChararacter(')');

                var block = self.parseBlock();

                int num_expressions = 1;

                var expressions = new TinyNode*[TINYVM_IF_MAX];
                var blocks = new TinyBlock*[TINYVM_IF_MAX];

                expressions[0] = expression;
                blocks[0] = block;

                return new TinyNode.createIfNode(num_expressions, borrow expressions, borrow blocks);
            }
            else {
                return null;
            }
        }
    }
};

impl TinyVM version 5 {
    bool compileBlock(TinyVM* self, TinyBlock* block) {
        var each_break = false;
        block.nodes.each {
            if(!self.compile(it)) {
                each_break = true;
                *it3 = true;
                return;
            }
        }
        if(each_break) {
            return false;
        }
        return true;
    }
    bool compile(TinyVM* self, TinyNode* node) {
        if(!inherit(self, node)) {
            return false;
        }

        switch(node.type) {
            case NODETYPE_IF : {
                int num_expressions = node.ifValue.num_expressions;
                TinyNode** expressions = node.ifValue.expressions;
                TinyBlock** blocks = (TinyBlock**)node.ifValue.blocks;

                for(int i=0; i<num_expressions; i++) {
                    if(!self.compile(expressions[i])) {
                        return false;
                    }

                    TVALUE default_value;
                    
                    default_value.type = NULL_VALUE;
                    default_value.uValue.intValue = 0;

                    TVALUE value = self.stack.pop_back(default_value);

                    if(value.uValue.intValue) {
                        if(!self.compileBlock(blocks[i])) {
                            return false;
                        }
                    }
                }
                }
                break;
        }

        return true;
    }
};

