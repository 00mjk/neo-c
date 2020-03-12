#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 4 
{
TinyNode*% createAssignNode(TinyNode%* self, TinyParser* parser, string name, TinyNode*% value) {
    self.type = NODETYPE_VAR;

    self.sname = clone parser.sname;
    self.sline = parser.sline;

    self.varName = name;
    self.varValue = value;

    self.stackValue = 1;

    return self;
}

TinyNode*% createLoadNode(TinyNode%* self, TinyParser* parser, string name) {
    self.type = NODETYPE_LOAD_VAR;

    self.sname = clone parser.sname;
    self.sline = parser.sline;

    self.varName = name;
    self.loadVarLastChain = true;

    self.stackValue = 1;

    return self;
}

void debug(TinyNode* self) {
    inherit(self);

    if(!self.debug_runned_default) {
        return;
    }
    
    switch(self.type) {
        case NODETYPE_VAR :
            printf("var node %p\n", self);
            self.varValue.debug();
            break;

        case NODETYPE_LOAD_VAR :
            printf("load var node %p\n", self);
            puts(self.varName);
            break;

        default:
            self.debug_runned_default = true;
            break;
    }
}
}

impl TinyParser version 4 
{
string parseWord(TinyParser* self) {
    var buf = new buffer.initialize();

    while(isalpha(*self.p) || *self.p == '_') {
        buf.append_char(*self.p);
        self.p++;
    }
    self.skipSpaces();

    return string(buf.buf);
}

TinyNode*% wordNode(TinyParser* self, string buf) {
    if(strcmp(buf, "var") == 0) {
        var name = self.parseWord();

        if(strcmp(name, "") == 0) {
            self.errMessage("require variable name");
            self.err_num++;
            return null;
        }

        if(*self.p == '=') {
            self.p++;
            self.skipSpaces();
        }
        else {
            self.errMessage("require = character");
            self.err_num++;
            return null;
        }

        var value = self.expression();

        if(value == null) {
            self.errMessage("Null expression");
            self.err_num++;
            return null;
        }

        return new TinyNode.createAssignNode(self, name, value);
    }
    else {
        return null;
    }
}

TinyNode*% node(TinyParser* self) {
    var parent_result = inherit(self);

    if(parent_result) {
        return parent_result;
    }

    if(isalpha(*self.p)) {
        var buf = self.parseWord();

        var word_node = self.wordNode(clone buf);
        
        if(word_node == null) {
            return new TinyNode.createLoadNode(self, clone buf);
        }
        else {
            return word_node;
        }
    }

    return null;
}
};

impl TinyVM version 4 
{
initialize(char* source_name) {
    inherit(self, source_name);

    self.vtable = new vector<map<string, TVALUE*%>*%>.initialize();
    var vtable = new map<string, TVALUE*%>.initialize();
    self.vtable.push_back(vtable);
}

void loadVariable(TinyVM* self, TinyNode* node)
{
    var vtable = self.vtable.item(-1, null);
    
    var name = clone node.varName;
    var item = vtable.at(name, null);
    var value = clone item;

    if(value) {
        self.stack.push_back(value);
    }
    else {
        self.parser.errMessage(xasprintf("undeclared variable(%s)\n", name));
        self.parser.err_num++;
    }
}

bool compile(TinyVM* self, TinyNode* node) {
    if(!inherit(self, node)) {
        return false;
    }

    if(!self.runned_default) {
        return true;
    }

    switch(node.type) {
        case NODETYPE_VAR : {
            if(!self.compile(node.varValue)) {
                return false;
            }
            
            var name = clone node.varName;

            TVALUE*% value = self.stack.pop_back(null);

            if(value == null) {
                self.errMessage(xasprintf("require right value %s\n", name));
                return false;
            }
            
            var vtable = self.vtable.item(-1, null);
            
            vtable.insert(name, clone value);

            self.stack.push_back(clone value);
            }
            break;

        case NODETYPE_LOAD_VAR : {
            self.loadVariable(node);
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}
};

