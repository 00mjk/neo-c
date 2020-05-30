#include "common.h"
#include <stdlib.h>
#include <limits.h>
#include <locale.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

map<string, string>* gMacros;

void init_macro()
{
    gMacros = borrow new map<string, string>.initialize();
}

void finalize_macro()
{
    delete gMacros;
}

void append_macro(char* name, char* body)
{
    gMacros.insert(string(name), string(body));
}

string get_macro(char* name)
{
    return gMacros.at(name, null);
}

static bool get_command_result(buffer* command_result, char* macro_name, char* cmdline, char* params)
{
    FILE* f;
    char buf[BUFSIZ];

    command_result.append_char('{');

    setenv("PARAMS", params, 1);

    f = popen(cmdline, "r");
    if(f == NULL) {
        fprintf(stderr, "popen(2) is failed at %s\n", macro_name);
        return false;
    }
    while(1) {
        int size;

        size = fread(buf, 1, BUFSIZ, f);
        command_result.append(buf, size);

        if(size < BUFSIZ) {
            break;
        }
    }
    if(pclose(f) < 0) {
        fprintf(stderr, "pclose(2) is failed at %s\n", macro_name);
        return false;
    }

    command_result.append((void*)"}", 1);

    return true;
}

bool call_macro(sCLNode* node, char* name, char* params, sParserInfo* info)
{
    char* cmdline = get_macro(name);

    if(cmdline == NULL) {
        fprintf(stderr, "invalid macro. %s\n", name);
        return false;
    }

    buffer*% command_result = new buffer.initialize();

    if(!get_command_result(command_result, name, cmdline, params))
    {
        return false;
    }

    sParserInfo info2;
    memset(&info2, 0, sizeof(sParserInfo));

    info2.p = command_result.buf;
    xstrncpy(info2.sname, name, PATH_MAX);

    sCLNodeBlock* node_block = null;
    if(!parse_block(&node_block, 0, NULL, &info2))
    {
        return false;
    }

    *node = sNodeTree_create_normal_block(node_block, &info2);
    
    info->err_num += info2.err_num;

    return true;
}

