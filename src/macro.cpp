extern "C"
{
#include "common.h"
#include <stdlib.h>
#include <limits.h>
#include <locale.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
}

#include <string>
#include <map>

using namespace std;

typedef struct {
    string mName;
    string mBody;
} sMacro;

map <string, sMacro> gMacros;

void append_macro(char* name, char* body)
{
    sMacro macro;
    
    macro.mName = string(name);
    macro.mBody = string(body);

    gMacros[name] = macro;
}

static BOOL get_command_result(sBuf* command_result, char* macro_name, char* cmdline, char* params)
{
    FILE* f;
    char buf[BUFSIZ];

    sBuf_append(command_result, (void*)"{", 1);

    setenv("PARAMS", params, 1);

    f = popen(cmdline, "r");
    if(f == NULL) {
        fprintf(stderr, "popen(2) is failed at %s\n", macro_name);
        return FALSE;
    }
    while(1) {
        int size;

        size = fread(buf, 1, BUFSIZ, f);
        sBuf_append(command_result, buf, size);

        if(size < BUFSIZ) {
            break;
        }
    }
    if(pclose(f) < 0) {
        fprintf(stderr, "pclose(2) is failed at %s\n", macro_name);
        return FALSE;
    }

    sBuf_append(command_result, (void*)"}", 1);

    return TRUE;
}

BOOL call_macro(unsigned * node, char* name, char* params, sParserInfo* info)
{
    char* cmdline = (char*)gMacros[name].mBody.c_str();

    if(gMacros[name].mName == "") {
        fprintf(stderr, "invalid macro. %s\n", name);
        return FALSE;
    }

    sBuf command_result;
    sBuf_init(&command_result);

    if(!get_command_result(&command_result, name, cmdline, params))
    {
        return FALSE;
    }

    sParserInfo info2;
    memset(&info2, 0, sizeof(sParserInfo));

    info2.p = command_result.mBuf;
    info2.source = command_result.mBuf;
    xstrncpy(info2.sname, name, PATH_MAX);
    info2.lv_table = info->lv_table;
    info2.sline = 1;
    info2.parse_struct_phase = FALSE;
    info2.module_name = "";

    sNodeBlock* node_block = NULL;
    if(!parse_block_easy(&node_block, FALSE, &info2))
    {
        return FALSE;
    }

    *node = sNodeTree_create_normal_block(node_block, &info2);
    
    free(command_result.mBuf);

    info->err_num += info2.err_num;

    return TRUE;
}

