#include "common.h"
#include <stdlib.h>
#include <limits.h>
#include <locale.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

struct sMacro {
    char mName[VAR_NAME_MAX];
    sBuf mBody;
};

struct sMacro gMacros[MACRO_MAX];

void init_macro()
{
    memset(gMacros, 0, sizeof(struct sMacro)*MACRO_MAX);
}

void finalize_macro()
{
    int i;
    for(i=0; i<MACRO_MAX; i++) {
        if(strcmp(gMacros[i].mName, "") != 0) 
        {
            free(gMacros[i].mBody.mBuf);
        }
    }
}

void append_macro(char* name, char* body)
{
    unsigned int hash_value = get_hash_key(name, MACRO_MAX);

    struct sMacro* it = gMacros + hash_value;

    while(1) {
        if(strcmp(it->mName, "") == 0) {
            xstrncpy(it->mName, name, VAR_NAME_MAX);
            sBuf_init(&it->mBody);
            sBuf_append_str(&it->mBody, body);
            break;
        }
        else {
            it++;

            if(it == gMacros + MACRO_MAX)
            {
                it = gMacros;
            }
            else if(it == gMacros + hash_value)
            {
                fprintf(stderr, "overflow macro number\n");
                exit(2);
            }
        }
    }
}

char* get_macro(char* name)
{
    char* result = NULL;

    if(strcmp(name, "") == 0) {
        return NULL;
    }

    unsigned int hash_value = get_hash_key(name, MACRO_MAX);

    struct sMacro* it = gMacros + hash_value;

    while(1) {
        if(strcmp(it->mName, name) == 0) {
            result = it->mBody.mBuf;
            break;
        }
        else {
            it++;

            if(it == gMacros + MACRO_MAX)
            {
                it = gMacros;
            }
            else if(it == gMacros + hash_value)
            {
                break;
            }
        }
    }

    return result;
}

static BOOL get_command_result(sBuf* command_result, char* macro_name, char* cmdline, char* params)
{
    FILE* f;
    char buf[BUFSIZ];

    sBuf_append(command_result, (void*)"{", 1);

    setenv("PARAMS", params, 1);

    f = popen(cmdline, "r");
    if(f == NULL) {
        perror("popen");
        fprintf(stderr, "popen(2) is failed at %s(%s)\n", macro_name, cmdline);
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
    char* cmdline = get_macro(name);

    if(cmdline == NULL) {
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

    sBuf_init(&info2.mConst);

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
        free(info2.mConst.mBuf);
        return FALSE;
    };

    *node = sNodeTree_create_normal_block(node_block, &info2);
    
    free(command_result.mBuf);

    info->err_num += info2.err_num;
    free(info2.mConst.mBuf);

    return TRUE;
}

