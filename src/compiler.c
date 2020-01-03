#include "common.h"
#include <libgen.h>

static void compiler_init()
{
    init_macro();
    init_typedef();
    parser_init();
    init_node_types();
    class_init();
    init_nodes();
    llvm_init();
    init_vtable();
}

static void compiler_final()
{
    finalize_macro();
    final_vtable();
    llvm_final();
    free_nodes();
    class_final();
    free_node_types();
    parser_final();
}

static BOOL compiler(char* fname, BOOL optimize, sVarTable* module_var_table, BOOL neo_c_header)
{
    if(access(fname, F_OK) != 0) {
        fprintf(stderr, "%s doesn't exist\n", fname);
        return FALSE;
    }
    
    sBuf source;
    sBuf_init(&source);

    char fname2[PATH_MAX];

    if(neo_c_header) {
        char* base_fname = basename(fname);
        xstrncpy(fname2, base_fname, PATH_MAX);
        xstrncat(fname2, ".out", PATH_MAX);

        char cmd[1024];
        snprintf(cmd, 1024, "cpp -C %s > %s", fname, fname2);

        int rc = system(cmd);

        if(rc != 0) {
            fprintf(stderr, "failed to cpp(1)\n");
            exit(2);
        }
    }
    else {
        xstrncpy(fname2, fname, PATH_MAX);
        xstrncat(fname2, ".out", PATH_MAX);

        char cmd[1024];
        snprintf(cmd, 1024, "cpp -C %s > %s", fname, fname2);

        int rc = system(cmd);
        if(rc != 0) {
            char* base_fname = basename(fname);
            xstrncpy(fname2, base_fname, PATH_MAX);
            xstrncat(fname2, ".out", PATH_MAX);

            char cmd[1024];
            snprintf(cmd, 1024, "cpp -C %s > %s", fname, fname2);

            rc = system(cmd);

            if(rc != 0) {
                fprintf(stderr, "failed to cpp(2)\n");
                exit(2);
            }
        }
    }

    if(!read_source(fname2, &source)) {
        free(source.mBuf);
        return FALSE;
    }

    sBuf source2;
    sBuf_init(&source2);

    if(!delete_comment(&source, &source2)) {
        free(source.mBuf);
        free(source2.mBuf);
        return FALSE;
    }

    if(!compile_source(fname, source2.mBuf, optimize, module_var_table)) 
    {
        free(source.mBuf);
        free(source2.mBuf);
        return FALSE;
    }

    free(source.mBuf);
    free(source2.mBuf);

    return TRUE;
}


int gARGC;
char** gARGV;
char* gVersion = "0.0.1";

char gMainModulePath[PATH_MAX];

