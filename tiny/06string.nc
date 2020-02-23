#include "common.h"
#include <ctype.h>

impl TinyNode version 6
{
finalize() {
    inherit(self);

    if(self.type == NODETYPE_STRING) {
        delete self.stringValue.value;
    }
}

void debug(TinyNode* self) {
    inherit(self);

    if(!self.debug_runned_default) {
        return;
    }

    switch(self.type) {
        case NODETYPE_STRING :
            printf("str node %s\n", self.stringValue.value);
            break;

        default:
            self.debug_runned_default = true;
            break;
    }
}

TinyNode*% clone(TinyNode* self) {
    var result = inherit(self);

    if(self.type == NODETYPE_STRING) {
        result.stringValue.value = clone self.stringValue.value;
    }

    return result;
}

TinyNode*% createStringNode(TinyNode*% self, char* value) {
    self.type = NODETYPE_STRING;
    self.stringValue.value = clone value;

    self.stackValue = 1;

    return self;
}

impl TinyParser version 6
{
TinyNode*% node(TinyParser* self) {
    var parent_result = inherit(self);

    if(parent_result) {
        return parent_result;
    }

    if(*self.p == '"') {
        self.p++;

        int sline = self.sourceLine;

        var value = new buffer.initialize();

        while(true) {
            if(*self.p == '"') {
                self.p++;
                break;
            }
            else if(*self.p == '\\') {
                self.p++;
                switch(*self.p) {
                    case '0':
                        value.append_char('0');
                        self.p++;
                        break;

                    case 'n':
                        value.append_char('\n');
                        self.p++;
                        break;

                    case 't':
                        value.append_char('\t');
                        self.p++;
                        break;

                    case 'r':
                        value.append_char('\r');
                        self.p++;
                        break;

                    case 'a':
                        value.append_char('\a');
                        self.p++;
                        break;

                    case '\\':
                        value.append_char('\\');
                        self.p++;
                        break;

                    default:
                        value.append_char(*self.p)
                        self.p++;
                        break;
                }
            }
            else if(*self.p == '\0') {
                self.errMessage("close \" to make string value");
                self.errNumber++;
                return null;
            }
            else {
                if(*self.p == '\n') self.sourceLine++;

                value.append_char(*self.p)
                self.p++;
            }
        }

        self.skipSpaces();

        return new TinyNode.createStringNode(value.buf);
    }

    return null;
}
}

impl TinyVM version 6
{
bool compile(TinyVM* self, TinyNode* node) {
    if(!inherit(self, node)) {
        return false;
    }

    if(!self.runned_default) {
        return true;
    }

    switch(node.type) {
        case NODETYPE_STRING : {
            TVALUE value1;
            value1.type = STR_VALUE;
            value1.uValue.strValue = node.stringValue.value;
            self.stack.push_back(value1);
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}

}
