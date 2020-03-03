#include "common.h"
#include <stdio.h>
#include <ctype.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

impl TVALUE version 7 {
    finalize() {
        inherit(self);

        if(self.type == COMMAND_VALUE) {
            delete self.uValue.commandValue.value;
            delete self.uValue.commandValue.err_value;
        }
    }
}

impl TinyNode version 7
{
finalize() {
    inherit(self);

    if(self.type == NODETYPE_FUN) {
        delete self.funValue.name;

        for(int i=0; i<self.funValue.num_params; i++) {
            TinyNode* node = self.funValue.params[i];
            delete node;
        }

        delete self.funValue.params;
    }
}

TinyNode*% clone(TinyNode* self) {
    var result = inherit(self);

    if(self.type == NODETYPE_FUN) {
        result.varValue.name = clone self.varValue.name;
        result.funValue.num_params = self.funValue.num_params;
        result.funValue.params = clone self.funValue.params;
        for(int i=0; i<self.funValue.num_params; i++) {
            TinyNode* node = self.funValue.params[i];
            result.funValue.params[i] = clone self.funValue.params[i];
        }
    }

    return result;
}

TinyNode*% createFunNode(TinyNode%* self, string& name, int num_params, TinyNode** params) {
    self.type = NODETYPE_FUN;

    self.funValue.name = borrow clone name;
    self.funValue.num_params = num_params;
    self.funValue.params = borrow new TinyNode*[num_params];
    for(int i=0; i<num_params; i++) {
        self.funValue.params[i] = borrow clone params[i];
    }

    self.stackValue = 1;

    return self;
}

void debug(TinyNode* self) {
    inherit(self);

    if(!self.debug_runned_default) {
        return;
    }
    
    switch(self.type) {
        case NODETYPE_FUN :
            printf("fun node %p\n", self);
            printf("num_params %d\n", self.funValue.num_params);
            break;

        default:
            self.debug_runned_default = true;
            break;
    }
}
}

impl TinyParser version 7
{

TinyNode*% node(TinyParser* self) {
    var node = inherit(self);

    if(*self.p == '.') {
        self.p++;
        self.skipSpaces();
        
        if(!isalpha(*self.p)) {
            self.errMessage("require alphabets for method or field name");
            self.errNumber++;
            return null;
        }
        
        var buf = self.parseWord();
        
        if(*self.p == '(') {
            self.p++;
            self.skipSpaces();

            var params = new vector<TinyNode*%>.initialize();
            
            params.push_back(clone node);

            while(true) {
                if(*self.p == '\0') {
                    self.errMessage("Require ) before the source end");
                    self.errNumber++;
                    break;
                }
                else if(*self.p == ')') {
                    self.p++;
                    self.skipSpaces();
                    break;
                }
                else {
                    if(*self.p == ',') {
                        self.p++;
                        self.skipSpaces();
                    }

                    var param = self.expression();

                    if(param == null) {
                        self.errMessage("Null expression");
                        self.errNumber++;
                        break;
                    }

                    params.push_back(param);
                }
            }

            int num_params = params.length();
            var params2 = new TinyNode*[num_params];
            params.each {
                params2[it2] = it;
            }

            var result = new TinyNode.createFunNode(buf, num_params, params2);
            
            return result;
        }
        else {
            return clone node;
        }
    }

    return node;
}
TinyNode*% wordNode(TinyParser* self, string& buf) {
    var word_node = inherit(self, buf);

    if(word_node != null) {
        return word_node;
    }
    else {
        if(*self.p == '(') {
            self.p++;
            self.skipSpaces();

            var params = new vector<TinyNode*%>.initialize();

            while(true) {
                if(*self.p == '\0') {
                    self.errMessage("Require ) before the source end");
                    self.errNumber++;
                    break;
                }
                else if(*self.p == ')') {
                    self.p++;
                    self.skipSpaces();
                    break;
                }
                else {
                    if(*self.p == ',') {
                        self.p++;
                        self.skipSpaces();
                    }

                    var param = self.expression();

                    if(param == null) {
                        self.errMessage("Null expression");
                        self.errNumber++;
                        break;
                    }

                    params.push_back(param);
                }
            }

            int num_params = params.length();
            var params2 = new TinyNode*[num_params];
            params.each {
                params2[it2] = it;
            }

            var result = new TinyNode.createFunNode(buf, num_params, params2);
            return result;
        }
        else {
            return null;
        }
    }
}
};

impl TinyVM version 7
{
bool runCommandControllingTerminal(TinyVM* self, char* command, char** argv, TVALUE* result)
{
    pid_t pid = fork();
    if(pid == 0) {
        pid_t pid = getpid();

        setpgid(0, 0);
        tcsetpgrp(0, pid);

        execvp(command, argv);
    }

    setpgid(pid, pid);
    tcsetpgrp(0, pid);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        fprintf(stderr, "Command not found(%s)\n", command);
        exit(2);
    }

    if(WIFSTOPPED(status)) {
/*
        rcode := WSTOPSIG(status) +128;
        title := method_name;

        terminfo := tcgetattr(0);

        job:Job = Job(title, pid, terminfo);

        Clover.jobs.add(job);

        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        return Command("", rcode);
*/
    }
    else {
        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        result.type = COMMAND_VALUE;
        result.uValue.commandValue.value = borrow string("");
        result.uValue.commandValue.err_value = borrow string("");
        result.uValue.commandValue.wait_status = WEXITSTATUS(status);
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
        case NODETYPE_FUN : {
            int num_params = node.funValue.num_params;

            /// external command ///
            for(int i=0; i<num_params; i++) {
                if(!self.compile(node.funValue.params[i])) {
                    return false;
                }
            }

            char**% argv = new char*[num_params+2];
            
            var name = node.funValue.name;

            argv[0] = name;

            var v = new vector<string>.initialize();

            for(int i=0; i<num_params-1; i++) {
                TVALUE*% value = self.stack.pop_back(null);
                
                if(value.type != STR_VALUE) {
                    self.parser.errMessage("Require str value");
                    return false;
                }

                var str = clone value.uValue.strValue;
                argv[num_params-i] = borrow str;

                v.push_back(str);
            }

            TVALUE*% value = self.stack.pop_back(null);
            
            if(value.type == COMMAND_VALUE) {
            }
            else if(value.type == STR_VALUE) {
                var str = clone value.uValue.strValue;
                argv[1] = borrow str;
                v.push_back(str);

                argv[num_params+1] = null;

                TVALUE*% value2 = new TVALUE;

                self.runCommandControllingTerminal(name, borrow argv, value2);
    
                self.stack.push_back(value2);
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