int main(int argc, char** argv)
{
    gARGC = argc;
    gARGV = argv;

    char sname[PATH_MAX];
    sname[0] = '\0';

    BOOL output_object_file = FALSE;
    BOOL optimize = FALSE;
    char* external_objects[EXTERNAL_OBJECT_MAX];
    int num_external_object = 0;
    
    memset(external_objects, 0, sizeof(char*)*EXTERNAL_OBJECT_MAX);

    const int max_c_include_path = 1024*2*2*2;
    char c_include_path[max_c_include_path];
    snprintf(c_include_path, max_c_include_path, "%s/include/", PREFIX);

    char program_name[PATH_MAX];
    program_name[0] = '\0';

    int i;
    for(i=1; i<argc; i++) {
        if(strcmp(argv[i], "--version") == 0 || strcmp(argv[i], "-version") == 0 || strcmp(argv[i], "-v") == 0 || strcmp(argv[i], "-V") == 0)
        {
            printf("neo-c version %s\n", gVersion);
            exit(0);
        }
        else if(strcmp(argv[i], "-c") == 0)
        {
            output_object_file = TRUE;
        }
        else if(strcmp(argv[i], "-O") == 0)
        {
            optimize = TRUE;
        }
        else if(strstr(argv[i], "-I") == argv[i])
        {
            xstrncat(c_include_path, ":", max_c_include_path);
            xstrncat(c_include_path, argv[i]+2, max_c_include_path);
        }
        else if(strcmp(argv[i], "-I") == 0)
        {
            if(i + 1 < argc) {
                xstrncat(c_include_path, ":", max_c_include_path);
                xstrncat(c_include_path, argv[i+1], max_c_include_path);
                i++;
            }
        }
        else if(strcmp(argv[i], "-o") == 0)
        {
            if(i + 1 < argc) {
                xstrncpy(program_name, argv[i+1], PATH_MAX);
                i++;
            }
        }
        else if(sname[0] == '\0') {
            xstrncpy(sname, argv[i], PATH_MAX);
        }
        else {
            external_objects[num_external_object++] = argv[i];

            if(num_external_object >= EXTERNAL_OBJECT_MAX) {
                fprintf(stderr, "overflow object file number\n");
                exit(2);
            }
        }
    }

    setenv("C_INCLUDE_PATH", c_include_path, 1);

    char* p = sname + strlen(sname);

    while(p >= sname) {
        if(*p == '.') {
            break;
        }
        else {
            p--;
        }
    }

    if(p < sname) {
        fprintf(stderr, "Require extention name\n");
        exit(2);
    }

    char main_module_name[PATH_MAX];
    memcpy(main_module_name, sname, p-sname);
    main_module_name[p-sname] = '\0';

    xstrncpy(gMainModulePath, main_module_name, PATH_MAX);

    if(strcmp(program_name, "") == 0) {
        xstrncpy(program_name, main_module_name, PATH_MAX);
    }

    char ext_name[PATH_MAX];
    xstrncpy(ext_name, p+1, PATH_MAX);

    compiler_init();

    char neo_c_header_path[PATH_MAX];

    snprintf(neo_c_header_path, PATH_MAX, "./neo-c.h");

    if(access(neo_c_header_path, R_OK) != 0)
    {
        snprintf(neo_c_header_path, PATH_MAX, "%s/include/neo-c.h", PREFIX);
    }

    sVarTable* module_var_table = init_var_table();

    start_to_make_native_code(sname);

    if(!compiler(neo_c_header_path, optimize, module_var_table, TRUE)) 
    {
        fprintf(stderr, "neo-c can't compile %s\n", neo_c_header_path);

        compiler_final();
        return 1;
    }

    if(!compiler(sname, optimize, module_var_table, FALSE))
    {
        fprintf(stderr, "neo-c can't compile %s\n", sname);
        compiler_final();
        return 1;
    }

    output_native_code(sname, optimize);

    compiler_final();

    int result = 0;

    if(!output_object_file) {
        char command[4096*2];

        snprintf(command, 4096*2, "clang -o %s %s.o -lpcre ", program_name, main_module_name);

        char path[PATH_MAX]; snprintf(path, PATH_MAX, "%s/lib/neo-c.o", PREFIX);


        if(access(path, R_OK) == 0) {
            xstrncat(command, path, 4096*2);
            xstrncat(command, " ", 4096*2);
        }
        else {
            snprintf(path, PATH_MAX, "./neo-c.o ");
            xstrncat(command, path, 4096*2);
        }

        snprintf(path, PATH_MAX, "%s/lib/memalloc-stdc.o", PREFIX);

        if(access(path, R_OK) == 0) {
            xstrncat(command, path, 4096*2);
            xstrncat(command, " ", 4096*2);
        }
        else {
            snprintf(path, PATH_MAX, "./memalloc-stdc.o ");
            xstrncat(command, path, 4096*2);
        }

        int i;
        for(i=0; i<num_external_object; i++) {
            xstrncat(command, external_objects[i], 4096*2);
            xstrncat(command, " ", 4096*2);
        }

        int rc = system(command);
        if(rc != 0) {
            fprintf(stderr, "failed to compile(3)\n");
            exit(2);
        }

        result = WEXITSTATUS(rc);
    }

    return result;
}
