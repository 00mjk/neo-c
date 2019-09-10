#include "common.h"

static void compiler_init()
{
    parser_init();
    init_node_types();
    class_init();
    init_nodes();
    llvm_init();
    init_vtable();
}

static void compiler_final()
{
    final_vtable();
    llvm_final();
    free_nodes();
    class_final();
    free_node_types();
    parser_final();
}

static BOOL compiler(char* fname, BOOL optimize)
{
    if(access(fname, F_OK) != 0) {
        fprintf(stderr, "%s doesn't exist\n", fname);
        return FALSE;
    }
    
    sBuf source;
    sBuf_init(&source);

    char fname2[PATH_MAX];
    xstrncpy(fname2, fname, PATH_MAX);

    char* p = fname2 + strlen(fname2);
    while(p >= fname2) {
        if(*p == '.') {
            *p = '\0';
            break;
        }
        else {
            p--;
        }
    }

    xstrncat(fname2, ".out", PATH_MAX);

    char cmd[1024];
    snprintf(cmd, 1024, "cpp -C %s > %s", fname, fname2);

    int rc = system(cmd);
    if(rc != 0) {
        fprintf(stderr, "faield to cpp\n");
        exit(2);
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

    if(!compile_source(fname, source2.mBuf, optimize)) {
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

    if(strcmp(program_name, "") == 0) {
        xstrncpy(program_name, main_module_name, PATH_MAX);
    }

    compiler_init();

    if(!compiler(sname, optimize)) {
        fprintf(stderr, "neo-c can't compile %s\n", sname);
        compiler_final();
        return 1;
    }

    compiler_final();

    int result = 0;

    if(!output_object_file) {
        char command[4096*2];

        snprintf(command, 4096*2, "clang -o %s %s.o ", program_name, main_module_name);

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
            fprintf(stderr, "faield to compile\n");
            exit(2);
        }

        result = WEXITSTATUS(rc);
    }

    return result;
}
