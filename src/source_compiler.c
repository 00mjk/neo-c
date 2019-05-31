#include "common.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <libgen.h>

BOOL read_source(char* fname, sBuf* source)
{
    int f = open(fname, O_RDONLY);

    if(f < 0) {
        fprintf(stderr, "%s doesn't exist(2)\n", fname);
        return FALSE;
    }

    while(1) {
        char buf[BUFSIZ+1];
        int size = read(f, buf, BUFSIZ);

        if(size == 0) {
            break;
        }
        else if(size < 0) {
            fprintf(stderr, "unexpected error\n");
            close(f);
            return FALSE;
        }

        buf[size] = 0;
        sBuf_append_str(source, buf);

        if(size < BUFSIZ) {
            break;
        }
    }

    close(f);

    return TRUE;
}

BOOL delete_comment(sBuf* source, sBuf* source2)
{
    char* p = source->mBuf;

    BOOL in_string = FALSE;
    BOOL in_char = FALSE;

    while(*p) {
        if((in_string || in_char) && *p == '\\') {
            sBuf_append_char(source2, *p);
            p++;
            sBuf_append_char(source2, *p);
            p++;
        }
        /// comment1 ///
        else if(!in_string && !in_char && *p == '/' && *(p+1) == '*') {
            p+=2;
            int nest = 0;
            while(1) {
                if((in_string || in_char) && *p == '\\') {
                    p++;
                    p++;
                }
                else if(!in_char && *p == '"') {
                    p++;
                    in_string = !in_string;
                }
                else if(!in_string && *p == '\'') {
                    p++;
                    in_char = !in_char;
                }
                else if(*p == 0) {
                    fprintf(stderr, "there is not a comment end until source end\n");
                    return FALSE;
                }
                else if(!in_string && !in_char && *p == '/' && *(p+1) == '*') {
                    p+=2;
                    nest++;
                }
                else if(!in_string && !in_char && *p == '*' && *(p+1) == '/') {
                    p+=2;
                    if(nest == 0) {
                        break;
                    }

                    nest--;
                }
                else if(*p == '\n') {
                    sBuf_append_char(source2, *p);   // no delete line field for error message
                    p++;
                }
                else {
                    p++;
                }
            }
        }
        /// comment2 ///
        else if(!in_char && !in_string && *p == '/' && *(p+1) == '/') {
            p++;

            while(1) {
                if(*p == 0) {
                    break;
                }
                else if(*p == '\n') {
                    //p++;      // no delete line field for error message
                    break;
                }
                else {
                    p++;
                }
            }
        }
        else if(!in_char && *p == '"') {
            in_string = !in_string;
            sBuf_append_char(source2, *p);
            p++;
        }
        else if(!in_string && *p == '\'') {
            in_char = !in_char;
            sBuf_append_char(source2, *p);
            p++;
        }
        else if(*p == '\\' && *(p+1) == '/' && *(p+2) == '*') {
            sBuf_append_char(source2, *p);
            p++;
            sBuf_append_char(source2, *p);
            p++;
            sBuf_append_char(source2, *p);
            p++;
        }
        else if(*p == '\\' && *(p+1) == '#') {
            sBuf_append_char(source2, *p);
            p++;
            sBuf_append_char(source2, *p);
            p++;
        }
        else {
            sBuf_append_char(source2, *p);
            p++;
        }
    }

    return TRUE;
}

BOOL compile_source(char* fname, char* source, BOOL optimize, BOOL output_object_file)
{
    sParserInfo info;
    memset(&info, 0, sizeof(sParserInfo));

    info.p = source;
    info.source = source;
    info.sname = fname;
    info.lv_table = init_var_table();
    info.sline = 1;

    char module_name[PATH_MAX];
    xstrncpy(module_name, fname, PATH_MAX);

    char* module_name2 = basename(module_name);

    char module_name3[PATH_MAX];
    xstrncpy(module_name3, module_name2, PATH_MAX);

    char* p = module_name3 + strlen(module_name3);
    while(p >= module_name3) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    info.module_name = module_name3;

    sCompileInfo cinfo;
    memset(&cinfo, 0, sizeof(sCompileInfo));

    xstrncpy(cinfo.func_name, fname, VAR_NAME_MAX);

    cinfo.pinfo = &info;

    start_to_make_native_code(fname);

    while(*info.p) {
        unsigned int node = 0;
        if(!expression(&node, &info)) {
            return FALSE;
        }

        if(info.err_num == 0) {
            if(!compile(node, &cinfo)) {
                return FALSE;
            }

            arrange_stack(&cinfo, 0);
        }

        if(*info.p == ';') {
            info.p++;
            skip_spaces_and_lf(&info);
        }
    }

    if(info.err_num > 0 || cinfo.err_num > 0) {
        fprintf(stderr, "Parser error number is %d. Compile error number is %d\n", info.err_num, cinfo.err_num);
        return FALSE;
    }

    output_native_code(optimize, output_object_file);

    return TRUE;
}
