#include "common.h"
#include <stdio.h>
#include <ctype.h>

impl TinyNode version 4 
{
finalize() {
    inherit(self);

    if(self.type == NODETYPE_VAR) {
        delete self.varValue.name;
        delete self.varValue.value;
    }
    else if(self.type == NODETYPE_LOAD_VAR) {
        delete self.varValue.name;
    }
}

TinyNode*% clone(TinyNode* self) {
    var result = inherit(self);

    if(self.type == NODETYPE_VAR) {
        result.varValue.name = clone self.varValue.name;
        result.varValue.value = clone self.varValue.value;
    }
    else if(self.type == NODETYPE_LOAD_VAR) {
        result.varValue.name = clone self.varValue.name;
    }

    return result;
}

TinyNode*% createAssignNode(TinyNode%* self, string name, TinyNode*% value) {
    self.type = NODETYPE_VAR;

    self.varValue.name = borrow clone name;
    self.varValue.value = borrow clone value;

    self.stackValue = 1;

    return self;
}

TinyNode*% createLoadNode(TinyNode%* self, string& name) {
    self.type = NODETYPE_LOAD_VAR;

    self.loadVarValue.name = borrow clone name;

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
            puts("var node");
            self.varValue.value.debug();
            break;

        case NODETYPE_LOAD_VAR :
            puts("load var node");
            puts(self.loadVarValue.name);
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

TinyNode*% wordNode(TinyParser* self, string& buf) {
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

        var word_node = self.wordNode(borrow buf);
        
        if(word_node == null) {
            return new TinyNode.createLoadNode(borrow buf);
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

    self.vtable = new vector<map<string, TVALUE>*%>.initialize();
    var vtable = new map<string, TVALUE>.initialize();
    self.vtable.push_back(vtable);
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
            }
            break;

        case NODETYPE_LOAD_VAR : {
            var vtable = self.vtable.item(-1, null);
            
            var name = clone node.loadVarValue.name;

            TVALUE default_value;
            default_value.type = NULL_VALUE;
            
            var value = vtable.at(name, default_value);

            if(value.type == NULL_VALUE) {
            }
            
            self.stack.push_back(value);
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}
};

