#include "common.h"
#include <ctype.h>

impl TinyNode version 5 
{
finalize() {
    inherit(self);

    if(self.type == NODETYPE_IF) {
        TinyBlock** blocks = (TinyBlock**)self.ifValue.blocks;
        
        for(int i=0; i<self.ifValue.num_expressions; i++) {
            delete self.ifValue.expressions[i];
            delete blocks[i];
        }
        
        if(self.ifValue.else_block) {
            TinyBlock* else_block = (TinyBlock*)self.ifValue.else_block;
            delete else_block;
        }
        
        delete self.ifValue.expressions;
        delete blocks;
    }
}

TinyNode*% clone(TinyNode* self) {
    var result = inherit(self);

    if(self.type == NODETYPE_IF) {
        TinyBlock** blocks = (TinyBlock**)self.ifValue.blocks;

        TinyBlock** blocks2 = clone blocks;
        
        for(int i=0; i<self.ifValue.num_expressions; i++) {
            result.ifValue.expressions[i] = clone self.ifValue.expressions[i];
            blocks2[i] = clone blocks[i];
        }
        result.ifValue.blocks = blocks2;
        
        if(self.ifValue.else_block) {
            TinyBlock* else_block = (TinyBlock*)self.ifValue.else_block;

            result.ifValue.else_block = clone else_block;
        }
    }

    return result;
}

TinyNode*% createIfNode(TinyNode%* self, int num_expressions, TinyNode** expressions, TinyBlock** blocks, TinyBlock* else_block) {
    self.type = NODETYPE_IF;

    self.ifValue.num_expressions = num_expressions;
    self.ifValue.expressions = borrow clone expressions;
    TinyBlock** blocks2 = borrow clone blocks;
    for(int i=0; i<num_expressions; i++) {
        self.ifValue.expressions[i] = expressions[i];
        blocks2[i] = blocks[i];
    }
    self.ifValue.blocks = (void*)blocks2;
    self.ifValue.else_block = (void*)else_block;

    self.stackValue = 0;

    return self;
}

void debug(TinyNode* self) {
    inherit(self);

    if(!self.debug_runned_default) {
        return;
    }
    
    switch(self.type) {
        case NODETYPE_IF :
            printf("if node %p\n", self);
            printf("expression number %d\n", self.ifValue.num_expressions);
            printf("else block %p\n", self.ifValue.else_block);
            break;

        default:
            self.debug_runned_default = true;
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

impl TinyParser version 5 
{
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

    while(*self.p != '}') {
        var node = self.expression();

        if(node == null) {
            self.errMessage("null expression at parseBlock");
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
TinyNode*% wordNode(TinyParser* self, string& buf) {
    var word_node = inherit(self, buf);

    if(word_node != null) {
        return word_node;
    }
    else {
        if(strcmp(buf, "if") == 0) {
            self.expectNextChararacter('(');

            var expression = borrow self.expression();

            if(expression == null) {
                self.errMessage("Null expression on if expression");
                self.errNumber++;

                return null;
            }

            self.expectNextChararacter(')');

            var block = borrow self.parseBlock();

            var expressions = new TinyNode*[TINYVM_IF_MAX];
            var blocks = new TinyBlock*[TINYVM_IF_MAX];
            
            expressions[0] = expression;
            blocks[0] = block;

            int num_expressions = 1;
            
            /// elif ///
            while(true) {
                char* p = self.p;
                int source_line = self.sourceLine;
                
                var word = self.parseWord();
                
                if(strcmp(word, "elif") == 0) {
                    self.expectNextChararacter('(');
    
                    var expression = borrow self.expression();
    
                    if(expression == null) {
                        self.errMessage("Null expression on if expression");
                        self.errNumber++;
    
                        return null;
                    }
    
                    self.expectNextChararacter(')');
    
                    var block = borrow self.parseBlock();
    
                    expressions[num_expressions] = expression;
                    blocks[num_expressions] = block;
    
                    num_expressions++;
                    
                    if(num_expressions >= TINYVM_IF_MAX) {
                        self.errMessage("tiny if expresssion overflow");
                        self.errNumber++;
                        break;
                    }
                }
                else {
                    self.p = p;
                    self.sourceLine = source_line;
                    break;
                }
            }
            
            /// else ///
            char* p = self.p;
            int source_line = self.sourceLine;
            
            var word = self.parseWord();
            
            TinyBlock* else_block = null;
            
            if(strcmp(word, "else") == 0) {
                else_block = borrow self.parseBlock();
            }
            else {
                self.p = p;
                self.sourceLine = source_line;
            }
            return new TinyNode.createIfNode(num_expressions, borrow expressions, borrow blocks, else_block);
        }
        else {
            return null;
        }
    }
}
};

impl TinyVM version 5 
{
bool compileBlock(TinyVM* self, TinyBlock* block) {
    var each_break = false;
    block.nodes.each {
it.debug();
        if(!self.compile(it)) {
            each_break = true;
            *it3 = true;
            return;
        }
self.debug();
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

    if(!self.runned_default) {
        return true;
    }

    switch(node.type) {
        case NODETYPE_IF : {
            int num_expressions = node.ifValue.num_expressions;
            TinyNode** expressions = node.ifValue.expressions;
            TinyBlock** blocks = (TinyBlock**)node.ifValue.blocks;
            TinyBlock* else_block = (TinyBlock*)node.ifValue.else_block;

            bool all_false = true;
            for(int i=0; i<num_expressions; i++) {
                if(!self.compile(expressions[i])) {
                    return false;
                }

                TVALUE default_value;
                
                default_value.type = NULL_VALUE;
                default_value.uValue.intValue = 0;

                TVALUE value = self.stack.pop_back(default_value);
                
                if(value.uValue.intValue) {
                    all_false = false;
                    if(!self.compileBlock(blocks[i])) {
                        return false;
                    }
                    break;
                }
            }

            if(all_false && else_block) {
                if(!self.compileBlock(else_block)) {
                    return false;
                }
                break;
            }
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}
};

