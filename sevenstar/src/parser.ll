; ModuleID = 'Module parser'
source_filename = "Module parser"

%_IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %_IO_marker*, %_IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %_IO_codecvt*, %_IO_wide_data*, %_IO_FILE*, i8*, i64, i32, [20 x i8] }
%_IO_marker = type {}
%_IO_codecvt = type {}
%_IO_wide_data = type {}
%pcre_callout_block = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%pcre16_callout_block = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%pcre32_callout_block = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%map__charp_sCLClassp = type { i8**, i1*, %sCLClass**, i32, i32 }
%sCLClass = type { i8*, %map__charp_sCLMethodp*, %map__charp_sCLFieldp*, %map__charp_sCLFieldp*, %sCLClass* }
%map__charp_sCLMethodp = type { i8**, i1*, %sCLMethod**, i32, i32 }
%sCLMethod = type { i8*, [32 x %sCLParam], i32, %sCLType*, %buffer*, i1 (%CLVALUE**, %sVMInfo*)*, %sCLNodeBlock*, i32 }
%sCLParam = type { [128 x i8], %sCLType* }
%sCLType = type { i8*, %sCLClass*, i32, [32 x %sCLType*], i1, [32 x %sCLParam], i32, %sCLType*, i32 }
%buffer = type { i8*, i32, i32 }
%CLVALUE = type { i32 }
%sVMInfo = type { [4096 x i8], i32, %sParserInfo*, %sCompileInfo*, i1, %vector__sCLStackFrame*, %CLVALUE }
%sParserInfo = type { [4096 x i8], i32, i32, i32, i8*, %vector__charp*, %vector__sCLNodep*, %vector__sVarTablep*, %vector__sCLNodeBlockp*, %vector__sCLTypep*, %vector__sVarp*, i32 }
%vector__charp = type { i8**, i32, i32 }
%vector__sCLNodep = type { %sCLNode**, i32, i32 }
%sCLNode = type { i32, [4096 x i8], i32, %anon78, i8*, i8*, i8*, %buffer*, %sCLType*, %sCLNode*, %sCLNode*, %sCLNode* }
%anon78 = type { %anon80 }
%anon80 = type { %sCLNodeBlock*, [32 x %sCLParam], i32, %sCLType* }
%vector__sVarTablep = type { %sVarTable**, i32, i32 }
%sVarTable = type { %map__charp_sVarp*, i32, i32, i32, %sVarTable* }
%map__charp_sVarp = type { i8**, i1*, %sVar**, i32, i32 }
%sVar = type { i8*, i32, %sCLType*, i32, i1 }
%vector__sCLNodeBlockp = type { %sCLNodeBlock**, i32, i32 }
%vector__sCLTypep = type { %sCLType**, i32, i32 }
%vector__sVarp = type { %sVar**, i32, i32 }
%sCompileInfo = type { [4096 x i8], i32, i32, i32, %sParserInfo*, %buffer*, %sCLType*, i1, %sCLNode* }
%vector__sCLStackFrame = type { %sCLStackFrame*, i32, i32 }
%sCLStackFrame = type { i32, %CLVALUE*, %CLVALUE**, i32, i32 }
%sCLNodeBlock = type { %vector__sCLNodep*, %vector__sVarTablep*, i1, i32, [32 x %sCLParam], %sCLType*, i32, %buffer*, i32 }
%map__charp_sCLFieldp = type { i8**, i1*, %sCLField**, i32, i32 }
%sCLField = type { i8*, %sCLType*, %CLVALUE, i32 }
%vector__int = type { i32*, i32, i32 }
%__locale_struct = type { [13 x %__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%__locale_data = type opaque
%anon0 = type { i32, %anon1 }
%anon1 = type { i32 }
%__builtin_va_list.0 = type { i8* }
%tm = type {}
%_G_fpos_t = type { i64, %anon0 }
%anon7 = type { [16 x i64] }
%timeval = type { i64, i64 }
%timespec = type { i64, i64 }
%anon6 = type { [16 x i64] }
%random_data = type { i32*, i32*, i32*, i32, i32, i32, i32* }
%drand48_data = type { [3 x i16], [3 x i16], i16, i16, i64 }
%anon3 = type { i32, i32 }
%anon4 = type { i64, i64 }
%anon5 = type { i64, i64 }
%real_pcre = type {}
%real_pcre16 = type {}
%real_pcre32 = type {}
%pcre_extra = type { i64, i8*, i64, i8*, i8*, i64, i8**, i8* }
%pcre16_extra = type { i64, i8*, i64, i8*, i8*, i64, i16**, i8* }
%pcre32_extra = type { i64, i8*, i64, i8*, i8*, i64, i32**, i8* }
%real_pcre_jit_stack = type {}
%real_pcre16_jit_stack = type {}
%real_pcre32_jit_stack = type {}
%regex_struct = type { i8*, %real_pcre*, i1, i1, i1, i1, i1, i1, i1, i1 }
%list__charp = type { %list_item__charp*, %list_item__charp*, i32 }
%list_item__charp = type { i8*, %list_item__charp*, %list_item__charp* }
%stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %timespec, %timespec, %timespec, [3 x i64] }
%lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%sCLHeapMem = type { %sCLType*, i32, i32, i8* }

@gLVTable = internal global [8192 x i8*] zeroinitializer, align 8
@gNCDebugHeap = external global i32
@__environ = external externally_initialized global i8**, align 8
@optarg = external externally_initialized global i8*, align 8
@optind = external externally_initialized global i32, align 4
@opterr = external externally_initialized global i32, align 4
@optopt = external externally_initialized global i32, align 4
@stdin = external externally_initialized global %_IO_FILE*, align 8
@stdout = external externally_initialized global %_IO_FILE*, align 8
@stderr = external externally_initialized global %_IO_FILE*, align 8
@sys_nerr = external externally_initialized global i32, align 4
@sys_errlist = external externally_initialized global i8**, align 8
@pcre_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre_free = external externally_initialized global void (i8*)*, align 8
@pcre_stack_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre_stack_free = external externally_initialized global void (i8*)*, align 8
@pcre_callout = external externally_initialized global i32 (%pcre_callout_block*)*, align 8
@pcre_stack_guard = external externally_initialized global i32 ()*, align 8
@pcre16_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre16_free = external externally_initialized global void (i8*)*, align 8
@pcre16_stack_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre16_stack_free = external externally_initialized global void (i8*)*, align 8
@pcre16_callout = external externally_initialized global i32 (%pcre16_callout_block*)*, align 8
@pcre16_stack_guard = external externally_initialized global i32 ()*, align 8
@pcre32_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre32_free = external externally_initialized global void (i8*)*, align 8
@pcre32_stack_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre32_stack_free = external externally_initialized global void (i8*)*, align 8
@pcre32_callout = external externally_initialized global i32 (%pcre32_callout_block*)*, align 8
@pcre32_stack_guard = external externally_initialized global i32 ()*, align 8
@gClasses = external externally_initialized global %map__charp_sCLClassp*, align 8
@gJobs = external externally_initialized global %vector__int*, align 8
@global_string = private constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@global_string.1 = private constant [24 x i8] c"overflow node of number\00", align 1
@global_string.2 = private constant [28 x i8] c"require digits after + or -\00", align 1
@global_string.3 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.4 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.5 = private constant [11 x i8] c"parse_word\00", align 1
@global_string.6 = private constant [11 x i8] c"parse_word\00", align 1
@global_string.7 = private constant [61 x i8] c"expects next character %c, but it is (character code %d)(%c)\00", align 1
@global_string.8 = private constant [5 x i8] c"elif\00", align 1
@global_string.9 = private constant [21 x i8] c"overflow elif number\00", align 1
@global_string.10 = private constant [5 x i8] c"else\00", align 1
@global_string.11 = private constant [5 x i8] c"elif\00", align 1
@global_string.12 = private constant [5 x i8] c"else\00", align 1
@global_string.13 = private constant [5 x i8] c"else\00", align 1
@global_string.14 = private constant [3 x i8] c"it\00", align 1
@global_string.15 = private constant [4 x i8] c"any\00", align 1
@global_string.16 = private constant [16 x i8] c"generics_type%d\00", align 1
@global_string.17 = private constant [7 x i8] c"lambda\00", align 1
@global_string.18 = private constant [22 x i8] c"invalid type name(%s)\00", align 1
@global_string.19 = private constant [44 x i8] c"Unexpected source end in parsing parametors\00", align 1
@global_string.20 = private constant [21 x i8] c"vector%<sVarTable*%>\00", align 1
@global_string.21 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.22 = private constant [24 x i8] c"parse_lambda_expression\00", align 1
@global_string.23 = private constant [24 x i8] c"parse_lambda_expression\00", align 1
@global_string.24 = private constant [12 x i8] c"sVarTable*%\00", align 1
@global_string.25 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.26 = private constant [34 x i8] c"initialize_sVarTablep2_src/parser\00", align 1
@global_string.27 = private constant [41 x i8] c"vector_initialize_sVarTablep2_src/parser\00", align 1
@global_string.28 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.29 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.30 = private constant [12 x i8] c"parse_class\00", align 1
@global_string.31 = private constant [12 x i8] c"parse_class\00", align 1
@global_string.32 = private constant [49 x i8] c"unexpexted the source end in generics type names\00", align 1
@global_string.33 = private constant [27 x i8] c"unexpected the source end\0A\00", align 1
@global_string.34 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.35 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.36 = private constant [12 x i8] c"parse_macro\00", align 1
@global_string.37 = private constant [12 x i8] c"parse_macro\00", align 1
@global_string.38 = private constant [22 x i8] c"overflow pram number\0A\00", align 1
@global_string.39 = private constant [38 x i8] c"unexpexted source end. require ) or ,\00", align 1
@global_string.40 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.41 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.42 = private constant [21 x i8] c"parse_calling_params\00", align 1
@global_string.43 = private constant [21 x i8] c"parse_calling_params\00", align 1
@global_string.44 = private constant [22 x i8] c"overflow pram number\0A\00", align 1
@global_string.45 = private constant [26 x i8] c"require right value for -\00", align 1
@global_string.46 = private constant [26 x i8] c"require right value for +\00", align 1
@global_string.47 = private constant [4 x i8] c"var\00", align 1
@global_string.48 = private constant [48 x i8] c"require right value for the definition variable\00", align 1
@global_string.49 = private constant [17 x i8] c"require var name\00", align 1
@global_string.50 = private constant [5 x i8] c"true\00", align 1
@global_string.51 = private constant [6 x i8] c"false\00", align 1
@global_string.52 = private constant [5 x i8] c"null\00", align 1
@global_string.53 = private constant [3 x i8] c"if\00", align 1
@global_string.54 = private constant [6 x i8] c"break\00", align 1
@global_string.55 = private constant [6 x i8] c"while\00", align 1
@global_string.56 = private constant [6 x i8] c"throw\00", align 1
@global_string.57 = private constant [4 x i8] c"try\00", align 1
@global_string.58 = private constant [7 x i8] c"lambda\00", align 1
@global_string.59 = private constant [6 x i8] c"class\00", align 1
@global_string.60 = private constant [6 x i8] c"macro\00", align 1
@global_string.61 = private constant [5 x i8] c"jobs\00", align 1
@global_string.62 = private constant [5 x i8] c"exit\00", align 1
@global_string.63 = private constant [7 x i8] c"return\00", align 1
@global_string.64 = private constant [3 x i8] c"fg\00", align 1
@global_string.65 = private constant [24 x i8] c"overflow node of number\00", align 1
@global_string.66 = private constant [4 x i8] c"new\00", align 1
@global_string.67 = private constant [11 x i8] c"initialize\00", align 1
@global_string.68 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.69 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.70 = private constant [16 x i8] c"expression_node\00", align 1
@global_string.71 = private constant [16 x i8] c"expression_node\00", align 1
@global_string.72 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.73 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.74 = private constant [16 x i8] c"expression_node\00", align 1
@global_string.75 = private constant [16 x i8] c"expression_node\00", align 1
@global_string.76 = private constant [36 x i8] c"close \22 character from the line %d\0A\00", align 1
@global_string.77 = private constant [32 x i8] c"require expression as ( operand\00", align 1
@global_string.78 = private constant [20 x i8] c"require value for !\00", align 1
@global_string.79 = private constant [21 x i8] c"vector%<sVarTable*%>\00", align 1
@global_string.80 = private constant [14 x i8] c"src/parser.nc\00", align 1
@global_string.81 = private constant [16 x i8] c"expression_node\00", align 1
@global_string.82 = private constant [16 x i8] c"expression_node\00", align 1
@global_string.83 = private constant [12 x i8] c"sVarTable*%\00", align 1
@global_string.84 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.85 = private constant [34 x i8] c"initialize_sVarTablep7_src/parser\00", align 1
@global_string.86 = private constant [41 x i8] c"vector_initialize_sVarTablep7_src/parser\00", align 1
@global_string.87 = private constant [24 x i8] c"unexpected character %c\00", align 1
@global_string.88 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.89 = private constant [36 x i8] c"require right value for operator \5C+\00", align 1
@global_string.90 = private constant [35 x i8] c"require right value for operator -\00", align 1
@global_string.91 = private constant [36 x i8] c"require right value for operator \5C-\00", align 1
@global_string.92 = private constant [36 x i8] c"require right value for >= operator\00", align 1
@global_string.93 = private constant [36 x i8] c"require right value for >= operator\00", align 1
@global_string.94 = private constant [36 x i8] c"require right value for <= operator\00", align 1
@global_string.95 = private constant [36 x i8] c"require right value for <= operator\00", align 1
@global_string.96 = private constant [35 x i8] c"require right value for > operator\00", align 1
@global_string.97 = private constant [35 x i8] c"require right value for > operator\00", align 1
@global_string.98 = private constant [35 x i8] c"require right value for < operator\00", align 1
@global_string.99 = private constant [35 x i8] c"require right value for < operator\00", align 1
@global_string.100 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.101 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.102 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.103 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.104 = private constant [36 x i8] c"require right value for && operator\00", align 1
@global_string.105 = private constant [36 x i8] c"require right value for operator ||\00", align 1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #0

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #0

declare i32* @wcscpy(i32*, i32*)

declare i32* @wcsncpy(i32*, i32*, i64)

declare i32* @wcscat(i32*, i32*)

declare i32* @wcsncat(i32*, i32*, i64)

declare i32 @wcscmp(i32*, i32*)

declare i32 @wcsncmp(i32*, i32*, i64)

declare i32 @wcscasecmp(i32*, i32*)

declare i32 @wcsncasecmp(i32*, i32*, i64)

declare i32 @wcscasecmp_l(i32*, i32*, %__locale_struct*)

declare i32 @wcsncasecmp_l(i32*, i32*, i64, %__locale_struct*)

declare i32 @wcscoll(i32*, i32*)

declare i64 @wcsxfrm(i32*, i32*, i64)

declare i32 @wcscoll_l(i32*, i32*, %__locale_struct*)

declare i64 @wcsxfrm_l(i32*, i32*, i64, %__locale_struct*)

declare i32* @wcsdup(i32*)

declare i32* @wcschr(i32*, i32)

declare i32* @wcsrchr(i32*, i32)

declare i64 @wcscspn(i32*, i32*)

declare i64 @wcsspn(i32*, i32*)

declare i32* @wcspbrk(i32*, i32*)

declare i32* @wcsstr(i32*, i32*)

declare i32* @wcstok(i32*, i32*, i32**)

declare i64 @wcslen(i32*)

declare i32* @wcswcs(i32*, i32*)

declare i64 @wcsnlen(i32*, i64)

declare i32* @wmemchr(i32*, i32, i64)

declare i32 @wmemcmp(i32*, i32*, i64)

declare i32* @wmemcpy(i32*, i32*, i64)

declare i32* @wmemmove(i32*, i32*, i64)

declare i32* @wmemset(i32*, i32, i64)

declare i32 @btowc(i32)

declare i32 @wctob(i32)

declare i32 @mbsinit(%anon0*)

declare i64 @mbrtowc(i32*, i8*, i64, %anon0*)

declare i64 @wcrtomb(i8*, i32, %anon0*)

declare i64 @__mbrlen(i8*, i64, %anon0*)

declare i64 @mbrlen(i8*, i64, %anon0*)

declare i64 @mbsrtowcs(i32*, i8**, i64, %anon0*)

declare i64 @wcsrtombs(i8*, i32**, i64, %anon0*)

declare i64 @mbsnrtowcs(i32*, i8**, i64, i64, %anon0*)

declare i64 @wcsnrtombs(i8*, i32**, i64, i64, %anon0*)

declare i32 @wcwidth(i32)

declare i32 @wcswidth(i32*, i64)

declare double @wcstod(i32*, i32**)

declare float @wcstof(i32*, i32**)

declare fp128 @wcstold(i32*, i32**)

declare i64 @wcstol(i32*, i32**, i32)

declare i64 @wcstoul(i32*, i32**, i32)

declare i64 @wcstoll(i32*, i32**, i32)

declare i64 @wcstoull(i32*, i32**, i32)

declare i32* @wcpcpy(i32*, i32*)

declare i32* @wcpncpy(i32*, i32*, i64)

declare %_IO_FILE* @open_wmemstream(i32**, i64*)

declare i32 @fwide(%_IO_FILE*, i32)

declare i32 @fwprintf(%_IO_FILE*, i32*, ...)

declare i32 @wprintf(i32*, ...)

declare i32 @swprintf(i32*, i64, i32*, ...)

declare i32 @vfwprintf(%_IO_FILE*, i32*, %__builtin_va_list.0)

declare i32 @vwprintf(i32*, %__builtin_va_list.0)

declare i32 @vswprintf(i32*, i64, i32*, %__builtin_va_list.0)

declare i32 @fwscanf(%_IO_FILE*, i32*, ...)

declare i32 @wscanf(i32*, ...)

declare i32 @swscanf(i32*, i32*, ...)

declare i32 @vfwscanf(%_IO_FILE*, i32*, %__builtin_va_list.0)

declare i32 @vwscanf(i32*, %__builtin_va_list.0)

declare i32 @vswscanf(i32*, i32*, %__builtin_va_list.0)

declare i32 @fgetwc(%_IO_FILE*)

declare i32 @getwc(%_IO_FILE*)

declare i32 @getwchar()

declare i32 @fputwc(i32, %_IO_FILE*)

declare i32 @putwc(i32, %_IO_FILE*)

declare i32 @putwchar(i32)

declare i32* @fgetws(i32*, i32, %_IO_FILE*)

declare i32 @fputws(i32*, %_IO_FILE*)

declare i32 @ungetwc(i32, %_IO_FILE*)

declare i64 @wcsftime(i32*, i64, i32*, %tm*)

declare i32 @access(i8*, i32)

declare i32 @faccessat(i32, i8*, i32, i32)

declare i64 @lseek(i32, i64, i32)

declare i32 @close(i32)

declare i64 @read(i32, i8*, i64)

declare i64 @write(i32, i8*, i64)

declare i64 @pread(i32, i8*, i64, i64)

declare i64 @pwrite(i32, i8*, i64, i64)

declare i32 @pipe(i32*)

declare i32 @alarm(i32)

declare i32 @sleep(i32)

declare i32 @ualarm(i32, i32)

declare i32 @usleep(i32)

declare i32 @pause()

declare i32 @chown(i8*, i32, i32)

declare i32 @fchown(i32, i32, i32)

declare i32 @lchown(i8*, i32, i32)

declare i32 @fchownat(i32, i8*, i32, i32, i32)

declare i32 @chdir(i8*)

declare i32 @fchdir(i32)

declare i8* @getcwd(i8*, i64)

declare i8* @getwd(i8*)

declare i32 @dup(i32)

declare i32 @dup2(i32, i32)

declare i32 @execve(i8*, i8**, i8**)

declare i32 @fexecve(i32, i8**, i8**)

declare i32 @execv(i8*, i8**)

declare i32 @execle(i8*, i8*, ...)

declare i32 @execl(i8*, i8*, ...)

declare i32 @execvp(i8*, i8**)

declare i32 @execlp(i8*, i8*, ...)

declare i32 @nice(i32)

declare void @_exit(i32)

declare i64 @pathconf(i8*, i32)

declare i64 @fpathconf(i32, i32)

declare i64 @sysconf(i32)

declare i64 @confstr(i32, i8*, i64)

declare i32 @getpid()

declare i32 @getppid()

declare i32 @getpgrp()

declare i32 @__getpgid(i32)

declare i32 @getpgid(i32)

declare i32 @setpgid(i32, i32)

declare i32 @setpgrp()

declare i32 @setsid()

declare i32 @getsid(i32)

declare i32 @getuid()

declare i32 @geteuid()

declare i32 @getgid()

declare i32 @getegid()

declare i32 @getgroups(i32, i32*)

declare i32 @setuid(i32)

declare i32 @setreuid(i32, i32)

declare i32 @seteuid(i32)

declare i32 @setgid(i32)

declare i32 @setregid(i32, i32)

declare i32 @setegid(i32)

declare i32 @fork()

declare i32 @vfork()

declare i8* @ttyname(i32)

declare i32 @ttyname_r(i32, i8*, i64)

declare i32 @isatty(i32)

declare i32 @ttyslot()

declare i32 @link(i8*, i8*)

declare i32 @linkat(i32, i8*, i32, i8*, i32)

declare i32 @symlink(i8*, i8*)

declare i64 @readlink(i8*, i8*, i64)

declare i32 @symlinkat(i8*, i32, i8*)

declare i64 @readlinkat(i32, i8*, i8*, i64)

declare i32 @unlink(i8*)

declare i32 @unlinkat(i32, i8*, i32)

declare i32 @rmdir(i8*)

declare i32 @tcgetpgrp(i32)

declare i32 @tcsetpgrp(i32, i32)

declare i8* @getlogin()

declare i32 @getlogin_r(i8*, i64)

declare i32 @setlogin(i8*)

declare i32 @getopt(i32, i8**, i8*)

declare i32 @gethostname(i8*, i64)

declare i32 @sethostname(i8*, i64)

declare i32 @sethostid(i64)

declare i32 @getdomainname(i8*, i64)

declare i32 @setdomainname(i8*, i64)

declare i32 @vhangup()

declare i32 @revoke(i8*)

declare i32 @profil(i16*, i64, i64, i32)

declare i32 @acct(i8*)

declare i8* @getusershell()

declare void @endusershell()

declare void @setusershell()

declare i32 @daemon(i32, i32)

declare i32 @chroot(i8*)

declare i8* @getpass(i8*)

declare i32 @fsync(i32)

declare i64 @gethostid()

declare void @sync()

declare i32 @getpagesize()

declare i32 @getdtablesize()

declare i32 @truncate(i8*, i64)

declare i32 @ftruncate(i32, i64)

declare i32 @brk(i8*)

declare i8* @sbrk(i64)

declare i64 @syscall(i64, ...)

declare i32 @lockf(i32, i32, i64)

declare i32 @fdatasync(i32)

declare i8* @crypt(i8*, i8*)

declare void @swab(i8*, i8*, i64)

declare i32 @getentropy(i8*, i64)

declare i32 @remove(i8*)

declare i32 @rename(i8*, i8*)

declare i32 @renameat(i32, i8*, i32, i8*)

declare %_IO_FILE* @tmpfile()

declare i8* @tmpnam(i8*)

declare i8* @tmpnam_r(i8*)

declare i8* @tempnam(i8*, i8*)

declare i32 @fclose(%_IO_FILE*)

declare i32 @fflush(%_IO_FILE*)

declare i32 @fflush_unlocked(%_IO_FILE*)

declare %_IO_FILE* @fopen(i8*, i8*)

declare %_IO_FILE* @freopen(i8*, i8*, %_IO_FILE*)

declare %_IO_FILE* @fdopen(i32, i8*)

declare %_IO_FILE* @fmemopen(i8*, i64, i8*)

declare %_IO_FILE* @open_memstream(i8**, i64*)

declare void @setbuf(%_IO_FILE*, i8*)

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i64)

declare void @setbuffer(%_IO_FILE*, i8*, i64)

declare void @setlinebuf(%_IO_FILE*)

declare i32 @fprintf(%_IO_FILE*, i8*, ...)

declare i32 @printf(i8*, ...)

declare i32 @sprintf(i8*, i8*, ...)

declare i32 @vfprintf(%_IO_FILE*, i8*, %__builtin_va_list.0)

declare i32 @vprintf(i8*, %__builtin_va_list.0)

declare i32 @vsprintf(i8*, i8*, %__builtin_va_list.0)

declare i32 @snprintf(i8*, i64, i8*, ...)

declare i32 @vsnprintf(i8*, i64, i8*, %__builtin_va_list.0)

declare i32 @vdprintf(i32, i8*, %__builtin_va_list.0)

declare i32 @dprintf(i32, i8*, ...)

declare i32 @fscanf(%_IO_FILE*, i8*, ...)

declare i32 @scanf(i8*, ...)

declare i32 @sscanf(i8*, i8*, ...)

declare i32 @vfscanf(%_IO_FILE*, i8*, %__builtin_va_list.0)

declare i32 @vscanf(i8*, %__builtin_va_list.0)

declare i32 @vsscanf(i8*, i8*, %__builtin_va_list.0)

declare i32 @fgetc(%_IO_FILE*)

declare i32 @getc(%_IO_FILE*)

declare i32 @getchar()

declare i32 @getc_unlocked(%_IO_FILE*)

declare i32 @getchar_unlocked()

declare i32 @fgetc_unlocked(%_IO_FILE*)

declare i32 @fputc(i32, %_IO_FILE*)

declare i32 @putc(i32, %_IO_FILE*)

declare i32 @putchar(i32)

declare i32 @fputc_unlocked(i32, %_IO_FILE*)

declare i32 @putc_unlocked(i32, %_IO_FILE*)

declare i32 @putchar_unlocked(i32)

declare i32 @getw(%_IO_FILE*)

declare i32 @putw(i32, %_IO_FILE*)

declare i8* @fgets(i8*, i32, %_IO_FILE*)

declare i64 @__getdelim(i8**, i64*, i32, %_IO_FILE*)

declare i64 @getdelim(i8**, i64*, i32, %_IO_FILE*)

declare i64 @getline(i8**, i64*, %_IO_FILE*)

declare i32 @fputs(i8*, %_IO_FILE*)

declare i32 @puts(i8*)

declare i32 @ungetc(i32, %_IO_FILE*)

declare i64 @fread(i8*, i64, i64, %_IO_FILE*)

declare i64 @fwrite(i8*, i64, i64, %_IO_FILE*)

declare i64 @fread_unlocked(i8*, i64, i64, %_IO_FILE*)

declare i64 @fwrite_unlocked(i8*, i64, i64, %_IO_FILE*)

declare i32 @fseek(%_IO_FILE*, i64, i32)

declare i64 @ftell(%_IO_FILE*)

declare void @rewind(%_IO_FILE*)

declare i32 @fseeko(%_IO_FILE*, i64, i32)

declare i64 @ftello(%_IO_FILE*)

declare i32 @fgetpos(%_IO_FILE*, %_G_fpos_t*)

declare i32 @fsetpos(%_IO_FILE*, %_G_fpos_t*)

declare void @clearerr(%_IO_FILE*)

declare i32 @feof(%_IO_FILE*)

declare i32 @ferror(%_IO_FILE*)

declare void @clearerr_unlocked(%_IO_FILE*)

declare i32 @feof_unlocked(%_IO_FILE*)

declare i32 @ferror_unlocked(%_IO_FILE*)

declare void @perror(i8*)

declare i32 @fileno(%_IO_FILE*)

declare i32 @fileno_unlocked(%_IO_FILE*)

declare %_IO_FILE* @popen(i8*, i8*)

declare i32 @pclose(%_IO_FILE*)

declare i8* @ctermid(i8*)

declare void @flockfile(%_IO_FILE*)

declare i32 @ftrylockfile(%_IO_FILE*)

declare void @funlockfile(%_IO_FILE*)

declare i32 @__uflow(%_IO_FILE*)

declare i32 @__overflow(%_IO_FILE*, i32)

declare i64 @__ctype_get_mb_cur_max()

declare double @atof(i8*)

declare i32 @atoi(i8*)

declare i64 @atol(i8*)

declare i64 @atoll(i8*)

declare double @strtod(i8*, i8**)

declare float @strtof(i8*, i8**)

declare fp128 @strtold(i8*, i8**)

declare i64 @strtol(i8*, i8**, i32)

declare i64 @strtoul(i8*, i8**, i32)

declare i64 @strtoq(i8*, i8**, i32)

declare i64 @strtouq(i8*, i8**, i32)

declare i64 @strtoll(i8*, i8**, i32)

declare i64 @strtoull(i8*, i8**, i32)

declare i8* @l64a(i64)

declare i64 @a64l(i8*)

declare i32 @select(i32, %anon7*, %anon7*, %anon7*, %timeval*)

declare i32 @pselect(i32, %anon7*, %anon7*, %anon7*, %timespec*, %anon6*)

declare i64 @random()

declare void @srandom(i32)

declare i8* @initstate(i32, i8*, i64)

declare i8* @setstate(i8*)

declare i32 @random_r(%random_data*, i32*)

declare i32 @srandom_r(i32, %random_data*)

declare i32 @initstate_r(i32, i8*, i64, %random_data*)

declare i32 @setstate_r(i8*, %random_data*)

declare i32 @rand()

declare void @srand(i32)

declare i32 @rand_r(i32*)

declare double @drand48()

declare double @erand48(i16*)

declare i64 @lrand48()

declare i64 @nrand48(i16*)

declare i64 @mrand48()

declare i64 @jrand48(i16*)

declare void @srand48(i64)

declare i16* @seed48(i16*)

declare void @lcong48(i16*)

declare i32 @drand48_r(%drand48_data*, double*)

declare i32 @erand48_r(i16*, %drand48_data*, double*)

declare i32 @lrand48_r(%drand48_data*, i64*)

declare i32 @nrand48_r(i16*, %drand48_data*, i64*)

declare i32 @mrand48_r(%drand48_data*, i64*)

declare i32 @jrand48_r(i16*, %drand48_data*, i64*)

declare i32 @srand48_r(i64, %drand48_data*)

declare i32 @seed48_r(i16*, %drand48_data*)

declare i32 @lcong48_r(i16*, %drand48_data*)

declare i8* @malloc(i64)

declare i8* @calloc(i64, i64)

declare i8* @realloc(i8*, i64)

declare void @free(i8*)

declare i8* @alloca(i64)

declare i8* @valloc(i64)

declare i32 @posix_memalign(i8**, i64, i64)

declare i8* @aligned_alloc(i64, i64)

declare void @abort()

declare i32 @atexit(void ()*)

declare i32 @at_quick_exit(void ()*)

declare i32 @on_exit(void (i32, i8*)*, i8*)

declare void @exit(i32)

declare void @quick_exit(i32)

declare void @_Exit(i32)

declare i8* @getenv(i8*)

declare i32 @putenv(i8*)

declare i32 @setenv(i8*, i8*, i32)

declare i32 @unsetenv(i8*)

declare i32 @clearenv()

declare i8* @mktemp(i8*)

declare i32 @mkstemp(i8*)

declare i32 @mkstemps(i8*, i32)

declare i8* @mkdtemp(i8*)

declare i32 @system(i8*)

declare i8* @realpath(i8*, i8*)

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*)

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

declare i32 @abs(i32)

declare i64 @labs(i64)

declare i64 @llabs(i64)

declare %anon3 @div(i32, i32)

declare %anon4 @ldiv(i64, i64)

declare %anon5 @lldiv(i64, i64)

declare i8* @ecvt(double, i32, i32*, i32*)

declare i8* @fcvt(double, i32, i32*, i32*)

declare i8* @gcvt(double, i32, i8*)

declare i8* @qecvt(fp128, i32, i32*, i32*)

declare i8* @qfcvt(fp128, i32, i32*, i32*)

declare i8* @qgcvt(fp128, i32, i8*)

declare i32 @ecvt_r(double, i32, i32*, i32*, i8*, i64)

declare i32 @fcvt_r(double, i32, i32*, i32*, i8*, i64)

declare i32 @qecvt_r(fp128, i32, i32*, i32*, i8*, i64)

declare i32 @qfcvt_r(fp128, i32, i32*, i32*, i8*, i64)

declare i32 @mblen(i8*, i64)

declare i32 @mbtowc(i32*, i8*, i64)

declare i32 @wctomb(i8*, i32)

declare i64 @mbstowcs(i32*, i8*, i64)

declare i64 @wcstombs(i8*, i32*, i64)

declare i32 @rpmatch(i8*)

declare i32 @getsubopt(i8**, i8**, i8**)

declare i32 @getloadavg(double*, i32)

declare i8* @memcpy(i8*, i8*, i64)

declare i8* @memmove(i8*, i8*, i64)

declare i8* @memccpy(i8*, i8*, i32, i64)

declare i8* @memset(i8*, i32, i64)

declare i32 @memcmp(i8*, i8*, i64)

declare i8* @memchr(i8*, i32, i64)

declare i8* @strcpy(i8*, i8*)

declare i8* @strncpy(i8*, i8*, i64)

declare i8* @strcat(i8*, i8*)

declare i8* @strncat(i8*, i8*, i64)

declare i32 @strcmp(i8*, i8*)

declare i32 @strncmp(i8*, i8*, i64)

declare i32 @strcoll(i8*, i8*)

declare i64 @strxfrm(i8*, i8*, i64)

declare i32 @strcoll_l(i8*, i8*, %__locale_struct*)

declare i64 @strxfrm_l(i8*, i8*, i64, %__locale_struct*)

declare i8* @strdup(i8*)

declare i8* @strndup(i8*, i64)

declare i8* @strchr(i8*, i32)

declare i8* @strrchr(i8*, i32)

declare i64 @strcspn(i8*, i8*)

declare i64 @strspn(i8*, i8*)

declare i8* @strpbrk(i8*, i8*)

declare i8* @strstr(i8*, i8*)

declare i8* @strtok(i8*, i8*)

declare i8* @__strtok_r(i8*, i8*, i8**)

declare i8* @strtok_r(i8*, i8*, i8**)

declare i64 @strlen(i8*)

declare i64 @strnlen(i8*, i64)

declare i8* @strerror(i32)

declare i32 @strerror_r(i32, i8*, i64)

declare i8* @strerror_l(i32, %__locale_struct*)

declare i32 @bcmp(i8*, i8*, i64)

declare void @bcopy(i8*, i8*, i64)

declare void @bzero(i8*, i64)

declare i8* @index(i8*, i32)

declare i8* @rindex(i8*, i32)

declare i32 @ffs(i32)

declare i32 @ffsl(i64)

declare i32 @ffsll(i64)

declare i32 @strcasecmp(i8*, i8*)

declare i32 @strncasecmp(i8*, i8*, i64)

declare i32 @strcasecmp_l(i8*, i8*, %__locale_struct*)

declare i32 @strncasecmp_l(i8*, i8*, i64, %__locale_struct*)

declare void @explicit_bzero(i8*, i64)

declare i8* @strsep(i8**, i8*)

declare i8* @strsignal(i32)

declare i8* @__stpcpy(i8*, i8*)

declare i8* @stpcpy(i8*, i8*)

declare i8* @__stpncpy(i8*, i8*, i64)

declare i8* @stpncpy(i8*, i8*, i64)

declare %real_pcre* @pcre_compile(i8*, i32, i8**, i32*, i8*)

declare %real_pcre16* @pcre16_compile(i16*, i32, i8**, i32*, i8*)

declare %real_pcre32* @pcre32_compile(i32*, i32, i8**, i32*, i8*)

declare %real_pcre* @pcre_compile2(i8*, i32, i32*, i8**, i32*, i8*)

declare %real_pcre16* @pcre16_compile2(i16*, i32, i32*, i8**, i32*, i8*)

declare %real_pcre32* @pcre32_compile2(i32*, i32, i32*, i8**, i32*, i8*)

declare i32 @pcre_config(i32, i8*)

declare i32 @pcre16_config(i32, i8*)

declare i32 @pcre32_config(i32, i8*)

declare i32 @pcre_copy_named_substring(%real_pcre*, i8*, i32*, i32, i8*, i8*, i32)

declare i32 @pcre16_copy_named_substring(%real_pcre16*, i16*, i32*, i32, i16*, i16*, i32)

declare i32 @pcre32_copy_named_substring(%real_pcre32*, i32*, i32*, i32, i32*, i32*, i32)

declare i32 @pcre_copy_substring(i8*, i32*, i32, i32, i8*, i32)

declare i32 @pcre16_copy_substring(i16*, i32*, i32, i32, i16*, i32)

declare i32 @pcre32_copy_substring(i32*, i32*, i32, i32, i32*, i32)

declare i32 @pcre_dfa_exec(%real_pcre*, %pcre_extra*, i8*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre16_dfa_exec(%real_pcre16*, %pcre16_extra*, i16*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre32_dfa_exec(%real_pcre32*, %pcre32_extra*, i32*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre_exec(%real_pcre*, %pcre_extra*, i8*, i32, i32, i32, i32*, i32)

declare i32 @pcre16_exec(%real_pcre16*, %pcre16_extra*, i16*, i32, i32, i32, i32*, i32)

declare i32 @pcre32_exec(%real_pcre32*, %pcre32_extra*, i32*, i32, i32, i32, i32*, i32)

declare i32 @pcre_jit_exec(%real_pcre*, %pcre_extra*, i8*, i32, i32, i32, i32*, i32, %real_pcre_jit_stack*)

declare i32 @pcre16_jit_exec(%real_pcre16*, %pcre16_extra*, i16*, i32, i32, i32, i32*, i32, %real_pcre16_jit_stack*)

declare i32 @pcre32_jit_exec(%real_pcre32*, %pcre32_extra*, i32*, i32, i32, i32, i32*, i32, %real_pcre32_jit_stack*)

declare void @pcre_free_substring(i8*)

declare void @pcre16_free_substring(i16*)

declare void @pcre32_free_substring(i32*)

declare void @pcre_free_substring_list(i8**)

declare void @pcre16_free_substring_list(i16**)

declare void @pcre32_free_substring_list(i32**)

declare i32 @pcre_fullinfo(%real_pcre*, %pcre_extra*, i32, i8*)

declare i32 @pcre16_fullinfo(%real_pcre16*, %pcre16_extra*, i32, i8*)

declare i32 @pcre32_fullinfo(%real_pcre32*, %pcre32_extra*, i32, i8*)

declare i32 @pcre_get_named_substring(%real_pcre*, i8*, i32*, i32, i8*, i8**)

declare i32 @pcre16_get_named_substring(%real_pcre16*, i16*, i32*, i32, i16*, i16**)

declare i32 @pcre32_get_named_substring(%real_pcre32*, i32*, i32*, i32, i32*, i32**)

declare i32 @pcre_get_stringnumber(%real_pcre*, i8*)

declare i32 @pcre16_get_stringnumber(%real_pcre16*, i16*)

declare i32 @pcre32_get_stringnumber(%real_pcre32*, i32*)

declare i32 @pcre_get_stringtable_entries(%real_pcre*, i8*, i8**, i8**)

declare i32 @pcre16_get_stringtable_entries(%real_pcre16*, i16*, i16**, i16**)

declare i32 @pcre32_get_stringtable_entries(%real_pcre32*, i32*, i32**, i32**)

declare i32 @pcre_get_substring(i8*, i32*, i32, i32, i8**)

declare i32 @pcre16_get_substring(i16*, i32*, i32, i32, i16**)

declare i32 @pcre32_get_substring(i32*, i32*, i32, i32, i32**)

declare i32 @pcre_get_substring_list(i8*, i32*, i32, i8***)

declare i32 @pcre16_get_substring_list(i16*, i32*, i32, i16***)

declare i32 @pcre32_get_substring_list(i32*, i32*, i32, i32***)

declare i8* @pcre_maketables()

declare i8* @pcre16_maketables()

declare i8* @pcre32_maketables()

declare i32 @pcre_refcount(%real_pcre*, i32)

declare i32 @pcre16_refcount(%real_pcre16*, i32)

declare i32 @pcre32_refcount(%real_pcre32*, i32)

declare %pcre_extra* @pcre_study(%real_pcre*, i32, i8**)

declare %pcre16_extra* @pcre16_study(%real_pcre16*, i32, i8**)

declare %pcre32_extra* @pcre32_study(%real_pcre32*, i32, i8**)

declare void @pcre_free_study(%pcre_extra*)

declare void @pcre16_free_study(%pcre16_extra*)

declare void @pcre32_free_study(%pcre32_extra*)

declare i8* @pcre_version()

declare i8* @pcre16_version()

declare i8* @pcre32_version()

declare i32 @pcre_pattern_to_host_byte_order(%real_pcre*, %pcre_extra*, i8*)

declare i32 @pcre16_pattern_to_host_byte_order(%real_pcre16*, %pcre16_extra*, i8*)

declare i32 @pcre32_pattern_to_host_byte_order(%real_pcre32*, %pcre32_extra*, i8*)

declare i32 @pcre16_utf16_to_host_byte_order(i16*, i16*, i32, i32*, i32)

declare i32 @pcre32_utf32_to_host_byte_order(i32*, i32*, i32, i32*, i32)

declare %real_pcre_jit_stack* @pcre_jit_stack_alloc(i32, i32)

declare %real_pcre16_jit_stack* @pcre16_jit_stack_alloc(i32, i32)

declare %real_pcre32_jit_stack* @pcre32_jit_stack_alloc(i32, i32)

declare void @pcre_jit_stack_free(%real_pcre_jit_stack*)

declare void @pcre16_jit_stack_free(%real_pcre16_jit_stack*)

declare void @pcre32_jit_stack_free(%real_pcre32_jit_stack*)

declare void @pcre_assign_jit_stack(%pcre_extra*, %real_pcre_jit_stack* (i8*)*, i8*)

declare void @pcre16_assign_jit_stack(%pcre16_extra*, %real_pcre16_jit_stack* (i8*)*, i8*)

declare void @pcre32_assign_jit_stack(%pcre32_extra*, %real_pcre32_jit_stack* (i8*)*, i8*)

declare void @pcre_jit_free_unused_memory()

declare void @pcre16_jit_free_unused_memory()

declare void @pcre32_jit_free_unused_memory()

declare i8* @xcalloc(i64, i64)

declare i8* @xmalloc(i64)

declare i8* @xmemdup(i8*)

declare i8* @xrealloc(i8*, i64)

declare void @xfree(i8*)

declare i8* @xstrncpy(i8*, i8*, i32)

declare i8* @xstrncat(i8*, i8*, i32)

declare i8* @xmemcpy(i8*, i8*, i64)

declare i8* @xasprintf(i8*, ...)

declare i8* @xsprintf(i8*, ...)

declare i8* @xbasename(i8*)

declare i8* @xrealpath(i8*)

declare i8* @string(i8*)

declare i8* @string_from_wchar_t(i32*, i8*)

declare i32* @wstring(i8*)

declare i32* @wstring_from_wchar_t(i32*)

declare i8* @debug_xcalloc(i64, i64, i8*, i8*, i32, i8*, i8*)

declare void @debug_show_none_freed_heap_memory()

declare void @p(i8*)

declare i8* @"op_add_char*_char*"(i8*, i8*)

declare i8* @"op_mult_char*_int"(i8*, i32)

declare i32* @"op_add_wchar_t*_wchar_t*"(i32*, i32*)

declare i32* @"op_mult_wchar_t*_int"(i32*, i32)

declare %buffer* @buffer_initialize(%buffer*)

declare void @buffer_finalize(%buffer*)

declare void @buffer_append(%buffer*, i8*, i64)

declare void @buffer_append_char(%buffer*, i8)

declare void @buffer_append_str(%buffer*, i8*)

declare void @buffer_append_nullterminated_str(%buffer*, i8*)

declare i8* @buffer_to_string(%buffer*)

declare i32 @buffer_length(%buffer*)

declare %regex_struct* @regex(i8*, i1, i1, i1, i1, i1, i1, i1, i1)

declare i8* @op_add_string_string(i8*, i8*)

declare i8* @op_mult_string_int(i8*, i32)

declare i1 @string_equals(i8*, i8*)

declare i32 @string_length(i8*)

declare i32 @string_get_hash_key(i8*)

declare i8* @string_substring(i8*, i32, i32)

declare i32 @string_index(i8*, i8*, i32)

declare i32 @string_rindex(i8*, i8*, i32)

declare i32 @string_index_regex(i8*, %regex_struct*, i32)

declare i32 @string_rindex_regex(i8*, %regex_struct*, i32)

declare i8* @string_delete(i8*, i32)

declare i8* @string_delete_range(i8*, i32, i32)

declare i8* @string_printable(i8*)

declare i8* @string_sub(i8*, %regex_struct*, i8*, %list__charp*)

declare i1 @string_match(i8*, %regex_struct*, %list__charp*)

declare %list__charp* @string_scan(i8*, %regex_struct*)

declare i32* @string_to_wstring(i8*)

declare i8* @string_reverse(i8*)

declare %list__charp* @string_split_char(i8*, i8)

declare %list__charp* @string_split(i8*, %regex_struct*)

declare void @string_replace(i8*, i32, i8)

declare i8 @string_item(i8*, i32, i8)

declare %regex_struct* @string_to_regex(i8*)

declare i32* @op_add_wstring_wstring(i32*, i32*)

declare i32* @op_mult_wstring_int(i32*, i32)

declare i1 @wstring_equals(i32*, i32*)

declare i32 @wstring_length(i32*)

declare i32 @wstring_get_hash_key(i32*)

declare i32* @wstring_reverse(i32*)

declare i32* @wstring_substring(i32*, i32, i32)

declare i32 @wstring_index(i32*, i32*, i32)

declare i32 @wstring_rindex(i32*, i32*, i32)

declare i32* @wstring_delete(i32*, i32)

declare i32* @wstring_delete_range(i32*, i32, i32)

declare i8* @wstring_to_string(i32*, i8*)

declare i32* @wstring_printable(i32*)

declare void @wstring_replace(i32*, i32, i32)

declare i32 @wstring_item(i32*, i32, i32)

declare void @xassert(i8*, i1)

declare i32 @stat(i8*, %stat*)

declare i32 @fstat(i32, %stat*)

declare i32 @fstatat(i32, i8*, %stat*, i32)

declare i32 @lstat(i8*, %stat*)

declare i32 @chmod(i8*, i32)

declare i32 @lchmod(i8*, i32)

declare i32 @fchmod(i32, i32)

declare i32 @fchmodat(i32, i8*, i32, i32)

declare i32 @umask(i32)

declare i32 @mkdir(i8*, i32)

declare i32 @mkdirat(i32, i8*, i32)

declare i32 @mknod(i8*, i32, i64)

declare i32 @mknodat(i32, i8*, i32, i64)

declare i32 @mkfifo(i8*, i32)

declare i32 @mkfifoat(i32, i8*, i32)

declare i32 @utimensat(i32, i8*, %timespec*, i32)

declare i32 @futimens(i32, %timespec*)

declare i32 @__fxstat(i32, i32, %stat*)

declare i32 @__xstat(i32, i8*, %stat*)

declare i32 @__lxstat(i32, i8*, %stat*)

declare i32 @__fxstatat(i32, i32, i8*, %stat*, i32)

declare i32 @__xmknod(i32, i8*, i32, i64*)

declare i32 @__xmknodat(i32, i32, i8*, i32, i64*)

declare i32 @fcntl(i32, i32, ...)

declare i32 @open(i8*, i32, ...)

declare i32 @openat(i32, i8*, i32, ...)

declare i32 @creat(i8*, i32)

declare i32 @posix_fadvise(i32, i64, i64, i32)

declare i32 @posix_fallocate(i32, i64, i64)

declare i16** @__ctype_b_loc()

declare i32** @__ctype_tolower_loc()

declare i32** @__ctype_toupper_loc()

declare i32 @isalnum(i32)

declare i32 @isalpha(i32)

declare i32 @iscntrl(i32)

declare i32 @isdigit(i32)

declare i32 @islower(i32)

declare i32 @isgraph(i32)

declare i32 @isprint(i32)

declare i32 @ispunct(i32)

declare i32 @isspace(i32)

declare i32 @isupper(i32)

declare i32 @isxdigit(i32)

declare i32 @tolower(i32)

declare i32 @toupper(i32)

declare i32 @isblank(i32)

declare i32 @isascii(i32)

declare i32 @toascii(i32)

declare i32 @_toupper(i32)

declare i32 @_tolower(i32)

declare i32 @isalnum_l(i32, %__locale_struct*)

declare i32 @isalpha_l(i32, %__locale_struct*)

declare i32 @iscntrl_l(i32, %__locale_struct*)

declare i32 @isdigit_l(i32, %__locale_struct*)

declare i32 @islower_l(i32, %__locale_struct*)

declare i32 @isgraph_l(i32, %__locale_struct*)

declare i32 @isprint_l(i32, %__locale_struct*)

declare i32 @ispunct_l(i32, %__locale_struct*)

declare i32 @isspace_l(i32, %__locale_struct*)

declare i32 @isupper_l(i32, %__locale_struct*)

declare i32 @isxdigit_l(i32, %__locale_struct*)

declare i32 @isblank_l(i32, %__locale_struct*)

declare i32 @__tolower_l(i32, %__locale_struct*)

declare i32 @tolower_l(i32, %__locale_struct*)

declare i32 @__toupper_l(i32, %__locale_struct*)

declare i32 @toupper_l(i32, %__locale_struct*)

declare i8* @setlocale(i32, i8*)

declare %lconv* @localeconv()

declare %__locale_struct* @newlocale(i32, i8*, %__locale_struct*)

declare %__locale_struct* @duplocale(%__locale_struct*)

declare void @freelocale(%__locale_struct*)

declare %__locale_struct* @uselocale(%__locale_struct*)

declare i8* @dlopen(i8*, i32)

declare i32 @dlclose(i8*)

declare i8* @dlsym(i8*, i8*)

declare i8* @dlerror()

declare i32 @cfgetospeed(%termios*)

declare i32 @cfgetispeed(%termios*)

declare i32 @cfsetospeed(%termios*, i32)

declare i32 @cfsetispeed(%termios*, i32)

declare i32 @cfsetspeed(%termios*, i32)

declare i32 @tcgetattr(i32, %termios*)

declare i32 @tcsetattr(i32, i32, %termios*)

declare void @cfmakeraw(%termios*)

declare i32 @tcsendbreak(i32, i32)

declare i32 @tcdrain(i32)

declare i32 @tcflush(i32, i32)

declare i32 @tcflow(i32, i32)

declare i32 @tcgetsid(i32)

declare void @class_init()

declare void @class_final()

declare void @append_class(i8*)

declare i1 @eval_class(i8*, %sCompileInfo*, i8*, i32)

declare i1 @invoke_native_method(%sCLClass*, %sCLMethod*, %CLVALUE**, %sVMInfo*)

declare %sVarTable* @sVarTable_initialize(%sVarTable*)

define void @parser_err_msg(%sParserInfo* %info, i8* %msg) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %msg2 = alloca i8*
  store i8* %msg, i8** %msg2, align 8
  %3 = bitcast i8** %msg2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %4 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 0
  %5 = bitcast [4096 x i8]* %4 to i8*
  %info4 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %6 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %msg5 = load i8*, i8** %msg2, align 8
  %8 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string, i32 0, i32 0), i8* %5, i32 %7, i8* %msg5)
  %info6 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %10, 1
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 2
  store i32 %addtmp, i32* %11, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %info8 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %addtmp10 = add nsw i32 %13, 1
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 3
  store i32 %addtmp10, i32* %14, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret void
}

define void @skip_spaces_and_lf(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  call void @parse_comment(%sParserInfo* %info2)
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %oror_result_var = alloca i1
  %3 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %4 = bitcast i8* %3 to %sParserInfo**
  %info3 = load %sParserInfo*, %sParserInfo** %4, align 8
  %5 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %derefference_value = load i8, i8* %6, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 32
  store i1 %eqtmpX, i1* %oror_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_end, label %cond_jump_then

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %info20 = load %sParserInfo*, %sParserInfo** %info1, align 8
  call void @parse_comment(%sParserInfo* %info20)
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %10 = bitcast i8* %9 to %sParserInfo**
  %info4 = load %sParserInfo*, %sParserInfo** %10, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %derefference_value5 = load i8, i8* %12, align 8
  %eqtmpX6 = icmp eq i8 %derefference_value5, 9
  %oror = or i1 %eqtmpX, %eqtmpX6
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %cond_then_block
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_then7, label %"cond_jump_elif0\0A"

cond_jump_then7:                                  ; preds = %cond_jump_end
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %14 = bitcast i8* %13 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %14, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %16 = bitcast i8* %15 to %sParserInfo**
  %info9 = load %sParserInfo*, %sParserInfo** %16, align 8
  %17 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %addtmp = add nsw i64 %19, 1
  %20 = inttoptr i64 %addtmp to i8*
  %21 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = ptrtoint i8* %20 to i64
  %subtmp = sub nsw i64 %22, 1
  %23 = inttoptr i64 %subtmp to i8*
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %25 = bitcast i8* %24 to %sParserInfo**
  %info10 = load %sParserInfo*, %sParserInfo** %25, align 8
  %26 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %derefference_value11 = load i8, i8* %27, align 8
  %eqtmpX12 = icmp eq i8 %derefference_value11, 10
  br i1 %eqtmpX12, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %29 = bitcast i8* %28 to %sParserInfo**
  %info13 = load %sParserInfo*, %sParserInfo** %29, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info14 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = getelementptr inbounds %sParserInfo, %sParserInfo* %info14, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i64
  %addtmp15 = add nsw i64 %34, 1
  %35 = inttoptr i64 %addtmp15 to i8*
  %36 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = ptrtoint i8* %35 to i64
  %subtmp16 = sub nsw i64 %37, 1
  %38 = inttoptr i64 %subtmp16 to i8*
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %40 = bitcast i8* %39 to %sParserInfo**
  %info17 = load %sParserInfo*, %sParserInfo** %40, align 8
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info18 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info18, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %addtmp19 = add nsw i32 %44, 1
  %45 = getelementptr inbounds %sParserInfo, %sParserInfo* %info17, i32 0, i32 1
  store i32 %addtmp19, i32* %45, align 4
  %subttmp = sub nsw i32 %addtmp19, 1
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %"cond_jump_elif_then0\0A", %cond_jump_then7
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define i1 @parse_params(%sCLParam* %params, i32* %num_params, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %params1 = alloca %sCLParam*
  store %sCLParam* %params, %sCLParam** %params1, align 8
  %2 = bitcast %sCLParam** %params1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %num_params2 = alloca i32*
  store i32* %num_params, i32** %num_params2, align 8
  %3 = bitcast i32** %num_params2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  call void @expected_next_character(i8 40, %sParserInfo* %info4)
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end48, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %6 = bitcast i8* %5 to %sParserInfo**
  %info5 = load %sParserInfo*, %sParserInfo** %6, align 8
  %7 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %derefference_value = load i8, i8* %8, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 41
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_end39, %cond_jump_then, %loop_top_block
  %info49 = load %sParserInfo*, %sParserInfo** %info3, align 8
  call void @expected_next_character(i8 41, %sParserInfo* %info49)
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret i1 true

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %12 = bitcast i8* %11 to %sParserInfo**
  %info6 = load %sParserInfo*, %sParserInfo** %12, align 8
  %13 = call i8* @parse_word(%sParserInfo* %info6)
  %var_name = alloca i8*
  %14 = bitcast i8** %var_name to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %13, i8** %var_name, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %16 = bitcast i8* %15 to %sParserInfo**
  %info7 = load %sParserInfo*, %sParserInfo** %16, align 8
  call void @expected_next_character(i8 58, %sParserInfo* %info7)
  %type = alloca %sCLType*
  %17 = bitcast %sCLType** %type to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* null, %sCLType** %type, align 8
  %type8 = load %sCLType*, %sCLType** %type, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info9 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = call i1 @parse_type(%sCLType** %type, %sParserInfo* %info9)
  %LOGICAL_DIANEAL = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then10, label %cond_end11

after_break:                                      ; No predecessors!
  br label %cond_end

cond_jump_then10:                                 ; preds = %cond_end
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  %23 = load i8*, i8** %var_name, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %cond_then_block12, label %cond_end13

cond_end11:                                       ; preds = %cond_end
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %27 = bitcast i8* %26 to %sCLParam**
  %params14 = load %sCLParam*, %sCLParam** %27, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %29 = bitcast i8* %28 to i32**
  %num_params15 = load i32*, i32** %29, align 8
  %derefference_value16 = load i32, i32* %num_params15, align 8
  %element_address = getelementptr %sCLParam, %sCLParam* %params14, i32 %derefference_value16
  %element = load %sCLParam, %sCLParam* %element_address, align 8
  %30 = getelementptr inbounds %sCLParam, %sCLParam* %element_address, i32 0, i32 0
  %31 = bitcast [128 x i8]* %30 to i8*
  %var_name17 = load i8*, i8** %var_name, align 8
  %32 = call i8* @xstrncpy(i8* %31, i8* %var_name17, i32 128)
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %34 = bitcast i8* %33 to %sCLParam**
  %params18 = load %sCLParam*, %sCLParam** %34, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %36 = bitcast i8* %35 to i32**
  %num_params19 = load i32*, i32** %36, align 8
  %derefference_value20 = load i32, i32* %num_params19, align 8
  %element_address21 = getelementptr %sCLParam, %sCLParam* %params18, i32 %derefference_value20
  %element22 = load %sCLParam, %sCLParam* %element_address21, align 8
  %type23 = load %sCLType*, %sCLType** %type, align 8
  %37 = getelementptr inbounds %sCLParam, %sCLParam* %element_address21, i32 0, i32 1
  store %sCLType* %type23, %sCLType** %37, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to i32**
  %num_params24 = load i32*, i32** %39, align 8
  %derefference_value25 = load i32, i32* %num_params24, align 8
  %40 = load i32, i32* %num_params24, align 4
  %addtmp = add nsw i32 %40, 1
  store i32 %addtmp, i32* %num_params24, align 8
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info26 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info26, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %derefference_value27 = load i8, i8* %44, align 8
  %eqtmpX28 = icmp eq i8 %derefference_value27, 44
  br i1 %eqtmpX28, label %cond_jump_then29, label %"cond_jump_elif0\0A"

cond_then_block12:                                ; preds = %cond_jump_then10
  br label %cond_end13

cond_end13:                                       ; preds = %cond_then_block12, %cond_jump_then10
  call void @xfree(i8* %23)
  ret i1 false

cond_jump_then29:                                 ; preds = %cond_end11
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %46 = bitcast i8* %45 to %sParserInfo**
  %info31 = load %sParserInfo*, %sParserInfo** %46, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %48 = bitcast i8* %47 to %sParserInfo**
  %info32 = load %sParserInfo*, %sParserInfo** %48, align 8
  %49 = getelementptr inbounds %sParserInfo, %sParserInfo* %info32, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %addtmp33 = add nsw i64 %51, 1
  %52 = inttoptr i64 %addtmp33 to i8*
  %53 = getelementptr inbounds %sParserInfo, %sParserInfo* %info31, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = ptrtoint i8* %52 to i64
  %subtmp = sub nsw i64 %54, 1
  %55 = inttoptr i64 %subtmp to i8*
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %57 = bitcast i8* %56 to %sParserInfo**
  %info34 = load %sParserInfo*, %sParserInfo** %57, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info34)
  br label %cond_end30

"cond_jump_elif0\0A":                             ; preds = %cond_end11
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %59 = bitcast i8* %58 to %sParserInfo**
  %info35 = load %sParserInfo*, %sParserInfo** %59, align 8
  %60 = getelementptr inbounds %sParserInfo, %sParserInfo* %info35, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %derefference_value36 = load i8, i8* %61, align 8
  %eqtmpX37 = icmp eq i8 %derefference_value36, 41
  br i1 %eqtmpX37, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %62 = load i8*, i8** %var_name, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %cond_then_block38, label %cond_end39

"cond_jump_elif1\0A":                             ; preds = %"cond_jump_elif0\0A"
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %66 = bitcast i8* %65 to %sParserInfo**
  %info41 = load %sParserInfo*, %sParserInfo** %66, align 8
  %67 = getelementptr inbounds %sParserInfo, %sParserInfo* %info41, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %derefference_value42 = load i8, i8* %68, align 8
  %eqtmpX43 = icmp eq i8 %derefference_value42, 0
  br i1 %eqtmpX43, label %"cond_jump_elif_then1\0A", label %cond_end30

"cond_jump_elif_then1\0A":                        ; preds = %"cond_jump_elif1\0A"
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %70 = bitcast i8* %69 to %sParserInfo**
  %info44 = load %sParserInfo*, %sParserInfo** %70, align 8
  call void @parser_err_msg(%sParserInfo* %info44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @global_string.19, i32 0, i32 0))
  %71 = bitcast [8192 x i8*]* %lvtable to i8*
  %72 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %71, i64 65536)
  %73 = load i8*, i8** %var_name, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %cond_then_block45, label %cond_end46

cond_end30:                                       ; preds = %"cond_jump_elif1\0A", %after_break40, %cond_jump_then29
  %76 = load i8*, i8** %var_name, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %cond_then_block47, label %cond_end48

cond_then_block38:                                ; preds = %"cond_jump_elif_then0\0A"
  br label %cond_end39

cond_end39:                                       ; preds = %cond_then_block38, %"cond_jump_elif_then0\0A"
  call void @xfree(i8* %62)
  br label %cond_end_block

after_break40:                                    ; No predecessors!
  br label %cond_end30

cond_then_block45:                                ; preds = %"cond_jump_elif_then1\0A"
  br label %cond_end46

cond_end46:                                       ; preds = %cond_then_block45, %"cond_jump_elif_then1\0A"
  call void @xfree(i8* %73)
  ret i1 false

cond_then_block47:                                ; preds = %cond_end30
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end30
  call void @xfree(i8* %76)
  br label %loop_top_block
}

define i8* @parse_word(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  call void @parse_comment(%sParserInfo* %info2)
  %3 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.4, i32 0, i32 0), i32 120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.6, i32 0, i32 0))
  %4 = bitcast i8* %3 to %buffer*
  %5 = call %buffer* @buffer_initialize(%buffer* %4)
  %result = alloca %buffer*
  %6 = bitcast %buffer** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %buffer* %5, %buffer** %result, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %oror_result_var = alloca i1
  %7 = call i16** @__ctype_b_loc()
  %derefference_value = load i16*, i16** %7, align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  %derefference_value4 = load i8, i8* %9, align 8
  %sext13 = zext i8 %derefference_value4 to i32
  %element_address = getelementptr i16, i16* %derefference_value, i32 %sext13
  %element = load i16, i16* %element_address, align 2
  %andtmp = and i16 %element, 8
  %10 = icmp ne i16 %andtmp, 0
  store i1 %10, i1* %oror_result_var, align 1
  br i1 %10, label %cond_jump_end, label %cond_jump_then

cond_jump_then:                                   ; preds = %loop_top_block
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %derefference_value6 = load i8, i8* %12, align 8
  %eqtmpX = icmp eq i8 %derefference_value6, 95
  %oror = or i1 %10, %eqtmpX
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %loop_top_block
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %cond_jump_end
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %14 = bitcast i8* %13 to %buffer**
  %result7 = load %buffer*, %buffer** %14, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %16 = bitcast i8* %15 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %16, align 8
  %17 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %derefference_value9 = load i8, i8* %18, align 8
  call void @buffer_append_char(%buffer* %result7, i8 %derefference_value9)
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %20 = bitcast i8* %19 to %sParserInfo**
  %info10 = load %sParserInfo*, %sParserInfo** %20, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %22 = bitcast i8* %21 to %sParserInfo**
  %info11 = load %sParserInfo*, %sParserInfo** %22, align 8
  %23 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %addtmp = add nsw i64 %25, 1
  %26 = inttoptr i64 %addtmp to i8*
  %27 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = ptrtoint i8* %26 to i64
  %subtmp = sub nsw i64 %28, 1
  %29 = inttoptr i64 %subtmp to i8*
  br label %loop_top_block

cond_end_block:                                   ; preds = %cond_jump_end
  %info12 = load %sParserInfo*, %sParserInfo** %info1, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info12)
  %result13 = load %buffer*, %buffer** %result, align 8
  %30 = call i8* @buffer_to_string(%buffer* %result13)
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  %33 = load %buffer*, %buffer** %result, align 8
  call void @buffer_finalize(%buffer* %33)
  %34 = ptrtoint %buffer* %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %cond_then_block14, label %cond_end

cond_then_block14:                                ; preds = %cond_end_block
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block14, %cond_end_block
  %36 = bitcast %buffer* %33 to i8*
  call void @xfree(i8* %36)
  ret i8* %30
}

define i1 @parse_type(%sCLType** %type, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %type1 = alloca %sCLType**
  store %sCLType** %type, %sCLType*** %type1, align 8
  %2 = bitcast %sCLType*** %type1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i8* @parse_word(%sParserInfo* %info3)
  %name = alloca i8*
  %5 = bitcast i8** %name to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %4, i8** %name, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %6 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 5
  %7 = load %vector__charp*, %vector__charp** %6, align 8
  %noteqtmp = icmp ne %vector__charp* %7, null
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %i = alloca i32
  %8 = bitcast i32* %i to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %entry
  %type21 = load %sCLType**, %sCLType*** %type1, align 8
  %name22 = load i8*, i8** %name, align 8
  %info23 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = call %sCLType* @create_type(i8* %name22, %sParserInfo* %info23)
  store %sCLType* %9, %sCLType** %type21, align 8
  %name24 = load i8*, i8** %name, align 8
  %10 = call i32 @strcmp(i8* %name24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.17, i32 0, i32 0))
  %eqtmpX25 = icmp eq i32 %10, 0
  br i1 %eqtmpX25, label %cond_jump_then26, label %cond_end27

loop_top_block:                                   ; preds = %cond_end11, %cond_jump_then
  %i5 = load i32, i32* %i, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %12 = bitcast i8* %11 to %sParserInfo**
  %info6 = load %sParserInfo*, %sParserInfo** %12, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 5
  %14 = load %vector__charp*, %vector__charp** %13, align 8
  %15 = call i32 @"vector_length_charp0_src/parser"(%vector__charp* %14)
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %17 = bitcast i8* %16 to i8**
  %name7 = load i8*, i8** %17, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 5
  %21 = load %vector__charp*, %vector__charp** %20, align 8
  %i9 = load i32, i32* %i, align 4
  %22 = call i8* @"vector_item_charp1_src/parser"(%vector__charp* %21, i32 %i9, i8* null)
  %23 = call i32 @strcmp(i8* %name7, i8* %22)
  %eqtmpX = icmp eq i32 %23, 0
  br i1 %eqtmpX, label %cond_jump_then10, label %cond_end11

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end

cond_jump_then10:                                 ; preds = %cond_then_block
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %25 = bitcast i8* %24 to i32*
  %i12 = load i32, i32* %25, align 4
  %26 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.16, i32 0, i32 0), i32 %i12)
  %generics_type_name = alloca i8*
  %27 = bitcast i8** %generics_type_name to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i8* %26, i8** %generics_type_name, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %29 = bitcast i8* %28 to %sCLType***
  %type13 = load %sCLType**, %sCLType*** %29, align 8
  %generics_type_name14 = load i8*, i8** %generics_type_name, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info15 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = call %sCLType* @create_type(i8* %generics_type_name14, %sParserInfo* %info15)
  store %sCLType* %32, %sCLType** %type13, align 8
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  %35 = load i8*, i8** %generics_type_name, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %cond_then_block16, label %cond_end17

cond_end11:                                       ; preds = %cond_then_block
  %i20 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i20, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block16:                                ; preds = %cond_jump_then10
  br label %cond_end17

cond_end17:                                       ; preds = %cond_then_block16, %cond_jump_then10
  call void @xfree(i8* %35)
  %38 = load i8*, i8** %name, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %cond_then_block18, label %cond_end19

cond_then_block18:                                ; preds = %cond_end17
  br label %cond_end19

cond_end19:                                       ; preds = %cond_then_block18, %cond_end17
  call void @xfree(i8* %38)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_end
  %params = alloca [32 x %sCLParam]
  %41 = bitcast [32 x %sCLParam]* %params to i8*
  store i8* %41, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %num_params = alloca i32
  %42 = bitcast i32* %num_params to i8*
  store i8* %42, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 0, i32* %num_params, align 4
  %num_params28 = load i32, i32* %num_params, align 4
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %44 = bitcast i8* %43 to %sParserInfo**
  %info29 = load %sParserInfo*, %sParserInfo** %44, align 8
  %45 = bitcast [32 x %sCLParam]* %params to %sCLParam*
  %46 = call i1 @parse_params(%sCLParam* %45, i32* %num_params, %sParserInfo* %info29)
  %LOGICAL_DIANEAL = icmp eq i1 %46, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then30, label %cond_end31

cond_end27:                                       ; preds = %cond_end
  %type73 = load %sCLType**, %sCLType*** %type1, align 8
  %derefference_value74 = load %sCLType*, %sCLType** %type73, align 8
  %47 = getelementptr inbounds %sCLType, %sCLType* %derefference_value74, i32 0, i32 2
  store i32 0, i32* %47, align 4
  %info75 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %48 = getelementptr inbounds %sParserInfo, %sParserInfo* %info75, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %derefference_value76 = load i8, i8* %49, align 8
  %eqtmpX77 = icmp eq i8 %derefference_value76, 60
  br i1 %eqtmpX77, label %cond_jump_then78, label %cond_end79

cond_jump_then30:                                 ; preds = %cond_jump_then26
  %50 = bitcast [8192 x i8*]* %lvtable to i8*
  %51 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %50, i64 65536)
  %52 = load i8*, i8** %name, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %cond_then_block32, label %cond_end33

cond_end31:                                       ; preds = %cond_jump_then26
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %56 = bitcast i8* %55 to %sCLType***
  %type34 = load %sCLType**, %sCLType*** %56, align 8
  %derefference_value = load %sCLType*, %sCLType** %type34, align 8
  %num_params35 = load i32, i32* %num_params, align 4
  %57 = getelementptr inbounds %sCLType, %sCLType* %derefference_value, i32 0, i32 6
  store i32 %num_params35, i32* %57, align 4
  %i36 = alloca i32
  %58 = bitcast i32* %i36 to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 0, i32* %i36, align 4
  br label %loop_top_block37

cond_then_block32:                                ; preds = %cond_jump_then30
  br label %cond_end33

cond_end33:                                       ; preds = %cond_then_block32, %cond_jump_then30
  call void @xfree(i8* %52)
  ret i1 false

loop_top_block37:                                 ; preds = %cond_then_block41, %cond_end31
  %i38 = load i32, i32* %i36, align 4
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %60 = bitcast i8* %59 to i32*
  %num_params39 = load i32, i32* %60, align 4
  %letmp40 = icmp slt i32 %i38, %num_params39
  br i1 %letmp40, label %cond_then_block41, label %cond_end_block42

cond_then_block41:                                ; preds = %loop_top_block37
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %62 = bitcast i8* %61 to %sCLType***
  %type43 = load %sCLType**, %sCLType*** %62, align 8
  %derefference_value44 = load %sCLType*, %sCLType** %type43, align 8
  %63 = getelementptr inbounds %sCLType, %sCLType* %derefference_value44, i32 0, i32 5
  %64 = bitcast [32 x %sCLParam]* %63 to %sCLParam*
  %i45 = load i32, i32* %i36, align 4
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %66 = bitcast i8* %65 to [32 x %sCLParam]*
  %i46 = load i32, i32* %i36, align 4
  %67 = bitcast [32 x %sCLParam]* %66 to %sCLParam*
  %element_address = getelementptr %sCLParam, %sCLParam* %67, i32 %i46
  %element = load %sCLParam, %sCLParam* %element_address, align 8
  %element_address47 = getelementptr %sCLParam, %sCLParam* %64, i32 %i45
  store %sCLParam %element, %sCLParam* %element_address47, align 8
  %i48 = load i32, i32* %i36, align 4
  %addtmp49 = add nsw i32 %i48, 1
  store i32 %addtmp49, i32* %i36, align 4
  %subttmp50 = sub nsw i32 %addtmp49, 1
  br label %loop_top_block37

cond_end_block42:                                 ; preds = %loop_top_block37
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %69 = bitcast i8* %68 to %sParserInfo**
  %info51 = load %sParserInfo*, %sParserInfo** %69, align 8
  call void @expected_next_character(i8 58, %sParserInfo* %info51)
  %result_type = alloca %sCLType*
  %70 = bitcast %sCLType** %result_type to i8*
  store i8* %70, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLType* null, %sCLType** %result_type, align 8
  %result_type52 = load %sCLType*, %sCLType** %result_type, align 8
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %72 = bitcast i8* %71 to %sParserInfo**
  %info53 = load %sParserInfo*, %sParserInfo** %72, align 8
  %73 = call i1 @parse_type(%sCLType** %result_type, %sParserInfo* %info53)
  %LOGICAL_DIANEAL54 = icmp eq i1 %73, false
  br i1 %LOGICAL_DIANEAL54, label %cond_jump_then55, label %cond_end56

cond_jump_then55:                                 ; preds = %cond_end_block42
  %74 = bitcast [8192 x i8*]* %lvtable to i8*
  %75 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %74, i64 65536)
  %76 = load i8*, i8** %name, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %cond_then_block57, label %cond_end58

cond_end56:                                       ; preds = %cond_end_block42
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %80 = bitcast i8* %79 to %sCLType***
  %type59 = load %sCLType**, %sCLType*** %80, align 8
  %derefference_value60 = load %sCLType*, %sCLType** %type59, align 8
  %result_type61 = load %sCLType*, %sCLType** %result_type, align 8
  %81 = getelementptr inbounds %sCLType, %sCLType* %derefference_value60, i32 0, i32 7
  store %sCLType* %result_type61, %sCLType** %81, align 8
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %83 = bitcast i8* %82 to %sCLType***
  %type62 = load %sCLType**, %sCLType*** %83, align 8
  %derefference_value63 = load %sCLType*, %sCLType** %type62, align 8
  %84 = getelementptr inbounds %sCLType, %sCLType* %derefference_value63, i32 0, i32 1
  %85 = load %sCLClass*, %sCLClass** %84, align 8
  %eqtmpX64 = icmp eq %sCLClass* %85, null
  br i1 %eqtmpX64, label %cond_jump_then65, label %cond_end66

cond_then_block57:                                ; preds = %cond_jump_then55
  br label %cond_end58

cond_end58:                                       ; preds = %cond_then_block57, %cond_jump_then55
  call void @xfree(i8* %76)
  ret i1 false

cond_jump_then65:                                 ; preds = %cond_end56
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %87 = bitcast i8* %86 to %sParserInfo**
  %info67 = load %sParserInfo*, %sParserInfo** %87, align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %89 = bitcast i8* %88 to i8**
  %name68 = load i8*, i8** %89, align 8
  %90 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.18, i32 0, i32 0), i8* %name68)
  call void @parser_err_msg(%sParserInfo* %info67, i8* %90)
  %91 = ptrtoint i8* %90 to i64
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %cond_then_block69, label %cond_end70

cond_end66:                                       ; preds = %cond_end70, %cond_end56
  %93 = bitcast [8192 x i8*]* %lvtable to i8*
  %94 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %93, i64 65536)
  %95 = load i8*, i8** %name, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %cond_then_block71, label %cond_end72

cond_then_block69:                                ; preds = %cond_jump_then65
  br label %cond_end70

cond_end70:                                       ; preds = %cond_then_block69, %cond_jump_then65
  call void @xfree(i8* %90)
  br label %cond_end66

cond_then_block71:                                ; preds = %cond_end66
  br label %cond_end72

cond_end72:                                       ; preds = %cond_then_block71, %cond_end66
  call void @xfree(i8* %95)
  ret i1 true

cond_jump_then78:                                 ; preds = %cond_end27
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %99 = bitcast i8* %98 to %sParserInfo**
  %info80 = load %sParserInfo*, %sParserInfo** %99, align 8
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %101 = bitcast i8* %100 to %sParserInfo**
  %info81 = load %sParserInfo*, %sParserInfo** %101, align 8
  %102 = getelementptr inbounds %sParserInfo, %sParserInfo* %info81, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %103 to i64
  %addtmp82 = add nsw i64 %104, 1
  %105 = inttoptr i64 %addtmp82 to i8*
  %106 = getelementptr inbounds %sParserInfo, %sParserInfo* %info80, i32 0, i32 4
  store i8* %105, i8** %106, align 8
  %107 = ptrtoint i8* %105 to i64
  %subtmp = sub nsw i64 %107, 1
  %108 = inttoptr i64 %subtmp to i8*
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %110 = bitcast i8* %109 to %sParserInfo**
  %info83 = load %sParserInfo*, %sParserInfo** %110, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info83)
  %i84 = alloca i32
  %111 = bitcast i32* %i84 to i8*
  store i8* %111, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %i84, align 4
  br label %loop_top_block85

cond_end79:                                       ; preds = %cond_end_block89, %cond_end27
  %112 = bitcast [8192 x i8*]* %lvtable to i8*
  %113 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %112, i64 65536)
  %114 = load i8*, i8** %name, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %cond_then_block127, label %cond_end128

loop_top_block85:                                 ; preds = %cond_end110, %cond_jump_then78
  %i86 = load i32, i32* %i84, align 4
  %letmp87 = icmp slt i32 %i86, 32
  br i1 %letmp87, label %cond_then_block88, label %cond_end_block89

cond_then_block88:                                ; preds = %loop_top_block85
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %118 = bitcast i8* %117 to %sCLType***
  %type90 = load %sCLType**, %sCLType*** %118, align 8
  %derefference_value91 = load %sCLType*, %sCLType** %type90, align 8
  %119 = getelementptr inbounds %sCLType, %sCLType* %derefference_value91, i32 0, i32 3
  %120 = bitcast [32 x %sCLType*]* %119 to %sCLType**
  %i92 = load i32, i32* %i84, align 4
  %121 = ptrtoint %sCLType** %120 to i64
  %sext1 = sext i32 %i92 to i64
  %multtmp = mul nsw i64 %sext1, 8
  %addtmp93 = add nsw i64 %121, %multtmp
  %122 = inttoptr i64 %addtmp93 to %sCLType**
  %123 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %124 = bitcast i8* %123 to %sParserInfo**
  %info94 = load %sParserInfo*, %sParserInfo** %124, align 8
  %125 = call i1 @parse_type(%sCLType** %122, %sParserInfo* %info94)
  %LOGICAL_DIANEAL95 = icmp eq i1 %125, false
  br i1 %LOGICAL_DIANEAL95, label %cond_jump_then96, label %cond_end97

cond_end_block89:                                 ; preds = %"cond_jump_elif_then0\0A", %loop_top_block85
  br label %cond_end79

cond_jump_then96:                                 ; preds = %cond_then_block88
  %126 = bitcast [8192 x i8*]* %lvtable to i8*
  %127 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %126, i64 65536)
  %128 = load i8*, i8** %name, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %cond_then_block98, label %cond_end99

cond_end97:                                       ; preds = %cond_then_block88
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %132 = bitcast i8* %131 to %sCLType***
  %type100 = load %sCLType**, %sCLType*** %132, align 8
  %derefference_value101 = load %sCLType*, %sCLType** %type100, align 8
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %134 = bitcast i8* %133 to %sCLType***
  %type102 = load %sCLType**, %sCLType*** %134, align 8
  %derefference_value103 = load %sCLType*, %sCLType** %type102, align 8
  %135 = getelementptr inbounds %sCLType, %sCLType* %derefference_value103, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %addtmp104 = add nsw i32 %136, 1
  %137 = getelementptr inbounds %sCLType, %sCLType* %derefference_value101, i32 0, i32 2
  store i32 %addtmp104, i32* %137, align 4
  %subttmp105 = sub nsw i32 %addtmp104, 1
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %139 = bitcast i8* %138 to %sParserInfo**
  %info106 = load %sParserInfo*, %sParserInfo** %139, align 8
  %140 = getelementptr inbounds %sParserInfo, %sParserInfo* %info106, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %derefference_value107 = load i8, i8* %141, align 8
  %eqtmpX108 = icmp eq i8 %derefference_value107, 44
  br i1 %eqtmpX108, label %cond_jump_then109, label %"cond_jump_elif0\0A"

cond_then_block98:                                ; preds = %cond_jump_then96
  br label %cond_end99

cond_end99:                                       ; preds = %cond_then_block98, %cond_jump_then96
  call void @xfree(i8* %128)
  ret i1 false

cond_jump_then109:                                ; preds = %cond_end97
  %142 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %143 = bitcast i8* %142 to %sParserInfo**
  %info111 = load %sParserInfo*, %sParserInfo** %143, align 8
  %144 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %145 = bitcast i8* %144 to %sParserInfo**
  %info112 = load %sParserInfo*, %sParserInfo** %145, align 8
  %146 = getelementptr inbounds %sParserInfo, %sParserInfo* %info112, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i64
  %addtmp113 = add nsw i64 %148, 1
  %149 = inttoptr i64 %addtmp113 to i8*
  %150 = getelementptr inbounds %sParserInfo, %sParserInfo* %info111, i32 0, i32 4
  store i8* %149, i8** %150, align 8
  %151 = ptrtoint i8* %149 to i64
  %subtmp114 = sub nsw i64 %151, 1
  %152 = inttoptr i64 %subtmp114 to i8*
  %153 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %154 = bitcast i8* %153 to %sParserInfo**
  %info115 = load %sParserInfo*, %sParserInfo** %154, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info115)
  br label %cond_end110

"cond_jump_elif0\0A":                             ; preds = %cond_end97
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %156 = bitcast i8* %155 to %sParserInfo**
  %info116 = load %sParserInfo*, %sParserInfo** %156, align 8
  %157 = getelementptr inbounds %sParserInfo, %sParserInfo* %info116, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %derefference_value117 = load i8, i8* %158, align 8
  %eqtmpX118 = icmp eq i8 %derefference_value117, 62
  br i1 %eqtmpX118, label %"cond_jump_elif_then0\0A", label %cond_end110

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %160 = bitcast i8* %159 to %sParserInfo**
  %info119 = load %sParserInfo*, %sParserInfo** %160, align 8
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %162 = bitcast i8* %161 to %sParserInfo**
  %info120 = load %sParserInfo*, %sParserInfo** %162, align 8
  %163 = getelementptr inbounds %sParserInfo, %sParserInfo* %info120, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %164 to i64
  %addtmp121 = add nsw i64 %165, 1
  %166 = inttoptr i64 %addtmp121 to i8*
  %167 = getelementptr inbounds %sParserInfo, %sParserInfo* %info119, i32 0, i32 4
  store i8* %166, i8** %167, align 8
  %168 = ptrtoint i8* %166 to i64
  %subtmp122 = sub nsw i64 %168, 1
  %169 = inttoptr i64 %subtmp122 to i8*
  %170 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %171 = bitcast i8* %170 to %sParserInfo**
  %info123 = load %sParserInfo*, %sParserInfo** %171, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info123)
  br label %cond_end_block89

cond_end110:                                      ; preds = %after_break, %"cond_jump_elif0\0A", %cond_jump_then109
  %i124 = load i32, i32* %i84, align 4
  %addtmp125 = add nsw i32 %i124, 1
  store i32 %addtmp125, i32* %i84, align 4
  %subttmp126 = sub nsw i32 %addtmp125, 1
  br label %loop_top_block85

after_break:                                      ; No predecessors!
  br label %cond_end110

cond_then_block127:                               ; preds = %cond_end79
  br label %cond_end128

cond_end128:                                      ; preds = %cond_then_block127, %cond_end79
  call void @xfree(i8* %114)
  ret i1 true
}

define void @expected_next_character(i8 %c, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %c1 = alloca i8
  store i8 %c, i8* %c1, align 1
  store i8* %c1, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %2 = bitcast %sParserInfo** %info2 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @parse_comment(%sParserInfo* %info3)
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %3 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %derefference_value = load i8, i8* %4, align 8
  %c5 = load i8, i8* %c1, align 1
  %eqtmpX = icmp eq i8 %derefference_value, %c5
  br i1 %eqtmpX, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %6 = bitcast i8* %5 to %sParserInfo**
  %info6 = load %sParserInfo*, %sParserInfo** %6, align 8
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %8 = bitcast i8* %7 to %sParserInfo**
  %info7 = load %sParserInfo*, %sParserInfo** %8, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %10 to i64
  %addtmp = add nsw i64 %11, 1
  %12 = inttoptr i64 %addtmp to i8*
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 4
  store i8* %12, i8** %13, align 8
  %14 = ptrtoint i8* %12 to i64
  %subtmp = sub nsw i64 %14, 1
  %15 = inttoptr i64 %subtmp to i8*
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %17 = bitcast i8* %16 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %17, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info8)
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info9 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %c10 = load i8, i8* %20, align 1
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sParserInfo**
  %info11 = load %sParserInfo*, %sParserInfo** %22, align 8
  %23 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %derefference_value12 = load i8, i8* %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %26 = bitcast i8* %25 to %sParserInfo**
  %info13 = load %sParserInfo*, %sParserInfo** %26, align 8
  %27 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %derefference_value14 = load i8, i8* %28, align 8
  %29 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @global_string.7, i32 0, i32 0), i8 %c10, i8 %derefference_value12, i8 %derefference_value14)
  call void @parser_err_msg(%sParserInfo* %info9, i8* %29)
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info15 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %33 = bitcast i8* %32 to %sParserInfo**
  %info16 = load %sParserInfo*, %sParserInfo** %33, align 8
  %34 = getelementptr inbounds %sParserInfo, %sParserInfo* %info16, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i64
  %addtmp17 = add nsw i64 %36, 1
  %37 = inttoptr i64 %addtmp17 to i8*
  %38 = getelementptr inbounds %sParserInfo, %sParserInfo* %info15, i32 0, i32 4
  store i8* %37, i8** %38, align 8
  %39 = ptrtoint i8* %37 to i64
  %subtmp18 = sub nsw i64 %39, 1
  %40 = inttoptr i64 %subtmp18 to i8*
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info19 = load %sParserInfo*, %sParserInfo** %42, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info19)
  %43 = ptrtoint i8* %29 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %cond_then_block, label %cond_end20

cond_end:                                         ; preds = %cond_end20, %cond_jump_then
  %45 = bitcast [8192 x i8*]* %lvtable to i8*
  %46 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %45, i64 65536)
  ret void

cond_then_block:                                  ; preds = %cond_else_block
  br label %cond_end20

cond_end20:                                       ; preds = %cond_then_block, %cond_else_block
  call void @xfree(i8* %29)
  br label %cond_end
}

define void @parse_comment(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end_block7, %entry
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = getelementptr inbounds %sParserInfo, %sParserInfo* %info2, i32 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %derefference_value = load i8, i8* %4, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 35
  br i1 %eqtmpX, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %6 = bitcast i8* %5 to %sParserInfo**
  %info3 = load %sParserInfo*, %sParserInfo** %6, align 8
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %8 = bitcast i8* %7 to %sParserInfo**
  %info4 = load %sParserInfo*, %sParserInfo** %8, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %10 to i64
  %addtmp = add nsw i64 %11, 1
  %12 = inttoptr i64 %addtmp to i8*
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 4
  store i8* %12, i8** %13, align 8
  %14 = ptrtoint i8* %12 to i64
  %subtmp = sub nsw i64 %14, 1
  %15 = inttoptr i64 %subtmp to i8*
  br label %loop_top_block5

cond_end_block:                                   ; preds = %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void

loop_top_block5:                                  ; preds = %cond_end, %cond_then_block
  br i1 true, label %cond_then_block6, label %cond_end_block7

cond_then_block6:                                 ; preds = %loop_top_block5
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %derefference_value9 = load i8, i8* %21, align 8
  %eqtmpX10 = icmp eq i8 %derefference_value9, 10
  br i1 %eqtmpX10, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_end_block7:                                  ; preds = %"cond_jump_elif_then0\0A", %cond_end_block20, %loop_top_block5
  br label %loop_top_block

cond_jump_then:                                   ; preds = %cond_then_block6
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %23 = bitcast i8* %22 to %sParserInfo**
  %info11 = load %sParserInfo*, %sParserInfo** %23, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %25 = bitcast i8* %24 to %sParserInfo**
  %info12 = load %sParserInfo*, %sParserInfo** %25, align 8
  %26 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i64
  %addtmp13 = add nsw i64 %28, 1
  %29 = inttoptr i64 %addtmp13 to i8*
  %30 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = ptrtoint i8* %29 to i64
  %subtmp14 = sub nsw i64 %31, 1
  %32 = inttoptr i64 %subtmp14 to i8*
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %34 = bitcast i8* %33 to %sParserInfo**
  %info15 = load %sParserInfo*, %sParserInfo** %34, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %36 = bitcast i8* %35 to %sParserInfo**
  %info16 = load %sParserInfo*, %sParserInfo** %36, align 8
  %37 = getelementptr inbounds %sParserInfo, %sParserInfo* %info16, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %addtmp17 = add nsw i32 %38, 1
  %39 = getelementptr inbounds %sParserInfo, %sParserInfo* %info15, i32 0, i32 1
  store i32 %addtmp17, i32* %39, align 4
  %subttmp = sub nsw i32 %addtmp17, 1
  br label %loop_top_block18

"cond_jump_elif0\0A":                             ; preds = %cond_then_block6
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %41 = bitcast i8* %40 to %sParserInfo**
  %info49 = load %sParserInfo*, %sParserInfo** %41, align 8
  %42 = getelementptr inbounds %sParserInfo, %sParserInfo* %info49, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %derefference_value50 = load i8, i8* %43, align 8
  %eqtmpX51 = icmp eq i8 %derefference_value50, 0
  br i1 %eqtmpX51, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  br label %cond_end_block7

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %45 = bitcast i8* %44 to %sParserInfo**
  %info53 = load %sParserInfo*, %sParserInfo** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %47 = bitcast i8* %46 to %sParserInfo**
  %info54 = load %sParserInfo*, %sParserInfo** %47, align 8
  %48 = getelementptr inbounds %sParserInfo, %sParserInfo* %info54, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i64
  %addtmp55 = add nsw i64 %50, 1
  %51 = inttoptr i64 %addtmp55 to i8*
  %52 = getelementptr inbounds %sParserInfo, %sParserInfo* %info53, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = ptrtoint i8* %51 to i64
  %subtmp56 = sub nsw i64 %53, 1
  %54 = inttoptr i64 %subtmp56 to i8*
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %after_break52, %after_break48
  br label %loop_top_block5

loop_top_block18:                                 ; preds = %cond_end32, %cond_jump_then
  br i1 true, label %cond_then_block19, label %cond_end_block20

cond_then_block19:                                ; preds = %loop_top_block18
  %oror_result_var = alloca i1
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %56 = bitcast i8* %55 to %sParserInfo**
  %info21 = load %sParserInfo*, %sParserInfo** %56, align 8
  %57 = getelementptr inbounds %sParserInfo, %sParserInfo* %info21, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %derefference_value22 = load i8, i8* %58, align 8
  %eqtmpX23 = icmp eq i8 %derefference_value22, 32
  store i1 %eqtmpX23, i1* %oror_result_var, align 1
  br i1 %eqtmpX23, label %cond_jump_end, label %cond_jump_then24

cond_end_block20:                                 ; preds = %cond_else_block31, %loop_top_block18
  br label %cond_end_block7

cond_jump_then24:                                 ; preds = %cond_then_block19
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %60 = bitcast i8* %59 to %sParserInfo**
  %info25 = load %sParserInfo*, %sParserInfo** %60, align 8
  %61 = getelementptr inbounds %sParserInfo, %sParserInfo* %info25, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %derefference_value26 = load i8, i8* %62, align 8
  %eqtmpX27 = icmp eq i8 %derefference_value26, 9
  %oror = or i1 %eqtmpX23, %eqtmpX27
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then24, %cond_then_block19
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_then28, label %"cond_jump_elif0\0A29"

cond_jump_then28:                                 ; preds = %cond_jump_end
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %64 = bitcast i8* %63 to %sParserInfo**
  %info33 = load %sParserInfo*, %sParserInfo** %64, align 8
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %66 = bitcast i8* %65 to %sParserInfo**
  %info34 = load %sParserInfo*, %sParserInfo** %66, align 8
  %67 = getelementptr inbounds %sParserInfo, %sParserInfo* %info34, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i64
  %addtmp35 = add nsw i64 %69, 1
  %70 = inttoptr i64 %addtmp35 to i8*
  %71 = getelementptr inbounds %sParserInfo, %sParserInfo* %info33, i32 0, i32 4
  store i8* %70, i8** %71, align 8
  %72 = ptrtoint i8* %70 to i64
  %subtmp36 = sub nsw i64 %72, 1
  %73 = inttoptr i64 %subtmp36 to i8*
  br label %cond_end32

"cond_jump_elif0\0A29":                           ; preds = %cond_jump_end
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %75 = bitcast i8* %74 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %75, align 8
  %76 = getelementptr inbounds %sParserInfo, %sParserInfo* %info37, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %derefference_value38 = load i8, i8* %77, align 8
  %eqtmpX39 = icmp eq i8 %derefference_value38, 10
  br i1 %eqtmpX39, label %"cond_jump_elif_then0\0A30", label %cond_else_block31

"cond_jump_elif_then0\0A30":                      ; preds = %"cond_jump_elif0\0A29"
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %79 = bitcast i8* %78 to %sParserInfo**
  %info40 = load %sParserInfo*, %sParserInfo** %79, align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %81 = bitcast i8* %80 to %sParserInfo**
  %info41 = load %sParserInfo*, %sParserInfo** %81, align 8
  %82 = getelementptr inbounds %sParserInfo, %sParserInfo* %info41, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %83 to i64
  %addtmp42 = add nsw i64 %84, 1
  %85 = inttoptr i64 %addtmp42 to i8*
  %86 = getelementptr inbounds %sParserInfo, %sParserInfo* %info40, i32 0, i32 4
  store i8* %85, i8** %86, align 8
  %87 = ptrtoint i8* %85 to i64
  %subtmp43 = sub nsw i64 %87, 1
  %88 = inttoptr i64 %subtmp43 to i8*
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %90 = bitcast i8* %89 to %sParserInfo**
  %info44 = load %sParserInfo*, %sParserInfo** %90, align 8
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %92 = bitcast i8* %91 to %sParserInfo**
  %info45 = load %sParserInfo*, %sParserInfo** %92, align 8
  %93 = getelementptr inbounds %sParserInfo, %sParserInfo* %info45, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %addtmp46 = add nsw i32 %94, 1
  %95 = getelementptr inbounds %sParserInfo, %sParserInfo* %info44, i32 0, i32 1
  store i32 %addtmp46, i32* %95, align 4
  %subttmp47 = sub nsw i32 %addtmp46, 1
  br label %cond_end32

cond_else_block31:                                ; preds = %"cond_jump_elif0\0A29"
  br label %cond_end_block20

cond_end32:                                       ; preds = %after_break, %"cond_jump_elif_then0\0A30", %cond_jump_then28
  br label %loop_top_block18

after_break:                                      ; No predecessors!
  br label %cond_end32

after_break48:                                    ; No predecessors!
  br label %cond_end

after_break52:                                    ; No predecessors!
  br label %cond_end
}

define i1 @expression(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @parse_comment(%sParserInfo* %info3)
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info4)
  %node5 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i1 @expression_and_and_or_or(%sCLNode** %node5, %sParserInfo* %info6)
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info7 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @parse_comment(%sParserInfo* %info7)
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 true
}

declare i1 @compile(%sCLNode*, %sCompileInfo*)

declare void @compile_err_msg(%sCompileInfo*, i8*)

declare void @init_var_table(%sParserInfo*)

declare void @final_var_table(%sParserInfo*)

declare void @add_variable_to_table(%sParserInfo*, i8*, %sCLType*, i1)

declare %sVar* @get_variable_from_table(%sParserInfo*, i8*)

declare void @check_already_added_variable(%sParserInfo*, i8*)

declare i32 @get_var_num(%vector__sVarTablep*)

declare void @show_vtable(%vector__sVarTablep*)

declare %sCLType* @clone_type(%sCLType*, %sParserInfo*)

declare %sCLType* @create_type(i8*, %sParserInfo*)

declare %sCLType* @parse_type_runtime(i8*, %sVMInfo*)

declare i8* @create_type_name(%sCLType*)

declare i1 @type_identify(%sCLType*, %sCLType*)

declare i1 @substitution_posibility(%sCLType*, %sCLType*)

declare i1 @type_identify_with_class_name(%sCLType*, i8*, %sParserInfo*)

declare i1 @is_generics_type(%sCLType*)

declare i32 @get_generics_type_number(%sCLType*, %sParserInfo*)

declare %sCLType* @solve_generics(%sCLType*, %sCLType*, %sParserInfo*)

declare void @show_type(%sCLType*)

declare void @codes_append_type(%buffer*, %sCLType*)

declare void @codes_read_type(i8*, %sCLType**)

declare %sCLNode* @sNodeTree_create_break(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_normal_block(%sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_minus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_minus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_logical_denial(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_return(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_try(%sCLNodeBlock*, %sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_exit(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_plus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_while_expression(%sCLNode*, %sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_plus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_not_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_greater(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_lesser(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_lesser_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_greater_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_int_value(i32, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_store_variable(i8*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_load_variable(i8*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_not_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_greater(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_lesser(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_lesser_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_greater_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_and_and(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_or_or(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_string_value(i8*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_true_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_false_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_null_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_command_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_if_expression(%sCLNode*, %sCLNodeBlock*, i32, %sCLNode**, %sCLNodeBlock**, %sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_lambda(i32, %sCLParam*, %sCLNodeBlock*, %sCLType*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_method_block(i8*, i32, %buffer*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_class(i8*, i8*, i32, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_object(%sCLType*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_method_call(i8*, i32, %sCLNode**, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_command_call(%sCLNode*, i8*, i32, %sCLNode**, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_block_object_call(i32, %sCLNode**, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_jobs(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_fg(i32, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_load_field(%sCLNode*, i8*, %sParserInfo*)

declare %sCLNode* @NodeTree_create_store_field(%sCLNode*, i8*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_store_field(%sCLNode*, i8*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_throw_exception(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_macro(i8*, i8*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_call_macro(i8*, i8*, %sParserInfo*)

declare void @macro_init()

declare void @macro_final()

declare void @append_macro(i8*, i8*)

declare i1 @call_macro(%sCLNode**, i8*, i8*, %sParserInfo*)

declare void @vm_err_msg(%CLVALUE**, %sVMInfo*, i8*)

declare i1 @vm(%buffer*, %CLVALUE*, i32, i32, %CLVALUE*, %sVMInfo*)

declare i32 @alloc_heap_mem(i32, %sCLType*, i32, %sVMInfo*)

declare void @heap_init(i32, i32)

declare void @heap_final(%sVMInfo*)

declare %sCLHeapMem* @get_object_pointer(i32)

declare i32 @create_object(%sCLType*, %sVMInfo*)

declare i32 @create_null_object(%sVMInfo*)

declare i32 @create_int_object(i32, %sVMInfo*)

declare i32 @create_string_object(i8*, %sVMInfo*)

declare i8* @get_string_mem(i32)

declare i32 @create_string_data_object(i8*, %sVMInfo*)

declare i32 @create_bool_object(i32, %sVMInfo*)

declare i32 @create_block_object(i8*, i32*, i32, %sVMInfo*)

declare i32 @create_command_object(i8*, i32, i8*, i32, i32, i1, %sVMInfo*)

declare i32 @create_job_object(i8*, %termios*, i32, %sVMInfo*)

declare void @mark_object(i32, i8*, %sVMInfo*)

declare i1 @free_object(i32, %sVMInfo*)

declare void @mark_belong_objects(i32, i8*, %sVMInfo*)

declare void @alignment(i32*)

declare i1 @parse_block(%sCLNodeBlock**, i32, %sCLParam*, %sParserInfo*)

declare i1 @compile_block(%sCLNodeBlock*, %sCompileInfo*)

define void @skip_spaces(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  call void @parse_comment(%sParserInfo* %info2)
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %oror_result_var = alloca i1
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %derefference_value = load i8, i8* %4, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 32
  store i1 %eqtmpX, i1* %oror_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_end, label %cond_jump_then

cond_jump_then:                                   ; preds = %loop_top_block
  %info4 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %5 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %derefference_value5 = load i8, i8* %6, align 8
  %eqtmpX6 = icmp eq i8 %derefference_value5, 9
  %oror = or i1 %eqtmpX, %eqtmpX6
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %loop_top_block
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %cond_jump_end
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %8 = bitcast i8* %7 to %sParserInfo**
  %info7 = load %sParserInfo*, %sParserInfo** %8, align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %10 = bitcast i8* %9 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %10, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %addtmp = add nsw i64 %13, 1
  %14 = inttoptr i64 %addtmp to i8*
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 4
  store i8* %14, i8** %15, align 8
  %16 = ptrtoint i8* %14 to i64
  %subtmp = sub nsw i64 %16, 1
  %17 = inttoptr i64 %subtmp to i8*
  br label %loop_top_block

cond_end_block:                                   ; preds = %cond_jump_end
  %info9 = load %sParserInfo*, %sParserInfo** %info1, align 8
  call void @parse_comment(%sParserInfo* %info9)
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret void
}

define i1 @get_number(i1 %minus, %sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %minus1 = alloca i1
  store i1 %minus, i1* %minus1, align 1
  %2 = bitcast i1* %minus1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %node2 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node2, align 8
  %3 = bitcast %sCLNode*** %node2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %buf_size = alloca i32
  %5 = bitcast i32* %buf_size to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 128, i32* %buf_size, align 4
  %buf = alloca [129 x i8]
  %6 = bitcast [129 x i8]* %buf to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %7 = bitcast [129 x i8]* %buf to i8*
  %p2 = alloca i8*
  %8 = bitcast i8** %p2 to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i8* %7, i8** %p2, align 8
  %minus4 = load i1, i1* %minus1, align 1
  br i1 %minus4, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %10 = bitcast i8* %9 to i8**
  %p25 = load i8*, i8** %10, align 8
  store i8 45, i8* %p25, align 1
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %12 = bitcast i8* %11 to i8**
  %p26 = load i8*, i8** %12, align 8
  %13 = ptrtoint i8* %p26 to i64
  %addtmp = add nsw i64 %13, 1
  %14 = inttoptr i64 %addtmp to i8*
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %16 = bitcast i8* %15 to i8**
  store i8* %14, i8** %16, align 8
  %17 = ptrtoint i8* %14 to i64
  %subtmp = sub nsw i64 %17, 1
  %18 = inttoptr i64 %subtmp to i8*
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %19 = call i16** @__ctype_b_loc()
  %derefference_value = load i16*, i16** %19, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %derefference_value8 = load i8, i8* %21, align 8
  %sext13 = zext i8 %derefference_value8 to i32
  %element_address = getelementptr i16, i16* %derefference_value, i32 %sext13
  %element = load i16, i16* %element_address, align 2
  %andtmp = and i16 %element, 2048
  %22 = icmp ne i16 %andtmp, 0
  br i1 %22, label %cond_jump_then9, label %cond_else_block

cond_jump_then9:                                  ; preds = %cond_end
  br label %loop_top_block

cond_else_block:                                  ; preds = %cond_end
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %24 = bitcast i8* %23 to %sParserInfo**
  %info50 = load %sParserInfo*, %sParserInfo** %24, align 8
  call void @parser_err_msg(%sParserInfo* %info50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.2, i32 0, i32 0))
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %26 = bitcast i8* %25 to %sCLNode***
  %node51 = load %sCLNode**, %sCLNode*** %26, align 8
  store %sCLNode* null, %sCLNode** %node51, align 8
  br label %cond_end10

cond_end10:                                       ; preds = %cond_else_block, %cond_end_block
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret i1 true

loop_top_block:                                   ; preds = %cond_end44, %cond_jump_then9
  %oror_result_var = alloca i1
  %29 = call i16** @__ctype_b_loc()
  %derefference_value11 = load i16*, i16** %29, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info12 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %derefference_value13 = load i8, i8* %33, align 8
  %sext1314 = zext i8 %derefference_value13 to i32
  %element_address15 = getelementptr i16, i16* %derefference_value11, i32 %sext1314
  %element16 = load i16, i16* %element_address15, align 2
  %andtmp17 = and i16 %element16, 2048
  %34 = icmp ne i16 %andtmp17, 0
  store i1 %34, i1* %oror_result_var, align 1
  br i1 %34, label %cond_jump_end, label %cond_jump_then18

cond_jump_then18:                                 ; preds = %loop_top_block
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %36 = bitcast i8* %35 to %sParserInfo**
  %info19 = load %sParserInfo*, %sParserInfo** %36, align 8
  %37 = getelementptr inbounds %sParserInfo, %sParserInfo* %info19, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %derefference_value20 = load i8, i8* %38, align 8
  %eqtmpX = icmp eq i8 %derefference_value20, 95
  %oror = or i1 %34, %eqtmpX
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then18, %loop_top_block
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %cond_jump_end
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %40 = bitcast i8* %39 to %sParserInfo**
  %info21 = load %sParserInfo*, %sParserInfo** %40, align 8
  %41 = getelementptr inbounds %sParserInfo, %sParserInfo* %info21, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %derefference_value22 = load i8, i8* %42, align 8
  %eqtmpX23 = icmp eq i8 %derefference_value22, 95
  br i1 %eqtmpX23, label %cond_jump_then24, label %cond_else_block25

cond_end_block:                                   ; preds = %cond_jump_end
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %44 = bitcast i8* %43 to i8**
  %p246 = load i8*, i8** %44, align 8
  store i8 0, i8* %p246, align 1
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %46 = bitcast i8* %45 to %sParserInfo**
  %info47 = load %sParserInfo*, %sParserInfo** %46, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info47)
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sCLNode***
  %node48 = load %sCLNode**, %sCLNode*** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %50 = bitcast i8* %49 to [129 x i8]*
  %51 = bitcast [129 x i8]* %50 to i8*
  %52 = call i32 @atoi(i8* %51)
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %54 = bitcast i8* %53 to %sParserInfo**
  %info49 = load %sParserInfo*, %sParserInfo** %54, align 8
  %55 = call %sCLNode* @sNodeTree_create_int_value(i32 %52, %sParserInfo* %info49)
  store %sCLNode* %55, %sCLNode** %node48, align 8
  br label %cond_end10

cond_jump_then24:                                 ; preds = %cond_then_block
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %57 = bitcast i8* %56 to %sParserInfo**
  %info27 = load %sParserInfo*, %sParserInfo** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %59 = bitcast i8* %58 to %sParserInfo**
  %info28 = load %sParserInfo*, %sParserInfo** %59, align 8
  %60 = getelementptr inbounds %sParserInfo, %sParserInfo* %info28, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %61 to i64
  %addtmp29 = add nsw i64 %62, 1
  %63 = inttoptr i64 %addtmp29 to i8*
  %64 = getelementptr inbounds %sParserInfo, %sParserInfo* %info27, i32 0, i32 4
  store i8* %63, i8** %64, align 8
  %65 = ptrtoint i8* %63 to i64
  %subtmp30 = sub nsw i64 %65, 1
  %66 = inttoptr i64 %subtmp30 to i8*
  br label %cond_end26

cond_else_block25:                                ; preds = %cond_then_block
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %68 = bitcast i8* %67 to i8**
  %p231 = load i8*, i8** %68, align 8
  %69 = ptrtoint i8* %p231 to i64
  %addtmp32 = add nsw i64 %69, 1
  %70 = inttoptr i64 %addtmp32 to i8*
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %72 = bitcast i8* %71 to i8**
  store i8* %70, i8** %72, align 8
  %73 = ptrtoint i8* %70 to i64
  %subtmp33 = sub nsw i64 %73, 1
  %74 = inttoptr i64 %subtmp33 to i8*
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %76 = bitcast i8* %75 to %sParserInfo**
  %info34 = load %sParserInfo*, %sParserInfo** %76, align 8
  %77 = getelementptr inbounds %sParserInfo, %sParserInfo* %info34, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %derefference_value35 = load i8, i8* %78, align 8
  store i8 %derefference_value35, i8* %74, align 1
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %80 = bitcast i8* %79 to %sParserInfo**
  %info36 = load %sParserInfo*, %sParserInfo** %80, align 8
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %82 = bitcast i8* %81 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %82, align 8
  %83 = getelementptr inbounds %sParserInfo, %sParserInfo* %info37, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i64
  %addtmp38 = add nsw i64 %85, 1
  %86 = inttoptr i64 %addtmp38 to i8*
  %87 = getelementptr inbounds %sParserInfo, %sParserInfo* %info36, i32 0, i32 4
  store i8* %86, i8** %87, align 8
  %88 = ptrtoint i8* %86 to i64
  %subtmp39 = sub nsw i64 %88, 1
  %89 = inttoptr i64 %subtmp39 to i8*
  br label %cond_end26

cond_end26:                                       ; preds = %cond_else_block25, %cond_jump_then24
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %91 = bitcast i8* %90 to i8**
  %p240 = load i8*, i8** %91, align 8
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %93 = bitcast i8* %92 to [129 x i8]*
  %94 = bitcast [129 x i8]* %93 to i8*
  %95 = ptrtoint i8* %p240 to i64
  %96 = ptrtoint i8* %94 to i64
  %subtmp41 = sub nsw i64 %95, %96
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %98 = bitcast i8* %97 to i32*
  %buf_size42 = load i32, i32* %98, align 4
  %sext14 = zext i32 %buf_size42 to i64
  %getmp = icmp sge i64 %subtmp41, %sext14
  br i1 %getmp, label %cond_jump_then43, label %cond_end44

cond_jump_then43:                                 ; preds = %cond_end26
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %100 = bitcast i8* %99 to %sParserInfo**
  %info45 = load %sParserInfo*, %sParserInfo** %100, align 8
  call void @parser_err_msg(%sParserInfo* %info45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.1, i32 0, i32 0))
  %101 = bitcast [8192 x i8*]* %lvtable to i8*
  %102 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %101, i64 65536)
  ret i1 false

cond_end44:                                       ; preds = %cond_end26
  br label %loop_top_block
}

define i1 @parse_if_expression(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 40, %sParserInfo* %info3)
  %exp = alloca %sCLNode*
  %4 = bitcast %sCLNode** %exp to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %exp, align 8
  %exp4 = load %sCLNode*, %sCLNode** %exp, align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %5 = call i1 @expression(%sCLNode** %exp, %sParserInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 41, %sParserInfo* %info6)
  %info7 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info7)
  %node_block = alloca %sCLNodeBlock*
  %8 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block, align 8
  %node_block8 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = call i1 @parse_block(%sCLNodeBlock** %node_block, i32 0, %sCLParam* null, %sParserInfo* %info9)
  %LOGICAL_DIANEAL10 = icmp eq i1 %9, false
  br i1 %LOGICAL_DIANEAL10, label %cond_jump_then11, label %cond_end12

cond_jump_then11:                                 ; preds = %cond_end
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret i1 false

cond_end12:                                       ; preds = %cond_end
  %info13 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info13)
  %info14 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info14, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %p_before = alloca i8*
  %14 = bitcast i8** %p_before to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i8* %13, i8** %p_before, align 8
  %info15 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info15, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %sline_before = alloca i32
  %17 = bitcast i32* %sline_before to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %16, i32* %sline_before, align 4
  %info16 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %18 = call i8* @parse_word(%sParserInfo* %info16)
  %word = alloca i8*
  %19 = bitcast i8** %word to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i8* %18, i8** %word, align 8
  %num_elif = alloca i32
  %20 = bitcast i32* %num_elif to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 0, i32* %num_elif, align 4
  %elif_expressions = alloca [64 x %sCLNode*]
  %21 = bitcast [64 x %sCLNode*]* %elif_expressions to i8*
  store i8* %21, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %elif_blocks = alloca [64 x %sCLNodeBlock*]
  %22 = bitcast [64 x %sCLNodeBlock*]* %elif_blocks to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %word17 = load i8*, i8** %word, align 8
  %23 = call i32 @strcmp(i8* %word17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.8, i32 0, i32 0))
  %eqtmpX = icmp eq i32 %23, 0
  br i1 %eqtmpX, label %cond_jump_then18, label %"cond_jump_elif0\0A"

cond_jump_then18:                                 ; preds = %cond_end12
  br label %loop_top_block

"cond_jump_elif0\0A":                             ; preds = %cond_end12
  %word68 = load i8*, i8** %word, align 8
  %24 = call i32 @strcmp(i8* %word68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.12, i32 0, i32 0))
  %eqtmpX69 = icmp eq i32 %24, 0
  br i1 %eqtmpX69, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  br label %cond_end19

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %26 = bitcast i8* %25 to %sParserInfo**
  %info70 = load %sParserInfo*, %sParserInfo** %26, align 8
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %28 = bitcast i8* %27 to i8**
  %p_before71 = load i8*, i8** %28, align 8
  %29 = getelementptr inbounds %sParserInfo, %sParserInfo* %info70, i32 0, i32 4
  store i8* %p_before71, i8** %29, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info72 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %33 = bitcast i8* %32 to i32*
  %sline_before73 = load i32, i32* %33, align 4
  %34 = getelementptr inbounds %sParserInfo, %sParserInfo* %info72, i32 0, i32 1
  store i32 %sline_before73, i32* %34, align 4
  br label %cond_end19

cond_end19:                                       ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_end_block
  %info74 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %35 = getelementptr inbounds %sParserInfo, %sParserInfo* %info74, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %p_before, align 8
  %info75 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %37 = getelementptr inbounds %sParserInfo, %sParserInfo* %info75, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %sline_before, align 4
  %else_block = alloca %sCLNodeBlock*
  %39 = bitcast %sCLNodeBlock** %else_block to i8*
  store i8* %39, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %else_block, align 8
  %word76 = load i8*, i8** %word, align 8
  %40 = call i32 @strcmp(i8* %word76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.13, i32 0, i32 0))
  %eqtmpX77 = icmp eq i32 %40, 0
  br i1 %eqtmpX77, label %cond_jump_then78, label %cond_else_block79

loop_top_block:                                   ; preds = %cond_end61, %cond_jump_then18
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info20 = load %sParserInfo*, %sParserInfo** %42, align 8
  call void @expected_next_character(i8 40, %sParserInfo* %info20)
  %exp21 = alloca %sCLNode*
  %43 = bitcast %sCLNode** %exp21 to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store %sCLNode* null, %sCLNode** %exp21, align 8
  %exp22 = load %sCLNode*, %sCLNode** %exp21, align 8
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %45 = bitcast i8* %44 to %sParserInfo**
  %info23 = load %sParserInfo*, %sParserInfo** %45, align 8
  %46 = call i1 @expression(%sCLNode** %exp21, %sParserInfo* %info23)
  %LOGICAL_DIANEAL24 = icmp eq i1 %46, false
  br i1 %LOGICAL_DIANEAL24, label %cond_jump_then25, label %cond_end26

cond_end_block:                                   ; preds = %"cond_jump_elif_then0\0A60", %cond_jump_then58, %loop_top_block
  br label %cond_end19

cond_jump_then25:                                 ; preds = %cond_then_block
  %47 = bitcast [8192 x i8*]* %lvtable to i8*
  %48 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %47, i64 65536)
  %49 = load i8*, i8** %word, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %cond_then_block27, label %cond_end28

cond_end26:                                       ; preds = %cond_then_block
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %53 = bitcast i8* %52 to %sParserInfo**
  %info29 = load %sParserInfo*, %sParserInfo** %53, align 8
  call void @expected_next_character(i8 41, %sParserInfo* %info29)
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %55 = bitcast i8* %54 to %sParserInfo**
  %info30 = load %sParserInfo*, %sParserInfo** %55, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info30)
  %node_block31 = alloca %sCLNodeBlock*
  %56 = bitcast %sCLNodeBlock** %node_block31 to i8*
  store i8* %56, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block31, align 8
  %node_block32 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block31, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %58 = bitcast i8* %57 to %sParserInfo**
  %info33 = load %sParserInfo*, %sParserInfo** %58, align 8
  %59 = call i1 @parse_block(%sCLNodeBlock** %node_block31, i32 0, %sCLParam* null, %sParserInfo* %info33)
  %LOGICAL_DIANEAL34 = icmp eq i1 %59, false
  br i1 %LOGICAL_DIANEAL34, label %cond_jump_then35, label %cond_end36

cond_then_block27:                                ; preds = %cond_jump_then25
  br label %cond_end28

cond_end28:                                       ; preds = %cond_then_block27, %cond_jump_then25
  call void @xfree(i8* %49)
  ret i1 false

cond_jump_then35:                                 ; preds = %cond_end26
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  %62 = load i8*, i8** %word, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %cond_then_block37, label %cond_end38

cond_end36:                                       ; preds = %cond_end26
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %66 = bitcast i8* %65 to %sParserInfo**
  %info39 = load %sParserInfo*, %sParserInfo** %66, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info39)
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %68 = bitcast i8* %67 to [64 x %sCLNode*]*
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %70 = bitcast i8* %69 to i32*
  %num_elif40 = load i32, i32* %70, align 4
  %exp41 = load %sCLNode*, %sCLNode** %exp21, align 8
  %71 = bitcast [64 x %sCLNode*]* %68 to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %71, i32 %num_elif40
  store %sCLNode* %exp41, %sCLNode** %element_address, align 8
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %73 = bitcast i8* %72 to [64 x %sCLNodeBlock*]*
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %75 = bitcast i8* %74 to i32*
  %num_elif42 = load i32, i32* %75, align 4
  %node_block43 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block31, align 8
  %76 = bitcast [64 x %sCLNodeBlock*]* %73 to %sCLNodeBlock**
  %element_address44 = getelementptr %sCLNodeBlock*, %sCLNodeBlock** %76, i32 %num_elif42
  store %sCLNodeBlock* %node_block43, %sCLNodeBlock** %element_address44, align 8
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %78 = bitcast i8* %77 to i32*
  %num_elif45 = load i32, i32* %78, align 4
  %addtmp = add nsw i32 %num_elif45, 1
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %80 = bitcast i8* %79 to i32*
  store i32 %addtmp, i32* %80, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %82 = bitcast i8* %81 to i32*
  %num_elif46 = load i32, i32* %82, align 4
  %getmp = icmp sge i32 %num_elif46, 64
  br i1 %getmp, label %cond_jump_then47, label %cond_end48

cond_then_block37:                                ; preds = %cond_jump_then35
  br label %cond_end38

cond_end38:                                       ; preds = %cond_then_block37, %cond_jump_then35
  call void @xfree(i8* %62)
  ret i1 false

cond_jump_then47:                                 ; preds = %cond_end36
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %83 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.9, i32 0, i32 0))
  call void @exit(i32 2)
  br label %cond_end48

cond_end48:                                       ; preds = %cond_jump_then47, %cond_end36
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %85 = bitcast i8* %84 to %sParserInfo**
  %info49 = load %sParserInfo*, %sParserInfo** %85, align 8
  %86 = getelementptr inbounds %sParserInfo, %sParserInfo* %info49, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %p_before50 = alloca i8*
  %88 = bitcast i8** %p_before50 to i8*
  store i8* %88, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i8* %87, i8** %p_before50, align 8
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %90 = bitcast i8* %89 to %sParserInfo**
  %info51 = load %sParserInfo*, %sParserInfo** %90, align 8
  %91 = getelementptr inbounds %sParserInfo, %sParserInfo* %info51, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %sline_before52 = alloca i32
  %93 = bitcast i32* %sline_before52 to i8*
  store i8* %93, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %92, i32* %sline_before52, align 4
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %95 = bitcast i8* %94 to %sParserInfo**
  %info53 = load %sParserInfo*, %sParserInfo** %95, align 8
  %96 = call i8* @parse_word(%sParserInfo* %info53)
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %98 = bitcast i8* %97 to i8**
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %cond_then_block54, label %cond_end55

cond_then_block54:                                ; preds = %cond_end48
  br label %cond_end55

cond_end55:                                       ; preds = %cond_then_block54, %cond_end48
  call void @xfree(i8* %99)
  store i8* %96, i8** %98, align 8
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %103 = bitcast i8* %102 to i8**
  %word56 = load i8*, i8** %103, align 8
  %104 = call i32 @strcmp(i8* %word56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.10, i32 0, i32 0))
  %eqtmpX57 = icmp eq i32 %104, 0
  br i1 %eqtmpX57, label %cond_jump_then58, label %"cond_jump_elif0\0A59"

cond_jump_then58:                                 ; preds = %cond_end55
  br label %cond_end_block

"cond_jump_elif0\0A59":                           ; preds = %cond_end55
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %106 = bitcast i8* %105 to i8**
  %word62 = load i8*, i8** %106, align 8
  %107 = call i32 @strcmp(i8* %word62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.11, i32 0, i32 0))
  %noteqtmp = icmp ne i32 %107, 0
  br i1 %noteqtmp, label %"cond_jump_elif_then0\0A60", label %cond_end61

"cond_jump_elif_then0\0A60":                      ; preds = %"cond_jump_elif0\0A59"
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %109 = bitcast i8* %108 to %sParserInfo**
  %info63 = load %sParserInfo*, %sParserInfo** %109, align 8
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %111 = bitcast i8* %110 to i8**
  %p_before64 = load i8*, i8** %111, align 8
  %112 = getelementptr inbounds %sParserInfo, %sParserInfo* %info63, i32 0, i32 4
  store i8* %p_before64, i8** %112, align 8
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %114 = bitcast i8* %113 to %sParserInfo**
  %info65 = load %sParserInfo*, %sParserInfo** %114, align 8
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %116 = bitcast i8* %115 to i32*
  %sline_before66 = load i32, i32* %116, align 4
  %117 = getelementptr inbounds %sParserInfo, %sParserInfo* %info65, i32 0, i32 1
  store i32 %sline_before66, i32* %117, align 4
  br label %cond_end_block

cond_end61:                                       ; preds = %after_break67, %"cond_jump_elif0\0A59", %after_break
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end61

after_break67:                                    ; No predecessors!
  br label %cond_end61

cond_jump_then78:                                 ; preds = %cond_end19
  %118 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %119 = bitcast i8* %118 to %sParserInfo**
  %info81 = load %sParserInfo*, %sParserInfo** %119, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info81)
  %node_block82 = alloca %sCLNodeBlock*
  %120 = bitcast %sCLNodeBlock** %node_block82 to i8*
  store i8* %120, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block82, align 8
  %node_block83 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block82, align 8
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %122 = bitcast i8* %121 to %sParserInfo**
  %info84 = load %sParserInfo*, %sParserInfo** %122, align 8
  %123 = call i1 @parse_block(%sCLNodeBlock** %node_block82, i32 0, %sCLParam* null, %sParserInfo* %info84)
  %LOGICAL_DIANEAL85 = icmp eq i1 %123, false
  br i1 %LOGICAL_DIANEAL85, label %cond_jump_then86, label %cond_end87

cond_else_block79:                                ; preds = %cond_end19
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %125 = bitcast i8* %124 to %sParserInfo**
  %info92 = load %sParserInfo*, %sParserInfo** %125, align 8
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %127 = bitcast i8* %126 to i8**
  %p_before93 = load i8*, i8** %127, align 8
  %128 = getelementptr inbounds %sParserInfo, %sParserInfo* %info92, i32 0, i32 4
  store i8* %p_before93, i8** %128, align 8
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %130 = bitcast i8* %129 to %sParserInfo**
  %info94 = load %sParserInfo*, %sParserInfo** %130, align 8
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %132 = bitcast i8* %131 to i32*
  %sline_before95 = load i32, i32* %132, align 4
  %133 = getelementptr inbounds %sParserInfo, %sParserInfo* %info94, i32 0, i32 1
  store i32 %sline_before95, i32* %133, align 4
  br label %cond_end80

cond_end80:                                       ; preds = %cond_else_block79, %cond_end87
  %node96 = load %sCLNode**, %sCLNode*** %node1, align 8
  %exp97 = load %sCLNode*, %sCLNode** %exp, align 8
  %node_block98 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %num_elif99 = load i32, i32* %num_elif, align 4
  %else_block100 = load %sCLNodeBlock*, %sCLNodeBlock** %else_block, align 8
  %info101 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %134 = bitcast [64 x %sCLNode*]* %elif_expressions to %sCLNode**
  %135 = bitcast [64 x %sCLNodeBlock*]* %elif_blocks to %sCLNodeBlock**
  %136 = call %sCLNode* @sNodeTree_create_if_expression(%sCLNode* %exp97, %sCLNodeBlock* %node_block98, i32 %num_elif99, %sCLNode** %134, %sCLNodeBlock** %135, %sCLNodeBlock* %else_block100, %sParserInfo* %info101)
  store %sCLNode* %136, %sCLNode** %node96, align 8
  %137 = bitcast [8192 x i8*]* %lvtable to i8*
  %138 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %137, i64 65536)
  %139 = load i8*, i8** %word, align 8
  %140 = ptrtoint i8* %139 to i64
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %cond_then_block102, label %cond_end103

cond_jump_then86:                                 ; preds = %cond_jump_then78
  %142 = bitcast [8192 x i8*]* %lvtable to i8*
  %143 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %142, i64 65536)
  %144 = load i8*, i8** %word, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %cond_then_block88, label %cond_end89

cond_end87:                                       ; preds = %cond_jump_then78
  %147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %148 = bitcast i8* %147 to %sParserInfo**
  %info90 = load %sParserInfo*, %sParserInfo** %148, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info90)
  %node_block91 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block82, align 8
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %150 = bitcast i8* %149 to %sCLNodeBlock**
  store %sCLNodeBlock* %node_block91, %sCLNodeBlock** %150, align 8
  br label %cond_end80

cond_then_block88:                                ; preds = %cond_jump_then86
  br label %cond_end89

cond_end89:                                       ; preds = %cond_then_block88, %cond_jump_then86
  call void @xfree(i8* %144)
  ret i1 false

cond_then_block102:                               ; preds = %cond_end80
  br label %cond_end103

cond_end103:                                      ; preds = %cond_then_block102, %cond_end80
  call void @xfree(i8* %139)
  ret i1 true
}

define i1 @parse_while_expression(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 40, %sParserInfo* %info3)
  %exp = alloca %sCLNode*
  %4 = bitcast %sCLNode** %exp to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %exp, align 8
  %exp4 = load %sCLNode*, %sCLNode** %exp, align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %5 = call i1 @expression(%sCLNode** %exp, %sParserInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 41, %sParserInfo* %info6)
  %info7 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info7)
  %node_block = alloca %sCLNodeBlock*
  %8 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block, align 8
  %node_block8 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = call i1 @parse_block(%sCLNodeBlock** %node_block, i32 0, %sCLParam* null, %sParserInfo* %info9)
  %LOGICAL_DIANEAL10 = icmp eq i1 %9, false
  br i1 %LOGICAL_DIANEAL10, label %cond_jump_then11, label %cond_end12

cond_jump_then11:                                 ; preds = %cond_end
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret i1 false

cond_end12:                                       ; preds = %cond_end
  %info13 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info13)
  %node14 = load %sCLNode**, %sCLNode*** %node1, align 8
  %exp15 = load %sCLNode*, %sCLNode** %exp, align 8
  %node_block16 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %info17 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = call %sCLNode* @sNodeTree_create_while_expression(%sCLNode* %exp15, %sCLNodeBlock* %node_block16, %sParserInfo* %info17)
  store %sCLNode* %12, %sCLNode** %node14, align 8
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret i1 true
}

define i1 @parse_try(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info3)
  %node_block = alloca %sCLNodeBlock*
  %4 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block, align 8
  %node_block4 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %5 = call i1 @parse_block(%sCLNodeBlock** %node_block, i32 0, %sCLParam* null, %sParserInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info6)
  %info7 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %8 = call i8* @parse_word(%sParserInfo* %info7)
  %name = alloca i8*
  %9 = bitcast i8** %name to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %8, i8** %name, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info8)
  %params = alloca [32 x %sCLParam]
  %10 = bitcast [32 x %sCLParam]* %params to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %num_params = alloca i32
  %11 = bitcast i32* %num_params to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 0, i32* %num_params, align 4
  %12 = bitcast [32 x %sCLParam]* %params to %sCLParam*
  %element_address = getelementptr %sCLParam, %sCLParam* %12, i32 0
  %element = load %sCLParam, %sCLParam* %element_address, align 8
  %13 = getelementptr inbounds %sCLParam, %sCLParam* %element_address, i32 0, i32 0
  %14 = bitcast [128 x i8]* %13 to i8*
  %15 = call i8* @xstrncpy(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.14, i32 0, i32 0), i32 128)
  %16 = bitcast [32 x %sCLParam]* %params to %sCLParam*
  %element_address9 = getelementptr %sCLParam, %sCLParam* %16, i32 0
  %element10 = load %sCLParam, %sCLParam* %element_address9, align 8
  %info11 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %17 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.15, i32 0, i32 0), %sParserInfo* %info11)
  %18 = getelementptr inbounds %sCLParam, %sCLParam* %element_address9, i32 0, i32 1
  store %sCLType* %17, %sCLType** %18, align 8
  %num_params12 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params12, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %node_block2 = alloca %sCLNodeBlock*
  %19 = bitcast %sCLNodeBlock** %node_block2 to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block2, align 8
  %node_block213 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block2, align 8
  %num_params14 = load i32, i32* %num_params, align 4
  %info15 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %20 = bitcast [32 x %sCLParam]* %params to %sCLParam*
  %21 = call i1 @parse_block(%sCLNodeBlock** %node_block2, i32 %num_params14, %sCLParam* %20, %sParserInfo* %info15)
  %LOGICAL_DIANEAL16 = icmp eq i1 %21, false
  br i1 %LOGICAL_DIANEAL16, label %cond_jump_then17, label %cond_end18

cond_jump_then17:                                 ; preds = %cond_end
  %22 = bitcast [8192 x i8*]* %lvtable to i8*
  %23 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %22, i64 65536)
  %24 = load i8*, i8** %name, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block, label %cond_end19

cond_end18:                                       ; preds = %cond_end
  %info20 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info20)
  %node21 = load %sCLNode**, %sCLNode*** %node1, align 8
  %node_block22 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %node_block223 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block2, align 8
  %info24 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %27 = call %sCLNode* @sNodeTree_create_try(%sCLNodeBlock* %node_block22, %sCLNodeBlock* %node_block223, %sParserInfo* %info24)
  store %sCLNode* %27, %sCLNode** %node21, align 8
  %28 = bitcast [8192 x i8*]* %lvtable to i8*
  %29 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %28, i64 65536)
  %30 = load i8*, i8** %name, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %cond_then_block25, label %cond_end26

cond_then_block:                                  ; preds = %cond_jump_then17
  br label %cond_end19

cond_end19:                                       ; preds = %cond_then_block, %cond_jump_then17
  call void @xfree(i8* %24)
  ret i1 false

cond_then_block25:                                ; preds = %cond_end18
  br label %cond_end26

cond_end26:                                       ; preds = %cond_then_block25, %cond_end18
  call void @xfree(i8* %30)
  ret i1 true
}

define i1 @parse_break_expression(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @sNodeTree_create_break(%sParserInfo* %info4)
  store %sCLNode* %4, %sCLNode** %node3, align 8
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i1 true
}

define i1 @parse_throw(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %obj = alloca %sCLNode*
  %4 = bitcast %sCLNode** %obj to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %obj, align 8
  %obj3 = load %sCLNode*, %sCLNode** %obj, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %5 = call i1 @expression(%sCLNode** %obj, %sParserInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %node5 = load %sCLNode**, %sCLNode*** %node1, align 8
  %obj6 = load %sCLNode*, %sCLNode** %obj, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %8 = call %sCLNode* @sNodeTree_create_throw_exception(%sCLNode* %obj6, %sParserInfo* %info7)
  store %sCLNode* %8, %sCLNode** %node5, align 8
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret i1 true
}

define i32 @"vector_length_charp0_src/parser"(%vector__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__charp*
  store %vector__charp* %self, %vector__charp** %self1, align 8
  %2 = bitcast %vector__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self2 = load %vector__charp*, %vector__charp** %self1, align 8
  %3 = getelementptr inbounds %vector__charp, %vector__charp* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i8* @"vector_item_charp1_src/parser"(%vector__charp* %self, i32 %index, i8* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__charp*
  store %vector__charp* %self, %vector__charp** %self1, align 8
  %2 = bitcast %vector__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %default_value3 = alloca i8*
  store i8* %default_value, i8** %default_value3, align 8
  %4 = bitcast i8** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %8 = bitcast i8* %7 to %vector__charp**
  %self6 = load %vector__charp*, %vector__charp** %8, align 8
  %9 = getelementptr inbounds %vector__charp, %vector__charp* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %14 = bitcast i8* %13 to %vector__charp**
  %self7 = load %vector__charp*, %vector__charp** %14, align 8
  %15 = getelementptr inbounds %vector__charp, %vector__charp* %self7, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, %16
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %andand_result_var = alloca i1
  %index8 = load i32, i32* %index2, align 4
  %getmp = icmp sge i32 %index8, 0
  store i1 %getmp, i1* %andand_result_var, align 1
  br i1 %getmp, label %cond_jump_then9, label %cond_jump_end

cond_jump_then9:                                  ; preds = %cond_end
  %index10 = load i32, i32* %index2, align 4
  %self11 = load %vector__charp*, %vector__charp** %self1, align 8
  %17 = getelementptr inbounds %vector__charp, %vector__charp* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %20 = bitcast i8* %19 to %vector__charp**
  %self15 = load %vector__charp*, %vector__charp** %20, align 8
  %21 = getelementptr inbounds %vector__charp, %vector__charp* %self15, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr i8*, i8** %22, i32 %index16
  %element = load i8*, i8** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i8* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load i8*, i8** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret i8* %default_value17
}

define i1 @parse_lambda_expression(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLParam]
  %4 = bitcast [32 x %sCLParam]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %6 = bitcast [32 x %sCLParam]* %params to %sCLParam*
  %7 = call i1 @parse_params(%sCLParam* %6, i32* %num_params, %sParserInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %7, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 58, %sParserInfo* %info5)
  %block_type = alloca %sCLType*
  %10 = bitcast %sCLType** %block_type to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* null, %sCLType** %block_type, align 8
  %block_type6 = load %sCLType*, %sCLType** %block_type, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %11 = call i1 @parse_type(%sCLType** %block_type, %sParserInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %11, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %12 = bitcast [8192 x i8*]* %lvtable to i8*
  %13 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %12, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info11)
  %node_block = alloca %sCLNodeBlock*
  %14 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block, align 8
  %info12 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 7
  %16 = load %vector__sVarTablep*, %vector__sVarTablep** %15, align 8
  %vtables_before = alloca %vector__sVarTablep*
  %17 = bitcast %vector__sVarTablep** %vtables_before to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %vector__sVarTablep* %16, %vector__sVarTablep** %vtables_before, align 8
  %info13 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %18 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.21, i32 0, i32 0), i32 467, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.23, i32 0, i32 0))
  %19 = bitcast i8* %18 to %vector__sVarTablep*
  %20 = call %vector__sVarTablep* @"vector_initialize_sVarTablep2_src/parser"(%vector__sVarTablep* %19)
  %21 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 7
  store %vector__sVarTablep* %20, %vector__sVarTablep** %21, align 8
  %info14 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %22 = getelementptr inbounds %sParserInfo, %sParserInfo* %info14, i32 0, i32 11
  %23 = load i32, i32* %22, align 4
  %max_var_num = alloca i32
  %24 = bitcast i32* %max_var_num to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 %23, i32* %max_var_num, align 4
  %node_block15 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %num_params16 = load i32, i32* %num_params, align 4
  %info17 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %25 = bitcast [32 x %sCLParam]* %params to %sCLParam*
  %26 = call i1 @parse_block(%sCLNodeBlock** %node_block, i32 %num_params16, %sCLParam* %25, %sParserInfo* %info17)
  %LOGICAL_DIANEAL18 = icmp eq i1 %26, false
  br i1 %LOGICAL_DIANEAL18, label %cond_jump_then19, label %cond_end20

cond_jump_then19:                                 ; preds = %cond_end10
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %28 = bitcast i8* %27 to %sParserInfo**
  %info21 = load %sParserInfo*, %sParserInfo** %28, align 8
  %29 = getelementptr inbounds %sParserInfo, %sParserInfo* %info21, i32 0, i32 7
  %30 = load %vector__sVarTablep*, %vector__sVarTablep** %29, align 8
  %31 = load %vector__sVarTablep*, %vector__sVarTablep** %29, align 8
  call void @"vector_finalize_sVarTablep3_src/parser"(%vector__sVarTablep* %31)
  %32 = ptrtoint %vector__sVarTablep* %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %cond_then_block, label %cond_end22

cond_end20:                                       ; preds = %cond_end10
  %info27 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %max_var_num28 = load i32, i32* %max_var_num, align 4
  %34 = getelementptr inbounds %sParserInfo, %sParserInfo* %info27, i32 0, i32 11
  store i32 %max_var_num28, i32* %34, align 4
  %info29 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %35 = getelementptr inbounds %sParserInfo, %sParserInfo* %info29, i32 0, i32 7
  %36 = load %vector__sVarTablep*, %vector__sVarTablep** %35, align 8
  %37 = load %vector__sVarTablep*, %vector__sVarTablep** %35, align 8
  call void @"vector_finalize_sVarTablep5_src/parser"(%vector__sVarTablep* %37)
  %38 = ptrtoint %vector__sVarTablep* %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %cond_then_block30, label %cond_end31

cond_then_block:                                  ; preds = %cond_jump_then19
  br label %cond_end22

cond_end22:                                       ; preds = %cond_then_block, %cond_jump_then19
  %40 = bitcast %vector__sVarTablep* %31 to i8*
  call void @xfree(i8* %40)
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info23 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %44 = bitcast i8* %43 to %vector__sVarTablep**
  %vtables_before24 = load %vector__sVarTablep*, %vector__sVarTablep** %44, align 8
  %45 = getelementptr inbounds %sParserInfo, %sParserInfo* %info23, i32 0, i32 7
  store %vector__sVarTablep* %vtables_before24, %vector__sVarTablep** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %47 = bitcast i8* %46 to %sParserInfo**
  %info25 = load %sParserInfo*, %sParserInfo** %47, align 8
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %49 = bitcast i8* %48 to i32*
  %max_var_num26 = load i32, i32* %49, align 4
  %50 = getelementptr inbounds %sParserInfo, %sParserInfo* %info25, i32 0, i32 11
  store i32 %max_var_num26, i32* %50, align 4
  %51 = bitcast [8192 x i8*]* %lvtable to i8*
  %52 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %51, i64 65536)
  ret i1 false

cond_then_block30:                                ; preds = %cond_end20
  br label %cond_end31

cond_end31:                                       ; preds = %cond_then_block30, %cond_end20
  %53 = bitcast %vector__sVarTablep* %37 to i8*
  call void @xfree(i8* %53)
  %info32 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %vtables_before33 = load %vector__sVarTablep*, %vector__sVarTablep** %vtables_before, align 8
  %54 = getelementptr inbounds %sParserInfo, %sParserInfo* %info32, i32 0, i32 7
  store %vector__sVarTablep* %vtables_before33, %vector__sVarTablep** %54, align 8
  %info34 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info34)
  %node35 = load %sCLNode**, %sCLNode*** %node1, align 8
  %num_params36 = load i32, i32* %num_params, align 4
  %node_block37 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %block_type38 = load %sCLType*, %sCLType** %block_type, align 8
  %info39 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %55 = bitcast [32 x %sCLParam]* %params to %sCLParam*
  %56 = call %sCLNode* @sNodeTree_create_lambda(i32 %num_params36, %sCLParam* %55, %sCLNodeBlock* %node_block37, %sCLType* %block_type38, %sParserInfo* %info39)
  store %sCLNode* %56, %sCLNode** %node35, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret i1 true
}

define %vector__sVarTablep* @"vector_initialize_sVarTablep2_src/parser"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self2 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %3 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %4 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %self5 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %5 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = zext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.25, i32 0, i32 0), i32 452, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @global_string.27, i32 0, i32 0))
  %8 = bitcast i8* %7 to %sVarTable**
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self4, i32 0, i32 0
  store %sVarTable** %8, %sVarTable*** %9, align 8
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__sVarTablep* %self6
}

define void @"vector_finalize_sVarTablep3_src/parser"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self2 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %eqtmpX = icmp eq %vector__sVarTablep* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 true, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self14 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %6 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self14, i32 0, i32 0
  %7 = load %sVarTable**, %sVarTable*** %6, align 8
  %8 = load %sVarTable**, %sVarTable*** %6, align 8
  %9 = bitcast %sVarTable** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %13 = bitcast i8* %12 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %13, align 8
  %14 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %17 = bitcast i8* %16 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %17, align 8
  %18 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 0
  %19 = load %sVarTable**, %sVarTable*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %19, i32 %i8
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %20 = load %sVarTable*, %sVarTable** %element_address, align 8
  %21 = ptrtoint %sVarTable* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sVarTable, %sVarTable* %20, i32 0, i32 0
  %24 = load %map__charp_sVarp*, %map__charp_sVarp** %23, align 8
  call void @"map_finalize_charp_sVarp4_src/parser"(%map__charp_sVarp* %24)
  %25 = ptrtoint %map__charp_sVarp* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end12, %cond_then_block
  %27 = bitcast %sVarTable* %20 to i8*
  call void @xfree(i8* %27)
  %i13 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i13, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  %28 = bitcast %map__charp_sVarp* %24 to i8*
  call void @xfree(i8* %28)
  br label %cond_end10
}

define void @"map_finalize_charp_sVarp4_src/parser"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %eqtmpX = icmp eq %map__charp_sVarp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %i6 = load i32, i32* %i, align 4
  %element_address = getelementptr i1, i1* %13, i32 %i6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then7, label %cond_end8

cond_end_block:                                   ; preds = %loop_top_block
  %self20 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %14 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self20, i32 0, i32 2
  %15 = load %sVar**, %sVar*** %14, align 8
  %16 = load %sVar**, %sVar*** %14, align 8
  %17 = bitcast %sVar** %16 to i8*
  call void @xfree(i8* %17)
  %i21 = alloca i32
  %18 = bitcast i32* %i21 to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 0, i32* %i21, align 4
  br label %loop_top_block22

cond_jump_then7:                                  ; preds = %cond_then_block
  br i1 false, label %cond_jump_then9, label %cond_end10

cond_end8:                                        ; preds = %cond_end10, %cond_then_block
  %i19 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i19, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then9:                                  ; preds = %cond_jump_then7
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %24 = bitcast i8* %23 to i32*
  %i12 = load i32, i32* %24, align 4
  %element_address13 = getelementptr %sVar*, %sVar** %22, i32 %i12
  %element14 = load %sVar*, %sVar** %element_address13, align 8
  %25 = load %sVar*, %sVar** %element_address13, align 8
  %26 = ptrtoint %sVar* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block15, label %cond_end16

cond_end10:                                       ; preds = %cond_end16, %cond_jump_then7
  br label %cond_end8

cond_then_block15:                                ; preds = %cond_jump_then9
  %28 = getelementptr inbounds %sVar, %sVar* %25, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block17, label %cond_end18

cond_end16:                                       ; preds = %cond_end18, %cond_jump_then9
  %32 = bitcast %sVar* %25 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10

cond_then_block17:                                ; preds = %cond_then_block15
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_then_block15
  call void @xfree(i8* %29)
  br label %cond_end16

loop_top_block22:                                 ; preds = %cond_end33, %cond_end_block
  %i23 = load i32, i32* %i21, align 4
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %38 = bitcast i8* %37 to %map__charp_sVarp**
  %self28 = load %map__charp_sVarp*, %map__charp_sVarp** %38, align 8
  %39 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self28, i32 0, i32 1
  %40 = load i1*, i1** %39, align 8
  %i29 = load i32, i32* %i21, align 4
  %element_address30 = getelementptr i1, i1* %40, i32 %i29
  %element31 = load i1, i1* %element_address30, align 1
  br i1 %element31, label %cond_jump_then32, label %cond_end33

cond_end_block27:                                 ; preds = %loop_top_block22
  %self45 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %41 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self45, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8**, i8*** %41, align 8
  %44 = bitcast i8** %43 to i8*
  call void @xfree(i8* %44)
  %self46 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %45 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self46, i32 0, i32 1
  %46 = load i1*, i1** %45, align 8
  %47 = load i1*, i1** %45, align 8
  %48 = ptrtoint i1* %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %cond_then_block47, label %cond_end48

cond_jump_then32:                                 ; preds = %cond_then_block26
  br i1 true, label %cond_jump_then34, label %cond_end35

cond_end33:                                       ; preds = %cond_end35, %cond_then_block26
  %i42 = load i32, i32* %i21, align 4
  %addtmp43 = add nsw i32 %i42, 1
  store i32 %addtmp43, i32* %i21, align 4
  %subttmp44 = sub nsw i32 %addtmp43, 1
  br label %loop_top_block22

cond_jump_then34:                                 ; preds = %cond_jump_then32
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %55 = bitcast i8* %54 to i32*
  %i37 = load i32, i32* %55, align 4
  %element_address38 = getelementptr i8*, i8** %53, i32 %i37
  %element39 = load i8*, i8** %element_address38, align 8
  %56 = load i8*, i8** %element_address38, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %cond_then_block40, label %cond_end41

cond_end35:                                       ; preds = %cond_end41, %cond_jump_then32
  br label %cond_end33

cond_then_block40:                                ; preds = %cond_jump_then34
  br label %cond_end41

cond_end41:                                       ; preds = %cond_then_block40, %cond_jump_then34
  call void @xfree(i8* %56)
  br label %cond_end35

cond_then_block47:                                ; preds = %cond_end_block27
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end_block27
  %59 = bitcast i1* %47 to i8*
  call void @xfree(i8* %59)
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  ret void
}

define void @"vector_finalize_sVarTablep5_src/parser"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self2 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %eqtmpX = icmp eq %vector__sVarTablep* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 true, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self14 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %6 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self14, i32 0, i32 0
  %7 = load %sVarTable**, %sVarTable*** %6, align 8
  %8 = load %sVarTable**, %sVarTable*** %6, align 8
  %9 = bitcast %sVarTable** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %13 = bitcast i8* %12 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %13, align 8
  %14 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %17 = bitcast i8* %16 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %17, align 8
  %18 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 0
  %19 = load %sVarTable**, %sVarTable*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %19, i32 %i8
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %20 = load %sVarTable*, %sVarTable** %element_address, align 8
  %21 = ptrtoint %sVarTable* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sVarTable, %sVarTable* %20, i32 0, i32 0
  %24 = load %map__charp_sVarp*, %map__charp_sVarp** %23, align 8
  call void @"map_finalize_charp_sVarp6_src/parser"(%map__charp_sVarp* %24)
  %25 = ptrtoint %map__charp_sVarp* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end12, %cond_then_block
  %27 = bitcast %sVarTable* %20 to i8*
  call void @xfree(i8* %27)
  %i13 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i13, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  %28 = bitcast %map__charp_sVarp* %24 to i8*
  call void @xfree(i8* %28)
  br label %cond_end10
}

define void @"map_finalize_charp_sVarp6_src/parser"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %eqtmpX = icmp eq %map__charp_sVarp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %i6 = load i32, i32* %i, align 4
  %element_address = getelementptr i1, i1* %13, i32 %i6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then7, label %cond_end8

cond_end_block:                                   ; preds = %loop_top_block
  %self20 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %14 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self20, i32 0, i32 2
  %15 = load %sVar**, %sVar*** %14, align 8
  %16 = load %sVar**, %sVar*** %14, align 8
  %17 = bitcast %sVar** %16 to i8*
  call void @xfree(i8* %17)
  %i21 = alloca i32
  %18 = bitcast i32* %i21 to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 0, i32* %i21, align 4
  br label %loop_top_block22

cond_jump_then7:                                  ; preds = %cond_then_block
  br i1 false, label %cond_jump_then9, label %cond_end10

cond_end8:                                        ; preds = %cond_end10, %cond_then_block
  %i19 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i19, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then9:                                  ; preds = %cond_jump_then7
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %24 = bitcast i8* %23 to i32*
  %i12 = load i32, i32* %24, align 4
  %element_address13 = getelementptr %sVar*, %sVar** %22, i32 %i12
  %element14 = load %sVar*, %sVar** %element_address13, align 8
  %25 = load %sVar*, %sVar** %element_address13, align 8
  %26 = ptrtoint %sVar* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block15, label %cond_end16

cond_end10:                                       ; preds = %cond_end16, %cond_jump_then7
  br label %cond_end8

cond_then_block15:                                ; preds = %cond_jump_then9
  %28 = getelementptr inbounds %sVar, %sVar* %25, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block17, label %cond_end18

cond_end16:                                       ; preds = %cond_end18, %cond_jump_then9
  %32 = bitcast %sVar* %25 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10

cond_then_block17:                                ; preds = %cond_then_block15
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_then_block15
  call void @xfree(i8* %29)
  br label %cond_end16

loop_top_block22:                                 ; preds = %cond_end33, %cond_end_block
  %i23 = load i32, i32* %i21, align 4
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %38 = bitcast i8* %37 to %map__charp_sVarp**
  %self28 = load %map__charp_sVarp*, %map__charp_sVarp** %38, align 8
  %39 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self28, i32 0, i32 1
  %40 = load i1*, i1** %39, align 8
  %i29 = load i32, i32* %i21, align 4
  %element_address30 = getelementptr i1, i1* %40, i32 %i29
  %element31 = load i1, i1* %element_address30, align 1
  br i1 %element31, label %cond_jump_then32, label %cond_end33

cond_end_block27:                                 ; preds = %loop_top_block22
  %self45 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %41 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self45, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8**, i8*** %41, align 8
  %44 = bitcast i8** %43 to i8*
  call void @xfree(i8* %44)
  %self46 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %45 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self46, i32 0, i32 1
  %46 = load i1*, i1** %45, align 8
  %47 = load i1*, i1** %45, align 8
  %48 = ptrtoint i1* %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %cond_then_block47, label %cond_end48

cond_jump_then32:                                 ; preds = %cond_then_block26
  br i1 true, label %cond_jump_then34, label %cond_end35

cond_end33:                                       ; preds = %cond_end35, %cond_then_block26
  %i42 = load i32, i32* %i21, align 4
  %addtmp43 = add nsw i32 %i42, 1
  store i32 %addtmp43, i32* %i21, align 4
  %subttmp44 = sub nsw i32 %addtmp43, 1
  br label %loop_top_block22

cond_jump_then34:                                 ; preds = %cond_jump_then32
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %55 = bitcast i8* %54 to i32*
  %i37 = load i32, i32* %55, align 4
  %element_address38 = getelementptr i8*, i8** %53, i32 %i37
  %element39 = load i8*, i8** %element_address38, align 8
  %56 = load i8*, i8** %element_address38, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %cond_then_block40, label %cond_end41

cond_end35:                                       ; preds = %cond_end41, %cond_jump_then32
  br label %cond_end33

cond_then_block40:                                ; preds = %cond_jump_then34
  br label %cond_end41

cond_end41:                                       ; preds = %cond_then_block40, %cond_jump_then34
  call void @xfree(i8* %56)
  br label %cond_end35

cond_then_block47:                                ; preds = %cond_end_block27
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end_block27
  %59 = bitcast i1* %47 to i8*
  call void @xfree(i8* %59)
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  ret void
}

define i1 @get_block_text(%buffer* %buf, i8 %begin, i8 %end, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %buf1 = alloca %buffer*
  store %buffer* %buf, %buffer** %buf1, align 8
  %2 = bitcast %buffer** %buf1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %begin2 = alloca i8
  store i8 %begin, i8* %begin2, align 1
  store i8* %begin2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %end3 = alloca i8
  store i8 %end, i8* %end3, align 1
  store i8* %end3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info4, align 8
  %3 = bitcast %sParserInfo** %info4 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %dquort = alloca i1
  %4 = bitcast i1* %dquort to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i1 false, i1* %dquort, align 1
  %nest = alloca i32
  %5 = bitcast i32* %nest to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 0, i32* %nest, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %7 = bitcast i8* %6 to i1*
  %dquort5 = load i1, i1* %7, align 1
  store i1 %dquort5, i1* %andand_result_var, align 1
  br i1 %dquort5, label %cond_jump_then, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_jump_then116, %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 true

cond_jump_then:                                   ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %11 = bitcast i8* %10 to %sParserInfo**
  %info6 = load %sParserInfo*, %sParserInfo** %11, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %derefference_value = load i8, i8* %13, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 92
  %andand = and i1 %dquort5, %eqtmpX
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then7, label %"cond_jump_elif0\0A"

cond_jump_then7:                                  ; preds = %cond_jump_end
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %15 = bitcast i8* %14 to %buffer**
  %buf8 = load %buffer*, %buffer** %15, align 8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %17 = bitcast i8* %16 to %sParserInfo**
  %info9 = load %sParserInfo*, %sParserInfo** %17, align 8
  %18 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %derefference_value10 = load i8, i8* %19, align 8
  call void @buffer_append_char(%buffer* %buf8, i8 %derefference_value10)
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %21 = bitcast i8* %20 to %sParserInfo**
  %info11 = load %sParserInfo*, %sParserInfo** %21, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %23 = bitcast i8* %22 to %sParserInfo**
  %info12 = load %sParserInfo*, %sParserInfo** %23, align 8
  %24 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %25 to i64
  %addtmp = add nsw i64 %26, 1
  %27 = inttoptr i64 %addtmp to i8*
  %28 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = ptrtoint i8* %27 to i64
  %subtmp = sub nsw i64 %29, 1
  %30 = inttoptr i64 %subtmp to i8*
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %32 = bitcast i8* %31 to %sParserInfo**
  %info13 = load %sParserInfo*, %sParserInfo** %32, align 8
  %33 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %derefference_value14 = load i8, i8* %34, align 8
  %eqtmpX15 = icmp eq i8 %derefference_value14, 10
  br i1 %eqtmpX15, label %cond_jump_then16, label %cond_end17

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end
  %andand_result_var28 = alloca i1
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %36 = bitcast i8* %35 to i1*
  %dquort29 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %dquort29, false
  store i1 %LOGICAL_DIANEAL, i1* %andand_result_var28, align 1
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then30, label %cond_jump_end31

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end31
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %38 = bitcast i8* %37 to %buffer**
  %buf37 = load %buffer*, %buffer** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %40 = bitcast i8* %39 to %sParserInfo**
  %info38 = load %sParserInfo*, %sParserInfo** %40, align 8
  %41 = getelementptr inbounds %sParserInfo, %sParserInfo* %info38, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %derefference_value39 = load i8, i8* %42, align 8
  call void @buffer_append_char(%buffer* %buf37, i8 %derefference_value39)
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %44 = bitcast i8* %43 to %sParserInfo**
  %info40 = load %sParserInfo*, %sParserInfo** %44, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %46 = bitcast i8* %45 to %sParserInfo**
  %info41 = load %sParserInfo*, %sParserInfo** %46, align 8
  %47 = getelementptr inbounds %sParserInfo, %sParserInfo* %info41, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i64
  %addtmp42 = add nsw i64 %49, 1
  %50 = inttoptr i64 %addtmp42 to i8*
  %51 = getelementptr inbounds %sParserInfo, %sParserInfo* %info40, i32 0, i32 4
  store i8* %50, i8** %51, align 8
  %52 = ptrtoint i8* %50 to i64
  %subtmp43 = sub nsw i64 %52, 1
  %53 = inttoptr i64 %subtmp43 to i8*
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %55 = bitcast i8* %54 to %sParserInfo**
  %info44 = load %sParserInfo*, %sParserInfo** %55, align 8
  %56 = getelementptr inbounds %sParserInfo, %sParserInfo* %info44, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %derefference_value45 = load i8, i8* %57, align 8
  %eqtmpX46 = icmp eq i8 %derefference_value45, 10
  br i1 %eqtmpX46, label %cond_jump_then47, label %cond_end48

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end31
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %59 = bitcast i8* %58 to %sParserInfo**
  %info60 = load %sParserInfo*, %sParserInfo** %59, align 8
  %60 = getelementptr inbounds %sParserInfo, %sParserInfo* %info60, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %derefference_value61 = load i8, i8* %61, align 8
  %eqtmpX62 = icmp eq i8 %derefference_value61, 34
  br i1 %eqtmpX62, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

"cond_jump_elif_then1\0A":                        ; preds = %"cond_jump_elif1\0A"
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %63 = bitcast i8* %62 to i1*
  %dquort63 = load i1, i1* %63, align 1
  %LOGICAL_DIANEAL64 = icmp eq i1 %dquort63, false
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %65 = bitcast i8* %64 to i1*
  store i1 %LOGICAL_DIANEAL64, i1* %65, align 1
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %67 = bitcast i8* %66 to %buffer**
  %buf65 = load %buffer*, %buffer** %67, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %69 = bitcast i8* %68 to %sParserInfo**
  %info66 = load %sParserInfo*, %sParserInfo** %69, align 8
  %70 = getelementptr inbounds %sParserInfo, %sParserInfo* %info66, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %derefference_value67 = load i8, i8* %71, align 8
  call void @buffer_append_char(%buffer* %buf65, i8 %derefference_value67)
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %73 = bitcast i8* %72 to %sParserInfo**
  %info68 = load %sParserInfo*, %sParserInfo** %73, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %75 = bitcast i8* %74 to %sParserInfo**
  %info69 = load %sParserInfo*, %sParserInfo** %75, align 8
  %76 = getelementptr inbounds %sParserInfo, %sParserInfo* %info69, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %77 to i64
  %addtmp70 = add nsw i64 %78, 1
  %79 = inttoptr i64 %addtmp70 to i8*
  %80 = getelementptr inbounds %sParserInfo, %sParserInfo* %info68, i32 0, i32 4
  store i8* %79, i8** %80, align 8
  %81 = ptrtoint i8* %79 to i64
  %subtmp71 = sub nsw i64 %81, 1
  %82 = inttoptr i64 %subtmp71 to i8*
  br label %cond_end

"cond_jump_elif2\0A":                             ; preds = %"cond_jump_elif1\0A"
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %84 = bitcast i8* %83 to i1*
  %dquort72 = load i1, i1* %84, align 1
  br i1 %dquort72, label %"cond_jump_elif_then2\0A", label %"cond_jump_elif3\0A"

"cond_jump_elif_then2\0A":                        ; preds = %"cond_jump_elif2\0A"
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %86 = bitcast i8* %85 to %sParserInfo**
  %info73 = load %sParserInfo*, %sParserInfo** %86, align 8
  %87 = getelementptr inbounds %sParserInfo, %sParserInfo* %info73, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %derefference_value74 = load i8, i8* %88, align 8
  %eqtmpX75 = icmp eq i8 %derefference_value74, 10
  br i1 %eqtmpX75, label %cond_jump_then76, label %cond_end77

"cond_jump_elif3\0A":                             ; preds = %"cond_jump_elif2\0A"
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %90 = bitcast i8* %89 to %sParserInfo**
  %info89 = load %sParserInfo*, %sParserInfo** %90, align 8
  %91 = getelementptr inbounds %sParserInfo, %sParserInfo* %info89, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %derefference_value90 = load i8, i8* %92, align 8
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %begin91 = load i8, i8* %93, align 1
  %eqtmpX92 = icmp eq i8 %derefference_value90, %begin91
  br i1 %eqtmpX92, label %"cond_jump_elif_then3\0A", label %"cond_jump_elif4\0A"

"cond_jump_elif_then3\0A":                        ; preds = %"cond_jump_elif3\0A"
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %95 = bitcast i8* %94 to %buffer**
  %buf93 = load %buffer*, %buffer** %95, align 8
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %97 = bitcast i8* %96 to %sParserInfo**
  %info94 = load %sParserInfo*, %sParserInfo** %97, align 8
  %98 = getelementptr inbounds %sParserInfo, %sParserInfo* %info94, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %derefference_value95 = load i8, i8* %99, align 8
  call void @buffer_append_char(%buffer* %buf93, i8 %derefference_value95)
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %101 = bitcast i8* %100 to %sParserInfo**
  %info96 = load %sParserInfo*, %sParserInfo** %101, align 8
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %103 = bitcast i8* %102 to %sParserInfo**
  %info97 = load %sParserInfo*, %sParserInfo** %103, align 8
  %104 = getelementptr inbounds %sParserInfo, %sParserInfo* %info97, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = ptrtoint i8* %105 to i64
  %addtmp98 = add nsw i64 %106, 1
  %107 = inttoptr i64 %addtmp98 to i8*
  %108 = getelementptr inbounds %sParserInfo, %sParserInfo* %info96, i32 0, i32 4
  store i8* %107, i8** %108, align 8
  %109 = ptrtoint i8* %107 to i64
  %subtmp99 = sub nsw i64 %109, 1
  %110 = inttoptr i64 %subtmp99 to i8*
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %112 = bitcast i8* %111 to i32*
  %nest100 = load i32, i32* %112, align 4
  %addtmp101 = add nsw i32 %nest100, 1
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %114 = bitcast i8* %113 to i32*
  store i32 %addtmp101, i32* %114, align 4
  %subttmp102 = sub nsw i32 %addtmp101, 1
  br label %cond_end

"cond_jump_elif4\0A":                             ; preds = %"cond_jump_elif3\0A"
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %116 = bitcast i8* %115 to %sParserInfo**
  %info103 = load %sParserInfo*, %sParserInfo** %116, align 8
  %117 = getelementptr inbounds %sParserInfo, %sParserInfo* %info103, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %derefference_value104 = load i8, i8* %118, align 8
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %end105 = load i8, i8* %119, align 1
  %eqtmpX106 = icmp eq i8 %derefference_value104, %end105
  br i1 %eqtmpX106, label %"cond_jump_elif_then4\0A", label %cond_else_block

"cond_jump_elif_then4\0A":                        ; preds = %"cond_jump_elif4\0A"
  %120 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %121 = bitcast i8* %120 to %buffer**
  %buf107 = load %buffer*, %buffer** %121, align 8
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %123 = bitcast i8* %122 to %sParserInfo**
  %info108 = load %sParserInfo*, %sParserInfo** %123, align 8
  %124 = getelementptr inbounds %sParserInfo, %sParserInfo* %info108, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %derefference_value109 = load i8, i8* %125, align 8
  call void @buffer_append_char(%buffer* %buf107, i8 %derefference_value109)
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %127 = bitcast i8* %126 to %sParserInfo**
  %info110 = load %sParserInfo*, %sParserInfo** %127, align 8
  %128 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %129 = bitcast i8* %128 to %sParserInfo**
  %info111 = load %sParserInfo*, %sParserInfo** %129, align 8
  %130 = getelementptr inbounds %sParserInfo, %sParserInfo* %info111, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = ptrtoint i8* %131 to i64
  %addtmp112 = add nsw i64 %132, 1
  %133 = inttoptr i64 %addtmp112 to i8*
  %134 = getelementptr inbounds %sParserInfo, %sParserInfo* %info110, i32 0, i32 4
  store i8* %133, i8** %134, align 8
  %135 = ptrtoint i8* %133 to i64
  %subtmp113 = sub nsw i64 %135, 1
  %136 = inttoptr i64 %subtmp113 to i8*
  %137 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %138 = bitcast i8* %137 to i32*
  %nest114 = load i32, i32* %138, align 4
  %eqtmpX115 = icmp eq i32 %nest114, 0
  br i1 %eqtmpX115, label %cond_jump_then116, label %cond_end117

cond_else_block:                                  ; preds = %"cond_jump_elif4\0A"
  %139 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %140 = bitcast i8* %139 to %sParserInfo**
  %info122 = load %sParserInfo*, %sParserInfo** %140, align 8
  %141 = getelementptr inbounds %sParserInfo, %sParserInfo* %info122, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %derefference_value123 = load i8, i8* %142, align 8
  %eqtmpX124 = icmp eq i8 %derefference_value123, 10
  br i1 %eqtmpX124, label %cond_jump_then125, label %cond_end126

cond_end:                                         ; preds = %cond_end126, %cond_end117, %"cond_jump_elif_then3\0A", %cond_end77, %"cond_jump_elif_then1\0A", %cond_end48, %cond_end17
  br label %loop_top_block

cond_jump_then16:                                 ; preds = %cond_jump_then7
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %144 = bitcast i8* %143 to %sParserInfo**
  %info18 = load %sParserInfo*, %sParserInfo** %144, align 8
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %146 = bitcast i8* %145 to %sParserInfo**
  %info19 = load %sParserInfo*, %sParserInfo** %146, align 8
  %147 = getelementptr inbounds %sParserInfo, %sParserInfo* %info19, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %addtmp20 = add nsw i32 %148, 1
  %149 = getelementptr inbounds %sParserInfo, %sParserInfo* %info18, i32 0, i32 1
  store i32 %addtmp20, i32* %149, align 4
  %subttmp = sub nsw i32 %addtmp20, 1
  br label %cond_end17

cond_end17:                                       ; preds = %cond_jump_then16, %cond_jump_then7
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %151 = bitcast i8* %150 to %buffer**
  %buf21 = load %buffer*, %buffer** %151, align 8
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %153 = bitcast i8* %152 to %sParserInfo**
  %info22 = load %sParserInfo*, %sParserInfo** %153, align 8
  %154 = getelementptr inbounds %sParserInfo, %sParserInfo* %info22, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %derefference_value23 = load i8, i8* %155, align 8
  call void @buffer_append_char(%buffer* %buf21, i8 %derefference_value23)
  %156 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %157 = bitcast i8* %156 to %sParserInfo**
  %info24 = load %sParserInfo*, %sParserInfo** %157, align 8
  %158 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %159 = bitcast i8* %158 to %sParserInfo**
  %info25 = load %sParserInfo*, %sParserInfo** %159, align 8
  %160 = getelementptr inbounds %sParserInfo, %sParserInfo* %info25, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = ptrtoint i8* %161 to i64
  %addtmp26 = add nsw i64 %162, 1
  %163 = inttoptr i64 %addtmp26 to i8*
  %164 = getelementptr inbounds %sParserInfo, %sParserInfo* %info24, i32 0, i32 4
  store i8* %163, i8** %164, align 8
  %165 = ptrtoint i8* %163 to i64
  %subtmp27 = sub nsw i64 %165, 1
  %166 = inttoptr i64 %subtmp27 to i8*
  br label %cond_end

cond_jump_then30:                                 ; preds = %"cond_jump_elif0\0A"
  %167 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %168 = bitcast i8* %167 to %sParserInfo**
  %info32 = load %sParserInfo*, %sParserInfo** %168, align 8
  %169 = getelementptr inbounds %sParserInfo, %sParserInfo* %info32, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %derefference_value33 = load i8, i8* %170, align 8
  %eqtmpX34 = icmp eq i8 %derefference_value33, 39
  %andand35 = and i1 %LOGICAL_DIANEAL, %eqtmpX34
  store i1 %andand35, i1* %andand_result_var28, align 1
  br label %cond_jump_end31

cond_jump_end31:                                  ; preds = %cond_jump_then30, %"cond_jump_elif0\0A"
  %andand_result_value36 = load i1, i1* %andand_result_var28, align 1
  br i1 %andand_result_value36, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

cond_jump_then47:                                 ; preds = %"cond_jump_elif_then0\0A"
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %172 = bitcast i8* %171 to %sParserInfo**
  %info49 = load %sParserInfo*, %sParserInfo** %172, align 8
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %174 = bitcast i8* %173 to %sParserInfo**
  %info50 = load %sParserInfo*, %sParserInfo** %174, align 8
  %175 = getelementptr inbounds %sParserInfo, %sParserInfo* %info50, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %addtmp51 = add nsw i32 %176, 1
  %177 = getelementptr inbounds %sParserInfo, %sParserInfo* %info49, i32 0, i32 1
  store i32 %addtmp51, i32* %177, align 4
  %subttmp52 = sub nsw i32 %addtmp51, 1
  br label %cond_end48

cond_end48:                                       ; preds = %cond_jump_then47, %"cond_jump_elif_then0\0A"
  %178 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %179 = bitcast i8* %178 to %buffer**
  %buf53 = load %buffer*, %buffer** %179, align 8
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %181 = bitcast i8* %180 to %sParserInfo**
  %info54 = load %sParserInfo*, %sParserInfo** %181, align 8
  %182 = getelementptr inbounds %sParserInfo, %sParserInfo* %info54, i32 0, i32 4
  %183 = load i8*, i8** %182, align 8
  %derefference_value55 = load i8, i8* %183, align 8
  call void @buffer_append_char(%buffer* %buf53, i8 %derefference_value55)
  %184 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %185 = bitcast i8* %184 to %sParserInfo**
  %info56 = load %sParserInfo*, %sParserInfo** %185, align 8
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %187 = bitcast i8* %186 to %sParserInfo**
  %info57 = load %sParserInfo*, %sParserInfo** %187, align 8
  %188 = getelementptr inbounds %sParserInfo, %sParserInfo* %info57, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = ptrtoint i8* %189 to i64
  %addtmp58 = add nsw i64 %190, 1
  %191 = inttoptr i64 %addtmp58 to i8*
  %192 = getelementptr inbounds %sParserInfo, %sParserInfo* %info56, i32 0, i32 4
  store i8* %191, i8** %192, align 8
  %193 = ptrtoint i8* %191 to i64
  %subtmp59 = sub nsw i64 %193, 1
  %194 = inttoptr i64 %subtmp59 to i8*
  br label %cond_end

cond_jump_then76:                                 ; preds = %"cond_jump_elif_then2\0A"
  %195 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %196 = bitcast i8* %195 to %sParserInfo**
  %info78 = load %sParserInfo*, %sParserInfo** %196, align 8
  %197 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %198 = bitcast i8* %197 to %sParserInfo**
  %info79 = load %sParserInfo*, %sParserInfo** %198, align 8
  %199 = getelementptr inbounds %sParserInfo, %sParserInfo* %info79, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %addtmp80 = add nsw i32 %200, 1
  %201 = getelementptr inbounds %sParserInfo, %sParserInfo* %info78, i32 0, i32 1
  store i32 %addtmp80, i32* %201, align 4
  %subttmp81 = sub nsw i32 %addtmp80, 1
  br label %cond_end77

cond_end77:                                       ; preds = %cond_jump_then76, %"cond_jump_elif_then2\0A"
  %202 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %203 = bitcast i8* %202 to %buffer**
  %buf82 = load %buffer*, %buffer** %203, align 8
  %204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %205 = bitcast i8* %204 to %sParserInfo**
  %info83 = load %sParserInfo*, %sParserInfo** %205, align 8
  %206 = getelementptr inbounds %sParserInfo, %sParserInfo* %info83, i32 0, i32 4
  %207 = load i8*, i8** %206, align 8
  %derefference_value84 = load i8, i8* %207, align 8
  call void @buffer_append_char(%buffer* %buf82, i8 %derefference_value84)
  %208 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %209 = bitcast i8* %208 to %sParserInfo**
  %info85 = load %sParserInfo*, %sParserInfo** %209, align 8
  %210 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %211 = bitcast i8* %210 to %sParserInfo**
  %info86 = load %sParserInfo*, %sParserInfo** %211, align 8
  %212 = getelementptr inbounds %sParserInfo, %sParserInfo* %info86, i32 0, i32 4
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %213 to i64
  %addtmp87 = add nsw i64 %214, 1
  %215 = inttoptr i64 %addtmp87 to i8*
  %216 = getelementptr inbounds %sParserInfo, %sParserInfo* %info85, i32 0, i32 4
  store i8* %215, i8** %216, align 8
  %217 = ptrtoint i8* %215 to i64
  %subtmp88 = sub nsw i64 %217, 1
  %218 = inttoptr i64 %subtmp88 to i8*
  br label %cond_end

cond_jump_then116:                                ; preds = %"cond_jump_elif_then4\0A"
  %219 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %220 = bitcast i8* %219 to %sParserInfo**
  %info118 = load %sParserInfo*, %sParserInfo** %220, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info118)
  br label %cond_end_block

cond_end117:                                      ; preds = %after_break, %"cond_jump_elif_then4\0A"
  %221 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %222 = bitcast i8* %221 to i32*
  %nest119 = load i32, i32* %222, align 4
  %subttmp120 = sub nsw i32 %nest119, 1
  %223 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %224 = bitcast i8* %223 to i32*
  store i32 %subttmp120, i32* %224, align 4
  %addtmp121 = add nsw i32 %subttmp120, 1
  br label %cond_end

after_break:                                      ; No predecessors!
  br label %cond_end117

cond_jump_then125:                                ; preds = %cond_else_block
  %225 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %226 = bitcast i8* %225 to %sParserInfo**
  %info127 = load %sParserInfo*, %sParserInfo** %226, align 8
  %227 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %228 = bitcast i8* %227 to %sParserInfo**
  %info128 = load %sParserInfo*, %sParserInfo** %228, align 8
  %229 = getelementptr inbounds %sParserInfo, %sParserInfo* %info128, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %addtmp129 = add nsw i32 %230, 1
  %231 = getelementptr inbounds %sParserInfo, %sParserInfo* %info127, i32 0, i32 1
  store i32 %addtmp129, i32* %231, align 4
  %subttmp130 = sub nsw i32 %addtmp129, 1
  br label %cond_end126

cond_end126:                                      ; preds = %cond_jump_then125, %cond_else_block
  %232 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %233 = bitcast i8* %232 to %buffer**
  %buf131 = load %buffer*, %buffer** %233, align 8
  %234 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %235 = bitcast i8* %234 to %sParserInfo**
  %info132 = load %sParserInfo*, %sParserInfo** %235, align 8
  %236 = getelementptr inbounds %sParserInfo, %sParserInfo* %info132, i32 0, i32 4
  %237 = load i8*, i8** %236, align 8
  %derefference_value133 = load i8, i8* %237, align 8
  call void @buffer_append_char(%buffer* %buf131, i8 %derefference_value133)
  %238 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %239 = bitcast i8* %238 to %sParserInfo**
  %info134 = load %sParserInfo*, %sParserInfo** %239, align 8
  %240 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %241 = bitcast i8* %240 to %sParserInfo**
  %info135 = load %sParserInfo*, %sParserInfo** %241, align 8
  %242 = getelementptr inbounds %sParserInfo, %sParserInfo* %info135, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = ptrtoint i8* %243 to i64
  %addtmp136 = add nsw i64 %244, 1
  %245 = inttoptr i64 %addtmp136 to i8*
  %246 = getelementptr inbounds %sParserInfo, %sParserInfo* %info134, i32 0, i32 4
  store i8* %245, i8** %246, align 8
  %247 = ptrtoint i8* %245 to i64
  %subtmp137 = sub nsw i64 %247, 1
  %248 = inttoptr i64 %subtmp137 to i8*
  br label %cond_end
}

define i1 @parse_class(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %sline = alloca i32
  %6 = bitcast i32* %sline to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 %5, i32* %sline, align 4
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %7 = call i8* @parse_word(%sParserInfo* %info4)
  %name = alloca i8*
  %8 = bitcast i8** %name to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %7, i8** %name, align 8
  %9 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.29, i32 0, i32 0), i32 555, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.31, i32 0, i32 0))
  %10 = bitcast i8* %9 to %buffer*
  %11 = call %buffer* @buffer_initialize(%buffer* %10)
  %block_text = alloca %buffer*
  %12 = bitcast %buffer** %block_text to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %buffer* %11, %buffer** %block_text, align 8
  %block_text5 = load %buffer*, %buffer** %block_text, align 8
  %name6 = load i8*, i8** %name, align 8
  call void @buffer_append_str(%buffer* %block_text5, i8* %name6)
  %block_text7 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_append_char(%buffer* %block_text7, i8 32)
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  %derefference_value = load i8, i8* %14, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 60
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %entry
  %info36 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info36, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %derefference_value37 = load i8, i8* %16, align 8
  %eqtmpX38 = icmp eq i8 %derefference_value37, 101
  br i1 %eqtmpX38, label %cond_jump_then39, label %cond_end40

loop_top_block:                                   ; preds = %cond_end19, %cond_jump_then
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %18 = bitcast i8* %17 to %buffer**
  %block_text9 = load %buffer*, %buffer** %18, align 8
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %20 = bitcast i8* %19 to %sParserInfo**
  %info10 = load %sParserInfo*, %sParserInfo** %20, align 8
  %21 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %derefference_value11 = load i8, i8* %22, align 8
  call void @buffer_append_char(%buffer* %block_text9, i8 %derefference_value11)
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %24 = bitcast i8* %23 to %sParserInfo**
  %info12 = load %sParserInfo*, %sParserInfo** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %26 = bitcast i8* %25 to %sParserInfo**
  %info13 = load %sParserInfo*, %sParserInfo** %26, align 8
  %27 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i64
  %addtmp = add nsw i64 %29, 1
  %30 = inttoptr i64 %addtmp to i8*
  %31 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 4
  store i8* %30, i8** %31, align 8
  %32 = ptrtoint i8* %30 to i64
  %subtmp = sub nsw i64 %32, 1
  %33 = inttoptr i64 %subtmp to i8*
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sParserInfo**
  %info14 = load %sParserInfo*, %sParserInfo** %35, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info14)
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %37 = bitcast i8* %36 to %sParserInfo**
  %info15 = load %sParserInfo*, %sParserInfo** %37, align 8
  %38 = getelementptr inbounds %sParserInfo, %sParserInfo* %info15, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %derefference_value16 = load i8, i8* %39, align 8
  %eqtmpX17 = icmp eq i8 %derefference_value16, 62
  br i1 %eqtmpX17, label %cond_jump_then18, label %"cond_jump_elif0\0A"

cond_end_block:                                   ; preds = %cond_jump_then18, %loop_top_block
  br label %cond_end

cond_jump_then18:                                 ; preds = %cond_then_block
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %41 = bitcast i8* %40 to %buffer**
  %block_text20 = load %buffer*, %buffer** %41, align 8
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %43 = bitcast i8* %42 to %sParserInfo**
  %info21 = load %sParserInfo*, %sParserInfo** %43, align 8
  %44 = getelementptr inbounds %sParserInfo, %sParserInfo* %info21, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %derefference_value22 = load i8, i8* %45, align 8
  call void @buffer_append_char(%buffer* %block_text20, i8 %derefference_value22)
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %47 = bitcast i8* %46 to %sParserInfo**
  %info23 = load %sParserInfo*, %sParserInfo** %47, align 8
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %49 = bitcast i8* %48 to %sParserInfo**
  %info24 = load %sParserInfo*, %sParserInfo** %49, align 8
  %50 = getelementptr inbounds %sParserInfo, %sParserInfo* %info24, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %51 to i64
  %addtmp25 = add nsw i64 %52, 1
  %53 = inttoptr i64 %addtmp25 to i8*
  %54 = getelementptr inbounds %sParserInfo, %sParserInfo* %info23, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = ptrtoint i8* %53 to i64
  %subtmp26 = sub nsw i64 %55, 1
  %56 = inttoptr i64 %subtmp26 to i8*
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %58 = bitcast i8* %57 to %sParserInfo**
  %info27 = load %sParserInfo*, %sParserInfo** %58, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info27)
  br label %cond_end_block

"cond_jump_elif0\0A":                             ; preds = %cond_then_block
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %60 = bitcast i8* %59 to %sParserInfo**
  %info28 = load %sParserInfo*, %sParserInfo** %60, align 8
  %61 = getelementptr inbounds %sParserInfo, %sParserInfo* %info28, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %derefference_value29 = load i8, i8* %62, align 8
  %eqtmpX30 = icmp eq i8 %derefference_value29, 0
  br i1 %eqtmpX30, label %"cond_jump_elif_then0\0A", label %cond_end19

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %64 = bitcast i8* %63 to %sParserInfo**
  %info31 = load %sParserInfo*, %sParserInfo** %64, align 8
  call void @parser_err_msg(%sParserInfo* %info31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @global_string.32, i32 0, i32 0))
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  %67 = load i8*, i8** %name, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %cond_then_block32, label %cond_end33

cond_end19:                                       ; preds = %"cond_jump_elif0\0A", %after_break
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end19

cond_then_block32:                                ; preds = %"cond_jump_elif_then0\0A"
  br label %cond_end33

cond_end33:                                       ; preds = %cond_then_block32, %"cond_jump_elif_then0\0A"
  call void @xfree(i8* %67)
  %70 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %70)
  %71 = ptrtoint %buffer* %70 to i64
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %cond_then_block34, label %cond_end35

cond_then_block34:                                ; preds = %cond_end33
  br label %cond_end35

cond_end35:                                       ; preds = %cond_then_block34, %cond_end33
  %73 = bitcast %buffer* %70 to i8*
  call void @xfree(i8* %73)
  ret i1 false

cond_jump_then39:                                 ; preds = %cond_end
  br label %loop_top_block41

cond_end40:                                       ; preds = %cond_end_block43, %cond_end
  %block_text62 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_append_char(%buffer* %block_text62, i8 10)
  %info63 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info63)
  %block_text64 = load %buffer*, %buffer** %block_text, align 8
  %info65 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %74 = call i1 @get_block_text(%buffer* %block_text64, i8 123, i8 125, %sParserInfo* %info65)
  %LOGICAL_DIANEAL = icmp eq i1 %74, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then66, label %cond_end67

loop_top_block41:                                 ; preds = %cond_end50, %cond_jump_then39
  br i1 true, label %cond_then_block42, label %cond_end_block43

cond_then_block42:                                ; preds = %loop_top_block41
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %76 = bitcast i8* %75 to %sParserInfo**
  %info44 = load %sParserInfo*, %sParserInfo** %76, align 8
  %77 = getelementptr inbounds %sParserInfo, %sParserInfo* %info44, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %derefference_value45 = load i8, i8* %78, align 8
  %eqtmpX46 = icmp eq i8 %derefference_value45, 123
  br i1 %eqtmpX46, label %cond_jump_then47, label %"cond_jump_elif0\0A48"

cond_end_block43:                                 ; preds = %cond_jump_then47, %loop_top_block41
  br label %cond_end40

cond_jump_then47:                                 ; preds = %cond_then_block42
  br label %cond_end_block43

"cond_jump_elif0\0A48":                           ; preds = %cond_then_block42
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %80 = bitcast i8* %79 to %sParserInfo**
  %info52 = load %sParserInfo*, %sParserInfo** %80, align 8
  %81 = getelementptr inbounds %sParserInfo, %sParserInfo* %info52, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %derefference_value53 = load i8, i8* %82, align 8
  %eqtmpX54 = icmp eq i8 %derefference_value53, 0
  br i1 %eqtmpX54, label %"cond_jump_elif_then0\0A49", label %cond_else_block

"cond_jump_elif_then0\0A49":                      ; preds = %"cond_jump_elif0\0A48"
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %83 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.33, i32 0, i32 0))
  call void @exit(i32 2)
  br label %cond_end50

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A48"
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %85 = bitcast i8* %84 to %buffer**
  %block_text55 = load %buffer*, %buffer** %85, align 8
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %87 = bitcast i8* %86 to %sParserInfo**
  %info56 = load %sParserInfo*, %sParserInfo** %87, align 8
  %88 = getelementptr inbounds %sParserInfo, %sParserInfo* %info56, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %derefference_value57 = load i8, i8* %89, align 8
  call void @buffer_append_char(%buffer* %block_text55, i8 %derefference_value57)
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %91 = bitcast i8* %90 to %sParserInfo**
  %info58 = load %sParserInfo*, %sParserInfo** %91, align 8
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %93 = bitcast i8* %92 to %sParserInfo**
  %info59 = load %sParserInfo*, %sParserInfo** %93, align 8
  %94 = getelementptr inbounds %sParserInfo, %sParserInfo* %info59, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i64
  %addtmp60 = add nsw i64 %96, 1
  %97 = inttoptr i64 %addtmp60 to i8*
  %98 = getelementptr inbounds %sParserInfo, %sParserInfo* %info58, i32 0, i32 4
  store i8* %97, i8** %98, align 8
  %99 = ptrtoint i8* %97 to i64
  %subtmp61 = sub nsw i64 %99, 1
  %100 = inttoptr i64 %subtmp61 to i8*
  br label %cond_end50

cond_end50:                                       ; preds = %cond_else_block, %"cond_jump_elif_then0\0A49", %after_break51
  br label %loop_top_block41

after_break51:                                    ; No predecessors!
  br label %cond_end50

cond_jump_then66:                                 ; preds = %cond_end40
  %101 = bitcast [8192 x i8*]* %lvtable to i8*
  %102 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %101, i64 65536)
  %103 = load i8*, i8** %name, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %cond_then_block68, label %cond_end69

cond_end67:                                       ; preds = %cond_end40
  %node72 = load %sCLNode**, %sCLNode*** %node1, align 8
  %block_text73 = load %buffer*, %buffer** %block_text, align 8
  %106 = getelementptr inbounds %buffer, %buffer* %block_text73, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %info74 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %108 = getelementptr inbounds %sParserInfo, %sParserInfo* %info74, i32 0, i32 0
  %109 = bitcast [4096 x i8]* %108 to i8*
  %sline75 = load i32, i32* %sline, align 4
  %info76 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %110 = call %sCLNode* @sNodeTree_create_class(i8* %107, i8* %109, i32 %sline75, %sParserInfo* %info76)
  store %sCLNode* %110, %sCLNode** %node72, align 8
  %111 = bitcast [8192 x i8*]* %lvtable to i8*
  %112 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %111, i64 65536)
  %113 = load i8*, i8** %name, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %cond_then_block77, label %cond_end78

cond_then_block68:                                ; preds = %cond_jump_then66
  br label %cond_end69

cond_end69:                                       ; preds = %cond_then_block68, %cond_jump_then66
  call void @xfree(i8* %103)
  %116 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %116)
  %117 = ptrtoint %buffer* %116 to i64
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %cond_then_block70, label %cond_end71

cond_then_block70:                                ; preds = %cond_end69
  br label %cond_end71

cond_end71:                                       ; preds = %cond_then_block70, %cond_end69
  %119 = bitcast %buffer* %116 to i8*
  call void @xfree(i8* %119)
  ret i1 false

cond_then_block77:                                ; preds = %cond_end67
  br label %cond_end78

cond_end78:                                       ; preds = %cond_then_block77, %cond_end67
  call void @xfree(i8* %113)
  %120 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %120)
  %121 = ptrtoint %buffer* %120 to i64
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %cond_then_block79, label %cond_end80

cond_then_block79:                                ; preds = %cond_end78
  br label %cond_end80

cond_end80:                                       ; preds = %cond_then_block79, %cond_end78
  %123 = bitcast %buffer* %120 to i8*
  call void @xfree(i8* %123)
  ret i1 true
}

define i1 @parse_macro(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i8* @parse_word(%sParserInfo* %info3)
  %name = alloca i8*
  %5 = bitcast i8** %name to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %4, i8** %name, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info4)
  %6 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.35, i32 0, i32 0), i32 616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.37, i32 0, i32 0))
  %7 = bitcast i8* %6 to %buffer*
  %8 = call %buffer* @buffer_initialize(%buffer* %7)
  %block_text = alloca %buffer*
  %9 = bitcast %buffer** %block_text to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %buffer* %8, %buffer** %block_text, align 8
  %block_text5 = load %buffer*, %buffer** %block_text, align 8
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %10 = call i1 @get_block_text(%buffer* %block_text5, i8 123, i8 125, %sParserInfo* %info6)
  %LOGICAL_DIANEAL = icmp eq i1 %10, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  %13 = load i8*, i8** %name, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %cond_then_block, label %cond_end7

cond_end:                                         ; preds = %entry
  %node10 = load %sCLNode**, %sCLNode*** %node1, align 8
  %name11 = load i8*, i8** %name, align 8
  %block_text12 = load %buffer*, %buffer** %block_text, align 8
  %16 = getelementptr inbounds %buffer, %buffer* %block_text12, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @string(i8* %17)
  %19 = call i8* @string_substring(i8* %18, i32 0, i32 -2)
  %info13 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %20 = call %sCLNode* @sNodeTree_create_macro(i8* %name11, i8* %19, %sParserInfo* %info13)
  store %sCLNode* %20, %sCLNode** %node10, align 8
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  %23 = ptrtoint i8* %18 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %cond_then_block14, label %cond_end15

cond_then_block:                                  ; preds = %cond_jump_then
  br label %cond_end7

cond_end7:                                        ; preds = %cond_then_block, %cond_jump_then
  call void @xfree(i8* %13)
  %25 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %25)
  %26 = ptrtoint %buffer* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block8, label %cond_end9

cond_then_block8:                                 ; preds = %cond_end7
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_end7
  %28 = bitcast %buffer* %25 to i8*
  call void @xfree(i8* %28)
  ret i1 false

cond_then_block14:                                ; preds = %cond_end
  br label %cond_end15

cond_end15:                                       ; preds = %cond_then_block14, %cond_end
  call void @xfree(i8* %18)
  %29 = ptrtoint i8* %19 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %cond_then_block16, label %cond_end17

cond_then_block16:                                ; preds = %cond_end15
  br label %cond_end17

cond_end17:                                       ; preds = %cond_then_block16, %cond_end15
  call void @xfree(i8* %19)
  %31 = load i8*, i8** %name, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %cond_then_block18, label %cond_end19

cond_then_block18:                                ; preds = %cond_end17
  br label %cond_end19

cond_end19:                                       ; preds = %cond_then_block18, %cond_end17
  call void @xfree(i8* %31)
  %34 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %34)
  %35 = ptrtoint %buffer* %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %cond_then_block20, label %cond_end21

cond_then_block20:                                ; preds = %cond_end19
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_end19
  %37 = bitcast %buffer* %34 to i8*
  call void @xfree(i8* %37)
  ret i1 true
}

define i1 @parse_calling_params(i32* %num_params, %sCLNode** %params, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %num_params1 = alloca i32*
  store i32* %num_params, i32** %num_params1, align 8
  %2 = bitcast i32** %num_params1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %params2 = alloca %sCLNode**
  store %sCLNode** %params, %sCLNode*** %params2, align 8
  %3 = bitcast %sCLNode*** %params2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end24, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %6 = bitcast i8* %5 to %sParserInfo**
  %info4 = load %sParserInfo*, %sParserInfo** %6, align 8
  %7 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %derefference_value = load i8, i8* %8, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 41
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then23, %cond_jump_then, %loop_top_block
  %info38 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info38, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %derefference_value39 = load i8, i8* %10, align 8
  %eqtmpX40 = icmp eq i8 %derefference_value39, 123
  br i1 %eqtmpX40, label %cond_jump_then41, label %cond_end42

cond_jump_then:                                   ; preds = %cond_then_block
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %12 = bitcast i8* %11 to %sParserInfo**
  %info5 = load %sParserInfo*, %sParserInfo** %12, align 8
  call void @expected_next_character(i8 41, %sParserInfo* %info5)
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %node = alloca %sCLNode*
  %13 = bitcast %sCLNode** %node to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* null, %sCLNode** %node, align 8
  %node6 = load %sCLNode*, %sCLNode** %node, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %15 = bitcast i8* %14 to %sParserInfo**
  %info7 = load %sParserInfo*, %sParserInfo** %15, align 8
  %16 = call i1 @expression(%sCLNode** %node, %sParserInfo* %info7)
  %LOGICAL_DIANEAL = icmp eq i1 %16, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then8, label %cond_end9

after_break:                                      ; No predecessors!
  br label %cond_end

cond_jump_then8:                                  ; preds = %cond_end
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 false

cond_end9:                                        ; preds = %cond_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %20 = bitcast i8* %19 to %sCLNode***
  %params10 = load %sCLNode**, %sCLNode*** %20, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %22 = bitcast i8* %21 to i32**
  %num_params11 = load i32*, i32** %22, align 8
  %derefference_value12 = load i32, i32* %num_params11, align 8
  %node13 = load %sCLNode*, %sCLNode** %node, align 8
  %element_address = getelementptr %sCLNode*, %sCLNode** %params10, i32 %derefference_value12
  store %sCLNode* %node13, %sCLNode** %element_address, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %24 = bitcast i8* %23 to i32**
  %num_params14 = load i32*, i32** %24, align 8
  %derefference_value15 = load i32, i32* %num_params14, align 8
  %25 = load i32, i32* %num_params14, align 4
  %addtmp = add nsw i32 %25, 1
  store i32 %addtmp, i32* %num_params14, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %27 = bitcast i8* %26 to i32**
  %num_params16 = load i32*, i32** %27, align 8
  %derefference_value17 = load i32, i32* %num_params16, align 8
  %getmp = icmp sge i32 %derefference_value17, 32
  br i1 %getmp, label %cond_jump_then18, label %cond_end19

cond_jump_then18:                                 ; preds = %cond_end9
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %28 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.38, i32 0, i32 0))
  call void @exit(i32 1)
  br label %cond_end19

cond_end19:                                       ; preds = %cond_jump_then18, %cond_end9
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %30 = bitcast i8* %29 to %sParserInfo**
  %info20 = load %sParserInfo*, %sParserInfo** %30, align 8
  %31 = getelementptr inbounds %sParserInfo, %sParserInfo* %info20, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %derefference_value21 = load i8, i8* %32, align 8
  %eqtmpX22 = icmp eq i8 %derefference_value21, 41
  br i1 %eqtmpX22, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end19
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %34 = bitcast i8* %33 to %sParserInfo**
  %info25 = load %sParserInfo*, %sParserInfo** %34, align 8
  call void @expected_next_character(i8 41, %sParserInfo* %info25)
  br label %cond_end_block

"cond_jump_elif0\0A":                             ; preds = %cond_end19
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %36 = bitcast i8* %35 to %sParserInfo**
  %info27 = load %sParserInfo*, %sParserInfo** %36, align 8
  %37 = getelementptr inbounds %sParserInfo, %sParserInfo* %info27, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %derefference_value28 = load i8, i8* %38, align 8
  %eqtmpX29 = icmp eq i8 %derefference_value28, 0
  br i1 %eqtmpX29, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %40 = bitcast i8* %39 to %sParserInfo**
  %info30 = load %sParserInfo*, %sParserInfo** %40, align 8
  call void @parser_err_msg(%sParserInfo* %info30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.39, i32 0, i32 0))
  br label %cond_end24

"cond_jump_elif1\0A":                             ; preds = %"cond_jump_elif0\0A"
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info31 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info31, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %derefference_value32 = load i8, i8* %44, align 8
  %eqtmpX33 = icmp eq i8 %derefference_value32, 44
  br i1 %eqtmpX33, label %"cond_jump_elif_then1\0A", label %cond_end24

"cond_jump_elif_then1\0A":                        ; preds = %"cond_jump_elif1\0A"
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %46 = bitcast i8* %45 to %sParserInfo**
  %info34 = load %sParserInfo*, %sParserInfo** %46, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %48 = bitcast i8* %47 to %sParserInfo**
  %info35 = load %sParserInfo*, %sParserInfo** %48, align 8
  %49 = getelementptr inbounds %sParserInfo, %sParserInfo* %info35, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %addtmp36 = add nsw i64 %51, 1
  %52 = inttoptr i64 %addtmp36 to i8*
  %53 = getelementptr inbounds %sParserInfo, %sParserInfo* %info34, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = ptrtoint i8* %52 to i64
  %subtmp = sub nsw i64 %54, 1
  %55 = inttoptr i64 %subtmp to i8*
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %57 = bitcast i8* %56 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %57, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info37)
  br label %cond_end24

cond_end24:                                       ; preds = %"cond_jump_elif_then1\0A", %"cond_jump_elif1\0A", %"cond_jump_elif_then0\0A", %after_break26
  br label %loop_top_block

after_break26:                                    ; No predecessors!
  br label %cond_end24

cond_jump_then41:                                 ; preds = %cond_end_block
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %59 = bitcast i8* %58 to %sParserInfo**
  %info43 = load %sParserInfo*, %sParserInfo** %59, align 8
  %60 = getelementptr inbounds %sParserInfo, %sParserInfo* %info43, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %sline = alloca i32
  %62 = bitcast i32* %sline to i8*
  store i8* %62, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 %61, i32* %sline, align 4
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %64 = bitcast i8* %63 to %sParserInfo**
  %info44 = load %sParserInfo*, %sParserInfo** %64, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info44)
  %65 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.40, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.41, i32 0, i32 0), i32 666, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.43, i32 0, i32 0))
  %66 = bitcast i8* %65 to %buffer*
  %67 = call %buffer* @buffer_initialize(%buffer* %66)
  %block_text = alloca %buffer*
  %68 = bitcast %buffer** %block_text to i8*
  store i8* %68, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %buffer* %67, %buffer** %block_text, align 8
  %block_text45 = load %buffer*, %buffer** %block_text, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %70 = bitcast i8* %69 to %sParserInfo**
  %info46 = load %sParserInfo*, %sParserInfo** %70, align 8
  %71 = call i1 @get_block_text(%buffer* %block_text45, i8 123, i8 125, %sParserInfo* %info46)
  %LOGICAL_DIANEAL47 = icmp eq i1 %71, false
  br i1 %LOGICAL_DIANEAL47, label %cond_jump_then48, label %cond_end49

cond_end42:                                       ; preds = %cond_end67, %cond_end_block
  %72 = bitcast [8192 x i8*]* %lvtable to i8*
  %73 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %72, i64 65536)
  ret i1 true

cond_jump_then48:                                 ; preds = %cond_jump_then41
  %74 = bitcast [8192 x i8*]* %lvtable to i8*
  %75 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %74, i64 65536)
  %76 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %76)
  %77 = ptrtoint %buffer* %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %cond_then_block50, label %cond_end51

cond_end49:                                       ; preds = %cond_jump_then41
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %80 = bitcast i8* %79 to %sCLNode***
  %params52 = load %sCLNode**, %sCLNode*** %80, align 8
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %82 = bitcast i8* %81 to i32**
  %num_params53 = load i32*, i32** %82, align 8
  %derefference_value54 = load i32, i32* %num_params53, align 8
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %84 = bitcast i8* %83 to %sParserInfo**
  %info55 = load %sParserInfo*, %sParserInfo** %84, align 8
  %85 = getelementptr inbounds %sParserInfo, %sParserInfo* %info55, i32 0, i32 0
  %86 = bitcast [4096 x i8]* %85 to i8*
  %sline56 = load i32, i32* %sline, align 4
  %block_text57 = load %buffer*, %buffer** %block_text, align 8
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %88 = bitcast i8* %87 to %sParserInfo**
  %info58 = load %sParserInfo*, %sParserInfo** %88, align 8
  %89 = call %sCLNode* @sNodeTree_create_method_block(i8* %86, i32 %sline56, %buffer* %block_text57, %sParserInfo* %info58)
  %element_address59 = getelementptr %sCLNode*, %sCLNode** %params52, i32 %derefference_value54
  store %sCLNode* %89, %sCLNode** %element_address59, align 8
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %91 = bitcast i8* %90 to i32**
  %num_params60 = load i32*, i32** %91, align 8
  %derefference_value61 = load i32, i32* %num_params60, align 8
  %92 = load i32, i32* %num_params60, align 4
  %addtmp62 = add nsw i32 %92, 1
  store i32 %addtmp62, i32* %num_params60, align 8
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %94 = bitcast i8* %93 to i32**
  %num_params63 = load i32*, i32** %94, align 8
  %derefference_value64 = load i32, i32* %num_params63, align 8
  %getmp65 = icmp sge i32 %derefference_value64, 32
  br i1 %getmp65, label %cond_jump_then66, label %cond_end67

cond_then_block50:                                ; preds = %cond_jump_then48
  br label %cond_end51

cond_end51:                                       ; preds = %cond_then_block50, %cond_jump_then48
  %95 = bitcast %buffer* %76 to i8*
  call void @xfree(i8* %95)
  ret i1 false

cond_jump_then66:                                 ; preds = %cond_end49
  %stderr68 = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %96 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.44, i32 0, i32 0))
  call void @exit(i32 1)
  br label %cond_end67

cond_end67:                                       ; preds = %cond_jump_then66, %cond_end49
  br label %cond_end42
}

define i1 @postposition_operator(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode**, %sCLNode*** %node1, align 8
  %derefference_value = load %sCLNode*, %sCLNode** %node3, align 8
  %eqtmpX = icmp eq %sCLNode* %derefference_value, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret i1 true

cond_end:                                         ; preds = %entry
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end10, %cond_end
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %6 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8
  %derefference_value5 = load i8, i8* %7, align 8
  %8 = icmp ne i8 %derefference_value5, 0
  br i1 %8, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %10 = bitcast i8* %9 to %sParserInfo**
  %info6 = load %sParserInfo*, %sParserInfo** %10, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %derefference_value7 = load i8, i8* %12, align 8
  %eqtmpX8 = icmp eq i8 %derefference_value7, 46
  br i1 %eqtmpX8, label %cond_jump_then9, label %"cond_jump_elif0\0A"

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret i1 true

cond_jump_then9:                                  ; preds = %cond_then_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %16 = bitcast i8* %15 to %sParserInfo**
  %info11 = load %sParserInfo*, %sParserInfo** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %18 = bitcast i8* %17 to %sParserInfo**
  %info12 = load %sParserInfo*, %sParserInfo** %18, align 8
  %19 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i64
  %addtmp = add nsw i64 %21, 1
  %22 = inttoptr i64 %addtmp to i8*
  %23 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = ptrtoint i8* %22 to i64
  %subtmp = sub nsw i64 %24, 1
  %25 = inttoptr i64 %subtmp to i8*
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %27 = bitcast i8* %26 to %sParserInfo**
  %info13 = load %sParserInfo*, %sParserInfo** %27, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info13)
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %29 = bitcast i8* %28 to %sParserInfo**
  %info14 = load %sParserInfo*, %sParserInfo** %29, align 8
  %30 = call i8* @parse_word(%sParserInfo* %info14)
  %name = alloca i8*
  %31 = bitcast i8** %name to i8*
  store i8* %31, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %30, i8** %name, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %33 = bitcast i8* %32 to %sParserInfo**
  %info15 = load %sParserInfo*, %sParserInfo** %33, align 8
  %34 = getelementptr inbounds %sParserInfo, %sParserInfo* %info15, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %derefference_value16 = load i8, i8* %35, align 8
  %eqtmpX17 = icmp eq i8 %derefference_value16, 40
  br i1 %eqtmpX17, label %cond_jump_then18, label %cond_else_block19

"cond_jump_elif0\0A":                             ; preds = %cond_then_block
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %37 = bitcast i8* %36 to %sParserInfo**
  %info206 = load %sParserInfo*, %sParserInfo** %37, align 8
  %38 = getelementptr inbounds %sParserInfo, %sParserInfo* %info206, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %derefference_value207 = load i8, i8* %39, align 8
  %eqtmpX208 = icmp eq i8 %derefference_value207, 40
  br i1 %eqtmpX208, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %41 = bitcast i8* %40 to %sParserInfo**
  %info209 = load %sParserInfo*, %sParserInfo** %41, align 8
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %43 = bitcast i8* %42 to %sParserInfo**
  %info210 = load %sParserInfo*, %sParserInfo** %43, align 8
  %44 = getelementptr inbounds %sParserInfo, %sParserInfo* %info210, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i64
  %addtmp211 = add nsw i64 %46, 1
  %47 = inttoptr i64 %addtmp211 to i8*
  %48 = getelementptr inbounds %sParserInfo, %sParserInfo* %info209, i32 0, i32 4
  store i8* %47, i8** %48, align 8
  %49 = ptrtoint i8* %47 to i64
  %subtmp212 = sub nsw i64 %49, 1
  %50 = inttoptr i64 %subtmp212 to i8*
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %52 = bitcast i8* %51 to %sParserInfo**
  %info213 = load %sParserInfo*, %sParserInfo** %52, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info213)
  %num_params214 = alloca i32
  %53 = bitcast i32* %num_params214 to i8*
  store i8* %53, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 0, i32* %num_params214, align 4
  %params215 = alloca [32 x %sCLNode*]
  %54 = bitcast [32 x %sCLNode*]* %params215 to i8*
  store i8* %54, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %56 = bitcast i8* %55 to %sCLNode***
  %node216 = load %sCLNode**, %sCLNode*** %56, align 8
  %derefference_value217 = load %sCLNode*, %sCLNode** %node216, align 8
  %57 = bitcast [32 x %sCLNode*]* %params215 to %sCLNode**
  %element_address218 = getelementptr %sCLNode*, %sCLNode** %57, i32 0
  store %sCLNode* %derefference_value217, %sCLNode** %element_address218, align 8
  store i32 1, i32* %num_params214, align 4
  %num_params219 = load i32, i32* %num_params214, align 4
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sParserInfo**
  %info220 = load %sParserInfo*, %sParserInfo** %59, align 8
  %60 = bitcast [32 x %sCLNode*]* %params215 to %sCLNode**
  %61 = call i1 @parse_calling_params(i32* %num_params214, %sCLNode** %60, %sParserInfo* %info220)
  %LOGICAL_DIANEAL221 = icmp eq i1 %61, false
  br i1 %LOGICAL_DIANEAL221, label %cond_jump_then222, label %cond_end223

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  br label %cond_end_block

cond_end10:                                       ; preds = %after_break, %cond_end223, %cond_end205
  br label %loop_top_block

cond_jump_then18:                                 ; preds = %cond_jump_then9
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sParserInfo**
  %info21 = load %sParserInfo*, %sParserInfo** %63, align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %65 = bitcast i8* %64 to %sParserInfo**
  %info22 = load %sParserInfo*, %sParserInfo** %65, align 8
  %66 = getelementptr inbounds %sParserInfo, %sParserInfo* %info22, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i64
  %addtmp23 = add nsw i64 %68, 1
  %69 = inttoptr i64 %addtmp23 to i8*
  %70 = getelementptr inbounds %sParserInfo, %sParserInfo* %info21, i32 0, i32 4
  store i8* %69, i8** %70, align 8
  %71 = ptrtoint i8* %69 to i64
  %subtmp24 = sub nsw i64 %71, 1
  %72 = inttoptr i64 %subtmp24 to i8*
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %74 = bitcast i8* %73 to %sParserInfo**
  %info25 = load %sParserInfo*, %sParserInfo** %74, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info25)
  %num_params = alloca i32
  %75 = bitcast i32* %num_params to i8*
  store i8* %75, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %params = alloca [32 x %sCLNode*]
  %76 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %76, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %78 = bitcast i8* %77 to %sCLNode***
  %node26 = load %sCLNode**, %sCLNode*** %78, align 8
  %derefference_value27 = load %sCLNode*, %sCLNode** %node26, align 8
  %79 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %79, i32 0
  store %sCLNode* %derefference_value27, %sCLNode** %element_address, align 8
  store i32 1, i32* %num_params, align 4
  %num_params28 = load i32, i32* %num_params, align 4
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %81 = bitcast i8* %80 to %sParserInfo**
  %info29 = load %sParserInfo*, %sParserInfo** %81, align 8
  %82 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %83 = call i1 @parse_calling_params(i32* %num_params, %sCLNode** %82, %sParserInfo* %info29)
  %LOGICAL_DIANEAL = icmp eq i1 %83, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then30, label %cond_end31

cond_else_block19:                                ; preds = %cond_jump_then9
  %andand_result_var = alloca i1
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %85 = bitcast i8* %84 to %sParserInfo**
  %info38 = load %sParserInfo*, %sParserInfo** %85, align 8
  %86 = getelementptr inbounds %sParserInfo, %sParserInfo* %info38, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %derefference_value39 = load i8, i8* %87, align 8
  %eqtmpX40 = icmp eq i8 %derefference_value39, 61
  store i1 %eqtmpX40, i1* %andand_result_var, align 1
  br i1 %eqtmpX40, label %cond_jump_then41, label %cond_jump_end

cond_end20:                                       ; preds = %cond_end47, %cond_end31
  %88 = load i8*, i8** %name, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %cond_then_block204, label %cond_end205

cond_jump_then30:                                 ; preds = %cond_jump_then18
  %91 = bitcast [8192 x i8*]* %lvtable to i8*
  %92 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %91, i64 65536)
  %93 = load i8*, i8** %name, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %cond_then_block32, label %cond_end33

cond_end31:                                       ; preds = %cond_jump_then18
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %97 = bitcast i8* %96 to %sCLNode***
  %node34 = load %sCLNode**, %sCLNode*** %97, align 8
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %99 = bitcast i8* %98 to i8**
  %name35 = load i8*, i8** %99, align 8
  %num_params36 = load i32, i32* %num_params, align 4
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %101 = bitcast i8* %100 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %101, align 8
  %102 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %103 = call %sCLNode* @sNodeTree_create_method_call(i8* %name35, i32 %num_params36, %sCLNode** %102, %sParserInfo* %info37)
  store %sCLNode* %103, %sCLNode** %node34, align 8
  br label %cond_end20

cond_then_block32:                                ; preds = %cond_jump_then30
  br label %cond_end33

cond_end33:                                       ; preds = %cond_then_block32, %cond_jump_then30
  call void @xfree(i8* %93)
  ret i1 false

cond_jump_then41:                                 ; preds = %cond_else_block19
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %105 = bitcast i8* %104 to %sParserInfo**
  %info42 = load %sParserInfo*, %sParserInfo** %105, align 8
  %106 = getelementptr inbounds %sParserInfo, %sParserInfo* %info42, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %107 to i64
  %addtmp43 = add nsw i64 %108, 1
  %109 = inttoptr i64 %addtmp43 to i8*
  %derefference_value44 = load i8, i8* %109, align 8
  %noteqtmp = icmp ne i8 %derefference_value44, 61
  %andand = and i1 %eqtmpX40, %noteqtmp
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then41, %cond_else_block19
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then45, label %cond_else_block46

cond_jump_then45:                                 ; preds = %cond_jump_end
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %111 = bitcast i8* %110 to %sParserInfo**
  %info48 = load %sParserInfo*, %sParserInfo** %111, align 8
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %113 = bitcast i8* %112 to %sParserInfo**
  %info49 = load %sParserInfo*, %sParserInfo** %113, align 8
  %114 = getelementptr inbounds %sParserInfo, %sParserInfo* %info49, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %115 to i64
  %addtmp50 = add nsw i64 %116, 1
  %117 = inttoptr i64 %addtmp50 to i8*
  %118 = getelementptr inbounds %sParserInfo, %sParserInfo* %info48, i32 0, i32 4
  store i8* %117, i8** %118, align 8
  %119 = ptrtoint i8* %117 to i64
  %subtmp51 = sub nsw i64 %119, 1
  %120 = inttoptr i64 %subtmp51 to i8*
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %122 = bitcast i8* %121 to %sParserInfo**
  %info52 = load %sParserInfo*, %sParserInfo** %122, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info52)
  %exp = alloca %sCLNode*
  %123 = bitcast %sCLNode** %exp to i8*
  store i8* %123, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* null, %sCLNode** %exp, align 8
  %exp53 = load %sCLNode*, %sCLNode** %exp, align 8
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %125 = bitcast i8* %124 to %sParserInfo**
  %info54 = load %sParserInfo*, %sParserInfo** %125, align 8
  %126 = call i1 @expression(%sCLNode** %exp, %sParserInfo* %info54)
  %LOGICAL_DIANEAL55 = icmp eq i1 %126, false
  br i1 %LOGICAL_DIANEAL55, label %cond_jump_then56, label %cond_end57

cond_else_block46:                                ; preds = %cond_jump_end
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %128 = bitcast i8* %127 to %sCLNode***
  %node66 = load %sCLNode**, %sCLNode*** %128, align 8
  %derefference_value67 = load %sCLNode*, %sCLNode** %node66, align 8
  %obj_node = alloca %sCLNode*
  %129 = bitcast %sCLNode** %obj_node to i8*
  store i8* %129, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %derefference_value67, %sCLNode** %obj_node, align 8
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %131 = bitcast i8* %130 to %sCLNode***
  %node68 = load %sCLNode**, %sCLNode*** %131, align 8
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %133 = bitcast i8* %132 to %sCLNode***
  %node69 = load %sCLNode**, %sCLNode*** %133, align 8
  %derefference_value70 = load %sCLNode*, %sCLNode** %node69, align 8
  %134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %135 = bitcast i8* %134 to i8**
  %name71 = load i8*, i8** %135, align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %137 = bitcast i8* %136 to %sParserInfo**
  %info72 = load %sParserInfo*, %sParserInfo** %137, align 8
  %138 = call %sCLNode* @sNodeTree_create_load_field(%sCLNode* %derefference_value70, i8* %name71, %sParserInfo* %info72)
  store %sCLNode* %138, %sCLNode** %node68, align 8
  %andand_result_var73 = alloca i1
  %139 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %140 = bitcast i8* %139 to %sParserInfo**
  %info74 = load %sParserInfo*, %sParserInfo** %140, align 8
  %141 = getelementptr inbounds %sParserInfo, %sParserInfo* %info74, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %derefference_value75 = load i8, i8* %142, align 8
  %eqtmpX76 = icmp eq i8 %derefference_value75, 43
  store i1 %eqtmpX76, i1* %andand_result_var73, align 1
  br i1 %eqtmpX76, label %cond_jump_then77, label %cond_jump_end78

cond_end47:                                       ; preds = %cond_end88, %cond_end57
  br label %cond_end20

cond_jump_then56:                                 ; preds = %cond_jump_then45
  %143 = bitcast [8192 x i8*]* %lvtable to i8*
  %144 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %143, i64 65536)
  %145 = load i8*, i8** %name, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %cond_then_block58, label %cond_end59

cond_end57:                                       ; preds = %cond_jump_then45
  %148 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %149 = bitcast i8* %148 to %sCLNode***
  %node60 = load %sCLNode**, %sCLNode*** %149, align 8
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %151 = bitcast i8* %150 to %sCLNode***
  %node61 = load %sCLNode**, %sCLNode*** %151, align 8
  %derefference_value62 = load %sCLNode*, %sCLNode** %node61, align 8
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %153 = bitcast i8* %152 to i8**
  %name63 = load i8*, i8** %153, align 8
  %exp64 = load %sCLNode*, %sCLNode** %exp, align 8
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %155 = bitcast i8* %154 to %sParserInfo**
  %info65 = load %sParserInfo*, %sParserInfo** %155, align 8
  %156 = call %sCLNode* @sNodeTree_create_store_field(%sCLNode* %derefference_value62, i8* %name63, %sCLNode* %exp64, %sParserInfo* %info65)
  store %sCLNode* %156, %sCLNode** %node60, align 8
  br label %cond_end47

cond_then_block58:                                ; preds = %cond_jump_then56
  br label %cond_end59

cond_end59:                                       ; preds = %cond_then_block58, %cond_jump_then56
  call void @xfree(i8* %145)
  ret i1 false

cond_jump_then77:                                 ; preds = %cond_else_block46
  %157 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %158 = bitcast i8* %157 to %sParserInfo**
  %info79 = load %sParserInfo*, %sParserInfo** %158, align 8
  %159 = getelementptr inbounds %sParserInfo, %sParserInfo* %info79, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = ptrtoint i8* %160 to i64
  %addtmp80 = add nsw i64 %161, 1
  %162 = inttoptr i64 %addtmp80 to i8*
  %derefference_value81 = load i8, i8* %162, align 8
  %eqtmpX82 = icmp eq i8 %derefference_value81, 43
  %andand83 = and i1 %eqtmpX76, %eqtmpX82
  store i1 %andand83, i1* %andand_result_var73, align 1
  br label %cond_jump_end78

cond_jump_end78:                                  ; preds = %cond_jump_then77, %cond_else_block46
  %andand_result_value84 = load i1, i1* %andand_result_var73, align 1
  br i1 %andand_result_value84, label %cond_jump_then85, label %"cond_jump_elif0\0A86"

cond_jump_then85:                                 ; preds = %cond_jump_end78
  %163 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %164 = bitcast i8* %163 to %sParserInfo**
  %info89 = load %sParserInfo*, %sParserInfo** %164, align 8
  %165 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %166 = bitcast i8* %165 to %sParserInfo**
  %info90 = load %sParserInfo*, %sParserInfo** %166, align 8
  %167 = getelementptr inbounds %sParserInfo, %sParserInfo* %info90, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %168 to i64
  %addtmp91 = add nsw i64 %169, 2
  %170 = inttoptr i64 %addtmp91 to i8*
  %171 = getelementptr inbounds %sParserInfo, %sParserInfo* %info89, i32 0, i32 4
  store i8* %170, i8** %171, align 8
  %172 = ptrtoint i8* %170 to i64
  %subtmp92 = sub nsw i64 %172, 2
  %173 = inttoptr i64 %subtmp92 to i8*
  %174 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %175 = bitcast i8* %174 to %sParserInfo**
  %info93 = load %sParserInfo*, %sParserInfo** %175, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info93)
  %176 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %177 = bitcast i8* %176 to %sParserInfo**
  %info94 = load %sParserInfo*, %sParserInfo** %177, align 8
  %178 = call %sCLNode* @sNodeTree_create_int_value(i32 1, %sParserInfo* %info94)
  %right = alloca %sCLNode*
  %179 = bitcast %sCLNode** %right to i8*
  store i8* %179, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %178, %sCLNode** %right, align 8
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %181 = bitcast i8* %180 to %sCLNode***
  %node95 = load %sCLNode**, %sCLNode*** %181, align 8
  %derefference_value96 = load %sCLNode*, %sCLNode** %node95, align 8
  %right97 = load %sCLNode*, %sCLNode** %right, align 8
  %182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %183 = bitcast i8* %182 to %sParserInfo**
  %info98 = load %sParserInfo*, %sParserInfo** %183, align 8
  %184 = call %sCLNode* @sNodeTree_create_plus(%sCLNode* %derefference_value96, %sCLNode* %right97, %sParserInfo* %info98)
  %exp99 = alloca %sCLNode*
  %185 = bitcast %sCLNode** %exp99 to i8*
  store i8* %185, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %184, %sCLNode** %exp99, align 8
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %187 = bitcast i8* %186 to %sCLNode***
  %node100 = load %sCLNode**, %sCLNode*** %187, align 8
  %188 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %189 = bitcast i8* %188 to %sCLNode**
  %obj_node101 = load %sCLNode*, %sCLNode** %189, align 8
  %190 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %191 = bitcast i8* %190 to i8**
  %name102 = load i8*, i8** %191, align 8
  %exp103 = load %sCLNode*, %sCLNode** %exp99, align 8
  %192 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %193 = bitcast i8* %192 to %sParserInfo**
  %info104 = load %sParserInfo*, %sParserInfo** %193, align 8
  %194 = call %sCLNode* @sNodeTree_create_store_field(%sCLNode* %obj_node101, i8* %name102, %sCLNode* %exp103, %sParserInfo* %info104)
  store %sCLNode* %194, %sCLNode** %node100, align 8
  br label %cond_end88

"cond_jump_elif0\0A86":                           ; preds = %cond_jump_end78
  %andand_result_var105 = alloca i1
  %195 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %196 = bitcast i8* %195 to %sParserInfo**
  %info106 = load %sParserInfo*, %sParserInfo** %196, align 8
  %197 = getelementptr inbounds %sParserInfo, %sParserInfo* %info106, i32 0, i32 4
  %198 = load i8*, i8** %197, align 8
  %derefference_value107 = load i8, i8* %198, align 8
  %eqtmpX108 = icmp eq i8 %derefference_value107, 45
  store i1 %eqtmpX108, i1* %andand_result_var105, align 1
  br i1 %eqtmpX108, label %cond_jump_then109, label %cond_jump_end110

"cond_jump_elif_then0\0A87":                      ; preds = %cond_jump_end110
  %199 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %200 = bitcast i8* %199 to %sParserInfo**
  %info117 = load %sParserInfo*, %sParserInfo** %200, align 8
  %201 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %202 = bitcast i8* %201 to %sParserInfo**
  %info118 = load %sParserInfo*, %sParserInfo** %202, align 8
  %203 = getelementptr inbounds %sParserInfo, %sParserInfo* %info118, i32 0, i32 4
  %204 = load i8*, i8** %203, align 8
  %205 = ptrtoint i8* %204 to i64
  %addtmp119 = add nsw i64 %205, 2
  %206 = inttoptr i64 %addtmp119 to i8*
  %207 = getelementptr inbounds %sParserInfo, %sParserInfo* %info117, i32 0, i32 4
  store i8* %206, i8** %207, align 8
  %208 = ptrtoint i8* %206 to i64
  %subtmp120 = sub nsw i64 %208, 2
  %209 = inttoptr i64 %subtmp120 to i8*
  %210 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %211 = bitcast i8* %210 to %sParserInfo**
  %info121 = load %sParserInfo*, %sParserInfo** %211, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info121)
  %212 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %213 = bitcast i8* %212 to %sParserInfo**
  %info122 = load %sParserInfo*, %sParserInfo** %213, align 8
  %214 = call %sCLNode* @sNodeTree_create_int_value(i32 1, %sParserInfo* %info122)
  %right123 = alloca %sCLNode*
  %215 = bitcast %sCLNode** %right123 to i8*
  store i8* %215, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %214, %sCLNode** %right123, align 8
  %216 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %217 = bitcast i8* %216 to %sCLNode***
  %node124 = load %sCLNode**, %sCLNode*** %217, align 8
  %derefference_value125 = load %sCLNode*, %sCLNode** %node124, align 8
  %right126 = load %sCLNode*, %sCLNode** %right123, align 8
  %218 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %219 = bitcast i8* %218 to %sParserInfo**
  %info127 = load %sParserInfo*, %sParserInfo** %219, align 8
  %220 = call %sCLNode* @sNodeTree_create_minus(%sCLNode* %derefference_value125, %sCLNode* %right126, %sParserInfo* %info127)
  %exp128 = alloca %sCLNode*
  %221 = bitcast %sCLNode** %exp128 to i8*
  store i8* %221, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %220, %sCLNode** %exp128, align 8
  %222 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %223 = bitcast i8* %222 to %sCLNode***
  %node129 = load %sCLNode**, %sCLNode*** %223, align 8
  %224 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %225 = bitcast i8* %224 to %sCLNode**
  %obj_node130 = load %sCLNode*, %sCLNode** %225, align 8
  %226 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %227 = bitcast i8* %226 to i8**
  %name131 = load i8*, i8** %227, align 8
  %exp132 = load %sCLNode*, %sCLNode** %exp128, align 8
  %228 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %229 = bitcast i8* %228 to %sParserInfo**
  %info133 = load %sParserInfo*, %sParserInfo** %229, align 8
  %230 = call %sCLNode* @sNodeTree_create_store_field(%sCLNode* %obj_node130, i8* %name131, %sCLNode* %exp132, %sParserInfo* %info133)
  store %sCLNode* %230, %sCLNode** %node129, align 8
  br label %cond_end88

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end110
  %andand_result_var134 = alloca i1
  %231 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %232 = bitcast i8* %231 to %sParserInfo**
  %info135 = load %sParserInfo*, %sParserInfo** %232, align 8
  %233 = getelementptr inbounds %sParserInfo, %sParserInfo* %info135, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %derefference_value136 = load i8, i8* %234, align 8
  %eqtmpX137 = icmp eq i8 %derefference_value136, 43
  store i1 %eqtmpX137, i1* %andand_result_var134, align 1
  br i1 %eqtmpX137, label %cond_jump_then138, label %cond_jump_end139

"cond_jump_elif_then1\0A":                        ; preds = %cond_jump_end139
  %235 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %236 = bitcast i8* %235 to %sParserInfo**
  %info146 = load %sParserInfo*, %sParserInfo** %236, align 8
  %237 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %238 = bitcast i8* %237 to %sParserInfo**
  %info147 = load %sParserInfo*, %sParserInfo** %238, align 8
  %239 = getelementptr inbounds %sParserInfo, %sParserInfo* %info147, i32 0, i32 4
  %240 = load i8*, i8** %239, align 8
  %241 = ptrtoint i8* %240 to i64
  %addtmp148 = add nsw i64 %241, 2
  %242 = inttoptr i64 %addtmp148 to i8*
  %243 = getelementptr inbounds %sParserInfo, %sParserInfo* %info146, i32 0, i32 4
  store i8* %242, i8** %243, align 8
  %244 = ptrtoint i8* %242 to i64
  %subtmp149 = sub nsw i64 %244, 2
  %245 = inttoptr i64 %subtmp149 to i8*
  %246 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %247 = bitcast i8* %246 to %sParserInfo**
  %info150 = load %sParserInfo*, %sParserInfo** %247, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info150)
  %right151 = alloca %sCLNode*
  %248 = bitcast %sCLNode** %right151 to i8*
  store i8* %248, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* null, %sCLNode** %right151, align 8
  %right152 = load %sCLNode*, %sCLNode** %right151, align 8
  %249 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %250 = bitcast i8* %249 to %sParserInfo**
  %info153 = load %sParserInfo*, %sParserInfo** %250, align 8
  %251 = call i1 @expression(%sCLNode** %right151, %sParserInfo* %info153)
  %LOGICAL_DIANEAL154 = icmp eq i1 %251, false
  br i1 %LOGICAL_DIANEAL154, label %cond_jump_then155, label %cond_end156

"cond_jump_elif2\0A":                             ; preds = %cond_jump_end139
  %andand_result_var169 = alloca i1
  %252 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %253 = bitcast i8* %252 to %sParserInfo**
  %info170 = load %sParserInfo*, %sParserInfo** %253, align 8
  %254 = getelementptr inbounds %sParserInfo, %sParserInfo* %info170, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %derefference_value171 = load i8, i8* %255, align 8
  %eqtmpX172 = icmp eq i8 %derefference_value171, 45
  store i1 %eqtmpX172, i1* %andand_result_var169, align 1
  br i1 %eqtmpX172, label %cond_jump_then173, label %cond_jump_end174

"cond_jump_elif_then2\0A":                        ; preds = %cond_jump_end174
  %256 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %257 = bitcast i8* %256 to %sParserInfo**
  %info181 = load %sParserInfo*, %sParserInfo** %257, align 8
  %258 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %259 = bitcast i8* %258 to %sParserInfo**
  %info182 = load %sParserInfo*, %sParserInfo** %259, align 8
  %260 = getelementptr inbounds %sParserInfo, %sParserInfo* %info182, i32 0, i32 4
  %261 = load i8*, i8** %260, align 8
  %262 = ptrtoint i8* %261 to i64
  %addtmp183 = add nsw i64 %262, 2
  %263 = inttoptr i64 %addtmp183 to i8*
  %264 = getelementptr inbounds %sParserInfo, %sParserInfo* %info181, i32 0, i32 4
  store i8* %263, i8** %264, align 8
  %265 = ptrtoint i8* %263 to i64
  %subtmp184 = sub nsw i64 %265, 2
  %266 = inttoptr i64 %subtmp184 to i8*
  %267 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %268 = bitcast i8* %267 to %sParserInfo**
  %info185 = load %sParserInfo*, %sParserInfo** %268, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info185)
  %right186 = alloca %sCLNode*
  %269 = bitcast %sCLNode** %right186 to i8*
  store i8* %269, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* null, %sCLNode** %right186, align 8
  %right187 = load %sCLNode*, %sCLNode** %right186, align 8
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %271 = bitcast i8* %270 to %sParserInfo**
  %info188 = load %sParserInfo*, %sParserInfo** %271, align 8
  %272 = call i1 @expression(%sCLNode** %right186, %sParserInfo* %info188)
  %LOGICAL_DIANEAL189 = icmp eq i1 %272, false
  br i1 %LOGICAL_DIANEAL189, label %cond_jump_then190, label %cond_end191

cond_end88:                                       ; preds = %cond_end191, %cond_jump_end174, %cond_end156, %"cond_jump_elif_then0\0A87", %cond_jump_then85
  br label %cond_end47

cond_jump_then109:                                ; preds = %"cond_jump_elif0\0A86"
  %273 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %274 = bitcast i8* %273 to %sParserInfo**
  %info111 = load %sParserInfo*, %sParserInfo** %274, align 8
  %275 = getelementptr inbounds %sParserInfo, %sParserInfo* %info111, i32 0, i32 4
  %276 = load i8*, i8** %275, align 8
  %277 = ptrtoint i8* %276 to i64
  %addtmp112 = add nsw i64 %277, 1
  %278 = inttoptr i64 %addtmp112 to i8*
  %derefference_value113 = load i8, i8* %278, align 8
  %eqtmpX114 = icmp eq i8 %derefference_value113, 45
  %andand115 = and i1 %eqtmpX108, %eqtmpX114
  store i1 %andand115, i1* %andand_result_var105, align 1
  br label %cond_jump_end110

cond_jump_end110:                                 ; preds = %cond_jump_then109, %"cond_jump_elif0\0A86"
  %andand_result_value116 = load i1, i1* %andand_result_var105, align 1
  br i1 %andand_result_value116, label %"cond_jump_elif_then0\0A87", label %"cond_jump_elif1\0A"

cond_jump_then138:                                ; preds = %"cond_jump_elif1\0A"
  %279 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %280 = bitcast i8* %279 to %sParserInfo**
  %info140 = load %sParserInfo*, %sParserInfo** %280, align 8
  %281 = getelementptr inbounds %sParserInfo, %sParserInfo* %info140, i32 0, i32 4
  %282 = load i8*, i8** %281, align 8
  %283 = ptrtoint i8* %282 to i64
  %addtmp141 = add nsw i64 %283, 1
  %284 = inttoptr i64 %addtmp141 to i8*
  %derefference_value142 = load i8, i8* %284, align 8
  %eqtmpX143 = icmp eq i8 %derefference_value142, 61
  %andand144 = and i1 %eqtmpX137, %eqtmpX143
  store i1 %andand144, i1* %andand_result_var134, align 1
  br label %cond_jump_end139

cond_jump_end139:                                 ; preds = %cond_jump_then138, %"cond_jump_elif1\0A"
  %andand_result_value145 = load i1, i1* %andand_result_var134, align 1
  br i1 %andand_result_value145, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

cond_jump_then155:                                ; preds = %"cond_jump_elif_then1\0A"
  %285 = bitcast [8192 x i8*]* %lvtable to i8*
  %286 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %285, i64 65536)
  %287 = load i8*, i8** %name, align 8
  %288 = ptrtoint i8* %287 to i64
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %cond_then_block157, label %cond_end158

cond_end156:                                      ; preds = %"cond_jump_elif_then1\0A"
  %290 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %291 = bitcast i8* %290 to %sCLNode***
  %node159 = load %sCLNode**, %sCLNode*** %291, align 8
  %derefference_value160 = load %sCLNode*, %sCLNode** %node159, align 8
  %right161 = load %sCLNode*, %sCLNode** %right151, align 8
  %292 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %293 = bitcast i8* %292 to %sParserInfo**
  %info162 = load %sParserInfo*, %sParserInfo** %293, align 8
  %294 = call %sCLNode* @sNodeTree_create_plus(%sCLNode* %derefference_value160, %sCLNode* %right161, %sParserInfo* %info162)
  %exp163 = alloca %sCLNode*
  %295 = bitcast %sCLNode** %exp163 to i8*
  store i8* %295, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %294, %sCLNode** %exp163, align 8
  %296 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %297 = bitcast i8* %296 to %sCLNode***
  %node164 = load %sCLNode**, %sCLNode*** %297, align 8
  %298 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %299 = bitcast i8* %298 to %sCLNode**
  %obj_node165 = load %sCLNode*, %sCLNode** %299, align 8
  %300 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %301 = bitcast i8* %300 to i8**
  %name166 = load i8*, i8** %301, align 8
  %exp167 = load %sCLNode*, %sCLNode** %exp163, align 8
  %302 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %303 = bitcast i8* %302 to %sParserInfo**
  %info168 = load %sParserInfo*, %sParserInfo** %303, align 8
  %304 = call %sCLNode* @sNodeTree_create_store_field(%sCLNode* %obj_node165, i8* %name166, %sCLNode* %exp167, %sParserInfo* %info168)
  store %sCLNode* %304, %sCLNode** %node164, align 8
  br label %cond_end88

cond_then_block157:                               ; preds = %cond_jump_then155
  br label %cond_end158

cond_end158:                                      ; preds = %cond_then_block157, %cond_jump_then155
  call void @xfree(i8* %287)
  ret i1 false

cond_jump_then173:                                ; preds = %"cond_jump_elif2\0A"
  %305 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %306 = bitcast i8* %305 to %sParserInfo**
  %info175 = load %sParserInfo*, %sParserInfo** %306, align 8
  %307 = getelementptr inbounds %sParserInfo, %sParserInfo* %info175, i32 0, i32 4
  %308 = load i8*, i8** %307, align 8
  %309 = ptrtoint i8* %308 to i64
  %addtmp176 = add nsw i64 %309, 1
  %310 = inttoptr i64 %addtmp176 to i8*
  %derefference_value177 = load i8, i8* %310, align 8
  %eqtmpX178 = icmp eq i8 %derefference_value177, 61
  %andand179 = and i1 %eqtmpX172, %eqtmpX178
  store i1 %andand179, i1* %andand_result_var169, align 1
  br label %cond_jump_end174

cond_jump_end174:                                 ; preds = %cond_jump_then173, %"cond_jump_elif2\0A"
  %andand_result_value180 = load i1, i1* %andand_result_var169, align 1
  br i1 %andand_result_value180, label %"cond_jump_elif_then2\0A", label %cond_end88

cond_jump_then190:                                ; preds = %"cond_jump_elif_then2\0A"
  %311 = bitcast [8192 x i8*]* %lvtable to i8*
  %312 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %311, i64 65536)
  %313 = load i8*, i8** %name, align 8
  %314 = ptrtoint i8* %313 to i64
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %cond_then_block192, label %cond_end193

cond_end191:                                      ; preds = %"cond_jump_elif_then2\0A"
  %316 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %317 = bitcast i8* %316 to %sCLNode***
  %node194 = load %sCLNode**, %sCLNode*** %317, align 8
  %derefference_value195 = load %sCLNode*, %sCLNode** %node194, align 8
  %right196 = load %sCLNode*, %sCLNode** %right186, align 8
  %318 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %319 = bitcast i8* %318 to %sParserInfo**
  %info197 = load %sParserInfo*, %sParserInfo** %319, align 8
  %320 = call %sCLNode* @sNodeTree_create_minus(%sCLNode* %derefference_value195, %sCLNode* %right196, %sParserInfo* %info197)
  %exp198 = alloca %sCLNode*
  %321 = bitcast %sCLNode** %exp198 to i8*
  store i8* %321, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %320, %sCLNode** %exp198, align 8
  %322 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %323 = bitcast i8* %322 to %sCLNode***
  %node199 = load %sCLNode**, %sCLNode*** %323, align 8
  %324 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %325 = bitcast i8* %324 to %sCLNode**
  %obj_node200 = load %sCLNode*, %sCLNode** %325, align 8
  %326 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %327 = bitcast i8* %326 to i8**
  %name201 = load i8*, i8** %327, align 8
  %exp202 = load %sCLNode*, %sCLNode** %exp198, align 8
  %328 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %329 = bitcast i8* %328 to %sParserInfo**
  %info203 = load %sParserInfo*, %sParserInfo** %329, align 8
  %330 = call %sCLNode* @sNodeTree_create_store_field(%sCLNode* %obj_node200, i8* %name201, %sCLNode* %exp202, %sParserInfo* %info203)
  store %sCLNode* %330, %sCLNode** %node199, align 8
  br label %cond_end88

cond_then_block192:                               ; preds = %cond_jump_then190
  br label %cond_end193

cond_end193:                                      ; preds = %cond_then_block192, %cond_jump_then190
  call void @xfree(i8* %313)
  ret i1 false

cond_then_block204:                               ; preds = %cond_end20
  br label %cond_end205

cond_end205:                                      ; preds = %cond_then_block204, %cond_end20
  call void @xfree(i8* %88)
  br label %cond_end10

cond_jump_then222:                                ; preds = %"cond_jump_elif_then0\0A"
  %331 = bitcast [8192 x i8*]* %lvtable to i8*
  %332 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %331, i64 65536)
  ret i1 false

cond_end223:                                      ; preds = %"cond_jump_elif_then0\0A"
  %333 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %334 = bitcast i8* %333 to %sCLNode***
  %node224 = load %sCLNode**, %sCLNode*** %334, align 8
  %num_params225 = load i32, i32* %num_params214, align 4
  %335 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %336 = bitcast i8* %335 to %sParserInfo**
  %info226 = load %sParserInfo*, %sParserInfo** %336, align 8
  %337 = bitcast [32 x %sCLNode*]* %params215 to %sCLNode**
  %338 = call %sCLNode* @sNodeTree_create_block_object_call(i32 %num_params225, %sCLNode** %337, %sParserInfo* %info226)
  store %sCLNode* %338, %sCLNode** %node224, align 8
  br label %cond_end10

after_break:                                      ; No predecessors!
  br label %cond_end10
}

define i1 @is_local_variable(i8* %word, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %word1 = alloca i8*
  store i8* %word, i8** %word1, align 8
  %2 = bitcast i8** %word1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %word4 = load i8*, i8** %word1, align 8
  %4 = call %sVar* @get_variable_from_table(%sParserInfo* %info3, i8* %word4)
  %v = alloca %sVar*
  %5 = bitcast %sVar** %v to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sVar* %4, %sVar** %v, align 8
  %v5 = load %sVar*, %sVar** %v, align 8
  %noteqtmp = icmp ne %sVar* %v5, null
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret i1 %noteqtmp
}

define i1 @expression_node(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %num_method_chains = alloca i32
  %4 = bitcast i32* %num_method_chains to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 0, i32* %num_method_chains, align 4
  %oror_result_var = alloca i1
  %andand_result_var = alloca i1
  %andand_result_var3 = alloca i1
  %andand_result_var4 = alloca i1
  %info5 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %5 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %derefference_value = load i8, i8* %6, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 45
  store i1 %eqtmpX, i1* %andand_result_var4, align 1
  br i1 %eqtmpX, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %entry
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %7 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %8 to i64
  %addtmp = add nsw i64 %9, 1
  %10 = inttoptr i64 %addtmp to i8*
  %derefference_value7 = load i8, i8* %10, align 8
  %noteqtmp = icmp ne i8 %derefference_value7, 61
  %andand = and i1 %eqtmpX, %noteqtmp
  store i1 %andand, i1* %andand_result_var4, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %entry
  %andand_result_value = load i1, i1* %andand_result_var4, align 1
  store i1 %andand_result_value, i1* %andand_result_var3, align 1
  br i1 %andand_result_value, label %cond_jump_then8, label %cond_jump_end9

cond_jump_then8:                                  ; preds = %cond_jump_end
  %info10 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %addtmp11 = add nsw i64 %13, 1
  %14 = inttoptr i64 %addtmp11 to i8*
  %derefference_value12 = load i8, i8* %14, align 8
  %noteqtmp13 = icmp ne i8 %derefference_value12, 45
  %andand14 = and i1 %andand_result_value, %noteqtmp13
  store i1 %andand14, i1* %andand_result_var3, align 1
  br label %cond_jump_end9

cond_jump_end9:                                   ; preds = %cond_jump_then8, %cond_jump_end
  %andand_result_value15 = load i1, i1* %andand_result_var3, align 1
  store i1 %andand_result_value15, i1* %andand_result_var, align 1
  br i1 %andand_result_value15, label %cond_jump_then16, label %cond_jump_end17

cond_jump_then16:                                 ; preds = %cond_jump_end9
  %info18 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info18, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %17 = ptrtoint i8* %16 to i64
  %addtmp19 = add nsw i64 %17, 1
  %18 = inttoptr i64 %addtmp19 to i8*
  %derefference_value20 = load i8, i8* %18, align 8
  %noteqtmp21 = icmp ne i8 %derefference_value20, 62
  %andand22 = and i1 %andand_result_value15, %noteqtmp21
  store i1 %andand22, i1* %andand_result_var, align 1
  br label %cond_jump_end17

cond_jump_end17:                                  ; preds = %cond_jump_then16, %cond_jump_end9
  %andand_result_value23 = load i1, i1* %andand_result_var, align 1
  store i1 %andand_result_value23, i1* %oror_result_var, align 1
  br i1 %andand_result_value23, label %cond_jump_end25, label %cond_jump_then24

cond_jump_then24:                                 ; preds = %cond_jump_end17
  %andand_result_var26 = alloca i1
  %andand_result_var27 = alloca i1
  %info28 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %19 = getelementptr inbounds %sParserInfo, %sParserInfo* %info28, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %derefference_value29 = load i8, i8* %20, align 8
  %eqtmpX30 = icmp eq i8 %derefference_value29, 43
  store i1 %eqtmpX30, i1* %andand_result_var27, align 1
  br i1 %eqtmpX30, label %cond_jump_then31, label %cond_jump_end32

cond_jump_end25:                                  ; preds = %cond_jump_end40, %cond_jump_end17
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_then47, label %"cond_jump_elif0\0A"

cond_jump_then31:                                 ; preds = %cond_jump_then24
  %info33 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %21 = getelementptr inbounds %sParserInfo, %sParserInfo* %info33, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %22 to i64
  %addtmp34 = add nsw i64 %23, 1
  %24 = inttoptr i64 %addtmp34 to i8*
  %derefference_value35 = load i8, i8* %24, align 8
  %noteqtmp36 = icmp ne i8 %derefference_value35, 61
  %andand37 = and i1 %eqtmpX30, %noteqtmp36
  store i1 %andand37, i1* %andand_result_var27, align 1
  br label %cond_jump_end32

cond_jump_end32:                                  ; preds = %cond_jump_then31, %cond_jump_then24
  %andand_result_value38 = load i1, i1* %andand_result_var27, align 1
  store i1 %andand_result_value38, i1* %andand_result_var26, align 1
  br i1 %andand_result_value38, label %cond_jump_then39, label %cond_jump_end40

cond_jump_then39:                                 ; preds = %cond_jump_end32
  %info41 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %25 = getelementptr inbounds %sParserInfo, %sParserInfo* %info41, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i64
  %addtmp42 = add nsw i64 %27, 1
  %28 = inttoptr i64 %addtmp42 to i8*
  %derefference_value43 = load i8, i8* %28, align 8
  %noteqtmp44 = icmp ne i8 %derefference_value43, 43
  %andand45 = and i1 %andand_result_value38, %noteqtmp44
  store i1 %andand45, i1* %andand_result_var26, align 1
  br label %cond_jump_end40

cond_jump_end40:                                  ; preds = %cond_jump_then39, %cond_jump_end32
  %andand_result_value46 = load i1, i1* %andand_result_var26, align 1
  %oror = or i1 %andand_result_value23, %andand_result_value46
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end25

cond_jump_then47:                                 ; preds = %cond_jump_end25
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %30 = bitcast i8* %29 to %sParserInfo**
  %info48 = load %sParserInfo*, %sParserInfo** %30, align 8
  %31 = getelementptr inbounds %sParserInfo, %sParserInfo* %info48, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %derefference_value49 = load i8, i8* %32, align 8
  %eqtmpX50 = icmp eq i8 %derefference_value49, 45
  br i1 %eqtmpX50, label %cond_jump_then51, label %"cond_jump_elif0\0A52"

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end25
  %33 = call i16** @__ctype_b_loc()
  %derefference_value114 = load i16*, i16** %33, align 8
  %info115 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %34 = getelementptr inbounds %sParserInfo, %sParserInfo* %info115, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %derefference_value116 = load i8, i8* %35, align 8
  %sext13117 = zext i8 %derefference_value116 to i32
  %element_address118 = getelementptr i16, i16* %derefference_value114, i32 %sext13117
  %element119 = load i16, i16* %element_address118, align 2
  %andtmp120 = and i16 %element119, 2048
  %36 = icmp ne i16 %andtmp120, 0
  br i1 %36, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %38 = bitcast i8* %37 to %sCLNode***
  %node121 = load %sCLNode**, %sCLNode*** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %40 = bitcast i8* %39 to %sParserInfo**
  %info122 = load %sParserInfo*, %sParserInfo** %40, align 8
  %41 = call i1 @get_number(i1 false, %sCLNode** %node121, %sParserInfo* %info122)
  %LOGICAL_DIANEAL123 = icmp eq i1 %41, false
  br i1 %LOGICAL_DIANEAL123, label %cond_jump_then124, label %cond_end125

"cond_jump_elif1\0A":                             ; preds = %"cond_jump_elif0\0A"
  %oror_result_var126 = alloca i1
  %42 = call i16** @__ctype_b_loc()
  %derefference_value127 = load i16*, i16** %42, align 8
  %info128 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info128, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %derefference_value129 = load i8, i8* %44, align 8
  %sext13130 = zext i8 %derefference_value129 to i32
  %element_address131 = getelementptr i16, i16* %derefference_value127, i32 %sext13130
  %element132 = load i16, i16* %element_address131, align 2
  %andtmp133 = and i16 %element132, 1024
  %45 = icmp ne i16 %andtmp133, 0
  store i1 %45, i1* %oror_result_var126, align 1
  br i1 %45, label %cond_jump_end135, label %cond_jump_then134

"cond_jump_elif_then1\0A":                        ; preds = %cond_jump_end135
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %47 = bitcast i8* %46 to %sParserInfo**
  %info141 = load %sParserInfo*, %sParserInfo** %47, align 8
  %48 = call i8* @parse_word(%sParserInfo* %info141)
  %word = alloca i8*
  %49 = bitcast i8** %word to i8*
  store i8* %49, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %48, i8** %word, align 8
  %word142 = load i8*, i8** %word, align 8
  %50 = call i32 @strcmp(i8* %word142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.47, i32 0, i32 0))
  %eqtmpX143 = icmp eq i32 %50, 0
  br i1 %eqtmpX143, label %cond_jump_then144, label %"cond_jump_elif0\0A145"

"cond_jump_elif2\0A":                             ; preds = %cond_jump_end135
  %info687 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %51 = getelementptr inbounds %sParserInfo, %sParserInfo* %info687, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %derefference_value688 = load i8, i8* %52, align 8
  %eqtmpX689 = icmp eq i8 %derefference_value688, 34
  br i1 %eqtmpX689, label %"cond_jump_elif_then2\0A", label %"cond_jump_elif3\0A"

"cond_jump_elif_then2\0A":                        ; preds = %"cond_jump_elif2\0A"
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %54 = bitcast i8* %53 to %sParserInfo**
  %info690 = load %sParserInfo*, %sParserInfo** %54, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %56 = bitcast i8* %55 to %sParserInfo**
  %info691 = load %sParserInfo*, %sParserInfo** %56, align 8
  %57 = getelementptr inbounds %sParserInfo, %sParserInfo* %info691, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i64
  %addtmp692 = add nsw i64 %59, 1
  %60 = inttoptr i64 %addtmp692 to i8*
  %61 = getelementptr inbounds %sParserInfo, %sParserInfo* %info690, i32 0, i32 4
  store i8* %60, i8** %61, align 8
  %62 = ptrtoint i8* %60 to i64
  %subtmp693 = sub nsw i64 %62, 1
  %63 = inttoptr i64 %subtmp693 to i8*
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %65 = bitcast i8* %64 to %sParserInfo**
  %info694 = load %sParserInfo*, %sParserInfo** %65, align 8
  %66 = getelementptr inbounds %sParserInfo, %sParserInfo* %info694, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %sline = alloca i32
  %68 = bitcast i32* %sline to i8*
  store i8* %68, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 %67, i32* %sline, align 4
  %69 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.72, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.73, i32 0, i32 0), i32 1134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.74, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.75, i32 0, i32 0))
  %70 = bitcast i8* %69 to %buffer*
  %71 = call %buffer* @buffer_initialize(%buffer* %70)
  %buf695 = alloca %buffer*
  %72 = bitcast %buffer** %buf695 to i8*
  store i8* %72, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %buffer* %71, %buffer** %buf695, align 8
  br label %loop_top_block696

"cond_jump_elif3\0A":                             ; preds = %"cond_jump_elif2\0A"
  %info821 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %73 = getelementptr inbounds %sParserInfo, %sParserInfo* %info821, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %derefference_value822 = load i8, i8* %74, align 8
  %eqtmpX823 = icmp eq i8 %derefference_value822, 35
  br i1 %eqtmpX823, label %"cond_jump_elif_then3\0A", label %"cond_jump_elif4\0A"

"cond_jump_elif_then3\0A":                        ; preds = %"cond_jump_elif3\0A"
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %76 = bitcast i8* %75 to %sParserInfo**
  %info824 = load %sParserInfo*, %sParserInfo** %76, align 8
  call void @parse_comment(%sParserInfo* %info824)
  %node2 = alloca %sCLNode*
  %77 = bitcast %sCLNode** %node2 to i8*
  store i8* %77, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* null, %sCLNode** %node2, align 8
  %node2825 = load %sCLNode*, %sCLNode** %node2, align 8
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %79 = bitcast i8* %78 to %sParserInfo**
  %info826 = load %sParserInfo*, %sParserInfo** %79, align 8
  %80 = call i1 @expression(%sCLNode** %node2, %sParserInfo* %info826)
  %LOGICAL_DIANEAL827 = icmp eq i1 %80, false
  br i1 %LOGICAL_DIANEAL827, label %cond_jump_then828, label %cond_end829

"cond_jump_elif4\0A":                             ; preds = %"cond_jump_elif3\0A"
  %info832 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %81 = getelementptr inbounds %sParserInfo, %sParserInfo* %info832, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %derefference_value833 = load i8, i8* %82, align 8
  %eqtmpX834 = icmp eq i8 %derefference_value833, 40
  br i1 %eqtmpX834, label %"cond_jump_elif_then4\0A", label %"cond_jump_elif5\0A"

"cond_jump_elif_then4\0A":                        ; preds = %"cond_jump_elif4\0A"
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %84 = bitcast i8* %83 to %sParserInfo**
  %info835 = load %sParserInfo*, %sParserInfo** %84, align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %86 = bitcast i8* %85 to %sParserInfo**
  %info836 = load %sParserInfo*, %sParserInfo** %86, align 8
  %87 = getelementptr inbounds %sParserInfo, %sParserInfo* %info836, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i64
  %addtmp837 = add nsw i64 %89, 1
  %90 = inttoptr i64 %addtmp837 to i8*
  %91 = getelementptr inbounds %sParserInfo, %sParserInfo* %info835, i32 0, i32 4
  store i8* %90, i8** %91, align 8
  %92 = ptrtoint i8* %90 to i64
  %subtmp838 = sub nsw i64 %92, 1
  %93 = inttoptr i64 %subtmp838 to i8*
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %95 = bitcast i8* %94 to %sParserInfo**
  %info839 = load %sParserInfo*, %sParserInfo** %95, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info839)
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %97 = bitcast i8* %96 to %sCLNode***
  %node840 = load %sCLNode**, %sCLNode*** %97, align 8
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %99 = bitcast i8* %98 to %sParserInfo**
  %info841 = load %sParserInfo*, %sParserInfo** %99, align 8
  %100 = call i1 @expression(%sCLNode** %node840, %sParserInfo* %info841)
  %LOGICAL_DIANEAL842 = icmp eq i1 %100, false
  br i1 %LOGICAL_DIANEAL842, label %cond_jump_then843, label %cond_end844

"cond_jump_elif5\0A":                             ; preds = %"cond_jump_elif4\0A"
  %info853 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %101 = getelementptr inbounds %sParserInfo, %sParserInfo* %info853, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %derefference_value854 = load i8, i8* %102, align 8
  %eqtmpX855 = icmp eq i8 %derefference_value854, 33
  br i1 %eqtmpX855, label %"cond_jump_elif_then5\0A", label %"cond_jump_elif6\0A"

"cond_jump_elif_then5\0A":                        ; preds = %"cond_jump_elif5\0A"
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %104 = bitcast i8* %103 to %sParserInfo**
  %info856 = load %sParserInfo*, %sParserInfo** %104, align 8
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %106 = bitcast i8* %105 to %sParserInfo**
  %info857 = load %sParserInfo*, %sParserInfo** %106, align 8
  %107 = getelementptr inbounds %sParserInfo, %sParserInfo* %info857, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %108 to i64
  %addtmp858 = add nsw i64 %109, 1
  %110 = inttoptr i64 %addtmp858 to i8*
  %111 = getelementptr inbounds %sParserInfo, %sParserInfo* %info856, i32 0, i32 4
  store i8* %110, i8** %111, align 8
  %112 = ptrtoint i8* %110 to i64
  %subtmp859 = sub nsw i64 %112, 1
  %113 = inttoptr i64 %subtmp859 to i8*
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %115 = bitcast i8* %114 to %sParserInfo**
  %info860 = load %sParserInfo*, %sParserInfo** %115, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info860)
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %117 = bitcast i8* %116 to %sCLNode***
  %node861 = load %sCLNode**, %sCLNode*** %117, align 8
  %118 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %119 = bitcast i8* %118 to %sParserInfo**
  %info862 = load %sParserInfo*, %sParserInfo** %119, align 8
  %120 = call i1 @expression_node(%sCLNode** %node861, %sParserInfo* %info862)
  %LOGICAL_DIANEAL863 = icmp eq i1 %120, false
  br i1 %LOGICAL_DIANEAL863, label %cond_jump_then864, label %cond_end865

"cond_jump_elif6\0A":                             ; preds = %"cond_jump_elif5\0A"
  %info876 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %121 = getelementptr inbounds %sParserInfo, %sParserInfo* %info876, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %derefference_value877 = load i8, i8* %122, align 8
  %eqtmpX878 = icmp eq i8 %derefference_value877, 123
  br i1 %eqtmpX878, label %"cond_jump_elif_then6\0A", label %cond_else_block

"cond_jump_elif_then6\0A":                        ; preds = %"cond_jump_elif6\0A"
  %123 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %124 = bitcast i8* %123 to %sParserInfo**
  %info879 = load %sParserInfo*, %sParserInfo** %124, align 8
  call void @expected_next_character(i8 123, %sParserInfo* %info879)
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %126 = bitcast i8* %125 to %sParserInfo**
  %info880 = load %sParserInfo*, %sParserInfo** %126, align 8
  %127 = getelementptr inbounds %sParserInfo, %sParserInfo* %info880, i32 0, i32 7
  %128 = load %vector__sVarTablep*, %vector__sVarTablep** %127, align 8
  %vtables_before = alloca %vector__sVarTablep*
  %129 = bitcast %vector__sVarTablep** %vtables_before to i8*
  store i8* %129, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %vector__sVarTablep* %128, %vector__sVarTablep** %vtables_before, align 8
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %131 = bitcast i8* %130 to %sParserInfo**
  %info881 = load %sParserInfo*, %sParserInfo** %131, align 8
  %132 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.79, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.80, i32 0, i32 0), i32 1251, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.81, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.82, i32 0, i32 0))
  %133 = bitcast i8* %132 to %vector__sVarTablep*
  %134 = call %vector__sVarTablep* @"vector_initialize_sVarTablep7_src/parser"(%vector__sVarTablep* %133)
  %135 = getelementptr inbounds %sParserInfo, %sParserInfo* %info881, i32 0, i32 7
  store %vector__sVarTablep* %134, %vector__sVarTablep** %135, align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %137 = bitcast i8* %136 to %sParserInfo**
  %info882 = load %sParserInfo*, %sParserInfo** %137, align 8
  %138 = getelementptr inbounds %sParserInfo, %sParserInfo* %info882, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  %max_var_num = alloca i32
  %140 = bitcast i32* %max_var_num to i8*
  store i8* %140, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %139, i32* %max_var_num, align 4
  %node_block = alloca %sCLNodeBlock*
  %141 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %141, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block, align 8
  %node_block883 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %142 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %143 = bitcast i8* %142 to %sParserInfo**
  %info884 = load %sParserInfo*, %sParserInfo** %143, align 8
  %144 = call i1 @parse_block(%sCLNodeBlock** %node_block, i32 0, %sCLParam* null, %sParserInfo* %info884)
  %LOGICAL_DIANEAL885 = icmp eq i1 %144, false
  br i1 %LOGICAL_DIANEAL885, label %cond_jump_then886, label %cond_end887

cond_else_block:                                  ; preds = %"cond_jump_elif6\0A"
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %146 = bitcast i8* %145 to %sParserInfo**
  %info906 = load %sParserInfo*, %sParserInfo** %146, align 8
  %147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %148 = bitcast i8* %147 to %sParserInfo**
  %info907 = load %sParserInfo*, %sParserInfo** %148, align 8
  %149 = getelementptr inbounds %sParserInfo, %sParserInfo* %info907, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %derefference_value908 = load i8, i8* %150, align 8
  %151 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.87, i32 0, i32 0), i8 %derefference_value908)
  call void @parser_err_msg(%sParserInfo* %info906, i8* %151)
  %152 = bitcast [8192 x i8*]* %lvtable to i8*
  %153 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %152, i64 65536)
  %154 = ptrtoint i8* %151 to i64
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %cond_then_block909, label %cond_end910

cond_end:                                         ; preds = %cond_end899, %cond_end870, %cond_end850, %cond_end829, %cond_end820, %cond_end686, %cond_end125, %cond_end54
  %node911 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info912 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %156 = call i1 @postposition_operator(%sCLNode** %node911, %sParserInfo* %info912)
  %LOGICAL_DIANEAL913 = icmp eq i1 %156, false
  br i1 %LOGICAL_DIANEAL913, label %cond_jump_then914, label %cond_end915

cond_jump_then51:                                 ; preds = %cond_jump_then47
  %157 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %158 = bitcast i8* %157 to %sParserInfo**
  %info55 = load %sParserInfo*, %sParserInfo** %158, align 8
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %160 = bitcast i8* %159 to %sParserInfo**
  %info56 = load %sParserInfo*, %sParserInfo** %160, align 8
  %161 = getelementptr inbounds %sParserInfo, %sParserInfo* %info56, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = ptrtoint i8* %162 to i64
  %addtmp57 = add nsw i64 %163, 1
  %164 = inttoptr i64 %addtmp57 to i8*
  %165 = getelementptr inbounds %sParserInfo, %sParserInfo* %info55, i32 0, i32 4
  store i8* %164, i8** %165, align 8
  %166 = ptrtoint i8* %164 to i64
  %subtmp = sub nsw i64 %166, 1
  %167 = inttoptr i64 %subtmp to i8*
  %168 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %169 = bitcast i8* %168 to %sParserInfo**
  %info58 = load %sParserInfo*, %sParserInfo** %169, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info58)
  %170 = call i16** @__ctype_b_loc()
  %derefference_value59 = load i16*, i16** %170, align 8
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %172 = bitcast i8* %171 to %sParserInfo**
  %info60 = load %sParserInfo*, %sParserInfo** %172, align 8
  %173 = getelementptr inbounds %sParserInfo, %sParserInfo* %info60, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %derefference_value61 = load i8, i8* %174, align 8
  %sext13 = zext i8 %derefference_value61 to i32
  %element_address = getelementptr i16, i16* %derefference_value59, i32 %sext13
  %element = load i16, i16* %element_address, align 2
  %andtmp = and i16 %element, 2048
  %175 = icmp ne i16 %andtmp, 0
  br i1 %175, label %cond_jump_then62, label %cond_else_block63

"cond_jump_elif0\0A52":                           ; preds = %cond_jump_then47
  %176 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %177 = bitcast i8* %176 to %sParserInfo**
  %info80 = load %sParserInfo*, %sParserInfo** %177, align 8
  %178 = getelementptr inbounds %sParserInfo, %sParserInfo* %info80, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %derefference_value81 = load i8, i8* %179, align 8
  %eqtmpX82 = icmp eq i8 %derefference_value81, 43
  br i1 %eqtmpX82, label %"cond_jump_elif_then0\0A53", label %cond_end54

"cond_jump_elif_then0\0A53":                      ; preds = %"cond_jump_elif0\0A52"
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %181 = bitcast i8* %180 to %sParserInfo**
  %info83 = load %sParserInfo*, %sParserInfo** %181, align 8
  %182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %183 = bitcast i8* %182 to %sParserInfo**
  %info84 = load %sParserInfo*, %sParserInfo** %183, align 8
  %184 = getelementptr inbounds %sParserInfo, %sParserInfo* %info84, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = ptrtoint i8* %185 to i64
  %addtmp85 = add nsw i64 %186, 1
  %187 = inttoptr i64 %addtmp85 to i8*
  %188 = getelementptr inbounds %sParserInfo, %sParserInfo* %info83, i32 0, i32 4
  store i8* %187, i8** %188, align 8
  %189 = ptrtoint i8* %187 to i64
  %subtmp86 = sub nsw i64 %189, 1
  %190 = inttoptr i64 %subtmp86 to i8*
  %191 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %192 = bitcast i8* %191 to %sParserInfo**
  %info87 = load %sParserInfo*, %sParserInfo** %192, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info87)
  %193 = call i16** @__ctype_b_loc()
  %derefference_value88 = load i16*, i16** %193, align 8
  %194 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %195 = bitcast i8* %194 to %sParserInfo**
  %info89 = load %sParserInfo*, %sParserInfo** %195, align 8
  %196 = getelementptr inbounds %sParserInfo, %sParserInfo* %info89, i32 0, i32 4
  %197 = load i8*, i8** %196, align 8
  %derefference_value90 = load i8, i8* %197, align 8
  %sext1391 = zext i8 %derefference_value90 to i32
  %element_address92 = getelementptr i16, i16* %derefference_value88, i32 %sext1391
  %element93 = load i16, i16* %element_address92, align 2
  %andtmp94 = and i16 %element93, 2048
  %198 = icmp ne i16 %andtmp94, 0
  br i1 %198, label %cond_jump_then95, label %cond_else_block96

cond_end54:                                       ; preds = %cond_end97, %"cond_jump_elif0\0A52", %cond_end64
  br label %cond_end

cond_jump_then62:                                 ; preds = %cond_jump_then51
  %199 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %200 = bitcast i8* %199 to %sCLNode***
  %node65 = load %sCLNode**, %sCLNode*** %200, align 8
  %201 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %202 = bitcast i8* %201 to %sParserInfo**
  %info66 = load %sParserInfo*, %sParserInfo** %202, align 8
  %203 = call i1 @get_number(i1 true, %sCLNode** %node65, %sParserInfo* %info66)
  %LOGICAL_DIANEAL = icmp eq i1 %203, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then67, label %cond_end68

cond_else_block63:                                ; preds = %cond_jump_then51
  %204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %205 = bitcast i8* %204 to %sCLNode***
  %node69 = load %sCLNode**, %sCLNode*** %205, align 8
  %206 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %207 = bitcast i8* %206 to %sParserInfo**
  %info70 = load %sParserInfo*, %sParserInfo** %207, align 8
  %208 = call i1 @expression_node(%sCLNode** %node69, %sParserInfo* %info70)
  %LOGICAL_DIANEAL71 = icmp eq i1 %208, false
  br i1 %LOGICAL_DIANEAL71, label %cond_jump_then72, label %cond_end73

cond_end64:                                       ; preds = %cond_end78, %cond_end68
  br label %cond_end54

cond_jump_then67:                                 ; preds = %cond_jump_then62
  %209 = bitcast [8192 x i8*]* %lvtable to i8*
  %210 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %209, i64 65536)
  ret i1 false

cond_end68:                                       ; preds = %cond_jump_then62
  br label %cond_end64

cond_jump_then72:                                 ; preds = %cond_else_block63
  %211 = bitcast [8192 x i8*]* %lvtable to i8*
  %212 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %211, i64 65536)
  ret i1 false

cond_end73:                                       ; preds = %cond_else_block63
  %213 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %214 = bitcast i8* %213 to %sCLNode***
  %node74 = load %sCLNode**, %sCLNode*** %214, align 8
  %derefference_value75 = load %sCLNode*, %sCLNode** %node74, align 8
  %eqtmpX76 = icmp eq %sCLNode* %derefference_value75, null
  br i1 %eqtmpX76, label %cond_jump_then77, label %cond_end78

cond_jump_then77:                                 ; preds = %cond_end73
  %215 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %216 = bitcast i8* %215 to %sParserInfo**
  %info79 = load %sParserInfo*, %sParserInfo** %216, align 8
  call void @parser_err_msg(%sParserInfo* %info79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.45, i32 0, i32 0))
  br label %cond_end78

cond_end78:                                       ; preds = %cond_jump_then77, %cond_end73
  br label %cond_end64

cond_jump_then95:                                 ; preds = %"cond_jump_elif_then0\0A53"
  %217 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %218 = bitcast i8* %217 to %sCLNode***
  %node98 = load %sCLNode**, %sCLNode*** %218, align 8
  %219 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %220 = bitcast i8* %219 to %sParserInfo**
  %info99 = load %sParserInfo*, %sParserInfo** %220, align 8
  %221 = call i1 @get_number(i1 false, %sCLNode** %node98, %sParserInfo* %info99)
  %LOGICAL_DIANEAL100 = icmp eq i1 %221, false
  br i1 %LOGICAL_DIANEAL100, label %cond_jump_then101, label %cond_end102

cond_else_block96:                                ; preds = %"cond_jump_elif_then0\0A53"
  %222 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %223 = bitcast i8* %222 to %sCLNode***
  %node103 = load %sCLNode**, %sCLNode*** %223, align 8
  %224 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %225 = bitcast i8* %224 to %sParserInfo**
  %info104 = load %sParserInfo*, %sParserInfo** %225, align 8
  %226 = call i1 @expression_node(%sCLNode** %node103, %sParserInfo* %info104)
  %LOGICAL_DIANEAL105 = icmp eq i1 %226, false
  br i1 %LOGICAL_DIANEAL105, label %cond_jump_then106, label %cond_end107

cond_end97:                                       ; preds = %cond_end112, %cond_end102
  br label %cond_end54

cond_jump_then101:                                ; preds = %cond_jump_then95
  %227 = bitcast [8192 x i8*]* %lvtable to i8*
  %228 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %227, i64 65536)
  ret i1 false

cond_end102:                                      ; preds = %cond_jump_then95
  br label %cond_end97

cond_jump_then106:                                ; preds = %cond_else_block96
  %229 = bitcast [8192 x i8*]* %lvtable to i8*
  %230 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %229, i64 65536)
  ret i1 false

cond_end107:                                      ; preds = %cond_else_block96
  %231 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %232 = bitcast i8* %231 to %sCLNode***
  %node108 = load %sCLNode**, %sCLNode*** %232, align 8
  %derefference_value109 = load %sCLNode*, %sCLNode** %node108, align 8
  %eqtmpX110 = icmp eq %sCLNode* %derefference_value109, null
  br i1 %eqtmpX110, label %cond_jump_then111, label %cond_end112

cond_jump_then111:                                ; preds = %cond_end107
  %233 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %234 = bitcast i8* %233 to %sParserInfo**
  %info113 = load %sParserInfo*, %sParserInfo** %234, align 8
  call void @parser_err_msg(%sParserInfo* %info113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.46, i32 0, i32 0))
  br label %cond_end112

cond_end112:                                      ; preds = %cond_jump_then111, %cond_end107
  br label %cond_end97

cond_jump_then124:                                ; preds = %"cond_jump_elif_then0\0A"
  %235 = bitcast [8192 x i8*]* %lvtable to i8*
  %236 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %235, i64 65536)
  ret i1 false

cond_end125:                                      ; preds = %"cond_jump_elif_then0\0A"
  br label %cond_end

cond_jump_then134:                                ; preds = %"cond_jump_elif1\0A"
  %info136 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %237 = getelementptr inbounds %sParserInfo, %sParserInfo* %info136, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %derefference_value137 = load i8, i8* %238, align 8
  %eqtmpX138 = icmp eq i8 %derefference_value137, 95
  %oror139 = or i1 %45, %eqtmpX138
  store i1 %oror139, i1* %oror_result_var126, align 1
  br label %cond_jump_end135

cond_jump_end135:                                 ; preds = %cond_jump_then134, %"cond_jump_elif1\0A"
  %oror_result_value140 = load i1, i1* %oror_result_var126, align 1
  br i1 %oror_result_value140, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

cond_jump_then144:                                ; preds = %"cond_jump_elif_then1\0A"
  %oror_result_var161 = alloca i1
  %239 = call i16** @__ctype_b_loc()
  %derefference_value162 = load i16*, i16** %239, align 8
  %240 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %241 = bitcast i8* %240 to %sParserInfo**
  %info163 = load %sParserInfo*, %sParserInfo** %241, align 8
  %242 = getelementptr inbounds %sParserInfo, %sParserInfo* %info163, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %derefference_value164 = load i8, i8* %243, align 8
  %sext13165 = zext i8 %derefference_value164 to i32
  %element_address166 = getelementptr i16, i16* %derefference_value162, i32 %sext13165
  %element167 = load i16, i16* %element_address166, align 2
  %andtmp168 = and i16 %element167, 1024
  %244 = icmp ne i16 %andtmp168, 0
  store i1 %244, i1* %oror_result_var161, align 1
  br i1 %244, label %cond_jump_end170, label %cond_jump_then169

"cond_jump_elif0\0A145":                          ; preds = %"cond_jump_elif_then1\0A"
  %word231 = load i8*, i8** %word, align 8
  %245 = call i32 @strcmp(i8* %word231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.50, i32 0, i32 0))
  %eqtmpX232 = icmp eq i32 %245, 0
  br i1 %eqtmpX232, label %"cond_jump_elif_then0\0A146", label %"cond_jump_elif1\0A147"

"cond_jump_elif_then0\0A146":                     ; preds = %"cond_jump_elif0\0A145"
  %246 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %247 = bitcast i8* %246 to %sCLNode***
  %node233 = load %sCLNode**, %sCLNode*** %247, align 8
  %248 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %249 = bitcast i8* %248 to %sParserInfo**
  %info234 = load %sParserInfo*, %sParserInfo** %249, align 8
  %250 = call %sCLNode* @sNodeTree_create_true_value(%sParserInfo* %info234)
  store %sCLNode* %250, %sCLNode** %node233, align 8
  br label %cond_end160

"cond_jump_elif1\0A147":                          ; preds = %"cond_jump_elif0\0A145"
  %word235 = load i8*, i8** %word, align 8
  %251 = call i32 @strcmp(i8* %word235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.51, i32 0, i32 0))
  %eqtmpX236 = icmp eq i32 %251, 0
  br i1 %eqtmpX236, label %"cond_jump_elif_then1\0A148", label %"cond_jump_elif2\0A149"

"cond_jump_elif_then1\0A148":                     ; preds = %"cond_jump_elif1\0A147"
  %252 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %253 = bitcast i8* %252 to %sCLNode***
  %node237 = load %sCLNode**, %sCLNode*** %253, align 8
  %254 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %255 = bitcast i8* %254 to %sParserInfo**
  %info238 = load %sParserInfo*, %sParserInfo** %255, align 8
  %256 = call %sCLNode* @sNodeTree_create_false_value(%sParserInfo* %info238)
  store %sCLNode* %256, %sCLNode** %node237, align 8
  br label %cond_end160

"cond_jump_elif2\0A149":                          ; preds = %"cond_jump_elif1\0A147"
  %word239 = load i8*, i8** %word, align 8
  %257 = call i32 @strcmp(i8* %word239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.52, i32 0, i32 0))
  %eqtmpX240 = icmp eq i32 %257, 0
  br i1 %eqtmpX240, label %"cond_jump_elif_then2\0A150", label %"cond_jump_elif3\0A151"

"cond_jump_elif_then2\0A150":                     ; preds = %"cond_jump_elif2\0A149"
  %258 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %259 = bitcast i8* %258 to %sCLNode***
  %node241 = load %sCLNode**, %sCLNode*** %259, align 8
  %260 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %261 = bitcast i8* %260 to %sParserInfo**
  %info242 = load %sParserInfo*, %sParserInfo** %261, align 8
  %262 = call %sCLNode* @sNodeTree_create_null_value(%sParserInfo* %info242)
  store %sCLNode* %262, %sCLNode** %node241, align 8
  br label %cond_end160

"cond_jump_elif3\0A151":                          ; preds = %"cond_jump_elif2\0A149"
  %word243 = load i8*, i8** %word, align 8
  %263 = call i32 @strcmp(i8* %word243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.53, i32 0, i32 0))
  %eqtmpX244 = icmp eq i32 %263, 0
  br i1 %eqtmpX244, label %"cond_jump_elif_then3\0A152", label %"cond_jump_elif4\0A153"

"cond_jump_elif_then3\0A152":                     ; preds = %"cond_jump_elif3\0A151"
  %264 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %265 = bitcast i8* %264 to %sCLNode***
  %node245 = load %sCLNode**, %sCLNode*** %265, align 8
  %266 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %267 = bitcast i8* %266 to %sParserInfo**
  %info246 = load %sParserInfo*, %sParserInfo** %267, align 8
  %268 = call i1 @parse_if_expression(%sCLNode** %node245, %sParserInfo* %info246)
  %LOGICAL_DIANEAL247 = icmp eq i1 %268, false
  br i1 %LOGICAL_DIANEAL247, label %cond_jump_then248, label %cond_end249

"cond_jump_elif4\0A153":                          ; preds = %"cond_jump_elif3\0A151"
  %word252 = load i8*, i8** %word, align 8
  %269 = call i32 @strcmp(i8* %word252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.54, i32 0, i32 0))
  %eqtmpX253 = icmp eq i32 %269, 0
  br i1 %eqtmpX253, label %"cond_jump_elif_then4\0A154", label %"cond_jump_elif5\0A155"

"cond_jump_elif_then4\0A154":                     ; preds = %"cond_jump_elif4\0A153"
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %271 = bitcast i8* %270 to %sCLNode***
  %node254 = load %sCLNode**, %sCLNode*** %271, align 8
  %272 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %273 = bitcast i8* %272 to %sParserInfo**
  %info255 = load %sParserInfo*, %sParserInfo** %273, align 8
  %274 = call i1 @parse_break_expression(%sCLNode** %node254, %sParserInfo* %info255)
  %LOGICAL_DIANEAL256 = icmp eq i1 %274, false
  br i1 %LOGICAL_DIANEAL256, label %cond_jump_then257, label %cond_end258

"cond_jump_elif5\0A155":                          ; preds = %"cond_jump_elif4\0A153"
  %word261 = load i8*, i8** %word, align 8
  %275 = call i32 @strcmp(i8* %word261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.55, i32 0, i32 0))
  %eqtmpX262 = icmp eq i32 %275, 0
  br i1 %eqtmpX262, label %"cond_jump_elif_then5\0A156", label %"cond_jump_elif6\0A157"

"cond_jump_elif_then5\0A156":                     ; preds = %"cond_jump_elif5\0A155"
  %276 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %277 = bitcast i8* %276 to %sCLNode***
  %node263 = load %sCLNode**, %sCLNode*** %277, align 8
  %278 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %279 = bitcast i8* %278 to %sParserInfo**
  %info264 = load %sParserInfo*, %sParserInfo** %279, align 8
  %280 = call i1 @parse_while_expression(%sCLNode** %node263, %sParserInfo* %info264)
  %LOGICAL_DIANEAL265 = icmp eq i1 %280, false
  br i1 %LOGICAL_DIANEAL265, label %cond_jump_then266, label %cond_end267

"cond_jump_elif6\0A157":                          ; preds = %"cond_jump_elif5\0A155"
  %word270 = load i8*, i8** %word, align 8
  %281 = call i32 @strcmp(i8* %word270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.56, i32 0, i32 0))
  %eqtmpX271 = icmp eq i32 %281, 0
  br i1 %eqtmpX271, label %"cond_jump_elif_then6\0A158", label %"cond_jump_elif7\0A"

"cond_jump_elif_then6\0A158":                     ; preds = %"cond_jump_elif6\0A157"
  %282 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %283 = bitcast i8* %282 to %sCLNode***
  %node272 = load %sCLNode**, %sCLNode*** %283, align 8
  %284 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %285 = bitcast i8* %284 to %sParserInfo**
  %info273 = load %sParserInfo*, %sParserInfo** %285, align 8
  %286 = call i1 @parse_throw(%sCLNode** %node272, %sParserInfo* %info273)
  %LOGICAL_DIANEAL274 = icmp eq i1 %286, false
  br i1 %LOGICAL_DIANEAL274, label %cond_jump_then275, label %cond_end276

"cond_jump_elif7\0A":                             ; preds = %"cond_jump_elif6\0A157"
  %word279 = load i8*, i8** %word, align 8
  %287 = call i32 @strcmp(i8* %word279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.57, i32 0, i32 0))
  %eqtmpX280 = icmp eq i32 %287, 0
  br i1 %eqtmpX280, label %"cond_jump_elif_then7\0A", label %"cond_jump_elif8\0A"

"cond_jump_elif_then7\0A":                        ; preds = %"cond_jump_elif7\0A"
  %288 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %289 = bitcast i8* %288 to %sCLNode***
  %node281 = load %sCLNode**, %sCLNode*** %289, align 8
  %290 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %291 = bitcast i8* %290 to %sParserInfo**
  %info282 = load %sParserInfo*, %sParserInfo** %291, align 8
  %292 = call i1 @parse_try(%sCLNode** %node281, %sParserInfo* %info282)
  %LOGICAL_DIANEAL283 = icmp eq i1 %292, false
  br i1 %LOGICAL_DIANEAL283, label %cond_jump_then284, label %cond_end285

"cond_jump_elif8\0A":                             ; preds = %"cond_jump_elif7\0A"
  %word288 = load i8*, i8** %word, align 8
  %293 = call i32 @strcmp(i8* %word288, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.58, i32 0, i32 0))
  %eqtmpX289 = icmp eq i32 %293, 0
  br i1 %eqtmpX289, label %"cond_jump_elif_then8\0A", label %"cond_jump_elif9\0A"

"cond_jump_elif_then8\0A":                        ; preds = %"cond_jump_elif8\0A"
  %294 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %295 = bitcast i8* %294 to %sCLNode***
  %node290 = load %sCLNode**, %sCLNode*** %295, align 8
  %296 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %297 = bitcast i8* %296 to %sParserInfo**
  %info291 = load %sParserInfo*, %sParserInfo** %297, align 8
  %298 = call i1 @parse_lambda_expression(%sCLNode** %node290, %sParserInfo* %info291)
  %LOGICAL_DIANEAL292 = icmp eq i1 %298, false
  br i1 %LOGICAL_DIANEAL292, label %cond_jump_then293, label %cond_end294

"cond_jump_elif9\0A":                             ; preds = %"cond_jump_elif8\0A"
  %word297 = load i8*, i8** %word, align 8
  %299 = call i32 @strcmp(i8* %word297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.59, i32 0, i32 0))
  %eqtmpX298 = icmp eq i32 %299, 0
  br i1 %eqtmpX298, label %"cond_jump_elif_then9\0A", label %"cond_jump_elif10\0A"

"cond_jump_elif_then9\0A":                        ; preds = %"cond_jump_elif9\0A"
  %300 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %301 = bitcast i8* %300 to %sCLNode***
  %node299 = load %sCLNode**, %sCLNode*** %301, align 8
  %302 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %303 = bitcast i8* %302 to %sParserInfo**
  %info300 = load %sParserInfo*, %sParserInfo** %303, align 8
  %304 = call i1 @parse_class(%sCLNode** %node299, %sParserInfo* %info300)
  %LOGICAL_DIANEAL301 = icmp eq i1 %304, false
  br i1 %LOGICAL_DIANEAL301, label %cond_jump_then302, label %cond_end303

"cond_jump_elif10\0A":                            ; preds = %"cond_jump_elif9\0A"
  %word306 = load i8*, i8** %word, align 8
  %305 = call i32 @strcmp(i8* %word306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.60, i32 0, i32 0))
  %eqtmpX307 = icmp eq i32 %305, 0
  br i1 %eqtmpX307, label %"cond_jump_elif_then10\0A", label %"cond_jump_elif11\0A"

"cond_jump_elif_then10\0A":                       ; preds = %"cond_jump_elif10\0A"
  %306 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %307 = bitcast i8* %306 to %sCLNode***
  %node308 = load %sCLNode**, %sCLNode*** %307, align 8
  %308 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %309 = bitcast i8* %308 to %sParserInfo**
  %info309 = load %sParserInfo*, %sParserInfo** %309, align 8
  %310 = call i1 @parse_macro(%sCLNode** %node308, %sParserInfo* %info309)
  %LOGICAL_DIANEAL310 = icmp eq i1 %310, false
  br i1 %LOGICAL_DIANEAL310, label %cond_jump_then311, label %cond_end312

"cond_jump_elif11\0A":                            ; preds = %"cond_jump_elif10\0A"
  %word315 = load i8*, i8** %word, align 8
  %311 = call i32 @strcmp(i8* %word315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.61, i32 0, i32 0))
  %eqtmpX316 = icmp eq i32 %311, 0
  br i1 %eqtmpX316, label %"cond_jump_elif_then11\0A", label %"cond_jump_elif12\0A"

"cond_jump_elif_then11\0A":                       ; preds = %"cond_jump_elif11\0A"
  %312 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %313 = bitcast i8* %312 to %sCLNode***
  %node317 = load %sCLNode**, %sCLNode*** %313, align 8
  %314 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %315 = bitcast i8* %314 to %sParserInfo**
  %info318 = load %sParserInfo*, %sParserInfo** %315, align 8
  %316 = call %sCLNode* @sNodeTree_create_jobs(%sParserInfo* %info318)
  store %sCLNode* %316, %sCLNode** %node317, align 8
  br label %cond_end160

"cond_jump_elif12\0A":                            ; preds = %"cond_jump_elif11\0A"
  %word319 = load i8*, i8** %word, align 8
  %317 = call i32 @strcmp(i8* %word319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.62, i32 0, i32 0))
  %eqtmpX320 = icmp eq i32 %317, 0
  br i1 %eqtmpX320, label %"cond_jump_elif_then12\0A", label %"cond_jump_elif13\0A"

"cond_jump_elif_then12\0A":                       ; preds = %"cond_jump_elif12\0A"
  %318 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %319 = bitcast i8* %318 to %sCLNode***
  %node321 = load %sCLNode**, %sCLNode*** %319, align 8
  %320 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %321 = bitcast i8* %320 to %sParserInfo**
  %info322 = load %sParserInfo*, %sParserInfo** %321, align 8
  %322 = call i1 @expression(%sCLNode** %node321, %sParserInfo* %info322)
  %LOGICAL_DIANEAL323 = icmp eq i1 %322, false
  br i1 %LOGICAL_DIANEAL323, label %cond_jump_then324, label %cond_end325

"cond_jump_elif13\0A":                            ; preds = %"cond_jump_elif12\0A"
  %word332 = load i8*, i8** %word, align 8
  %323 = call i32 @strcmp(i8* %word332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.63, i32 0, i32 0))
  %eqtmpX333 = icmp eq i32 %323, 0
  br i1 %eqtmpX333, label %"cond_jump_elif_then13\0A", label %"cond_jump_elif14\0A"

"cond_jump_elif_then13\0A":                       ; preds = %"cond_jump_elif13\0A"
  %324 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %325 = bitcast i8* %324 to %sCLNode***
  %node334 = load %sCLNode**, %sCLNode*** %325, align 8
  %326 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %327 = bitcast i8* %326 to %sParserInfo**
  %info335 = load %sParserInfo*, %sParserInfo** %327, align 8
  %328 = call i1 @expression(%sCLNode** %node334, %sParserInfo* %info335)
  %LOGICAL_DIANEAL336 = icmp eq i1 %328, false
  br i1 %LOGICAL_DIANEAL336, label %cond_jump_then337, label %cond_end338

"cond_jump_elif14\0A":                            ; preds = %"cond_jump_elif13\0A"
  %word345 = load i8*, i8** %word, align 8
  %329 = call i32 @strcmp(i8* %word345, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.64, i32 0, i32 0))
  %eqtmpX346 = icmp eq i32 %329, 0
  br i1 %eqtmpX346, label %"cond_jump_elif_then14\0A", label %"cond_jump_elif15\0A"

"cond_jump_elif_then14\0A":                       ; preds = %"cond_jump_elif14\0A"
  %buf_size = alloca i32
  %330 = bitcast i32* %buf_size to i8*
  store i8* %330, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 128, i32* %buf_size, align 4
  %buf = alloca [129 x i8]
  %331 = bitcast [129 x i8]* %buf to i8*
  store i8* %331, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %332 = bitcast [129 x i8]* %buf to i8*
  %p2 = alloca i8*
  %333 = bitcast i8** %p2 to i8*
  store i8* %333, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i8* %332, i8** %p2, align 8
  br label %loop_top_block

"cond_jump_elif15\0A":                            ; preds = %"cond_jump_elif14\0A"
  %word394 = load i8*, i8** %word, align 8
  %334 = call i32 @strcmp(i8* %word394, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.66, i32 0, i32 0))
  %eqtmpX395 = icmp eq i32 %334, 0
  br i1 %eqtmpX395, label %"cond_jump_elif_then15\0A", label %"cond_jump_elif16\0A"

"cond_jump_elif_then15\0A":                       ; preds = %"cond_jump_elif15\0A"
  %type396 = alloca %sCLType*
  %335 = bitcast %sCLType** %type396 to i8*
  store i8* %335, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* null, %sCLType** %type396, align 8
  %type397 = load %sCLType*, %sCLType** %type396, align 8
  %336 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %337 = bitcast i8* %336 to %sParserInfo**
  %info398 = load %sParserInfo*, %sParserInfo** %337, align 8
  %338 = call i1 @parse_type(%sCLType** %type396, %sParserInfo* %info398)
  %LOGICAL_DIANEAL399 = icmp eq i1 %338, false
  br i1 %LOGICAL_DIANEAL399, label %cond_jump_then400, label %cond_end401

"cond_jump_elif16\0A":                            ; preds = %"cond_jump_elif15\0A"
  %andand_result_var431 = alloca i1
  %339 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %340 = bitcast i8* %339 to %sParserInfo**
  %info432 = load %sParserInfo*, %sParserInfo** %340, align 8
  %341 = getelementptr inbounds %sParserInfo, %sParserInfo* %info432, i32 0, i32 4
  %342 = load i8*, i8** %341, align 8
  %derefference_value433 = load i8, i8* %342, align 8
  %eqtmpX434 = icmp eq i8 %derefference_value433, 33
  store i1 %eqtmpX434, i1* %andand_result_var431, align 1
  br i1 %eqtmpX434, label %cond_jump_then435, label %cond_jump_end436

"cond_jump_elif_then16\0A":                       ; preds = %cond_jump_end436
  %343 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %344 = bitcast i8* %343 to %sParserInfo**
  %info443 = load %sParserInfo*, %sParserInfo** %344, align 8
  %345 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %346 = bitcast i8* %345 to %sParserInfo**
  %info444 = load %sParserInfo*, %sParserInfo** %346, align 8
  %347 = getelementptr inbounds %sParserInfo, %sParserInfo* %info444, i32 0, i32 4
  %348 = load i8*, i8** %347, align 8
  %349 = ptrtoint i8* %348 to i64
  %addtmp445 = add nsw i64 %349, 2
  %350 = inttoptr i64 %addtmp445 to i8*
  %351 = getelementptr inbounds %sParserInfo, %sParserInfo* %info443, i32 0, i32 4
  store i8* %350, i8** %351, align 8
  %352 = ptrtoint i8* %350 to i64
  %subtmp446 = sub nsw i64 %352, 2
  %353 = inttoptr i64 %subtmp446 to i8*
  %354 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.68, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.69, i32 0, i32 0), i32 1028, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.71, i32 0, i32 0))
  %355 = bitcast i8* %354 to %buffer*
  %356 = call %buffer* @buffer_initialize(%buffer* %355)
  %block_text = alloca %buffer*
  %357 = bitcast %buffer** %block_text to i8*
  store i8* %357, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %buffer* %356, %buffer** %block_text, align 8
  %block_text447 = load %buffer*, %buffer** %block_text, align 8
  %358 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %359 = bitcast i8* %358 to %sParserInfo**
  %info448 = load %sParserInfo*, %sParserInfo** %359, align 8
  %360 = call i1 @get_block_text(%buffer* %block_text447, i8 40, i8 41, %sParserInfo* %info448)
  %LOGICAL_DIANEAL449 = icmp eq i1 %360, false
  br i1 %LOGICAL_DIANEAL449, label %cond_jump_then450, label %cond_end451

cond_else_block159:                               ; preds = %cond_jump_end436
  %andand_result_var477 = alloca i1
  %361 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %362 = bitcast i8* %361 to %sParserInfo**
  %info478 = load %sParserInfo*, %sParserInfo** %362, align 8
  %363 = getelementptr inbounds %sParserInfo, %sParserInfo* %info478, i32 0, i32 4
  %364 = load i8*, i8** %363, align 8
  %derefference_value479 = load i8, i8* %364, align 8
  %eqtmpX480 = icmp eq i8 %derefference_value479, 61
  store i1 %eqtmpX480, i1* %andand_result_var477, align 1
  br i1 %eqtmpX480, label %cond_jump_then481, label %cond_jump_end482

cond_end160:                                      ; preds = %cond_end493, %cond_end476, %cond_end411, %cond_end_block, %cond_end338, %cond_end325, %"cond_jump_elif_then11\0A", %cond_end312, %cond_end303, %cond_end294, %cond_end285, %cond_end276, %cond_end267, %cond_end258, %cond_end249, %"cond_jump_elif_then2\0A150", %"cond_jump_elif_then1\0A148", %"cond_jump_elif_then0\0A146", %cond_end178
  %365 = load i8*, i8** %word, align 8
  %366 = ptrtoint i8* %365 to i64
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %cond_then_block685, label %cond_end686

cond_jump_then169:                                ; preds = %cond_jump_then144
  %368 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %369 = bitcast i8* %368 to %sParserInfo**
  %info171 = load %sParserInfo*, %sParserInfo** %369, align 8
  %370 = getelementptr inbounds %sParserInfo, %sParserInfo* %info171, i32 0, i32 4
  %371 = load i8*, i8** %370, align 8
  %derefference_value172 = load i8, i8* %371, align 8
  %eqtmpX173 = icmp eq i8 %derefference_value172, 95
  %oror174 = or i1 %244, %eqtmpX173
  store i1 %oror174, i1* %oror_result_var161, align 1
  br label %cond_jump_end170

cond_jump_end170:                                 ; preds = %cond_jump_then169, %cond_jump_then144
  %oror_result_value175 = load i1, i1* %oror_result_var161, align 1
  br i1 %oror_result_value175, label %cond_jump_then176, label %cond_else_block177

cond_jump_then176:                                ; preds = %cond_jump_end170
  %372 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %373 = bitcast i8* %372 to %sParserInfo**
  %info179 = load %sParserInfo*, %sParserInfo** %373, align 8
  %374 = call i8* @parse_word(%sParserInfo* %info179)
  %var_name = alloca i8*
  %375 = bitcast i8** %var_name to i8*
  store i8* %375, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i8* %374, i8** %var_name, align 8
  %type = alloca %sCLType*
  %376 = bitcast %sCLType** %type to i8*
  store i8* %376, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLType* null, %sCLType** %type, align 8
  %377 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %378 = bitcast i8* %377 to %sParserInfo**
  %info180 = load %sParserInfo*, %sParserInfo** %378, align 8
  %379 = getelementptr inbounds %sParserInfo, %sParserInfo* %info180, i32 0, i32 4
  %380 = load i8*, i8** %379, align 8
  %derefference_value181 = load i8, i8* %380, align 8
  %eqtmpX182 = icmp eq i8 %derefference_value181, 58
  br i1 %eqtmpX182, label %cond_jump_then183, label %cond_end184

cond_else_block177:                               ; preds = %cond_jump_end170
  %381 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %382 = bitcast i8* %381 to %sParserInfo**
  %info230 = load %sParserInfo*, %sParserInfo** %382, align 8
  call void @parser_err_msg(%sParserInfo* %info230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.49, i32 0, i32 0))
  br label %cond_end178

cond_end178:                                      ; preds = %cond_else_block177, %cond_end229
  br label %cond_end160

cond_jump_then183:                                ; preds = %cond_jump_then176
  %383 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %384 = bitcast i8* %383 to %sParserInfo**
  %info185 = load %sParserInfo*, %sParserInfo** %384, align 8
  %385 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %386 = bitcast i8* %385 to %sParserInfo**
  %info186 = load %sParserInfo*, %sParserInfo** %386, align 8
  %387 = getelementptr inbounds %sParserInfo, %sParserInfo* %info186, i32 0, i32 4
  %388 = load i8*, i8** %387, align 8
  %389 = ptrtoint i8* %388 to i64
  %addtmp187 = add nsw i64 %389, 1
  %390 = inttoptr i64 %addtmp187 to i8*
  %391 = getelementptr inbounds %sParserInfo, %sParserInfo* %info185, i32 0, i32 4
  store i8* %390, i8** %391, align 8
  %392 = ptrtoint i8* %390 to i64
  %subtmp188 = sub nsw i64 %392, 1
  %393 = inttoptr i64 %subtmp188 to i8*
  %394 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %395 = bitcast i8* %394 to %sParserInfo**
  %info189 = load %sParserInfo*, %sParserInfo** %395, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info189)
  %396 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %397 = bitcast i8* %396 to %sCLType**
  %type190 = load %sCLType*, %sCLType** %397, align 8
  %398 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %399 = bitcast i8* %398 to %sParserInfo**
  %info191 = load %sParserInfo*, %sParserInfo** %399, align 8
  %400 = call i1 @parse_type(%sCLType** %397, %sParserInfo* %info191)
  %LOGICAL_DIANEAL192 = icmp eq i1 %400, false
  br i1 %LOGICAL_DIANEAL192, label %cond_jump_then193, label %cond_end194

cond_end184:                                      ; preds = %cond_end194, %cond_jump_then176
  %401 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %402 = bitcast i8* %401 to %sParserInfo**
  %info198 = load %sParserInfo*, %sParserInfo** %402, align 8
  %var_name199 = load i8*, i8** %var_name, align 8
  call void @check_already_added_variable(%sParserInfo* %info198, i8* %var_name199)
  %403 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %404 = bitcast i8* %403 to %sParserInfo**
  %info200 = load %sParserInfo*, %sParserInfo** %404, align 8
  %var_name201 = load i8*, i8** %var_name, align 8
  %type202 = load %sCLType*, %sCLType** %type, align 8
  call void @add_variable_to_table(%sParserInfo* %info200, i8* %var_name201, %sCLType* %type202, i1 false)
  %405 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %406 = bitcast i8* %405 to %sParserInfo**
  %info203 = load %sParserInfo*, %sParserInfo** %406, align 8
  %407 = getelementptr inbounds %sParserInfo, %sParserInfo* %info203, i32 0, i32 4
  %408 = load i8*, i8** %407, align 8
  %derefference_value204 = load i8, i8* %408, align 8
  %eqtmpX205 = icmp eq i8 %derefference_value204, 61
  br i1 %eqtmpX205, label %cond_jump_then206, label %cond_else_block207

cond_jump_then193:                                ; preds = %cond_jump_then183
  %409 = bitcast [8192 x i8*]* %lvtable to i8*
  %410 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %409, i64 65536)
  %411 = load i8*, i8** %var_name, align 8
  %412 = ptrtoint i8* %411 to i64
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %cond_then_block, label %cond_end195

cond_end194:                                      ; preds = %cond_jump_then183
  br label %cond_end184

cond_then_block:                                  ; preds = %cond_jump_then193
  br label %cond_end195

cond_end195:                                      ; preds = %cond_then_block, %cond_jump_then193
  call void @xfree(i8* %411)
  %414 = load i8*, i8** %word, align 8
  %415 = ptrtoint i8* %414 to i64
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %cond_then_block196, label %cond_end197

cond_then_block196:                               ; preds = %cond_end195
  br label %cond_end197

cond_end197:                                      ; preds = %cond_then_block196, %cond_end195
  call void @xfree(i8* %414)
  ret i1 false

cond_jump_then206:                                ; preds = %cond_end184
  %417 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %418 = bitcast i8* %417 to %sParserInfo**
  %info209 = load %sParserInfo*, %sParserInfo** %418, align 8
  %419 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %420 = bitcast i8* %419 to %sParserInfo**
  %info210 = load %sParserInfo*, %sParserInfo** %420, align 8
  %421 = getelementptr inbounds %sParserInfo, %sParserInfo* %info210, i32 0, i32 4
  %422 = load i8*, i8** %421, align 8
  %423 = ptrtoint i8* %422 to i64
  %addtmp211 = add nsw i64 %423, 1
  %424 = inttoptr i64 %addtmp211 to i8*
  %425 = getelementptr inbounds %sParserInfo, %sParserInfo* %info209, i32 0, i32 4
  store i8* %424, i8** %425, align 8
  %426 = ptrtoint i8* %424 to i64
  %subtmp212 = sub nsw i64 %426, 1
  %427 = inttoptr i64 %subtmp212 to i8*
  %428 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %429 = bitcast i8* %428 to %sParserInfo**
  %info213 = load %sParserInfo*, %sParserInfo** %429, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info213)
  %exp = alloca %sCLNode*
  %430 = bitcast %sCLNode** %exp to i8*
  store i8* %430, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLNode* null, %sCLNode** %exp, align 8
  %exp214 = load %sCLNode*, %sCLNode** %exp, align 8
  %431 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %432 = bitcast i8* %431 to %sParserInfo**
  %info215 = load %sParserInfo*, %sParserInfo** %432, align 8
  %433 = call i1 @expression(%sCLNode** %exp, %sParserInfo* %info215)
  %LOGICAL_DIANEAL216 = icmp eq i1 %433, false
  br i1 %LOGICAL_DIANEAL216, label %cond_jump_then217, label %cond_end218

cond_else_block207:                               ; preds = %cond_end184
  %434 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %435 = bitcast i8* %434 to %sParserInfo**
  %info227 = load %sParserInfo*, %sParserInfo** %435, align 8
  call void @parser_err_msg(%sParserInfo* %info227, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @global_string.48, i32 0, i32 0))
  br label %cond_end208

cond_end208:                                      ; preds = %cond_else_block207, %cond_end218
  %436 = load i8*, i8** %var_name, align 8
  %437 = ptrtoint i8* %436 to i64
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %cond_then_block228, label %cond_end229

cond_jump_then217:                                ; preds = %cond_jump_then206
  %439 = bitcast [8192 x i8*]* %lvtable to i8*
  %440 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %439, i64 65536)
  %441 = load i8*, i8** %var_name, align 8
  %442 = ptrtoint i8* %441 to i64
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %cond_then_block219, label %cond_end220

cond_end218:                                      ; preds = %cond_jump_then206
  %444 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %445 = bitcast i8* %444 to %sCLNode***
  %node223 = load %sCLNode**, %sCLNode*** %445, align 8
  %446 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %447 = bitcast i8* %446 to i8**
  %var_name224 = load i8*, i8** %447, align 8
  %exp225 = load %sCLNode*, %sCLNode** %exp, align 8
  %448 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %449 = bitcast i8* %448 to %sParserInfo**
  %info226 = load %sParserInfo*, %sParserInfo** %449, align 8
  %450 = call %sCLNode* @sNodeTree_create_store_variable(i8* %var_name224, %sCLNode* %exp225, %sParserInfo* %info226)
  store %sCLNode* %450, %sCLNode** %node223, align 8
  br label %cond_end208

cond_then_block219:                               ; preds = %cond_jump_then217
  br label %cond_end220

cond_end220:                                      ; preds = %cond_then_block219, %cond_jump_then217
  call void @xfree(i8* %441)
  %451 = load i8*, i8** %word, align 8
  %452 = ptrtoint i8* %451 to i64
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %cond_then_block221, label %cond_end222

cond_then_block221:                               ; preds = %cond_end220
  br label %cond_end222

cond_end222:                                      ; preds = %cond_then_block221, %cond_end220
  call void @xfree(i8* %451)
  ret i1 false

cond_then_block228:                               ; preds = %cond_end208
  br label %cond_end229

cond_end229:                                      ; preds = %cond_then_block228, %cond_end208
  call void @xfree(i8* %436)
  br label %cond_end178

cond_jump_then248:                                ; preds = %"cond_jump_elif_then3\0A152"
  %454 = bitcast [8192 x i8*]* %lvtable to i8*
  %455 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %454, i64 65536)
  %456 = load i8*, i8** %word, align 8
  %457 = ptrtoint i8* %456 to i64
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %cond_then_block250, label %cond_end251

cond_end249:                                      ; preds = %"cond_jump_elif_then3\0A152"
  br label %cond_end160

cond_then_block250:                               ; preds = %cond_jump_then248
  br label %cond_end251

cond_end251:                                      ; preds = %cond_then_block250, %cond_jump_then248
  call void @xfree(i8* %456)
  ret i1 false

cond_jump_then257:                                ; preds = %"cond_jump_elif_then4\0A154"
  %459 = bitcast [8192 x i8*]* %lvtable to i8*
  %460 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %459, i64 65536)
  %461 = load i8*, i8** %word, align 8
  %462 = ptrtoint i8* %461 to i64
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %cond_then_block259, label %cond_end260

cond_end258:                                      ; preds = %"cond_jump_elif_then4\0A154"
  br label %cond_end160

cond_then_block259:                               ; preds = %cond_jump_then257
  br label %cond_end260

cond_end260:                                      ; preds = %cond_then_block259, %cond_jump_then257
  call void @xfree(i8* %461)
  ret i1 false

cond_jump_then266:                                ; preds = %"cond_jump_elif_then5\0A156"
  %464 = bitcast [8192 x i8*]* %lvtable to i8*
  %465 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %464, i64 65536)
  %466 = load i8*, i8** %word, align 8
  %467 = ptrtoint i8* %466 to i64
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %cond_then_block268, label %cond_end269

cond_end267:                                      ; preds = %"cond_jump_elif_then5\0A156"
  br label %cond_end160

cond_then_block268:                               ; preds = %cond_jump_then266
  br label %cond_end269

cond_end269:                                      ; preds = %cond_then_block268, %cond_jump_then266
  call void @xfree(i8* %466)
  ret i1 false

cond_jump_then275:                                ; preds = %"cond_jump_elif_then6\0A158"
  %469 = bitcast [8192 x i8*]* %lvtable to i8*
  %470 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %469, i64 65536)
  %471 = load i8*, i8** %word, align 8
  %472 = ptrtoint i8* %471 to i64
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %cond_then_block277, label %cond_end278

cond_end276:                                      ; preds = %"cond_jump_elif_then6\0A158"
  br label %cond_end160

cond_then_block277:                               ; preds = %cond_jump_then275
  br label %cond_end278

cond_end278:                                      ; preds = %cond_then_block277, %cond_jump_then275
  call void @xfree(i8* %471)
  ret i1 false

cond_jump_then284:                                ; preds = %"cond_jump_elif_then7\0A"
  %474 = bitcast [8192 x i8*]* %lvtable to i8*
  %475 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %474, i64 65536)
  %476 = load i8*, i8** %word, align 8
  %477 = ptrtoint i8* %476 to i64
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %cond_then_block286, label %cond_end287

cond_end285:                                      ; preds = %"cond_jump_elif_then7\0A"
  br label %cond_end160

cond_then_block286:                               ; preds = %cond_jump_then284
  br label %cond_end287

cond_end287:                                      ; preds = %cond_then_block286, %cond_jump_then284
  call void @xfree(i8* %476)
  ret i1 false

cond_jump_then293:                                ; preds = %"cond_jump_elif_then8\0A"
  %479 = bitcast [8192 x i8*]* %lvtable to i8*
  %480 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %479, i64 65536)
  %481 = load i8*, i8** %word, align 8
  %482 = ptrtoint i8* %481 to i64
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %cond_then_block295, label %cond_end296

cond_end294:                                      ; preds = %"cond_jump_elif_then8\0A"
  br label %cond_end160

cond_then_block295:                               ; preds = %cond_jump_then293
  br label %cond_end296

cond_end296:                                      ; preds = %cond_then_block295, %cond_jump_then293
  call void @xfree(i8* %481)
  ret i1 false

cond_jump_then302:                                ; preds = %"cond_jump_elif_then9\0A"
  %484 = bitcast [8192 x i8*]* %lvtable to i8*
  %485 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %484, i64 65536)
  %486 = load i8*, i8** %word, align 8
  %487 = ptrtoint i8* %486 to i64
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %cond_then_block304, label %cond_end305

cond_end303:                                      ; preds = %"cond_jump_elif_then9\0A"
  br label %cond_end160

cond_then_block304:                               ; preds = %cond_jump_then302
  br label %cond_end305

cond_end305:                                      ; preds = %cond_then_block304, %cond_jump_then302
  call void @xfree(i8* %486)
  ret i1 false

cond_jump_then311:                                ; preds = %"cond_jump_elif_then10\0A"
  %489 = bitcast [8192 x i8*]* %lvtable to i8*
  %490 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %489, i64 65536)
  %491 = load i8*, i8** %word, align 8
  %492 = ptrtoint i8* %491 to i64
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %cond_then_block313, label %cond_end314

cond_end312:                                      ; preds = %"cond_jump_elif_then10\0A"
  br label %cond_end160

cond_then_block313:                               ; preds = %cond_jump_then311
  br label %cond_end314

cond_end314:                                      ; preds = %cond_then_block313, %cond_jump_then311
  call void @xfree(i8* %491)
  ret i1 false

cond_jump_then324:                                ; preds = %"cond_jump_elif_then12\0A"
  %494 = bitcast [8192 x i8*]* %lvtable to i8*
  %495 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %494, i64 65536)
  %496 = load i8*, i8** %word, align 8
  %497 = ptrtoint i8* %496 to i64
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %cond_then_block326, label %cond_end327

cond_end325:                                      ; preds = %"cond_jump_elif_then12\0A"
  %499 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %500 = bitcast i8* %499 to %sCLNode***
  %node328 = load %sCLNode**, %sCLNode*** %500, align 8
  %501 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %502 = bitcast i8* %501 to %sCLNode***
  %node329 = load %sCLNode**, %sCLNode*** %502, align 8
  %derefference_value330 = load %sCLNode*, %sCLNode** %node329, align 8
  %503 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %504 = bitcast i8* %503 to %sParserInfo**
  %info331 = load %sParserInfo*, %sParserInfo** %504, align 8
  %505 = call %sCLNode* @sNodeTree_create_exit(%sCLNode* %derefference_value330, %sParserInfo* %info331)
  store %sCLNode* %505, %sCLNode** %node328, align 8
  br label %cond_end160

cond_then_block326:                               ; preds = %cond_jump_then324
  br label %cond_end327

cond_end327:                                      ; preds = %cond_then_block326, %cond_jump_then324
  call void @xfree(i8* %496)
  ret i1 false

cond_jump_then337:                                ; preds = %"cond_jump_elif_then13\0A"
  %506 = bitcast [8192 x i8*]* %lvtable to i8*
  %507 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %506, i64 65536)
  %508 = load i8*, i8** %word, align 8
  %509 = ptrtoint i8* %508 to i64
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %cond_then_block339, label %cond_end340

cond_end338:                                      ; preds = %"cond_jump_elif_then13\0A"
  %511 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %512 = bitcast i8* %511 to %sCLNode***
  %node341 = load %sCLNode**, %sCLNode*** %512, align 8
  %513 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %514 = bitcast i8* %513 to %sCLNode***
  %node342 = load %sCLNode**, %sCLNode*** %514, align 8
  %derefference_value343 = load %sCLNode*, %sCLNode** %node342, align 8
  %515 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %516 = bitcast i8* %515 to %sParserInfo**
  %info344 = load %sParserInfo*, %sParserInfo** %516, align 8
  %517 = call %sCLNode* @sNodeTree_create_return(%sCLNode* %derefference_value343, %sParserInfo* %info344)
  store %sCLNode* %517, %sCLNode** %node341, align 8
  br label %cond_end160

cond_then_block339:                               ; preds = %cond_jump_then337
  br label %cond_end340

cond_end340:                                      ; preds = %cond_then_block339, %cond_jump_then337
  call void @xfree(i8* %508)
  ret i1 false

loop_top_block:                                   ; preds = %cond_end386, %"cond_jump_elif_then14\0A"
  %oror_result_var347 = alloca i1
  %518 = call i16** @__ctype_b_loc()
  %derefference_value348 = load i16*, i16** %518, align 8
  %519 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %520 = bitcast i8* %519 to %sParserInfo**
  %info349 = load %sParserInfo*, %sParserInfo** %520, align 8
  %521 = getelementptr inbounds %sParserInfo, %sParserInfo* %info349, i32 0, i32 4
  %522 = load i8*, i8** %521, align 8
  %derefference_value350 = load i8, i8* %522, align 8
  %sext13351 = zext i8 %derefference_value350 to i32
  %element_address352 = getelementptr i16, i16* %derefference_value348, i32 %sext13351
  %element353 = load i16, i16* %element_address352, align 2
  %andtmp354 = and i16 %element353, 2048
  %523 = icmp ne i16 %andtmp354, 0
  store i1 %523, i1* %oror_result_var347, align 1
  br i1 %523, label %cond_jump_end356, label %cond_jump_then355

cond_jump_then355:                                ; preds = %loop_top_block
  %524 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %525 = bitcast i8* %524 to %sParserInfo**
  %info357 = load %sParserInfo*, %sParserInfo** %525, align 8
  %526 = getelementptr inbounds %sParserInfo, %sParserInfo* %info357, i32 0, i32 4
  %527 = load i8*, i8** %526, align 8
  %derefference_value358 = load i8, i8* %527, align 8
  %eqtmpX359 = icmp eq i8 %derefference_value358, 95
  %oror360 = or i1 %523, %eqtmpX359
  store i1 %oror360, i1* %oror_result_var347, align 1
  br label %cond_jump_end356

cond_jump_end356:                                 ; preds = %cond_jump_then355, %loop_top_block
  %oror_result_value361 = load i1, i1* %oror_result_var347, align 1
  br i1 %oror_result_value361, label %cond_then_block362, label %cond_end_block

cond_then_block362:                               ; preds = %cond_jump_end356
  %528 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %529 = bitcast i8* %528 to %sParserInfo**
  %info363 = load %sParserInfo*, %sParserInfo** %529, align 8
  %530 = getelementptr inbounds %sParserInfo, %sParserInfo* %info363, i32 0, i32 4
  %531 = load i8*, i8** %530, align 8
  %derefference_value364 = load i8, i8* %531, align 8
  %eqtmpX365 = icmp eq i8 %derefference_value364, 95
  br i1 %eqtmpX365, label %cond_jump_then366, label %cond_else_block367

cond_end_block:                                   ; preds = %cond_jump_end356
  %p2390 = load i8*, i8** %p2, align 8
  store i8 0, i8* %p2390, align 1
  %532 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %533 = bitcast i8* %532 to %sParserInfo**
  %info391 = load %sParserInfo*, %sParserInfo** %533, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info391)
  %534 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %535 = bitcast i8* %534 to %sCLNode***
  %node392 = load %sCLNode**, %sCLNode*** %535, align 8
  %536 = bitcast [129 x i8]* %buf to i8*
  %537 = call i32 @atoi(i8* %536)
  %538 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %539 = bitcast i8* %538 to %sParserInfo**
  %info393 = load %sParserInfo*, %sParserInfo** %539, align 8
  %540 = call %sCLNode* @sNodeTree_create_fg(i32 %537, %sParserInfo* %info393)
  store %sCLNode* %540, %sCLNode** %node392, align 8
  br label %cond_end160

cond_jump_then366:                                ; preds = %cond_then_block362
  %541 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %542 = bitcast i8* %541 to %sParserInfo**
  %info369 = load %sParserInfo*, %sParserInfo** %542, align 8
  %543 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %544 = bitcast i8* %543 to %sParserInfo**
  %info370 = load %sParserInfo*, %sParserInfo** %544, align 8
  %545 = getelementptr inbounds %sParserInfo, %sParserInfo* %info370, i32 0, i32 4
  %546 = load i8*, i8** %545, align 8
  %547 = ptrtoint i8* %546 to i64
  %addtmp371 = add nsw i64 %547, 1
  %548 = inttoptr i64 %addtmp371 to i8*
  %549 = getelementptr inbounds %sParserInfo, %sParserInfo* %info369, i32 0, i32 4
  store i8* %548, i8** %549, align 8
  %550 = ptrtoint i8* %548 to i64
  %subtmp372 = sub nsw i64 %550, 1
  %551 = inttoptr i64 %subtmp372 to i8*
  br label %cond_end368

cond_else_block367:                               ; preds = %cond_then_block362
  %552 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %553 = bitcast i8* %552 to i8**
  %p2373 = load i8*, i8** %553, align 8
  %554 = ptrtoint i8* %p2373 to i64
  %addtmp374 = add nsw i64 %554, 1
  %555 = inttoptr i64 %addtmp374 to i8*
  %556 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %557 = bitcast i8* %556 to i8**
  store i8* %555, i8** %557, align 8
  %558 = ptrtoint i8* %555 to i64
  %subtmp375 = sub nsw i64 %558, 1
  %559 = inttoptr i64 %subtmp375 to i8*
  %560 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %561 = bitcast i8* %560 to %sParserInfo**
  %info376 = load %sParserInfo*, %sParserInfo** %561, align 8
  %562 = getelementptr inbounds %sParserInfo, %sParserInfo* %info376, i32 0, i32 4
  %563 = load i8*, i8** %562, align 8
  %derefference_value377 = load i8, i8* %563, align 8
  store i8 %derefference_value377, i8* %559, align 1
  %564 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %565 = bitcast i8* %564 to %sParserInfo**
  %info378 = load %sParserInfo*, %sParserInfo** %565, align 8
  %566 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %567 = bitcast i8* %566 to %sParserInfo**
  %info379 = load %sParserInfo*, %sParserInfo** %567, align 8
  %568 = getelementptr inbounds %sParserInfo, %sParserInfo* %info379, i32 0, i32 4
  %569 = load i8*, i8** %568, align 8
  %570 = ptrtoint i8* %569 to i64
  %addtmp380 = add nsw i64 %570, 1
  %571 = inttoptr i64 %addtmp380 to i8*
  %572 = getelementptr inbounds %sParserInfo, %sParserInfo* %info378, i32 0, i32 4
  store i8* %571, i8** %572, align 8
  %573 = ptrtoint i8* %571 to i64
  %subtmp381 = sub nsw i64 %573, 1
  %574 = inttoptr i64 %subtmp381 to i8*
  br label %cond_end368

cond_end368:                                      ; preds = %cond_else_block367, %cond_jump_then366
  %575 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %576 = bitcast i8* %575 to i8**
  %p2382 = load i8*, i8** %576, align 8
  %577 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %578 = bitcast i8* %577 to [129 x i8]*
  %579 = bitcast [129 x i8]* %578 to i8*
  %580 = ptrtoint i8* %p2382 to i64
  %581 = ptrtoint i8* %579 to i64
  %subtmp383 = sub nsw i64 %580, %581
  %582 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %583 = bitcast i8* %582 to i32*
  %buf_size384 = load i32, i32* %583, align 4
  %sext14 = zext i32 %buf_size384 to i64
  %getmp = icmp sge i64 %subtmp383, %sext14
  br i1 %getmp, label %cond_jump_then385, label %cond_end386

cond_jump_then385:                                ; preds = %cond_end368
  %584 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %585 = bitcast i8* %584 to %sParserInfo**
  %info387 = load %sParserInfo*, %sParserInfo** %585, align 8
  call void @parser_err_msg(%sParserInfo* %info387, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.65, i32 0, i32 0))
  %586 = bitcast [8192 x i8*]* %lvtable to i8*
  %587 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %586, i64 65536)
  %588 = load i8*, i8** %word, align 8
  %589 = ptrtoint i8* %588 to i64
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %cond_then_block388, label %cond_end389

cond_end386:                                      ; preds = %cond_end368
  br label %loop_top_block

cond_then_block388:                               ; preds = %cond_jump_then385
  br label %cond_end389

cond_end389:                                      ; preds = %cond_then_block388, %cond_jump_then385
  call void @xfree(i8* %588)
  ret i1 false

cond_jump_then400:                                ; preds = %"cond_jump_elif_then15\0A"
  %591 = bitcast [8192 x i8*]* %lvtable to i8*
  %592 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %591, i64 65536)
  %593 = load i8*, i8** %word, align 8
  %594 = ptrtoint i8* %593 to i64
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %cond_then_block402, label %cond_end403

cond_end401:                                      ; preds = %"cond_jump_elif_then15\0A"
  %596 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %597 = bitcast i8* %596 to %sCLNode***
  %node404 = load %sCLNode**, %sCLNode*** %597, align 8
  %type405 = load %sCLType*, %sCLType** %type396, align 8
  %598 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %599 = bitcast i8* %598 to %sParserInfo**
  %info406 = load %sParserInfo*, %sParserInfo** %599, align 8
  %600 = call %sCLNode* @sNodeTree_create_object(%sCLType* %type405, %sParserInfo* %info406)
  store %sCLNode* %600, %sCLNode** %node404, align 8
  %601 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %602 = bitcast i8* %601 to %sParserInfo**
  %info407 = load %sParserInfo*, %sParserInfo** %602, align 8
  %603 = getelementptr inbounds %sParserInfo, %sParserInfo* %info407, i32 0, i32 4
  %604 = load i8*, i8** %603, align 8
  %derefference_value408 = load i8, i8* %604, align 8
  %eqtmpX409 = icmp eq i8 %derefference_value408, 40
  br i1 %eqtmpX409, label %cond_jump_then410, label %cond_end411

cond_then_block402:                               ; preds = %cond_jump_then400
  br label %cond_end403

cond_end403:                                      ; preds = %cond_then_block402, %cond_jump_then400
  call void @xfree(i8* %593)
  ret i1 false

cond_jump_then410:                                ; preds = %cond_end401
  %name = alloca i8*
  %605 = bitcast i8** %name to i8*
  store i8* %605, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.67, i32 0, i32 0), i8** %name, align 8
  %606 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %607 = bitcast i8* %606 to %sParserInfo**
  %info412 = load %sParserInfo*, %sParserInfo** %607, align 8
  %608 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %609 = bitcast i8* %608 to %sParserInfo**
  %info413 = load %sParserInfo*, %sParserInfo** %609, align 8
  %610 = getelementptr inbounds %sParserInfo, %sParserInfo* %info413, i32 0, i32 4
  %611 = load i8*, i8** %610, align 8
  %612 = ptrtoint i8* %611 to i64
  %addtmp414 = add nsw i64 %612, 1
  %613 = inttoptr i64 %addtmp414 to i8*
  %614 = getelementptr inbounds %sParserInfo, %sParserInfo* %info412, i32 0, i32 4
  store i8* %613, i8** %614, align 8
  %615 = ptrtoint i8* %613 to i64
  %subtmp415 = sub nsw i64 %615, 1
  %616 = inttoptr i64 %subtmp415 to i8*
  %617 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %618 = bitcast i8* %617 to %sParserInfo**
  %info416 = load %sParserInfo*, %sParserInfo** %618, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info416)
  %num_params = alloca i32
  %619 = bitcast i32* %num_params to i8*
  store i8* %619, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 0, i32* %num_params, align 4
  %params = alloca [32 x %sCLNode*]
  %620 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %620, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %621 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %622 = bitcast i8* %621 to %sCLNode***
  %node417 = load %sCLNode**, %sCLNode*** %622, align 8
  %derefference_value418 = load %sCLNode*, %sCLNode** %node417, align 8
  %623 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address419 = getelementptr %sCLNode*, %sCLNode** %623, i32 0
  store %sCLNode* %derefference_value418, %sCLNode** %element_address419, align 8
  store i32 1, i32* %num_params, align 4
  %num_params420 = load i32, i32* %num_params, align 4
  %624 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %625 = bitcast i8* %624 to %sParserInfo**
  %info421 = load %sParserInfo*, %sParserInfo** %625, align 8
  %626 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %627 = call i1 @parse_calling_params(i32* %num_params, %sCLNode** %626, %sParserInfo* %info421)
  %LOGICAL_DIANEAL422 = icmp eq i1 %627, false
  br i1 %LOGICAL_DIANEAL422, label %cond_jump_then423, label %cond_end424

cond_end411:                                      ; preds = %cond_end424, %cond_end401
  br label %cond_end160

cond_jump_then423:                                ; preds = %cond_jump_then410
  %628 = bitcast [8192 x i8*]* %lvtable to i8*
  %629 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %628, i64 65536)
  %630 = load i8*, i8** %word, align 8
  %631 = ptrtoint i8* %630 to i64
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %cond_then_block425, label %cond_end426

cond_end424:                                      ; preds = %cond_jump_then410
  %633 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %634 = bitcast i8* %633 to %sCLNode***
  %node427 = load %sCLNode**, %sCLNode*** %634, align 8
  %name428 = load i8*, i8** %name, align 8
  %num_params429 = load i32, i32* %num_params, align 4
  %635 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %636 = bitcast i8* %635 to %sParserInfo**
  %info430 = load %sParserInfo*, %sParserInfo** %636, align 8
  %637 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %638 = call %sCLNode* @sNodeTree_create_method_call(i8* %name428, i32 %num_params429, %sCLNode** %637, %sParserInfo* %info430)
  store %sCLNode* %638, %sCLNode** %node427, align 8
  br label %cond_end411

cond_then_block425:                               ; preds = %cond_jump_then423
  br label %cond_end426

cond_end426:                                      ; preds = %cond_then_block425, %cond_jump_then423
  call void @xfree(i8* %630)
  ret i1 false

cond_jump_then435:                                ; preds = %"cond_jump_elif16\0A"
  %639 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %640 = bitcast i8* %639 to %sParserInfo**
  %info437 = load %sParserInfo*, %sParserInfo** %640, align 8
  %641 = getelementptr inbounds %sParserInfo, %sParserInfo* %info437, i32 0, i32 4
  %642 = load i8*, i8** %641, align 8
  %643 = ptrtoint i8* %642 to i64
  %addtmp438 = add nsw i64 %643, 1
  %644 = inttoptr i64 %addtmp438 to i8*
  %derefference_value439 = load i8, i8* %644, align 8
  %eqtmpX440 = icmp eq i8 %derefference_value439, 40
  %andand441 = and i1 %eqtmpX434, %eqtmpX440
  store i1 %andand441, i1* %andand_result_var431, align 1
  br label %cond_jump_end436

cond_jump_end436:                                 ; preds = %cond_jump_then435, %"cond_jump_elif16\0A"
  %andand_result_value442 = load i1, i1* %andand_result_var431, align 1
  br i1 %andand_result_value442, label %"cond_jump_elif_then16\0A", label %cond_else_block159

cond_jump_then450:                                ; preds = %"cond_jump_elif_then16\0A"
  %645 = bitcast [8192 x i8*]* %lvtable to i8*
  %646 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %645, i64 65536)
  %647 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %647)
  %648 = ptrtoint %buffer* %647 to i64
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %cond_then_block452, label %cond_end453

cond_end451:                                      ; preds = %"cond_jump_elif_then16\0A"
  %650 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %651 = bitcast i8* %650 to i8**
  %word456 = load i8*, i8** %651, align 8
  %name457 = alloca i8*
  %652 = bitcast i8** %name457 to i8*
  store i8* %652, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i8* %word456, i8** %name457, align 8
  %block_text458 = load %buffer*, %buffer** %block_text, align 8
  %653 = call i8* @buffer_to_string(%buffer* %block_text458)
  %654 = call i8* @string_substring(i8* %653, i32 0, i32 -2)
  %params459 = alloca i8*
  %655 = bitcast i8** %params459 to i8*
  store i8* %655, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i8* %654, i8** %params459, align 8
  %656 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %657 = bitcast i8* %656 to %sCLNode***
  %node460 = load %sCLNode**, %sCLNode*** %657, align 8
  %name461 = load i8*, i8** %name457, align 8
  %params462 = load i8*, i8** %params459, align 8
  %658 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %659 = bitcast i8* %658 to %sParserInfo**
  %info463 = load %sParserInfo*, %sParserInfo** %659, align 8
  %660 = call i1 @call_macro(%sCLNode** %node460, i8* %name461, i8* %params462, %sParserInfo* %info463)
  %LOGICAL_DIANEAL464 = icmp eq i1 %660, false
  %661 = ptrtoint i8* %653 to i64
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %cond_then_block467, label %cond_end468

cond_then_block452:                               ; preds = %cond_jump_then450
  br label %cond_end453

cond_end453:                                      ; preds = %cond_then_block452, %cond_jump_then450
  %663 = bitcast %buffer* %647 to i8*
  call void @xfree(i8* %663)
  %664 = load i8*, i8** %word, align 8
  %665 = ptrtoint i8* %664 to i64
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %cond_then_block454, label %cond_end455

cond_then_block454:                               ; preds = %cond_end453
  br label %cond_end455

cond_end455:                                      ; preds = %cond_then_block454, %cond_end453
  call void @xfree(i8* %664)
  ret i1 false

cond_jump_then465:                                ; preds = %cond_end470
  %667 = bitcast [8192 x i8*]* %lvtable to i8*
  %668 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %667, i64 65536)
  %669 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %669)
  %670 = ptrtoint %buffer* %669 to i64
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %cond_then_block471, label %cond_end472

cond_end466:                                      ; preds = %cond_end470
  %672 = load %buffer*, %buffer** %block_text, align 8
  call void @buffer_finalize(%buffer* %672)
  %673 = ptrtoint %buffer* %672 to i64
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %cond_then_block475, label %cond_end476

cond_then_block467:                               ; preds = %cond_end451
  br label %cond_end468

cond_end468:                                      ; preds = %cond_then_block467, %cond_end451
  call void @xfree(i8* %653)
  %675 = ptrtoint i8* %654 to i64
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %cond_then_block469, label %cond_end470

cond_then_block469:                               ; preds = %cond_end468
  br label %cond_end470

cond_end470:                                      ; preds = %cond_then_block469, %cond_end468
  call void @xfree(i8* %654)
  br i1 %LOGICAL_DIANEAL464, label %cond_jump_then465, label %cond_end466

cond_then_block471:                               ; preds = %cond_jump_then465
  br label %cond_end472

cond_end472:                                      ; preds = %cond_then_block471, %cond_jump_then465
  %677 = bitcast %buffer* %669 to i8*
  call void @xfree(i8* %677)
  %678 = load i8*, i8** %word, align 8
  %679 = ptrtoint i8* %678 to i64
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %cond_then_block473, label %cond_end474

cond_then_block473:                               ; preds = %cond_end472
  br label %cond_end474

cond_end474:                                      ; preds = %cond_then_block473, %cond_end472
  call void @xfree(i8* %678)
  ret i1 false

cond_then_block475:                               ; preds = %cond_end466
  br label %cond_end476

cond_end476:                                      ; preds = %cond_then_block475, %cond_end466
  %681 = bitcast %buffer* %672 to i8*
  call void @xfree(i8* %681)
  br label %cond_end160

cond_jump_then481:                                ; preds = %cond_else_block159
  %682 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %683 = bitcast i8* %682 to %sParserInfo**
  %info483 = load %sParserInfo*, %sParserInfo** %683, align 8
  %684 = getelementptr inbounds %sParserInfo, %sParserInfo* %info483, i32 0, i32 4
  %685 = load i8*, i8** %684, align 8
  %686 = ptrtoint i8* %685 to i64
  %addtmp484 = add nsw i64 %686, 1
  %687 = inttoptr i64 %addtmp484 to i8*
  %derefference_value485 = load i8, i8* %687, align 8
  %noteqtmp486 = icmp ne i8 %derefference_value485, 61
  %andand487 = and i1 %eqtmpX480, %noteqtmp486
  store i1 %andand487, i1* %andand_result_var477, align 1
  br label %cond_jump_end482

cond_jump_end482:                                 ; preds = %cond_jump_then481, %cond_else_block159
  %andand_result_value488 = load i1, i1* %andand_result_var477, align 1
  br i1 %andand_result_value488, label %cond_jump_then489, label %"cond_jump_elif0\0A490"

cond_jump_then489:                                ; preds = %cond_jump_end482
  %688 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %689 = bitcast i8* %688 to %sParserInfo**
  %info494 = load %sParserInfo*, %sParserInfo** %689, align 8
  %690 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %691 = bitcast i8* %690 to %sParserInfo**
  %info495 = load %sParserInfo*, %sParserInfo** %691, align 8
  %692 = getelementptr inbounds %sParserInfo, %sParserInfo* %info495, i32 0, i32 4
  %693 = load i8*, i8** %692, align 8
  %694 = ptrtoint i8* %693 to i64
  %addtmp496 = add nsw i64 %694, 1
  %695 = inttoptr i64 %addtmp496 to i8*
  %696 = getelementptr inbounds %sParserInfo, %sParserInfo* %info494, i32 0, i32 4
  store i8* %695, i8** %696, align 8
  %697 = ptrtoint i8* %695 to i64
  %subtmp497 = sub nsw i64 %697, 1
  %698 = inttoptr i64 %subtmp497 to i8*
  %699 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %700 = bitcast i8* %699 to %sParserInfo**
  %info498 = load %sParserInfo*, %sParserInfo** %700, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info498)
  %exp499 = alloca %sCLNode*
  %701 = bitcast %sCLNode** %exp499 to i8*
  store i8* %701, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* null, %sCLNode** %exp499, align 8
  %exp500 = load %sCLNode*, %sCLNode** %exp499, align 8
  %702 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %703 = bitcast i8* %702 to %sParserInfo**
  %info501 = load %sParserInfo*, %sParserInfo** %703, align 8
  %704 = call i1 @expression(%sCLNode** %exp499, %sParserInfo* %info501)
  %LOGICAL_DIANEAL502 = icmp eq i1 %704, false
  br i1 %LOGICAL_DIANEAL502, label %cond_jump_then503, label %cond_end504

"cond_jump_elif0\0A490":                          ; preds = %cond_jump_end482
  %andand_result_var511 = alloca i1
  %705 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %706 = bitcast i8* %705 to i8**
  %word512 = load i8*, i8** %706, align 8
  %707 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %708 = bitcast i8* %707 to %sParserInfo**
  %info513 = load %sParserInfo*, %sParserInfo** %708, align 8
  %709 = call i1 @is_local_variable(i8* %word512, %sParserInfo* %info513)
  %LOGICAL_DIANEAL514 = icmp eq i1 %709, false
  store i1 %LOGICAL_DIANEAL514, i1* %andand_result_var511, align 1
  br i1 %LOGICAL_DIANEAL514, label %cond_jump_then515, label %cond_jump_end516

"cond_jump_elif_then0\0A491":                     ; preds = %cond_jump_end516
  %710 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %711 = bitcast i8* %710 to %sParserInfo**
  %info522 = load %sParserInfo*, %sParserInfo** %711, align 8
  %712 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %713 = bitcast i8* %712 to %sParserInfo**
  %info523 = load %sParserInfo*, %sParserInfo** %713, align 8
  %714 = getelementptr inbounds %sParserInfo, %sParserInfo* %info523, i32 0, i32 4
  %715 = load i8*, i8** %714, align 8
  %716 = ptrtoint i8* %715 to i64
  %addtmp524 = add nsw i64 %716, 1
  %717 = inttoptr i64 %addtmp524 to i8*
  %718 = getelementptr inbounds %sParserInfo, %sParserInfo* %info522, i32 0, i32 4
  store i8* %717, i8** %718, align 8
  %719 = ptrtoint i8* %717 to i64
  %subtmp525 = sub nsw i64 %719, 1
  %720 = inttoptr i64 %subtmp525 to i8*
  %721 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %722 = bitcast i8* %721 to %sParserInfo**
  %info526 = load %sParserInfo*, %sParserInfo** %722, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info526)
  %params527 = alloca [32 x %sCLNode*]
  %723 = bitcast [32 x %sCLNode*]* %params527 to i8*
  store i8* %723, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %724 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %725 = bitcast i8* %724 to %sCLNode***
  %node528 = load %sCLNode**, %sCLNode*** %725, align 8
  %derefference_value529 = load %sCLNode*, %sCLNode** %node528, align 8
  %eqtmpX530 = icmp eq %sCLNode* %derefference_value529, null
  br i1 %eqtmpX530, label %cond_jump_then531, label %cond_else_block532

cond_else_block492:                               ; preds = %cond_jump_end516
  %726 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %727 = bitcast i8* %726 to %sCLNode***
  %node551 = load %sCLNode**, %sCLNode*** %727, align 8
  %728 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %729 = bitcast i8* %728 to i8**
  %word552 = load i8*, i8** %729, align 8
  %730 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %731 = bitcast i8* %730 to %sParserInfo**
  %info553 = load %sParserInfo*, %sParserInfo** %731, align 8
  %732 = call %sCLNode* @sNodeTree_create_load_variable(i8* %word552, %sParserInfo* %info553)
  store %sCLNode* %732, %sCLNode** %node551, align 8
  %andand_result_var554 = alloca i1
  %733 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %734 = bitcast i8* %733 to %sParserInfo**
  %info555 = load %sParserInfo*, %sParserInfo** %734, align 8
  %735 = getelementptr inbounds %sParserInfo, %sParserInfo* %info555, i32 0, i32 4
  %736 = load i8*, i8** %735, align 8
  %derefference_value556 = load i8, i8* %736, align 8
  %eqtmpX557 = icmp eq i8 %derefference_value556, 43
  store i1 %eqtmpX557, i1* %andand_result_var554, align 1
  br i1 %eqtmpX557, label %cond_jump_then558, label %cond_jump_end559

cond_end493:                                      ; preds = %cond_end573, %cond_end544, %cond_end504
  br label %cond_end160

cond_jump_then503:                                ; preds = %cond_jump_then489
  %737 = bitcast [8192 x i8*]* %lvtable to i8*
  %738 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %737, i64 65536)
  %739 = load i8*, i8** %word, align 8
  %740 = ptrtoint i8* %739 to i64
  %741 = icmp ne i64 %740, 0
  br i1 %741, label %cond_then_block505, label %cond_end506

cond_end504:                                      ; preds = %cond_jump_then489
  %742 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %743 = bitcast i8* %742 to %sCLNode***
  %node507 = load %sCLNode**, %sCLNode*** %743, align 8
  %744 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %745 = bitcast i8* %744 to i8**
  %word508 = load i8*, i8** %745, align 8
  %exp509 = load %sCLNode*, %sCLNode** %exp499, align 8
  %746 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %747 = bitcast i8* %746 to %sParserInfo**
  %info510 = load %sParserInfo*, %sParserInfo** %747, align 8
  %748 = call %sCLNode* @sNodeTree_create_store_variable(i8* %word508, %sCLNode* %exp509, %sParserInfo* %info510)
  store %sCLNode* %748, %sCLNode** %node507, align 8
  br label %cond_end493

cond_then_block505:                               ; preds = %cond_jump_then503
  br label %cond_end506

cond_end506:                                      ; preds = %cond_then_block505, %cond_jump_then503
  call void @xfree(i8* %739)
  ret i1 false

cond_jump_then515:                                ; preds = %"cond_jump_elif0\0A490"
  %749 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %750 = bitcast i8* %749 to %sParserInfo**
  %info517 = load %sParserInfo*, %sParserInfo** %750, align 8
  %751 = getelementptr inbounds %sParserInfo, %sParserInfo* %info517, i32 0, i32 4
  %752 = load i8*, i8** %751, align 8
  %derefference_value518 = load i8, i8* %752, align 8
  %eqtmpX519 = icmp eq i8 %derefference_value518, 40
  %andand520 = and i1 %LOGICAL_DIANEAL514, %eqtmpX519
  store i1 %andand520, i1* %andand_result_var511, align 1
  br label %cond_jump_end516

cond_jump_end516:                                 ; preds = %cond_jump_then515, %"cond_jump_elif0\0A490"
  %andand_result_value521 = load i1, i1* %andand_result_var511, align 1
  br i1 %andand_result_value521, label %"cond_jump_elif_then0\0A491", label %cond_else_block492

cond_jump_then531:                                ; preds = %"cond_jump_elif_then0\0A491"
  %753 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %754 = bitcast i8* %753 to [32 x %sCLNode*]*
  %755 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %756 = bitcast i8* %755 to %sParserInfo**
  %info534 = load %sParserInfo*, %sParserInfo** %756, align 8
  %757 = call %sCLNode* @sNodeTree_create_command_value(%sParserInfo* %info534)
  %758 = bitcast [32 x %sCLNode*]* %754 to %sCLNode**
  %element_address535 = getelementptr %sCLNode*, %sCLNode** %758, i32 0
  store %sCLNode* %757, %sCLNode** %element_address535, align 8
  br label %cond_end533

cond_else_block532:                               ; preds = %"cond_jump_elif_then0\0A491"
  %759 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %760 = bitcast i8* %759 to [32 x %sCLNode*]*
  %761 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %762 = bitcast i8* %761 to %sCLNode***
  %node536 = load %sCLNode**, %sCLNode*** %762, align 8
  %derefference_value537 = load %sCLNode*, %sCLNode** %node536, align 8
  %763 = bitcast [32 x %sCLNode*]* %760 to %sCLNode**
  %element_address538 = getelementptr %sCLNode*, %sCLNode** %763, i32 0
  store %sCLNode* %derefference_value537, %sCLNode** %element_address538, align 8
  br label %cond_end533

cond_end533:                                      ; preds = %cond_else_block532, %cond_jump_then531
  %num_params539 = alloca i32
  %764 = bitcast i32* %num_params539 to i8*
  store i8* %764, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 1, i32* %num_params539, align 4
  %num_params540 = load i32, i32* %num_params539, align 4
  %765 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %766 = bitcast i8* %765 to %sParserInfo**
  %info541 = load %sParserInfo*, %sParserInfo** %766, align 8
  %767 = bitcast [32 x %sCLNode*]* %params527 to %sCLNode**
  %768 = call i1 @parse_calling_params(i32* %num_params539, %sCLNode** %767, %sParserInfo* %info541)
  %LOGICAL_DIANEAL542 = icmp eq i1 %768, false
  br i1 %LOGICAL_DIANEAL542, label %cond_jump_then543, label %cond_end544

cond_jump_then543:                                ; preds = %cond_end533
  %769 = bitcast [8192 x i8*]* %lvtable to i8*
  %770 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %769, i64 65536)
  %771 = load i8*, i8** %word, align 8
  %772 = ptrtoint i8* %771 to i64
  %773 = icmp ne i64 %772, 0
  br i1 %773, label %cond_then_block545, label %cond_end546

cond_end544:                                      ; preds = %cond_end533
  %774 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %775 = bitcast i8* %774 to %sCLNode***
  %node547 = load %sCLNode**, %sCLNode*** %775, align 8
  %776 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %777 = bitcast i8* %776 to i8**
  %word548 = load i8*, i8** %777, align 8
  %num_params549 = load i32, i32* %num_params539, align 4
  %778 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %779 = bitcast i8* %778 to %sParserInfo**
  %info550 = load %sParserInfo*, %sParserInfo** %779, align 8
  %780 = bitcast [32 x %sCLNode*]* %params527 to %sCLNode**
  %781 = call %sCLNode* @sNodeTree_create_method_call(i8* %word548, i32 %num_params549, %sCLNode** %780, %sParserInfo* %info550)
  store %sCLNode* %781, %sCLNode** %node547, align 8
  br label %cond_end493

cond_then_block545:                               ; preds = %cond_jump_then543
  br label %cond_end546

cond_end546:                                      ; preds = %cond_then_block545, %cond_jump_then543
  call void @xfree(i8* %771)
  ret i1 false

cond_jump_then558:                                ; preds = %cond_else_block492
  %782 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %783 = bitcast i8* %782 to %sParserInfo**
  %info560 = load %sParserInfo*, %sParserInfo** %783, align 8
  %784 = getelementptr inbounds %sParserInfo, %sParserInfo* %info560, i32 0, i32 4
  %785 = load i8*, i8** %784, align 8
  %786 = ptrtoint i8* %785 to i64
  %addtmp561 = add nsw i64 %786, 1
  %787 = inttoptr i64 %addtmp561 to i8*
  %derefference_value562 = load i8, i8* %787, align 8
  %eqtmpX563 = icmp eq i8 %derefference_value562, 43
  %andand564 = and i1 %eqtmpX557, %eqtmpX563
  store i1 %andand564, i1* %andand_result_var554, align 1
  br label %cond_jump_end559

cond_jump_end559:                                 ; preds = %cond_jump_then558, %cond_else_block492
  %andand_result_value565 = load i1, i1* %andand_result_var554, align 1
  br i1 %andand_result_value565, label %cond_jump_then566, label %"cond_jump_elif0\0A567"

cond_jump_then566:                                ; preds = %cond_jump_end559
  %788 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %789 = bitcast i8* %788 to %sParserInfo**
  %info574 = load %sParserInfo*, %sParserInfo** %789, align 8
  %790 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %791 = bitcast i8* %790 to %sParserInfo**
  %info575 = load %sParserInfo*, %sParserInfo** %791, align 8
  %792 = getelementptr inbounds %sParserInfo, %sParserInfo* %info575, i32 0, i32 4
  %793 = load i8*, i8** %792, align 8
  %794 = ptrtoint i8* %793 to i64
  %addtmp576 = add nsw i64 %794, 2
  %795 = inttoptr i64 %addtmp576 to i8*
  %796 = getelementptr inbounds %sParserInfo, %sParserInfo* %info574, i32 0, i32 4
  store i8* %795, i8** %796, align 8
  %797 = ptrtoint i8* %795 to i64
  %subtmp577 = sub nsw i64 %797, 2
  %798 = inttoptr i64 %subtmp577 to i8*
  %799 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %800 = bitcast i8* %799 to %sParserInfo**
  %info578 = load %sParserInfo*, %sParserInfo** %800, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info578)
  %801 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %802 = bitcast i8* %801 to %sParserInfo**
  %info579 = load %sParserInfo*, %sParserInfo** %802, align 8
  %803 = call %sCLNode* @sNodeTree_create_int_value(i32 1, %sParserInfo* %info579)
  %right = alloca %sCLNode*
  %804 = bitcast %sCLNode** %right to i8*
  store i8* %804, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %803, %sCLNode** %right, align 8
  %805 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %806 = bitcast i8* %805 to %sCLNode***
  %node580 = load %sCLNode**, %sCLNode*** %806, align 8
  %derefference_value581 = load %sCLNode*, %sCLNode** %node580, align 8
  %right582 = load %sCLNode*, %sCLNode** %right, align 8
  %807 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %808 = bitcast i8* %807 to %sParserInfo**
  %info583 = load %sParserInfo*, %sParserInfo** %808, align 8
  %809 = call %sCLNode* @sNodeTree_create_plus(%sCLNode* %derefference_value581, %sCLNode* %right582, %sParserInfo* %info583)
  %exp584 = alloca %sCLNode*
  %810 = bitcast %sCLNode** %exp584 to i8*
  store i8* %810, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %809, %sCLNode** %exp584, align 8
  %811 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %812 = bitcast i8* %811 to %sCLNode***
  %node585 = load %sCLNode**, %sCLNode*** %812, align 8
  %813 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %814 = bitcast i8* %813 to i8**
  %word586 = load i8*, i8** %814, align 8
  %exp587 = load %sCLNode*, %sCLNode** %exp584, align 8
  %815 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %816 = bitcast i8* %815 to %sParserInfo**
  %info588 = load %sParserInfo*, %sParserInfo** %816, align 8
  %817 = call %sCLNode* @sNodeTree_create_store_variable(i8* %word586, %sCLNode* %exp587, %sParserInfo* %info588)
  store %sCLNode* %817, %sCLNode** %node585, align 8
  br label %cond_end573

"cond_jump_elif0\0A567":                          ; preds = %cond_jump_end559
  %andand_result_var589 = alloca i1
  %818 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %819 = bitcast i8* %818 to %sParserInfo**
  %info590 = load %sParserInfo*, %sParserInfo** %819, align 8
  %820 = getelementptr inbounds %sParserInfo, %sParserInfo* %info590, i32 0, i32 4
  %821 = load i8*, i8** %820, align 8
  %derefference_value591 = load i8, i8* %821, align 8
  %eqtmpX592 = icmp eq i8 %derefference_value591, 45
  store i1 %eqtmpX592, i1* %andand_result_var589, align 1
  br i1 %eqtmpX592, label %cond_jump_then593, label %cond_jump_end594

"cond_jump_elif_then0\0A568":                     ; preds = %cond_jump_end594
  %822 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %823 = bitcast i8* %822 to %sParserInfo**
  %info601 = load %sParserInfo*, %sParserInfo** %823, align 8
  %824 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %825 = bitcast i8* %824 to %sParserInfo**
  %info602 = load %sParserInfo*, %sParserInfo** %825, align 8
  %826 = getelementptr inbounds %sParserInfo, %sParserInfo* %info602, i32 0, i32 4
  %827 = load i8*, i8** %826, align 8
  %828 = ptrtoint i8* %827 to i64
  %addtmp603 = add nsw i64 %828, 2
  %829 = inttoptr i64 %addtmp603 to i8*
  %830 = getelementptr inbounds %sParserInfo, %sParserInfo* %info601, i32 0, i32 4
  store i8* %829, i8** %830, align 8
  %831 = ptrtoint i8* %829 to i64
  %subtmp604 = sub nsw i64 %831, 2
  %832 = inttoptr i64 %subtmp604 to i8*
  %833 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %834 = bitcast i8* %833 to %sParserInfo**
  %info605 = load %sParserInfo*, %sParserInfo** %834, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info605)
  %835 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %836 = bitcast i8* %835 to %sParserInfo**
  %info606 = load %sParserInfo*, %sParserInfo** %836, align 8
  %837 = call %sCLNode* @sNodeTree_create_int_value(i32 1, %sParserInfo* %info606)
  %right607 = alloca %sCLNode*
  %838 = bitcast %sCLNode** %right607 to i8*
  store i8* %838, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %837, %sCLNode** %right607, align 8
  %839 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %840 = bitcast i8* %839 to %sCLNode***
  %node608 = load %sCLNode**, %sCLNode*** %840, align 8
  %derefference_value609 = load %sCLNode*, %sCLNode** %node608, align 8
  %right610 = load %sCLNode*, %sCLNode** %right607, align 8
  %841 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %842 = bitcast i8* %841 to %sParserInfo**
  %info611 = load %sParserInfo*, %sParserInfo** %842, align 8
  %843 = call %sCLNode* @sNodeTree_create_minus(%sCLNode* %derefference_value609, %sCLNode* %right610, %sParserInfo* %info611)
  %exp612 = alloca %sCLNode*
  %844 = bitcast %sCLNode** %exp612 to i8*
  store i8* %844, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %843, %sCLNode** %exp612, align 8
  %845 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %846 = bitcast i8* %845 to %sCLNode***
  %node613 = load %sCLNode**, %sCLNode*** %846, align 8
  %847 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %848 = bitcast i8* %847 to i8**
  %word614 = load i8*, i8** %848, align 8
  %exp615 = load %sCLNode*, %sCLNode** %exp612, align 8
  %849 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %850 = bitcast i8* %849 to %sParserInfo**
  %info616 = load %sParserInfo*, %sParserInfo** %850, align 8
  %851 = call %sCLNode* @sNodeTree_create_store_variable(i8* %word614, %sCLNode* %exp615, %sParserInfo* %info616)
  store %sCLNode* %851, %sCLNode** %node613, align 8
  br label %cond_end573

"cond_jump_elif1\0A569":                          ; preds = %cond_jump_end594
  %andand_result_var617 = alloca i1
  %852 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %853 = bitcast i8* %852 to %sParserInfo**
  %info618 = load %sParserInfo*, %sParserInfo** %853, align 8
  %854 = getelementptr inbounds %sParserInfo, %sParserInfo* %info618, i32 0, i32 4
  %855 = load i8*, i8** %854, align 8
  %derefference_value619 = load i8, i8* %855, align 8
  %eqtmpX620 = icmp eq i8 %derefference_value619, 43
  store i1 %eqtmpX620, i1* %andand_result_var617, align 1
  br i1 %eqtmpX620, label %cond_jump_then621, label %cond_jump_end622

"cond_jump_elif_then1\0A570":                     ; preds = %cond_jump_end622
  %856 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %857 = bitcast i8* %856 to %sParserInfo**
  %info629 = load %sParserInfo*, %sParserInfo** %857, align 8
  %858 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %859 = bitcast i8* %858 to %sParserInfo**
  %info630 = load %sParserInfo*, %sParserInfo** %859, align 8
  %860 = getelementptr inbounds %sParserInfo, %sParserInfo* %info630, i32 0, i32 4
  %861 = load i8*, i8** %860, align 8
  %862 = ptrtoint i8* %861 to i64
  %addtmp631 = add nsw i64 %862, 2
  %863 = inttoptr i64 %addtmp631 to i8*
  %864 = getelementptr inbounds %sParserInfo, %sParserInfo* %info629, i32 0, i32 4
  store i8* %863, i8** %864, align 8
  %865 = ptrtoint i8* %863 to i64
  %subtmp632 = sub nsw i64 %865, 2
  %866 = inttoptr i64 %subtmp632 to i8*
  %867 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %868 = bitcast i8* %867 to %sParserInfo**
  %info633 = load %sParserInfo*, %sParserInfo** %868, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info633)
  %right634 = alloca %sCLNode*
  %869 = bitcast %sCLNode** %right634 to i8*
  store i8* %869, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* null, %sCLNode** %right634, align 8
  %right635 = load %sCLNode*, %sCLNode** %right634, align 8
  %870 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %871 = bitcast i8* %870 to %sParserInfo**
  %info636 = load %sParserInfo*, %sParserInfo** %871, align 8
  %872 = call i1 @expression(%sCLNode** %right634, %sParserInfo* %info636)
  %LOGICAL_DIANEAL637 = icmp eq i1 %872, false
  br i1 %LOGICAL_DIANEAL637, label %cond_jump_then638, label %cond_end639

"cond_jump_elif2\0A571":                          ; preds = %cond_jump_end622
  %andand_result_var651 = alloca i1
  %873 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %874 = bitcast i8* %873 to %sParserInfo**
  %info652 = load %sParserInfo*, %sParserInfo** %874, align 8
  %875 = getelementptr inbounds %sParserInfo, %sParserInfo* %info652, i32 0, i32 4
  %876 = load i8*, i8** %875, align 8
  %derefference_value653 = load i8, i8* %876, align 8
  %eqtmpX654 = icmp eq i8 %derefference_value653, 45
  store i1 %eqtmpX654, i1* %andand_result_var651, align 1
  br i1 %eqtmpX654, label %cond_jump_then655, label %cond_jump_end656

"cond_jump_elif_then2\0A572":                     ; preds = %cond_jump_end656
  %877 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %878 = bitcast i8* %877 to %sParserInfo**
  %info663 = load %sParserInfo*, %sParserInfo** %878, align 8
  %879 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %880 = bitcast i8* %879 to %sParserInfo**
  %info664 = load %sParserInfo*, %sParserInfo** %880, align 8
  %881 = getelementptr inbounds %sParserInfo, %sParserInfo* %info664, i32 0, i32 4
  %882 = load i8*, i8** %881, align 8
  %883 = ptrtoint i8* %882 to i64
  %addtmp665 = add nsw i64 %883, 2
  %884 = inttoptr i64 %addtmp665 to i8*
  %885 = getelementptr inbounds %sParserInfo, %sParserInfo* %info663, i32 0, i32 4
  store i8* %884, i8** %885, align 8
  %886 = ptrtoint i8* %884 to i64
  %subtmp666 = sub nsw i64 %886, 2
  %887 = inttoptr i64 %subtmp666 to i8*
  %888 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %889 = bitcast i8* %888 to %sParserInfo**
  %info667 = load %sParserInfo*, %sParserInfo** %889, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info667)
  %right668 = alloca %sCLNode*
  %890 = bitcast %sCLNode** %right668 to i8*
  store i8* %890, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* null, %sCLNode** %right668, align 8
  %right669 = load %sCLNode*, %sCLNode** %right668, align 8
  %891 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %892 = bitcast i8* %891 to %sParserInfo**
  %info670 = load %sParserInfo*, %sParserInfo** %892, align 8
  %893 = call i1 @expression(%sCLNode** %right668, %sParserInfo* %info670)
  %LOGICAL_DIANEAL671 = icmp eq i1 %893, false
  br i1 %LOGICAL_DIANEAL671, label %cond_jump_then672, label %cond_end673

cond_end573:                                      ; preds = %cond_end673, %cond_jump_end656, %cond_end639, %"cond_jump_elif_then0\0A568", %cond_jump_then566
  br label %cond_end493

cond_jump_then593:                                ; preds = %"cond_jump_elif0\0A567"
  %894 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %895 = bitcast i8* %894 to %sParserInfo**
  %info595 = load %sParserInfo*, %sParserInfo** %895, align 8
  %896 = getelementptr inbounds %sParserInfo, %sParserInfo* %info595, i32 0, i32 4
  %897 = load i8*, i8** %896, align 8
  %898 = ptrtoint i8* %897 to i64
  %addtmp596 = add nsw i64 %898, 1
  %899 = inttoptr i64 %addtmp596 to i8*
  %derefference_value597 = load i8, i8* %899, align 8
  %eqtmpX598 = icmp eq i8 %derefference_value597, 45
  %andand599 = and i1 %eqtmpX592, %eqtmpX598
  store i1 %andand599, i1* %andand_result_var589, align 1
  br label %cond_jump_end594

cond_jump_end594:                                 ; preds = %cond_jump_then593, %"cond_jump_elif0\0A567"
  %andand_result_value600 = load i1, i1* %andand_result_var589, align 1
  br i1 %andand_result_value600, label %"cond_jump_elif_then0\0A568", label %"cond_jump_elif1\0A569"

cond_jump_then621:                                ; preds = %"cond_jump_elif1\0A569"
  %900 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %901 = bitcast i8* %900 to %sParserInfo**
  %info623 = load %sParserInfo*, %sParserInfo** %901, align 8
  %902 = getelementptr inbounds %sParserInfo, %sParserInfo* %info623, i32 0, i32 4
  %903 = load i8*, i8** %902, align 8
  %904 = ptrtoint i8* %903 to i64
  %addtmp624 = add nsw i64 %904, 1
  %905 = inttoptr i64 %addtmp624 to i8*
  %derefference_value625 = load i8, i8* %905, align 8
  %eqtmpX626 = icmp eq i8 %derefference_value625, 61
  %andand627 = and i1 %eqtmpX620, %eqtmpX626
  store i1 %andand627, i1* %andand_result_var617, align 1
  br label %cond_jump_end622

cond_jump_end622:                                 ; preds = %cond_jump_then621, %"cond_jump_elif1\0A569"
  %andand_result_value628 = load i1, i1* %andand_result_var617, align 1
  br i1 %andand_result_value628, label %"cond_jump_elif_then1\0A570", label %"cond_jump_elif2\0A571"

cond_jump_then638:                                ; preds = %"cond_jump_elif_then1\0A570"
  %906 = bitcast [8192 x i8*]* %lvtable to i8*
  %907 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %906, i64 65536)
  %908 = load i8*, i8** %word, align 8
  %909 = ptrtoint i8* %908 to i64
  %910 = icmp ne i64 %909, 0
  br i1 %910, label %cond_then_block640, label %cond_end641

cond_end639:                                      ; preds = %"cond_jump_elif_then1\0A570"
  %911 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %912 = bitcast i8* %911 to %sCLNode***
  %node642 = load %sCLNode**, %sCLNode*** %912, align 8
  %derefference_value643 = load %sCLNode*, %sCLNode** %node642, align 8
  %right644 = load %sCLNode*, %sCLNode** %right634, align 8
  %913 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %914 = bitcast i8* %913 to %sParserInfo**
  %info645 = load %sParserInfo*, %sParserInfo** %914, align 8
  %915 = call %sCLNode* @sNodeTree_create_plus(%sCLNode* %derefference_value643, %sCLNode* %right644, %sParserInfo* %info645)
  %exp646 = alloca %sCLNode*
  %916 = bitcast %sCLNode** %exp646 to i8*
  store i8* %916, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %915, %sCLNode** %exp646, align 8
  %917 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %918 = bitcast i8* %917 to %sCLNode***
  %node647 = load %sCLNode**, %sCLNode*** %918, align 8
  %919 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %920 = bitcast i8* %919 to i8**
  %word648 = load i8*, i8** %920, align 8
  %exp649 = load %sCLNode*, %sCLNode** %exp646, align 8
  %921 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %922 = bitcast i8* %921 to %sParserInfo**
  %info650 = load %sParserInfo*, %sParserInfo** %922, align 8
  %923 = call %sCLNode* @sNodeTree_create_store_variable(i8* %word648, %sCLNode* %exp649, %sParserInfo* %info650)
  store %sCLNode* %923, %sCLNode** %node647, align 8
  br label %cond_end573

cond_then_block640:                               ; preds = %cond_jump_then638
  br label %cond_end641

cond_end641:                                      ; preds = %cond_then_block640, %cond_jump_then638
  call void @xfree(i8* %908)
  ret i1 false

cond_jump_then655:                                ; preds = %"cond_jump_elif2\0A571"
  %924 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %925 = bitcast i8* %924 to %sParserInfo**
  %info657 = load %sParserInfo*, %sParserInfo** %925, align 8
  %926 = getelementptr inbounds %sParserInfo, %sParserInfo* %info657, i32 0, i32 4
  %927 = load i8*, i8** %926, align 8
  %928 = ptrtoint i8* %927 to i64
  %addtmp658 = add nsw i64 %928, 1
  %929 = inttoptr i64 %addtmp658 to i8*
  %derefference_value659 = load i8, i8* %929, align 8
  %eqtmpX660 = icmp eq i8 %derefference_value659, 61
  %andand661 = and i1 %eqtmpX654, %eqtmpX660
  store i1 %andand661, i1* %andand_result_var651, align 1
  br label %cond_jump_end656

cond_jump_end656:                                 ; preds = %cond_jump_then655, %"cond_jump_elif2\0A571"
  %andand_result_value662 = load i1, i1* %andand_result_var651, align 1
  br i1 %andand_result_value662, label %"cond_jump_elif_then2\0A572", label %cond_end573

cond_jump_then672:                                ; preds = %"cond_jump_elif_then2\0A572"
  %930 = bitcast [8192 x i8*]* %lvtable to i8*
  %931 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %930, i64 65536)
  %932 = load i8*, i8** %word, align 8
  %933 = ptrtoint i8* %932 to i64
  %934 = icmp ne i64 %933, 0
  br i1 %934, label %cond_then_block674, label %cond_end675

cond_end673:                                      ; preds = %"cond_jump_elif_then2\0A572"
  %935 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %936 = bitcast i8* %935 to %sCLNode***
  %node676 = load %sCLNode**, %sCLNode*** %936, align 8
  %derefference_value677 = load %sCLNode*, %sCLNode** %node676, align 8
  %right678 = load %sCLNode*, %sCLNode** %right668, align 8
  %937 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %938 = bitcast i8* %937 to %sParserInfo**
  %info679 = load %sParserInfo*, %sParserInfo** %938, align 8
  %939 = call %sCLNode* @sNodeTree_create_minus(%sCLNode* %derefference_value677, %sCLNode* %right678, %sParserInfo* %info679)
  %exp680 = alloca %sCLNode*
  %940 = bitcast %sCLNode** %exp680 to i8*
  store i8* %940, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %939, %sCLNode** %exp680, align 8
  %941 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %942 = bitcast i8* %941 to %sCLNode***
  %node681 = load %sCLNode**, %sCLNode*** %942, align 8
  %943 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %944 = bitcast i8* %943 to i8**
  %word682 = load i8*, i8** %944, align 8
  %exp683 = load %sCLNode*, %sCLNode** %exp680, align 8
  %945 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %946 = bitcast i8* %945 to %sParserInfo**
  %info684 = load %sParserInfo*, %sParserInfo** %946, align 8
  %947 = call %sCLNode* @sNodeTree_create_store_variable(i8* %word682, %sCLNode* %exp683, %sParserInfo* %info684)
  store %sCLNode* %947, %sCLNode** %node681, align 8
  br label %cond_end573

cond_then_block674:                               ; preds = %cond_jump_then672
  br label %cond_end675

cond_end675:                                      ; preds = %cond_then_block674, %cond_jump_then672
  call void @xfree(i8* %932)
  ret i1 false

cond_then_block685:                               ; preds = %cond_end160
  br label %cond_end686

cond_end686:                                      ; preds = %cond_then_block685, %cond_end160
  call void @xfree(i8* %365)
  br label %cond_end

loop_top_block696:                                ; preds = %cond_end710, %"cond_jump_elif_then2\0A"
  br i1 true, label %cond_then_block697, label %cond_end_block698

cond_then_block697:                               ; preds = %loop_top_block696
  %948 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %949 = bitcast i8* %948 to %sParserInfo**
  %info699 = load %sParserInfo*, %sParserInfo** %949, align 8
  %950 = getelementptr inbounds %sParserInfo, %sParserInfo* %info699, i32 0, i32 4
  %951 = load i8*, i8** %950, align 8
  %derefference_value700 = load i8, i8* %951, align 8
  %eqtmpX701 = icmp eq i8 %derefference_value700, 34
  br i1 %eqtmpX701, label %cond_jump_then702, label %"cond_jump_elif0\0A703"

cond_end_block698:                                ; preds = %cond_jump_then702, %loop_top_block696
  %952 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %953 = bitcast i8* %952 to %sParserInfo**
  %info812 = load %sParserInfo*, %sParserInfo** %953, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info812)
  %buf813 = load %buffer*, %buffer** %buf695, align 8
  %954 = call i8* @buffer_to_string(%buffer* %buf813)
  %str = alloca i8*
  %955 = bitcast i8** %str to i8*
  store i8* %955, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i8* %954, i8** %str, align 8
  %956 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %957 = bitcast i8* %956 to %sCLNode***
  %node814 = load %sCLNode**, %sCLNode*** %957, align 8
  %str815 = load i8*, i8** %str, align 8
  %958 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %959 = bitcast i8* %958 to %sParserInfo**
  %info816 = load %sParserInfo*, %sParserInfo** %959, align 8
  %960 = call %sCLNode* @sNodeTree_create_string_value(i8* %str815, %sParserInfo* %info816)
  store %sCLNode* %960, %sCLNode** %node814, align 8
  %961 = load %buffer*, %buffer** %buf695, align 8
  call void @buffer_finalize(%buffer* %961)
  %962 = ptrtoint %buffer* %961 to i64
  %963 = icmp ne i64 %962, 0
  br i1 %963, label %cond_then_block817, label %cond_end818

cond_jump_then702:                                ; preds = %cond_then_block697
  %964 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %965 = bitcast i8* %964 to %sParserInfo**
  %info711 = load %sParserInfo*, %sParserInfo** %965, align 8
  %966 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %967 = bitcast i8* %966 to %sParserInfo**
  %info712 = load %sParserInfo*, %sParserInfo** %967, align 8
  %968 = getelementptr inbounds %sParserInfo, %sParserInfo* %info712, i32 0, i32 4
  %969 = load i8*, i8** %968, align 8
  %970 = ptrtoint i8* %969 to i64
  %addtmp713 = add nsw i64 %970, 1
  %971 = inttoptr i64 %addtmp713 to i8*
  %972 = getelementptr inbounds %sParserInfo, %sParserInfo* %info711, i32 0, i32 4
  store i8* %971, i8** %972, align 8
  %973 = ptrtoint i8* %971 to i64
  %subtmp714 = sub nsw i64 %973, 1
  %974 = inttoptr i64 %subtmp714 to i8*
  %975 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %976 = bitcast i8* %975 to %sParserInfo**
  %info715 = load %sParserInfo*, %sParserInfo** %976, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info715)
  br label %cond_end_block698

"cond_jump_elif0\0A703":                          ; preds = %cond_then_block697
  %977 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %978 = bitcast i8* %977 to %sParserInfo**
  %info716 = load %sParserInfo*, %sParserInfo** %978, align 8
  %979 = getelementptr inbounds %sParserInfo, %sParserInfo* %info716, i32 0, i32 4
  %980 = load i8*, i8** %979, align 8
  %derefference_value717 = load i8, i8* %980, align 8
  %eqtmpX718 = icmp eq i8 %derefference_value717, 0
  br i1 %eqtmpX718, label %"cond_jump_elif_then0\0A704", label %"cond_jump_elif1\0A705"

"cond_jump_elif_then0\0A704":                     ; preds = %"cond_jump_elif0\0A703"
  %981 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %982 = bitcast i8* %981 to %sParserInfo**
  %info719 = load %sParserInfo*, %sParserInfo** %982, align 8
  %983 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %984 = bitcast i8* %983 to i32*
  %sline720 = load i32, i32* %984, align 4
  %985 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.76, i32 0, i32 0), i32 %sline720)
  call void @parser_err_msg(%sParserInfo* %info719, i8* %985)
  %986 = bitcast [8192 x i8*]* %lvtable to i8*
  %987 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %986, i64 65536)
  %988 = ptrtoint i8* %985 to i64
  %989 = icmp ne i64 %988, 0
  br i1 %989, label %cond_then_block721, label %cond_end722

"cond_jump_elif1\0A705":                          ; preds = %"cond_jump_elif0\0A703"
  %990 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %991 = bitcast i8* %990 to %sParserInfo**
  %info725 = load %sParserInfo*, %sParserInfo** %991, align 8
  %992 = getelementptr inbounds %sParserInfo, %sParserInfo* %info725, i32 0, i32 4
  %993 = load i8*, i8** %992, align 8
  %derefference_value726 = load i8, i8* %993, align 8
  %eqtmpX727 = icmp eq i8 %derefference_value726, 92
  br i1 %eqtmpX727, label %"cond_jump_elif_then1\0A706", label %"cond_jump_elif2\0A707"

"cond_jump_elif_then1\0A706":                     ; preds = %"cond_jump_elif1\0A705"
  %994 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %995 = bitcast i8* %994 to %sParserInfo**
  %info728 = load %sParserInfo*, %sParserInfo** %995, align 8
  %996 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %997 = bitcast i8* %996 to %sParserInfo**
  %info729 = load %sParserInfo*, %sParserInfo** %997, align 8
  %998 = getelementptr inbounds %sParserInfo, %sParserInfo* %info729, i32 0, i32 4
  %999 = load i8*, i8** %998, align 8
  %1000 = ptrtoint i8* %999 to i64
  %addtmp730 = add nsw i64 %1000, 1
  %1001 = inttoptr i64 %addtmp730 to i8*
  %1002 = getelementptr inbounds %sParserInfo, %sParserInfo* %info728, i32 0, i32 4
  store i8* %1001, i8** %1002, align 8
  %1003 = ptrtoint i8* %1001 to i64
  %subtmp731 = sub nsw i64 %1003, 1
  %1004 = inttoptr i64 %subtmp731 to i8*
  %c = alloca i8
  store i8* %c, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %1005 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1006 = bitcast i8* %1005 to %sParserInfo**
  %info732 = load %sParserInfo*, %sParserInfo** %1006, align 8
  %1007 = getelementptr inbounds %sParserInfo, %sParserInfo* %info732, i32 0, i32 4
  %1008 = load i8*, i8** %1007, align 8
  %derefference_value733 = load i8, i8* %1008, align 8
  %eqtmpY = icmp eq i8 %derefference_value733, 110
  br i1 %eqtmpY, label %cond_then_block734, label %cond_else_block735

"cond_jump_elif2\0A707":                          ; preds = %"cond_jump_elif1\0A705"
  %1009 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1010 = bitcast i8* %1009 to %sParserInfo**
  %info792 = load %sParserInfo*, %sParserInfo** %1010, align 8
  %1011 = getelementptr inbounds %sParserInfo, %sParserInfo* %info792, i32 0, i32 4
  %1012 = load i8*, i8** %1011, align 8
  %derefference_value793 = load i8, i8* %1012, align 8
  %eqtmpX794 = icmp eq i8 %derefference_value793, 10
  br i1 %eqtmpX794, label %"cond_jump_elif_then2\0A708", label %cond_else_block709

"cond_jump_elif_then2\0A708":                     ; preds = %"cond_jump_elif2\0A707"
  %1013 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1014 = bitcast i8* %1013 to %sParserInfo**
  %info795 = load %sParserInfo*, %sParserInfo** %1014, align 8
  %1015 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1016 = bitcast i8* %1015 to %sParserInfo**
  %info796 = load %sParserInfo*, %sParserInfo** %1016, align 8
  %1017 = getelementptr inbounds %sParserInfo, %sParserInfo* %info796, i32 0, i32 1
  %1018 = load i32, i32* %1017, align 4
  %addtmp797 = add nsw i32 %1018, 1
  %1019 = getelementptr inbounds %sParserInfo, %sParserInfo* %info795, i32 0, i32 1
  store i32 %addtmp797, i32* %1019, align 4
  %subttmp = sub nsw i32 %addtmp797, 1
  %1020 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %1021 = bitcast i8* %1020 to %buffer**
  %buf798 = load %buffer*, %buffer** %1021, align 8
  %1022 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1023 = bitcast i8* %1022 to %sParserInfo**
  %info799 = load %sParserInfo*, %sParserInfo** %1023, align 8
  %1024 = getelementptr inbounds %sParserInfo, %sParserInfo* %info799, i32 0, i32 4
  %1025 = load i8*, i8** %1024, align 8
  %derefference_value800 = load i8, i8* %1025, align 8
  call void @buffer_append_char(%buffer* %buf798, i8 %derefference_value800)
  %1026 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1027 = bitcast i8* %1026 to %sParserInfo**
  %info801 = load %sParserInfo*, %sParserInfo** %1027, align 8
  %1028 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1029 = bitcast i8* %1028 to %sParserInfo**
  %info802 = load %sParserInfo*, %sParserInfo** %1029, align 8
  %1030 = getelementptr inbounds %sParserInfo, %sParserInfo* %info802, i32 0, i32 4
  %1031 = load i8*, i8** %1030, align 8
  %1032 = ptrtoint i8* %1031 to i64
  %addtmp803 = add nsw i64 %1032, 1
  %1033 = inttoptr i64 %addtmp803 to i8*
  %1034 = getelementptr inbounds %sParserInfo, %sParserInfo* %info801, i32 0, i32 4
  store i8* %1033, i8** %1034, align 8
  %1035 = ptrtoint i8* %1033 to i64
  %subtmp804 = sub nsw i64 %1035, 1
  %1036 = inttoptr i64 %subtmp804 to i8*
  br label %cond_end710

cond_else_block709:                               ; preds = %"cond_jump_elif2\0A707"
  %1037 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %1038 = bitcast i8* %1037 to %buffer**
  %buf805 = load %buffer*, %buffer** %1038, align 8
  %1039 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1040 = bitcast i8* %1039 to %sParserInfo**
  %info806 = load %sParserInfo*, %sParserInfo** %1040, align 8
  %1041 = getelementptr inbounds %sParserInfo, %sParserInfo* %info806, i32 0, i32 4
  %1042 = load i8*, i8** %1041, align 8
  %derefference_value807 = load i8, i8* %1042, align 8
  call void @buffer_append_char(%buffer* %buf805, i8 %derefference_value807)
  %1043 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1044 = bitcast i8* %1043 to %sParserInfo**
  %info808 = load %sParserInfo*, %sParserInfo** %1044, align 8
  %1045 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1046 = bitcast i8* %1045 to %sParserInfo**
  %info809 = load %sParserInfo*, %sParserInfo** %1046, align 8
  %1047 = getelementptr inbounds %sParserInfo, %sParserInfo* %info809, i32 0, i32 4
  %1048 = load i8*, i8** %1047, align 8
  %1049 = ptrtoint i8* %1048 to i64
  %addtmp810 = add nsw i64 %1049, 1
  %1050 = inttoptr i64 %addtmp810 to i8*
  %1051 = getelementptr inbounds %sParserInfo, %sParserInfo* %info808, i32 0, i32 4
  store i8* %1050, i8** %1051, align 8
  %1052 = ptrtoint i8* %1050 to i64
  %subtmp811 = sub nsw i64 %1052, 1
  %1053 = inttoptr i64 %subtmp811 to i8*
  br label %cond_end710

cond_end710:                                      ; preds = %cond_else_block709, %"cond_jump_elif_then2\0A708", %end_block, %after_break
  br label %loop_top_block696

after_break:                                      ; No predecessors!
  br label %cond_end710

cond_then_block721:                               ; preds = %"cond_jump_elif_then0\0A704"
  br label %cond_end722

cond_end722:                                      ; preds = %cond_then_block721, %"cond_jump_elif_then0\0A704"
  call void @xfree(i8* %985)
  %1054 = load %buffer*, %buffer** %buf695, align 8
  call void @buffer_finalize(%buffer* %1054)
  %1055 = ptrtoint %buffer* %1054 to i64
  %1056 = icmp ne i64 %1055, 0
  br i1 %1056, label %cond_then_block723, label %cond_end724

cond_then_block723:                               ; preds = %cond_end722
  br label %cond_end724

cond_end724:                                      ; preds = %cond_then_block723, %cond_end722
  %1057 = bitcast %buffer* %1054 to i8*
  call void @xfree(i8* %1057)
  ret i1 false

end_block:                                        ; preds = %cond_else_block782, %cond_then_block781, %cond_then_block773, %cond_then_block765, %cond_then_block757, %cond_then_block749, %cond_then_block741, %cond_then_block734
  %1058 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %1059 = bitcast i8* %1058 to %buffer**
  %buf790 = load %buffer*, %buffer** %1059, align 8
  %c791 = load i8, i8* %c, align 1
  call void @buffer_append_char(%buffer* %buf790, i8 %c791)
  br label %cond_end710

cond_then_block734:                               ; preds = %"cond_jump_elif_then1\0A706"
  store i8 10, i8* %c, align 1
  %1060 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1061 = bitcast i8* %1060 to %sParserInfo**
  %info736 = load %sParserInfo*, %sParserInfo** %1061, align 8
  %1062 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1063 = bitcast i8* %1062 to %sParserInfo**
  %info737 = load %sParserInfo*, %sParserInfo** %1063, align 8
  %1064 = getelementptr inbounds %sParserInfo, %sParserInfo* %info737, i32 0, i32 4
  %1065 = load i8*, i8** %1064, align 8
  %1066 = ptrtoint i8* %1065 to i64
  %addtmp738 = add nsw i64 %1066, 1
  %1067 = inttoptr i64 %addtmp738 to i8*
  %1068 = getelementptr inbounds %sParserInfo, %sParserInfo* %info736, i32 0, i32 4
  store i8* %1067, i8** %1068, align 8
  %1069 = ptrtoint i8* %1067 to i64
  %subtmp739 = sub nsw i64 %1069, 1
  %1070 = inttoptr i64 %subtmp739 to i8*
  br label %end_block

cond_else_block735:                               ; preds = %after_break740, %"cond_jump_elif_then1\0A706"
  %eqtmpY743 = icmp eq i8 %derefference_value733, 116
  br i1 %eqtmpY743, label %cond_then_block741, label %cond_else_block742

after_break740:                                   ; No predecessors!
  br label %cond_else_block735

cond_then_block741:                               ; preds = %cond_else_block735
  store i8 9, i8* %c, align 1
  %1071 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1072 = bitcast i8* %1071 to %sParserInfo**
  %info744 = load %sParserInfo*, %sParserInfo** %1072, align 8
  %1073 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1074 = bitcast i8* %1073 to %sParserInfo**
  %info745 = load %sParserInfo*, %sParserInfo** %1074, align 8
  %1075 = getelementptr inbounds %sParserInfo, %sParserInfo* %info745, i32 0, i32 4
  %1076 = load i8*, i8** %1075, align 8
  %1077 = ptrtoint i8* %1076 to i64
  %addtmp746 = add nsw i64 %1077, 1
  %1078 = inttoptr i64 %addtmp746 to i8*
  %1079 = getelementptr inbounds %sParserInfo, %sParserInfo* %info744, i32 0, i32 4
  store i8* %1078, i8** %1079, align 8
  %1080 = ptrtoint i8* %1078 to i64
  %subtmp747 = sub nsw i64 %1080, 1
  %1081 = inttoptr i64 %subtmp747 to i8*
  br label %end_block

cond_else_block742:                               ; preds = %after_break748, %cond_else_block735
  %eqtmpY751 = icmp eq i8 %derefference_value733, 114
  br i1 %eqtmpY751, label %cond_then_block749, label %cond_else_block750

after_break748:                                   ; No predecessors!
  br label %cond_else_block742

cond_then_block749:                               ; preds = %cond_else_block742
  store i8 13, i8* %c, align 1
  %1082 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1083 = bitcast i8* %1082 to %sParserInfo**
  %info752 = load %sParserInfo*, %sParserInfo** %1083, align 8
  %1084 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1085 = bitcast i8* %1084 to %sParserInfo**
  %info753 = load %sParserInfo*, %sParserInfo** %1085, align 8
  %1086 = getelementptr inbounds %sParserInfo, %sParserInfo* %info753, i32 0, i32 4
  %1087 = load i8*, i8** %1086, align 8
  %1088 = ptrtoint i8* %1087 to i64
  %addtmp754 = add nsw i64 %1088, 1
  %1089 = inttoptr i64 %addtmp754 to i8*
  %1090 = getelementptr inbounds %sParserInfo, %sParserInfo* %info752, i32 0, i32 4
  store i8* %1089, i8** %1090, align 8
  %1091 = ptrtoint i8* %1089 to i64
  %subtmp755 = sub nsw i64 %1091, 1
  %1092 = inttoptr i64 %subtmp755 to i8*
  br label %end_block

cond_else_block750:                               ; preds = %after_break756, %cond_else_block742
  %eqtmpY759 = icmp eq i8 %derefference_value733, 97
  br i1 %eqtmpY759, label %cond_then_block757, label %cond_else_block758

after_break756:                                   ; No predecessors!
  br label %cond_else_block750

cond_then_block757:                               ; preds = %cond_else_block750
  store i8 7, i8* %c, align 1
  %1093 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1094 = bitcast i8* %1093 to %sParserInfo**
  %info760 = load %sParserInfo*, %sParserInfo** %1094, align 8
  %1095 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1096 = bitcast i8* %1095 to %sParserInfo**
  %info761 = load %sParserInfo*, %sParserInfo** %1096, align 8
  %1097 = getelementptr inbounds %sParserInfo, %sParserInfo* %info761, i32 0, i32 4
  %1098 = load i8*, i8** %1097, align 8
  %1099 = ptrtoint i8* %1098 to i64
  %addtmp762 = add nsw i64 %1099, 1
  %1100 = inttoptr i64 %addtmp762 to i8*
  %1101 = getelementptr inbounds %sParserInfo, %sParserInfo* %info760, i32 0, i32 4
  store i8* %1100, i8** %1101, align 8
  %1102 = ptrtoint i8* %1100 to i64
  %subtmp763 = sub nsw i64 %1102, 1
  %1103 = inttoptr i64 %subtmp763 to i8*
  br label %end_block

cond_else_block758:                               ; preds = %after_break764, %cond_else_block750
  %eqtmpY767 = icmp eq i8 %derefference_value733, 92
  br i1 %eqtmpY767, label %cond_then_block765, label %cond_else_block766

after_break764:                                   ; No predecessors!
  br label %cond_else_block758

cond_then_block765:                               ; preds = %cond_else_block758
  store i8 92, i8* %c, align 1
  %1104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1105 = bitcast i8* %1104 to %sParserInfo**
  %info768 = load %sParserInfo*, %sParserInfo** %1105, align 8
  %1106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1107 = bitcast i8* %1106 to %sParserInfo**
  %info769 = load %sParserInfo*, %sParserInfo** %1107, align 8
  %1108 = getelementptr inbounds %sParserInfo, %sParserInfo* %info769, i32 0, i32 4
  %1109 = load i8*, i8** %1108, align 8
  %1110 = ptrtoint i8* %1109 to i64
  %addtmp770 = add nsw i64 %1110, 1
  %1111 = inttoptr i64 %addtmp770 to i8*
  %1112 = getelementptr inbounds %sParserInfo, %sParserInfo* %info768, i32 0, i32 4
  store i8* %1111, i8** %1112, align 8
  %1113 = ptrtoint i8* %1111 to i64
  %subtmp771 = sub nsw i64 %1113, 1
  %1114 = inttoptr i64 %subtmp771 to i8*
  br label %end_block

cond_else_block766:                               ; preds = %after_break772, %cond_else_block758
  %eqtmpY775 = icmp eq i8 %derefference_value733, 48
  br i1 %eqtmpY775, label %cond_then_block773, label %cond_else_block774

after_break772:                                   ; No predecessors!
  br label %cond_else_block766

cond_then_block773:                               ; preds = %cond_else_block766
  store i8 0, i8* %c, align 1
  %1115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1116 = bitcast i8* %1115 to %sParserInfo**
  %info776 = load %sParserInfo*, %sParserInfo** %1116, align 8
  %1117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1118 = bitcast i8* %1117 to %sParserInfo**
  %info777 = load %sParserInfo*, %sParserInfo** %1118, align 8
  %1119 = getelementptr inbounds %sParserInfo, %sParserInfo* %info777, i32 0, i32 4
  %1120 = load i8*, i8** %1119, align 8
  %1121 = ptrtoint i8* %1120 to i64
  %addtmp778 = add nsw i64 %1121, 1
  %1122 = inttoptr i64 %addtmp778 to i8*
  %1123 = getelementptr inbounds %sParserInfo, %sParserInfo* %info776, i32 0, i32 4
  store i8* %1122, i8** %1123, align 8
  %1124 = ptrtoint i8* %1122 to i64
  %subtmp779 = sub nsw i64 %1124, 1
  %1125 = inttoptr i64 %subtmp779 to i8*
  br label %end_block

cond_else_block774:                               ; preds = %after_break780, %cond_else_block766
  br label %cond_then_block781

after_break780:                                   ; No predecessors!
  br label %cond_else_block774

cond_then_block781:                               ; preds = %cond_else_block774
  %1126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1127 = bitcast i8* %1126 to %sParserInfo**
  %info783 = load %sParserInfo*, %sParserInfo** %1127, align 8
  %1128 = getelementptr inbounds %sParserInfo, %sParserInfo* %info783, i32 0, i32 4
  %1129 = load i8*, i8** %1128, align 8
  %derefference_value784 = load i8, i8* %1129, align 8
  store i8 %derefference_value784, i8* %c, align 1
  %1130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1131 = bitcast i8* %1130 to %sParserInfo**
  %info785 = load %sParserInfo*, %sParserInfo** %1131, align 8
  %1132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1133 = bitcast i8* %1132 to %sParserInfo**
  %info786 = load %sParserInfo*, %sParserInfo** %1133, align 8
  %1134 = getelementptr inbounds %sParserInfo, %sParserInfo* %info786, i32 0, i32 4
  %1135 = load i8*, i8** %1134, align 8
  %1136 = ptrtoint i8* %1135 to i64
  %addtmp787 = add nsw i64 %1136, 1
  %1137 = inttoptr i64 %addtmp787 to i8*
  %1138 = getelementptr inbounds %sParserInfo, %sParserInfo* %info785, i32 0, i32 4
  store i8* %1137, i8** %1138, align 8
  %1139 = ptrtoint i8* %1137 to i64
  %subtmp788 = sub nsw i64 %1139, 1
  %1140 = inttoptr i64 %subtmp788 to i8*
  br label %end_block

cond_else_block782:                               ; preds = %after_break789
  br label %end_block

after_break789:                                   ; No predecessors!
  br label %cond_else_block782

cond_then_block817:                               ; preds = %cond_end_block698
  br label %cond_end818

cond_end818:                                      ; preds = %cond_then_block817, %cond_end_block698
  %1141 = bitcast %buffer* %961 to i8*
  call void @xfree(i8* %1141)
  %1142 = load i8*, i8** %str, align 8
  %1143 = ptrtoint i8* %1142 to i64
  %1144 = icmp ne i64 %1143, 0
  br i1 %1144, label %cond_then_block819, label %cond_end820

cond_then_block819:                               ; preds = %cond_end818
  br label %cond_end820

cond_end820:                                      ; preds = %cond_then_block819, %cond_end818
  call void @xfree(i8* %1142)
  br label %cond_end

cond_jump_then828:                                ; preds = %"cond_jump_elif_then3\0A"
  %1145 = bitcast [8192 x i8*]* %lvtable to i8*
  %1146 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1145, i64 65536)
  ret i1 false

cond_end829:                                      ; preds = %"cond_jump_elif_then3\0A"
  %1147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %1148 = bitcast i8* %1147 to %sCLNode***
  %node830 = load %sCLNode**, %sCLNode*** %1148, align 8
  %node2831 = load %sCLNode*, %sCLNode** %node2, align 8
  store %sCLNode* %node2831, %sCLNode** %node830, align 8
  br label %cond_end

cond_jump_then843:                                ; preds = %"cond_jump_elif_then4\0A"
  %1149 = bitcast [8192 x i8*]* %lvtable to i8*
  %1150 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1149, i64 65536)
  ret i1 false

cond_end844:                                      ; preds = %"cond_jump_elif_then4\0A"
  %1151 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1152 = bitcast i8* %1151 to %sParserInfo**
  %info845 = load %sParserInfo*, %sParserInfo** %1152, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info845)
  %1153 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %1154 = bitcast i8* %1153 to %sCLNode***
  %node846 = load %sCLNode**, %sCLNode*** %1154, align 8
  %derefference_value847 = load %sCLNode*, %sCLNode** %node846, align 8
  %eqtmpX848 = icmp eq %sCLNode* %derefference_value847, null
  br i1 %eqtmpX848, label %cond_jump_then849, label %cond_end850

cond_jump_then849:                                ; preds = %cond_end844
  %1155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1156 = bitcast i8* %1155 to %sParserInfo**
  %info851 = load %sParserInfo*, %sParserInfo** %1156, align 8
  call void @parser_err_msg(%sParserInfo* %info851, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.77, i32 0, i32 0))
  br label %cond_end850

cond_end850:                                      ; preds = %cond_jump_then849, %cond_end844
  %1157 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1158 = bitcast i8* %1157 to %sParserInfo**
  %info852 = load %sParserInfo*, %sParserInfo** %1158, align 8
  call void @expected_next_character(i8 41, %sParserInfo* %info852)
  br label %cond_end

cond_jump_then864:                                ; preds = %"cond_jump_elif_then5\0A"
  %1159 = bitcast [8192 x i8*]* %lvtable to i8*
  %1160 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1159, i64 65536)
  ret i1 false

cond_end865:                                      ; preds = %"cond_jump_elif_then5\0A"
  %1161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %1162 = bitcast i8* %1161 to %sCLNode***
  %node866 = load %sCLNode**, %sCLNode*** %1162, align 8
  %derefference_value867 = load %sCLNode*, %sCLNode** %node866, align 8
  %eqtmpX868 = icmp eq %sCLNode* %derefference_value867, null
  br i1 %eqtmpX868, label %cond_jump_then869, label %cond_end870

cond_jump_then869:                                ; preds = %cond_end865
  %1163 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1164 = bitcast i8* %1163 to %sParserInfo**
  %info871 = load %sParserInfo*, %sParserInfo** %1164, align 8
  call void @parser_err_msg(%sParserInfo* %info871, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_string.78, i32 0, i32 0))
  br label %cond_end870

cond_end870:                                      ; preds = %cond_jump_then869, %cond_end865
  %1165 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %1166 = bitcast i8* %1165 to %sCLNode***
  %node872 = load %sCLNode**, %sCLNode*** %1166, align 8
  %1167 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %1168 = bitcast i8* %1167 to %sCLNode***
  %node873 = load %sCLNode**, %sCLNode*** %1168, align 8
  %derefference_value874 = load %sCLNode*, %sCLNode** %node873, align 8
  %1169 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1170 = bitcast i8* %1169 to %sParserInfo**
  %info875 = load %sParserInfo*, %sParserInfo** %1170, align 8
  %1171 = call %sCLNode* @sNodeTree_create_logical_denial(%sCLNode* %derefference_value874, %sParserInfo* %info875)
  store %sCLNode* %1171, %sCLNode** %node872, align 8
  br label %cond_end

cond_jump_then886:                                ; preds = %"cond_jump_elif_then6\0A"
  %1172 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1173 = bitcast i8* %1172 to %sParserInfo**
  %info888 = load %sParserInfo*, %sParserInfo** %1173, align 8
  %1174 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %1175 = bitcast i8* %1174 to i32*
  %max_var_num889 = load i32, i32* %1175, align 4
  %1176 = getelementptr inbounds %sParserInfo, %sParserInfo* %info888, i32 0, i32 11
  store i32 %max_var_num889, i32* %1176, align 4
  %1177 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1178 = bitcast i8* %1177 to %sParserInfo**
  %info890 = load %sParserInfo*, %sParserInfo** %1178, align 8
  %1179 = getelementptr inbounds %sParserInfo, %sParserInfo* %info890, i32 0, i32 7
  %1180 = load %vector__sVarTablep*, %vector__sVarTablep** %1179, align 8
  %1181 = load %vector__sVarTablep*, %vector__sVarTablep** %1179, align 8
  call void @"vector_finalize_sVarTablep8_src/parser"(%vector__sVarTablep* %1181)
  %1182 = ptrtoint %vector__sVarTablep* %1181 to i64
  %1183 = icmp ne i64 %1182, 0
  br i1 %1183, label %cond_then_block891, label %cond_end892

cond_end887:                                      ; preds = %"cond_jump_elif_then6\0A"
  %1184 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1185 = bitcast i8* %1184 to %sParserInfo**
  %info895 = load %sParserInfo*, %sParserInfo** %1185, align 8
  %max_var_num896 = load i32, i32* %max_var_num, align 4
  %1186 = getelementptr inbounds %sParserInfo, %sParserInfo* %info895, i32 0, i32 11
  store i32 %max_var_num896, i32* %1186, align 4
  %1187 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1188 = bitcast i8* %1187 to %sParserInfo**
  %info897 = load %sParserInfo*, %sParserInfo** %1188, align 8
  %1189 = getelementptr inbounds %sParserInfo, %sParserInfo* %info897, i32 0, i32 7
  %1190 = load %vector__sVarTablep*, %vector__sVarTablep** %1189, align 8
  %1191 = load %vector__sVarTablep*, %vector__sVarTablep** %1189, align 8
  call void @"vector_finalize_sVarTablep10_src/parser"(%vector__sVarTablep* %1191)
  %1192 = ptrtoint %vector__sVarTablep* %1191 to i64
  %1193 = icmp ne i64 %1192, 0
  br i1 %1193, label %cond_then_block898, label %cond_end899

cond_then_block891:                               ; preds = %cond_jump_then886
  br label %cond_end892

cond_end892:                                      ; preds = %cond_then_block891, %cond_jump_then886
  %1194 = bitcast %vector__sVarTablep* %1181 to i8*
  call void @xfree(i8* %1194)
  %1195 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1196 = bitcast i8* %1195 to %sParserInfo**
  %info893 = load %sParserInfo*, %sParserInfo** %1196, align 8
  %1197 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %1198 = bitcast i8* %1197 to %vector__sVarTablep**
  %vtables_before894 = load %vector__sVarTablep*, %vector__sVarTablep** %1198, align 8
  %1199 = getelementptr inbounds %sParserInfo, %sParserInfo* %info893, i32 0, i32 7
  store %vector__sVarTablep* %vtables_before894, %vector__sVarTablep** %1199, align 8
  %1200 = bitcast [8192 x i8*]* %lvtable to i8*
  %1201 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1200, i64 65536)
  ret i1 false

cond_then_block898:                               ; preds = %cond_end887
  br label %cond_end899

cond_end899:                                      ; preds = %cond_then_block898, %cond_end887
  %1202 = bitcast %vector__sVarTablep* %1191 to i8*
  call void @xfree(i8* %1202)
  %1203 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1204 = bitcast i8* %1203 to %sParserInfo**
  %info900 = load %sParserInfo*, %sParserInfo** %1204, align 8
  %vtables_before901 = load %vector__sVarTablep*, %vector__sVarTablep** %vtables_before, align 8
  %1205 = getelementptr inbounds %sParserInfo, %sParserInfo* %info900, i32 0, i32 7
  store %vector__sVarTablep* %vtables_before901, %vector__sVarTablep** %1205, align 8
  %1206 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1207 = bitcast i8* %1206 to %sParserInfo**
  %info902 = load %sParserInfo*, %sParserInfo** %1207, align 8
  call void @expected_next_character(i8 125, %sParserInfo* %info902)
  %1208 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %1209 = bitcast i8* %1208 to %sCLNode***
  %node903 = load %sCLNode**, %sCLNode*** %1209, align 8
  %node_block904 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %1210 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %1211 = bitcast i8* %1210 to %sParserInfo**
  %info905 = load %sParserInfo*, %sParserInfo** %1211, align 8
  %1212 = call %sCLNode* @sNodeTree_create_normal_block(%sCLNodeBlock* %node_block904, %sParserInfo* %info905)
  store %sCLNode* %1212, %sCLNode** %node903, align 8
  br label %cond_end

cond_then_block909:                               ; preds = %cond_else_block
  br label %cond_end910

cond_end910:                                      ; preds = %cond_then_block909, %cond_else_block
  call void @xfree(i8* %151)
  ret i1 false

cond_jump_then914:                                ; preds = %cond_end
  %1213 = bitcast [8192 x i8*]* %lvtable to i8*
  %1214 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1213, i64 65536)
  ret i1 false

cond_end915:                                      ; preds = %cond_end
  %1215 = bitcast [8192 x i8*]* %lvtable to i8*
  %1216 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1215, i64 65536)
  ret i1 true
}

define %vector__sVarTablep* @"vector_initialize_sVarTablep7_src/parser"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %self2 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %3 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %4 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %self5 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %5 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = zext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.83, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.84, i32 0, i32 0), i32 452, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.85, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @global_string.86, i32 0, i32 0))
  %8 = bitcast i8* %7 to %sVarTable**
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self4, i32 0, i32 0
  store %sVarTable** %8, %sVarTable*** %9, align 8
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__sVarTablep* %self6
}

define void @"vector_finalize_sVarTablep8_src/parser"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %self2 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %eqtmpX = icmp eq %vector__sVarTablep* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 true, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self14 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %6 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self14, i32 0, i32 0
  %7 = load %sVarTable**, %sVarTable*** %6, align 8
  %8 = load %sVarTable**, %sVarTable*** %6, align 8
  %9 = bitcast %sVarTable** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %13 = bitcast i8* %12 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %13, align 8
  %14 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %17 = bitcast i8* %16 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %17, align 8
  %18 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 0
  %19 = load %sVarTable**, %sVarTable*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %19, i32 %i8
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %20 = load %sVarTable*, %sVarTable** %element_address, align 8
  %21 = ptrtoint %sVarTable* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sVarTable, %sVarTable* %20, i32 0, i32 0
  %24 = load %map__charp_sVarp*, %map__charp_sVarp** %23, align 8
  call void @"map_finalize_charp_sVarp9_src/parser"(%map__charp_sVarp* %24)
  %25 = ptrtoint %map__charp_sVarp* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end12, %cond_then_block
  %27 = bitcast %sVarTable* %20 to i8*
  call void @xfree(i8* %27)
  %i13 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i13, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  %28 = bitcast %map__charp_sVarp* %24 to i8*
  call void @xfree(i8* %28)
  br label %cond_end10
}

define void @"map_finalize_charp_sVarp9_src/parser"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %eqtmpX = icmp eq %map__charp_sVarp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %i6 = load i32, i32* %i, align 4
  %element_address = getelementptr i1, i1* %13, i32 %i6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then7, label %cond_end8

cond_end_block:                                   ; preds = %loop_top_block
  %self20 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %14 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self20, i32 0, i32 2
  %15 = load %sVar**, %sVar*** %14, align 8
  %16 = load %sVar**, %sVar*** %14, align 8
  %17 = bitcast %sVar** %16 to i8*
  call void @xfree(i8* %17)
  %i21 = alloca i32
  %18 = bitcast i32* %i21 to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i21, align 4
  br label %loop_top_block22

cond_jump_then7:                                  ; preds = %cond_then_block
  br i1 false, label %cond_jump_then9, label %cond_end10

cond_end8:                                        ; preds = %cond_end10, %cond_then_block
  %i19 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i19, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then9:                                  ; preds = %cond_jump_then7
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %24 = bitcast i8* %23 to i32*
  %i12 = load i32, i32* %24, align 4
  %element_address13 = getelementptr %sVar*, %sVar** %22, i32 %i12
  %element14 = load %sVar*, %sVar** %element_address13, align 8
  %25 = load %sVar*, %sVar** %element_address13, align 8
  %26 = ptrtoint %sVar* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block15, label %cond_end16

cond_end10:                                       ; preds = %cond_end16, %cond_jump_then7
  br label %cond_end8

cond_then_block15:                                ; preds = %cond_jump_then9
  %28 = getelementptr inbounds %sVar, %sVar* %25, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block17, label %cond_end18

cond_end16:                                       ; preds = %cond_end18, %cond_jump_then9
  %32 = bitcast %sVar* %25 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10

cond_then_block17:                                ; preds = %cond_then_block15
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_then_block15
  call void @xfree(i8* %29)
  br label %cond_end16

loop_top_block22:                                 ; preds = %cond_end33, %cond_end_block
  %i23 = load i32, i32* %i21, align 4
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %38 = bitcast i8* %37 to %map__charp_sVarp**
  %self28 = load %map__charp_sVarp*, %map__charp_sVarp** %38, align 8
  %39 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self28, i32 0, i32 1
  %40 = load i1*, i1** %39, align 8
  %i29 = load i32, i32* %i21, align 4
  %element_address30 = getelementptr i1, i1* %40, i32 %i29
  %element31 = load i1, i1* %element_address30, align 1
  br i1 %element31, label %cond_jump_then32, label %cond_end33

cond_end_block27:                                 ; preds = %loop_top_block22
  %self45 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %41 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self45, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8**, i8*** %41, align 8
  %44 = bitcast i8** %43 to i8*
  call void @xfree(i8* %44)
  %self46 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %45 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self46, i32 0, i32 1
  %46 = load i1*, i1** %45, align 8
  %47 = load i1*, i1** %45, align 8
  %48 = ptrtoint i1* %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %cond_then_block47, label %cond_end48

cond_jump_then32:                                 ; preds = %cond_then_block26
  br i1 true, label %cond_jump_then34, label %cond_end35

cond_end33:                                       ; preds = %cond_end35, %cond_then_block26
  %i42 = load i32, i32* %i21, align 4
  %addtmp43 = add nsw i32 %i42, 1
  store i32 %addtmp43, i32* %i21, align 4
  %subttmp44 = sub nsw i32 %addtmp43, 1
  br label %loop_top_block22

cond_jump_then34:                                 ; preds = %cond_jump_then32
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %55 = bitcast i8* %54 to i32*
  %i37 = load i32, i32* %55, align 4
  %element_address38 = getelementptr i8*, i8** %53, i32 %i37
  %element39 = load i8*, i8** %element_address38, align 8
  %56 = load i8*, i8** %element_address38, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %cond_then_block40, label %cond_end41

cond_end35:                                       ; preds = %cond_end41, %cond_jump_then32
  br label %cond_end33

cond_then_block40:                                ; preds = %cond_jump_then34
  br label %cond_end41

cond_end41:                                       ; preds = %cond_then_block40, %cond_jump_then34
  call void @xfree(i8* %56)
  br label %cond_end35

cond_then_block47:                                ; preds = %cond_end_block27
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end_block27
  %59 = bitcast i1* %47 to i8*
  call void @xfree(i8* %59)
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  ret void
}

define void @"vector_finalize_sVarTablep10_src/parser"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %self2 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %eqtmpX = icmp eq %vector__sVarTablep* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 true, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self14 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %6 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self14, i32 0, i32 0
  %7 = load %sVarTable**, %sVarTable*** %6, align 8
  %8 = load %sVarTable**, %sVarTable*** %6, align 8
  %9 = bitcast %sVarTable** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %13 = bitcast i8* %12 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %13, align 8
  %14 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %17 = bitcast i8* %16 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %17, align 8
  %18 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 0
  %19 = load %sVarTable**, %sVarTable*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %19, i32 %i8
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %20 = load %sVarTable*, %sVarTable** %element_address, align 8
  %21 = ptrtoint %sVarTable* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sVarTable, %sVarTable* %20, i32 0, i32 0
  %24 = load %map__charp_sVarp*, %map__charp_sVarp** %23, align 8
  call void @"map_finalize_charp_sVarp11_src/parser"(%map__charp_sVarp* %24)
  %25 = ptrtoint %map__charp_sVarp* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end12, %cond_then_block
  %27 = bitcast %sVarTable* %20 to i8*
  call void @xfree(i8* %27)
  %i13 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i13, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  %28 = bitcast %map__charp_sVarp* %24 to i8*
  call void @xfree(i8* %28)
  br label %cond_end10
}

define void @"map_finalize_charp_sVarp11_src/parser"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %eqtmpX = icmp eq %map__charp_sVarp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %i6 = load i32, i32* %i, align 4
  %element_address = getelementptr i1, i1* %13, i32 %i6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then7, label %cond_end8

cond_end_block:                                   ; preds = %loop_top_block
  %self20 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %14 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self20, i32 0, i32 2
  %15 = load %sVar**, %sVar*** %14, align 8
  %16 = load %sVar**, %sVar*** %14, align 8
  %17 = bitcast %sVar** %16 to i8*
  call void @xfree(i8* %17)
  %i21 = alloca i32
  %18 = bitcast i32* %i21 to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i21, align 4
  br label %loop_top_block22

cond_jump_then7:                                  ; preds = %cond_then_block
  br i1 false, label %cond_jump_then9, label %cond_end10

cond_end8:                                        ; preds = %cond_end10, %cond_then_block
  %i19 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i19, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then9:                                  ; preds = %cond_jump_then7
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %24 = bitcast i8* %23 to i32*
  %i12 = load i32, i32* %24, align 4
  %element_address13 = getelementptr %sVar*, %sVar** %22, i32 %i12
  %element14 = load %sVar*, %sVar** %element_address13, align 8
  %25 = load %sVar*, %sVar** %element_address13, align 8
  %26 = ptrtoint %sVar* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block15, label %cond_end16

cond_end10:                                       ; preds = %cond_end16, %cond_jump_then7
  br label %cond_end8

cond_then_block15:                                ; preds = %cond_jump_then9
  %28 = getelementptr inbounds %sVar, %sVar* %25, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block17, label %cond_end18

cond_end16:                                       ; preds = %cond_end18, %cond_jump_then9
  %32 = bitcast %sVar* %25 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10

cond_then_block17:                                ; preds = %cond_then_block15
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_then_block15
  call void @xfree(i8* %29)
  br label %cond_end16

loop_top_block22:                                 ; preds = %cond_end33, %cond_end_block
  %i23 = load i32, i32* %i21, align 4
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %38 = bitcast i8* %37 to %map__charp_sVarp**
  %self28 = load %map__charp_sVarp*, %map__charp_sVarp** %38, align 8
  %39 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self28, i32 0, i32 1
  %40 = load i1*, i1** %39, align 8
  %i29 = load i32, i32* %i21, align 4
  %element_address30 = getelementptr i1, i1* %40, i32 %i29
  %element31 = load i1, i1* %element_address30, align 1
  br i1 %element31, label %cond_jump_then32, label %cond_end33

cond_end_block27:                                 ; preds = %loop_top_block22
  %self45 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %41 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self45, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8**, i8*** %41, align 8
  %44 = bitcast i8** %43 to i8*
  call void @xfree(i8* %44)
  %self46 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %45 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self46, i32 0, i32 1
  %46 = load i1*, i1** %45, align 8
  %47 = load i1*, i1** %45, align 8
  %48 = ptrtoint i1* %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %cond_then_block47, label %cond_end48

cond_jump_then32:                                 ; preds = %cond_then_block26
  br i1 true, label %cond_jump_then34, label %cond_end35

cond_end33:                                       ; preds = %cond_end35, %cond_then_block26
  %i42 = load i32, i32* %i21, align 4
  %addtmp43 = add nsw i32 %i42, 1
  store i32 %addtmp43, i32* %i21, align 4
  %subttmp44 = sub nsw i32 %addtmp43, 1
  br label %loop_top_block22

cond_jump_then34:                                 ; preds = %cond_jump_then32
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %55 = bitcast i8* %54 to i32*
  %i37 = load i32, i32* %55, align 4
  %element_address38 = getelementptr i8*, i8** %53, i32 %i37
  %element39 = load i8*, i8** %element_address38, align 8
  %56 = load i8*, i8** %element_address38, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %cond_then_block40, label %cond_end41

cond_end35:                                       ; preds = %cond_end41, %cond_jump_then32
  br label %cond_end33

cond_then_block40:                                ; preds = %cond_jump_then34
  br label %cond_end41

cond_end41:                                       ; preds = %cond_then_block40, %cond_jump_then34
  call void @xfree(i8* %56)
  br label %cond_end35

cond_then_block47:                                ; preds = %cond_end_block27
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end_block27
  %59 = bitcast i1* %47 to i8*
  call void @xfree(i8* %59)
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  ret void
}

define i1 @expression_plus_minus(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i1 @expression_node(%sCLNode** %node3, %sParserInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %node5 = load %sCLNode**, %sCLNode*** %node1, align 8
  %derefference_value = load %sCLNode*, %sCLNode** %node5, align 8
  %eqtmpX = icmp eq %sCLNode* %derefference_value, null
  br i1 %eqtmpX, label %cond_jump_then6, label %cond_end7

cond_jump_then6:                                  ; preds = %cond_end
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 true

cond_end7:                                        ; preds = %cond_end
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end26, %cond_end7
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %derefference_value9 = load i8, i8* %10, align 8
  %11 = icmp ne i8 %derefference_value9, 0
  br i1 %11, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %andand_result_var10 = alloca i1
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %13 = bitcast i8* %12 to %sParserInfo**
  %info11 = load %sParserInfo*, %sParserInfo** %13, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %derefference_value12 = load i8, i8* %15, align 8
  %eqtmpX13 = icmp eq i8 %derefference_value12, 43
  store i1 %eqtmpX13, i1* %andand_result_var10, align 1
  br i1 %eqtmpX13, label %cond_jump_then14, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true

cond_jump_then14:                                 ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info15 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info15, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i64
  %addtmp = add nsw i64 %22, 1
  %23 = inttoptr i64 %addtmp to i8*
  %derefference_value16 = load i8, i8* %23, align 8
  %noteqtmp = icmp ne i8 %derefference_value16, 61
  %andand = and i1 %eqtmpX13, %noteqtmp
  store i1 %andand, i1* %andand_result_var10, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then14, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var10, align 1
  store i1 %andand_result_value, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then17, label %cond_jump_end18

cond_jump_then17:                                 ; preds = %cond_jump_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %25 = bitcast i8* %24 to %sParserInfo**
  %info19 = load %sParserInfo*, %sParserInfo** %25, align 8
  %26 = getelementptr inbounds %sParserInfo, %sParserInfo* %info19, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i64
  %addtmp20 = add nsw i64 %28, 1
  %29 = inttoptr i64 %addtmp20 to i8*
  %derefference_value21 = load i8, i8* %29, align 8
  %noteqtmp22 = icmp ne i8 %derefference_value21, 43
  %andand23 = and i1 %andand_result_value, %noteqtmp22
  store i1 %andand23, i1* %andand_result_var, align 1
  br label %cond_jump_end18

cond_jump_end18:                                  ; preds = %cond_jump_then17, %cond_jump_end
  %andand_result_value24 = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value24, label %cond_jump_then25, label %"cond_jump_elif0\0A"

cond_jump_then25:                                 ; preds = %cond_jump_end18
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info27 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %33 = bitcast i8* %32 to %sParserInfo**
  %info28 = load %sParserInfo*, %sParserInfo** %33, align 8
  %34 = getelementptr inbounds %sParserInfo, %sParserInfo* %info28, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i64
  %addtmp29 = add nsw i64 %36, 1
  %37 = inttoptr i64 %addtmp29 to i8*
  %38 = getelementptr inbounds %sParserInfo, %sParserInfo* %info27, i32 0, i32 4
  store i8* %37, i8** %38, align 8
  %39 = ptrtoint i8* %37 to i64
  %subtmp = sub nsw i64 %39, 1
  %40 = inttoptr i64 %subtmp to i8*
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info30 = load %sParserInfo*, %sParserInfo** %42, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info30)
  %right = alloca %sCLNode*
  %43 = bitcast %sCLNode** %right to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right, align 8
  %right31 = load %sCLNode*, %sCLNode** %right, align 8
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %45 = bitcast i8* %44 to %sParserInfo**
  %info32 = load %sParserInfo*, %sParserInfo** %45, align 8
  %46 = call i1 @expression_node(%sCLNode** %right, %sParserInfo* %info32)
  %LOGICAL_DIANEAL33 = icmp eq i1 %46, false
  br i1 %LOGICAL_DIANEAL33, label %cond_jump_then34, label %cond_end35

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end18
  %andand_result_var46 = alloca i1
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sParserInfo**
  %info47 = load %sParserInfo*, %sParserInfo** %48, align 8
  %49 = getelementptr inbounds %sParserInfo, %sParserInfo* %info47, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %derefference_value48 = load i8, i8* %50, align 8
  %eqtmpX49 = icmp eq i8 %derefference_value48, 92
  store i1 %eqtmpX49, i1* %andand_result_var46, align 1
  br i1 %eqtmpX49, label %cond_jump_then50, label %cond_jump_end51

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end51
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %52 = bitcast i8* %51 to %sParserInfo**
  %info58 = load %sParserInfo*, %sParserInfo** %52, align 8
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %54 = bitcast i8* %53 to %sParserInfo**
  %info59 = load %sParserInfo*, %sParserInfo** %54, align 8
  %55 = getelementptr inbounds %sParserInfo, %sParserInfo* %info59, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i64
  %addtmp60 = add nsw i64 %57, 1
  %58 = inttoptr i64 %addtmp60 to i8*
  %59 = getelementptr inbounds %sParserInfo, %sParserInfo* %info58, i32 0, i32 4
  store i8* %58, i8** %59, align 8
  %60 = ptrtoint i8* %58 to i64
  %subtmp61 = sub nsw i64 %60, 1
  %61 = inttoptr i64 %subtmp61 to i8*
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sParserInfo**
  %info62 = load %sParserInfo*, %sParserInfo** %63, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info62)
  %right63 = alloca %sCLNode*
  %64 = bitcast %sCLNode** %right63 to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right63, align 8
  %right64 = load %sCLNode*, %sCLNode** %right63, align 8
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %66 = bitcast i8* %65 to %sParserInfo**
  %info65 = load %sParserInfo*, %sParserInfo** %66, align 8
  %67 = call i1 @expression_node(%sCLNode** %right63, %sParserInfo* %info65)
  %LOGICAL_DIANEAL66 = icmp eq i1 %67, false
  br i1 %LOGICAL_DIANEAL66, label %cond_jump_then67, label %cond_end68

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end51
  %andand_result_var79 = alloca i1
  %andand_result_var80 = alloca i1
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %69 = bitcast i8* %68 to %sParserInfo**
  %info81 = load %sParserInfo*, %sParserInfo** %69, align 8
  %70 = getelementptr inbounds %sParserInfo, %sParserInfo* %info81, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %derefference_value82 = load i8, i8* %71, align 8
  %eqtmpX83 = icmp eq i8 %derefference_value82, 45
  store i1 %eqtmpX83, i1* %andand_result_var80, align 1
  br i1 %eqtmpX83, label %cond_jump_then84, label %cond_jump_end85

"cond_jump_elif_then1\0A":                        ; preds = %cond_jump_end93
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %73 = bitcast i8* %72 to %sParserInfo**
  %info100 = load %sParserInfo*, %sParserInfo** %73, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %75 = bitcast i8* %74 to %sParserInfo**
  %info101 = load %sParserInfo*, %sParserInfo** %75, align 8
  %76 = getelementptr inbounds %sParserInfo, %sParserInfo* %info101, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %77 to i64
  %addtmp102 = add nsw i64 %78, 1
  %79 = inttoptr i64 %addtmp102 to i8*
  %80 = getelementptr inbounds %sParserInfo, %sParserInfo* %info100, i32 0, i32 4
  store i8* %79, i8** %80, align 8
  %81 = ptrtoint i8* %79 to i64
  %subtmp103 = sub nsw i64 %81, 1
  %82 = inttoptr i64 %subtmp103 to i8*
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %84 = bitcast i8* %83 to %sParserInfo**
  %info104 = load %sParserInfo*, %sParserInfo** %84, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info104)
  %right105 = alloca %sCLNode*
  %85 = bitcast %sCLNode** %right105 to i8*
  store i8* %85, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right105, align 8
  %right106 = load %sCLNode*, %sCLNode** %right105, align 8
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %87 = bitcast i8* %86 to %sParserInfo**
  %info107 = load %sParserInfo*, %sParserInfo** %87, align 8
  %88 = call i1 @expression_node(%sCLNode** %right105, %sParserInfo* %info107)
  %LOGICAL_DIANEAL108 = icmp eq i1 %88, false
  br i1 %LOGICAL_DIANEAL108, label %cond_jump_then109, label %cond_end110

"cond_jump_elif2\0A":                             ; preds = %cond_jump_end93
  %andand_result_var121 = alloca i1
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %90 = bitcast i8* %89 to %sParserInfo**
  %info122 = load %sParserInfo*, %sParserInfo** %90, align 8
  %91 = getelementptr inbounds %sParserInfo, %sParserInfo* %info122, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %derefference_value123 = load i8, i8* %92, align 8
  %eqtmpX124 = icmp eq i8 %derefference_value123, 92
  store i1 %eqtmpX124, i1* %andand_result_var121, align 1
  br i1 %eqtmpX124, label %cond_jump_then125, label %cond_jump_end126

"cond_jump_elif_then2\0A":                        ; preds = %cond_jump_end126
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %94 = bitcast i8* %93 to %sParserInfo**
  %info133 = load %sParserInfo*, %sParserInfo** %94, align 8
  %95 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %96 = bitcast i8* %95 to %sParserInfo**
  %info134 = load %sParserInfo*, %sParserInfo** %96, align 8
  %97 = getelementptr inbounds %sParserInfo, %sParserInfo* %info134, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i64
  %addtmp135 = add nsw i64 %99, 1
  %100 = inttoptr i64 %addtmp135 to i8*
  %101 = getelementptr inbounds %sParserInfo, %sParserInfo* %info133, i32 0, i32 4
  store i8* %100, i8** %101, align 8
  %102 = ptrtoint i8* %100 to i64
  %subtmp136 = sub nsw i64 %102, 1
  %103 = inttoptr i64 %subtmp136 to i8*
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %105 = bitcast i8* %104 to %sParserInfo**
  %info137 = load %sParserInfo*, %sParserInfo** %105, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info137)
  %right138 = alloca %sCLNode*
  %106 = bitcast %sCLNode** %right138 to i8*
  store i8* %106, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right138, align 8
  %right139 = load %sCLNode*, %sCLNode** %right138, align 8
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %108 = bitcast i8* %107 to %sParserInfo**
  %info140 = load %sParserInfo*, %sParserInfo** %108, align 8
  %109 = call i1 @expression_node(%sCLNode** %right138, %sParserInfo* %info140)
  %LOGICAL_DIANEAL141 = icmp eq i1 %109, false
  br i1 %LOGICAL_DIANEAL141, label %cond_jump_then142, label %cond_end143

cond_else_block:                                  ; preds = %cond_jump_end126
  br label %cond_end_block

cond_end26:                                       ; preds = %after_break, %cond_end147, %cond_end114, %cond_end72, %cond_end39
  br label %loop_top_block

cond_jump_then34:                                 ; preds = %cond_jump_then25
  %110 = bitcast [8192 x i8*]* %lvtable to i8*
  %111 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %110, i64 65536)
  ret i1 false

cond_end35:                                       ; preds = %cond_jump_then25
  %right36 = load %sCLNode*, %sCLNode** %right, align 8
  %eqtmpX37 = icmp eq %sCLNode* %right36, null
  br i1 %eqtmpX37, label %cond_jump_then38, label %cond_end39

cond_jump_then38:                                 ; preds = %cond_end35
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %113 = bitcast i8* %112 to %sParserInfo**
  %info40 = load %sParserInfo*, %sParserInfo** %113, align 8
  call void @parser_err_msg(%sParserInfo* %info40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.88, i32 0, i32 0))
  br label %cond_end39

cond_end39:                                       ; preds = %cond_jump_then38, %cond_end35
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %115 = bitcast i8* %114 to %sCLNode***
  %node41 = load %sCLNode**, %sCLNode*** %115, align 8
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %117 = bitcast i8* %116 to %sCLNode***
  %node42 = load %sCLNode**, %sCLNode*** %117, align 8
  %derefference_value43 = load %sCLNode*, %sCLNode** %node42, align 8
  %right44 = load %sCLNode*, %sCLNode** %right, align 8
  %118 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %119 = bitcast i8* %118 to %sParserInfo**
  %info45 = load %sParserInfo*, %sParserInfo** %119, align 8
  %120 = call %sCLNode* @sNodeTree_create_plus(%sCLNode* %derefference_value43, %sCLNode* %right44, %sParserInfo* %info45)
  store %sCLNode* %120, %sCLNode** %node41, align 8
  br label %cond_end26

cond_jump_then50:                                 ; preds = %"cond_jump_elif0\0A"
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %122 = bitcast i8* %121 to %sParserInfo**
  %info52 = load %sParserInfo*, %sParserInfo** %122, align 8
  %123 = getelementptr inbounds %sParserInfo, %sParserInfo* %info52, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i64
  %addtmp53 = add nsw i64 %125, 1
  %126 = inttoptr i64 %addtmp53 to i8*
  %derefference_value54 = load i8, i8* %126, align 8
  %eqtmpX55 = icmp eq i8 %derefference_value54, 43
  %andand56 = and i1 %eqtmpX49, %eqtmpX55
  store i1 %andand56, i1* %andand_result_var46, align 1
  br label %cond_jump_end51

cond_jump_end51:                                  ; preds = %cond_jump_then50, %"cond_jump_elif0\0A"
  %andand_result_value57 = load i1, i1* %andand_result_var46, align 1
  br i1 %andand_result_value57, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

cond_jump_then67:                                 ; preds = %"cond_jump_elif_then0\0A"
  %127 = bitcast [8192 x i8*]* %lvtable to i8*
  %128 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %127, i64 65536)
  ret i1 false

cond_end68:                                       ; preds = %"cond_jump_elif_then0\0A"
  %right69 = load %sCLNode*, %sCLNode** %right63, align 8
  %eqtmpX70 = icmp eq %sCLNode* %right69, null
  br i1 %eqtmpX70, label %cond_jump_then71, label %cond_end72

cond_jump_then71:                                 ; preds = %cond_end68
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %130 = bitcast i8* %129 to %sParserInfo**
  %info73 = load %sParserInfo*, %sParserInfo** %130, align 8
  call void @parser_err_msg(%sParserInfo* %info73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.89, i32 0, i32 0))
  br label %cond_end72

cond_end72:                                       ; preds = %cond_jump_then71, %cond_end68
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %132 = bitcast i8* %131 to %sCLNode***
  %node74 = load %sCLNode**, %sCLNode*** %132, align 8
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %134 = bitcast i8* %133 to %sCLNode***
  %node75 = load %sCLNode**, %sCLNode*** %134, align 8
  %derefference_value76 = load %sCLNode*, %sCLNode** %node75, align 8
  %right77 = load %sCLNode*, %sCLNode** %right63, align 8
  %135 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %136 = bitcast i8* %135 to %sParserInfo**
  %info78 = load %sParserInfo*, %sParserInfo** %136, align 8
  %137 = call %sCLNode* @sNodeTree_create_primitive_plus(%sCLNode* %derefference_value76, %sCLNode* %right77, %sParserInfo* %info78)
  store %sCLNode* %137, %sCLNode** %node74, align 8
  br label %cond_end26

cond_jump_then84:                                 ; preds = %"cond_jump_elif1\0A"
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %139 = bitcast i8* %138 to %sParserInfo**
  %info86 = load %sParserInfo*, %sParserInfo** %139, align 8
  %140 = getelementptr inbounds %sParserInfo, %sParserInfo* %info86, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = ptrtoint i8* %141 to i64
  %addtmp87 = add nsw i64 %142, 1
  %143 = inttoptr i64 %addtmp87 to i8*
  %derefference_value88 = load i8, i8* %143, align 8
  %noteqtmp89 = icmp ne i8 %derefference_value88, 61
  %andand90 = and i1 %eqtmpX83, %noteqtmp89
  store i1 %andand90, i1* %andand_result_var80, align 1
  br label %cond_jump_end85

cond_jump_end85:                                  ; preds = %cond_jump_then84, %"cond_jump_elif1\0A"
  %andand_result_value91 = load i1, i1* %andand_result_var80, align 1
  store i1 %andand_result_value91, i1* %andand_result_var79, align 1
  br i1 %andand_result_value91, label %cond_jump_then92, label %cond_jump_end93

cond_jump_then92:                                 ; preds = %cond_jump_end85
  %144 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %145 = bitcast i8* %144 to %sParserInfo**
  %info94 = load %sParserInfo*, %sParserInfo** %145, align 8
  %146 = getelementptr inbounds %sParserInfo, %sParserInfo* %info94, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i64
  %addtmp95 = add nsw i64 %148, 1
  %149 = inttoptr i64 %addtmp95 to i8*
  %derefference_value96 = load i8, i8* %149, align 8
  %noteqtmp97 = icmp ne i8 %derefference_value96, 45
  %andand98 = and i1 %andand_result_value91, %noteqtmp97
  store i1 %andand98, i1* %andand_result_var79, align 1
  br label %cond_jump_end93

cond_jump_end93:                                  ; preds = %cond_jump_then92, %cond_jump_end85
  %andand_result_value99 = load i1, i1* %andand_result_var79, align 1
  br i1 %andand_result_value99, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

cond_jump_then109:                                ; preds = %"cond_jump_elif_then1\0A"
  %150 = bitcast [8192 x i8*]* %lvtable to i8*
  %151 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %150, i64 65536)
  ret i1 false

cond_end110:                                      ; preds = %"cond_jump_elif_then1\0A"
  %right111 = load %sCLNode*, %sCLNode** %right105, align 8
  %eqtmpX112 = icmp eq %sCLNode* %right111, null
  br i1 %eqtmpX112, label %cond_jump_then113, label %cond_end114

cond_jump_then113:                                ; preds = %cond_end110
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %153 = bitcast i8* %152 to %sParserInfo**
  %info115 = load %sParserInfo*, %sParserInfo** %153, align 8
  call void @parser_err_msg(%sParserInfo* %info115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.90, i32 0, i32 0))
  br label %cond_end114

cond_end114:                                      ; preds = %cond_jump_then113, %cond_end110
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %155 = bitcast i8* %154 to %sCLNode***
  %node116 = load %sCLNode**, %sCLNode*** %155, align 8
  %156 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %157 = bitcast i8* %156 to %sCLNode***
  %node117 = load %sCLNode**, %sCLNode*** %157, align 8
  %derefference_value118 = load %sCLNode*, %sCLNode** %node117, align 8
  %right119 = load %sCLNode*, %sCLNode** %right105, align 8
  %158 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %159 = bitcast i8* %158 to %sParserInfo**
  %info120 = load %sParserInfo*, %sParserInfo** %159, align 8
  %160 = call %sCLNode* @sNodeTree_create_minus(%sCLNode* %derefference_value118, %sCLNode* %right119, %sParserInfo* %info120)
  store %sCLNode* %160, %sCLNode** %node116, align 8
  br label %cond_end26

cond_jump_then125:                                ; preds = %"cond_jump_elif2\0A"
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %162 = bitcast i8* %161 to %sParserInfo**
  %info127 = load %sParserInfo*, %sParserInfo** %162, align 8
  %163 = getelementptr inbounds %sParserInfo, %sParserInfo* %info127, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %164 to i64
  %addtmp128 = add nsw i64 %165, 1
  %166 = inttoptr i64 %addtmp128 to i8*
  %derefference_value129 = load i8, i8* %166, align 8
  %eqtmpX130 = icmp eq i8 %derefference_value129, 45
  %andand131 = and i1 %eqtmpX124, %eqtmpX130
  store i1 %andand131, i1* %andand_result_var121, align 1
  br label %cond_jump_end126

cond_jump_end126:                                 ; preds = %cond_jump_then125, %"cond_jump_elif2\0A"
  %andand_result_value132 = load i1, i1* %andand_result_var121, align 1
  br i1 %andand_result_value132, label %"cond_jump_elif_then2\0A", label %cond_else_block

cond_jump_then142:                                ; preds = %"cond_jump_elif_then2\0A"
  %167 = bitcast [8192 x i8*]* %lvtable to i8*
  %168 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %167, i64 65536)
  ret i1 false

cond_end143:                                      ; preds = %"cond_jump_elif_then2\0A"
  %right144 = load %sCLNode*, %sCLNode** %right138, align 8
  %eqtmpX145 = icmp eq %sCLNode* %right144, null
  br i1 %eqtmpX145, label %cond_jump_then146, label %cond_end147

cond_jump_then146:                                ; preds = %cond_end143
  %169 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %170 = bitcast i8* %169 to %sParserInfo**
  %info148 = load %sParserInfo*, %sParserInfo** %170, align 8
  call void @parser_err_msg(%sParserInfo* %info148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.91, i32 0, i32 0))
  br label %cond_end147

cond_end147:                                      ; preds = %cond_jump_then146, %cond_end143
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %172 = bitcast i8* %171 to %sCLNode***
  %node149 = load %sCLNode**, %sCLNode*** %172, align 8
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %174 = bitcast i8* %173 to %sCLNode***
  %node150 = load %sCLNode**, %sCLNode*** %174, align 8
  %derefference_value151 = load %sCLNode*, %sCLNode** %node150, align 8
  %right152 = load %sCLNode*, %sCLNode** %right138, align 8
  %175 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %176 = bitcast i8* %175 to %sParserInfo**
  %info153 = load %sParserInfo*, %sParserInfo** %176, align 8
  %177 = call %sCLNode* @sNodeTree_create_primitive_minus(%sCLNode* %derefference_value151, %sCLNode* %right152, %sParserInfo* %info153)
  store %sCLNode* %177, %sCLNode** %node149, align 8
  br label %cond_end26

after_break:                                      ; No predecessors!
  br label %cond_end26
}

define i1 @expression_comparison_operator(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i1 @expression_plus_minus(%sCLNode** %node3, %sParserInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %node5 = load %sCLNode**, %sCLNode*** %node1, align 8
  %derefference_value = load %sCLNode*, %sCLNode** %node5, align 8
  %eqtmpX = icmp eq %sCLNode* %derefference_value, null
  br i1 %eqtmpX, label %cond_jump_then6, label %cond_end7

cond_jump_then6:                                  ; preds = %cond_end
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 true

cond_end7:                                        ; preds = %cond_end
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end18, %cond_end7
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %derefference_value9 = load i8, i8* %10, align 8
  %11 = icmp ne i8 %derefference_value9, 0
  br i1 %11, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %13 = bitcast i8* %12 to %sParserInfo**
  %info10 = load %sParserInfo*, %sParserInfo** %13, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %derefference_value11 = load i8, i8* %15, align 8
  %eqtmpX12 = icmp eq i8 %derefference_value11, 62
  store i1 %eqtmpX12, i1* %andand_result_var, align 1
  br i1 %eqtmpX12, label %cond_jump_then13, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true

cond_jump_then13:                                 ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info14 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info14, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i64
  %addtmp = add nsw i64 %22, 1
  %23 = inttoptr i64 %addtmp to i8*
  %derefference_value15 = load i8, i8* %23, align 8
  %eqtmpX16 = icmp eq i8 %derefference_value15, 61
  %andand = and i1 %eqtmpX12, %eqtmpX16
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then13, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then17, label %"cond_jump_elif0\0A"

cond_jump_then17:                                 ; preds = %cond_jump_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %25 = bitcast i8* %24 to %sParserInfo**
  %info19 = load %sParserInfo*, %sParserInfo** %25, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %27 = bitcast i8* %26 to %sParserInfo**
  %info20 = load %sParserInfo*, %sParserInfo** %27, align 8
  %28 = getelementptr inbounds %sParserInfo, %sParserInfo* %info20, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %addtmp21 = add nsw i64 %30, 2
  %31 = inttoptr i64 %addtmp21 to i8*
  %32 = getelementptr inbounds %sParserInfo, %sParserInfo* %info19, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = ptrtoint i8* %31 to i64
  %subtmp = sub nsw i64 %33, 2
  %34 = inttoptr i64 %subtmp to i8*
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %36 = bitcast i8* %35 to %sParserInfo**
  %info22 = load %sParserInfo*, %sParserInfo** %36, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info22)
  %right = alloca %sCLNode*
  %37 = bitcast %sCLNode** %right to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right, align 8
  %right23 = load %sCLNode*, %sCLNode** %right, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sParserInfo**
  %info24 = load %sParserInfo*, %sParserInfo** %39, align 8
  %40 = call i1 @expression_plus_minus(%sCLNode** %right, %sParserInfo* %info24)
  %LOGICAL_DIANEAL25 = icmp eq i1 %40, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end
  %andand_result_var38 = alloca i1
  %andand_result_var39 = alloca i1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info40 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info40, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %derefference_value41 = load i8, i8* %44, align 8
  %eqtmpX42 = icmp eq i8 %derefference_value41, 92
  store i1 %eqtmpX42, i1* %andand_result_var39, align 1
  br i1 %eqtmpX42, label %cond_jump_then43, label %cond_jump_end44

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end52
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %46 = bitcast i8* %45 to %sParserInfo**
  %info59 = load %sParserInfo*, %sParserInfo** %46, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sParserInfo**
  %info60 = load %sParserInfo*, %sParserInfo** %48, align 8
  %49 = getelementptr inbounds %sParserInfo, %sParserInfo* %info60, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %addtmp61 = add nsw i64 %51, 3
  %52 = inttoptr i64 %addtmp61 to i8*
  %53 = getelementptr inbounds %sParserInfo, %sParserInfo* %info59, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = ptrtoint i8* %52 to i64
  %subtmp62 = sub nsw i64 %54, 3
  %55 = inttoptr i64 %subtmp62 to i8*
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sParserInfo**
  %info63 = load %sParserInfo*, %sParserInfo** %57, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info63)
  %right64 = alloca %sCLNode*
  %58 = bitcast %sCLNode** %right64 to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right64, align 8
  %right65 = load %sCLNode*, %sCLNode** %right64, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %60 = bitcast i8* %59 to %sParserInfo**
  %info66 = load %sParserInfo*, %sParserInfo** %60, align 8
  %61 = call i1 @expression_plus_minus(%sCLNode** %right64, %sParserInfo* %info66)
  %LOGICAL_DIANEAL67 = icmp eq i1 %61, false
  br i1 %LOGICAL_DIANEAL67, label %cond_jump_then68, label %cond_end69

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end52
  %andand_result_var80 = alloca i1
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sParserInfo**
  %info81 = load %sParserInfo*, %sParserInfo** %63, align 8
  %64 = getelementptr inbounds %sParserInfo, %sParserInfo* %info81, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %derefference_value82 = load i8, i8* %65, align 8
  %eqtmpX83 = icmp eq i8 %derefference_value82, 60
  store i1 %eqtmpX83, i1* %andand_result_var80, align 1
  br i1 %eqtmpX83, label %cond_jump_then84, label %cond_jump_end85

"cond_jump_elif_then1\0A":                        ; preds = %cond_jump_end85
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %67 = bitcast i8* %66 to %sParserInfo**
  %info92 = load %sParserInfo*, %sParserInfo** %67, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %69 = bitcast i8* %68 to %sParserInfo**
  %info93 = load %sParserInfo*, %sParserInfo** %69, align 8
  %70 = getelementptr inbounds %sParserInfo, %sParserInfo* %info93, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %71 to i64
  %addtmp94 = add nsw i64 %72, 2
  %73 = inttoptr i64 %addtmp94 to i8*
  %74 = getelementptr inbounds %sParserInfo, %sParserInfo* %info92, i32 0, i32 4
  store i8* %73, i8** %74, align 8
  %75 = ptrtoint i8* %73 to i64
  %subtmp95 = sub nsw i64 %75, 2
  %76 = inttoptr i64 %subtmp95 to i8*
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %78 = bitcast i8* %77 to %sParserInfo**
  %info96 = load %sParserInfo*, %sParserInfo** %78, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info96)
  %right97 = alloca %sCLNode*
  %79 = bitcast %sCLNode** %right97 to i8*
  store i8* %79, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right97, align 8
  %right98 = load %sCLNode*, %sCLNode** %right97, align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %81 = bitcast i8* %80 to %sParserInfo**
  %info99 = load %sParserInfo*, %sParserInfo** %81, align 8
  %82 = call i1 @expression_plus_minus(%sCLNode** %right97, %sParserInfo* %info99)
  %LOGICAL_DIANEAL100 = icmp eq i1 %82, false
  br i1 %LOGICAL_DIANEAL100, label %cond_jump_then101, label %cond_end102

"cond_jump_elif2\0A":                             ; preds = %cond_jump_end85
  %andand_result_var113 = alloca i1
  %andand_result_var114 = alloca i1
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %84 = bitcast i8* %83 to %sParserInfo**
  %info115 = load %sParserInfo*, %sParserInfo** %84, align 8
  %85 = getelementptr inbounds %sParserInfo, %sParserInfo* %info115, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %derefference_value116 = load i8, i8* %86, align 8
  %eqtmpX117 = icmp eq i8 %derefference_value116, 92
  store i1 %eqtmpX117, i1* %andand_result_var114, align 1
  br i1 %eqtmpX117, label %cond_jump_then118, label %cond_jump_end119

"cond_jump_elif_then2\0A":                        ; preds = %cond_jump_end127
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %88 = bitcast i8* %87 to %sParserInfo**
  %info134 = load %sParserInfo*, %sParserInfo** %88, align 8
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %90 = bitcast i8* %89 to %sParserInfo**
  %info135 = load %sParserInfo*, %sParserInfo** %90, align 8
  %91 = getelementptr inbounds %sParserInfo, %sParserInfo* %info135, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %92 to i64
  %addtmp136 = add nsw i64 %93, 3
  %94 = inttoptr i64 %addtmp136 to i8*
  %95 = getelementptr inbounds %sParserInfo, %sParserInfo* %info134, i32 0, i32 4
  store i8* %94, i8** %95, align 8
  %96 = ptrtoint i8* %94 to i64
  %subtmp137 = sub nsw i64 %96, 3
  %97 = inttoptr i64 %subtmp137 to i8*
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %99 = bitcast i8* %98 to %sParserInfo**
  %info138 = load %sParserInfo*, %sParserInfo** %99, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info138)
  %right139 = alloca %sCLNode*
  %100 = bitcast %sCLNode** %right139 to i8*
  store i8* %100, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right139, align 8
  %right140 = load %sCLNode*, %sCLNode** %right139, align 8
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %102 = bitcast i8* %101 to %sParserInfo**
  %info141 = load %sParserInfo*, %sParserInfo** %102, align 8
  %103 = call i1 @expression_plus_minus(%sCLNode** %right139, %sParserInfo* %info141)
  %LOGICAL_DIANEAL142 = icmp eq i1 %103, false
  br i1 %LOGICAL_DIANEAL142, label %cond_jump_then143, label %cond_end144

"cond_jump_elif3\0A":                             ; preds = %cond_jump_end127
  %andand_result_var155 = alloca i1
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %105 = bitcast i8* %104 to %sParserInfo**
  %info156 = load %sParserInfo*, %sParserInfo** %105, align 8
  %106 = getelementptr inbounds %sParserInfo, %sParserInfo* %info156, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %derefference_value157 = load i8, i8* %107, align 8
  %eqtmpX158 = icmp eq i8 %derefference_value157, 62
  store i1 %eqtmpX158, i1* %andand_result_var155, align 1
  br i1 %eqtmpX158, label %cond_jump_then159, label %cond_jump_end160

"cond_jump_elif_then3\0A":                        ; preds = %cond_jump_end160
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %109 = bitcast i8* %108 to %sParserInfo**
  %info166 = load %sParserInfo*, %sParserInfo** %109, align 8
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %111 = bitcast i8* %110 to %sParserInfo**
  %info167 = load %sParserInfo*, %sParserInfo** %111, align 8
  %112 = getelementptr inbounds %sParserInfo, %sParserInfo* %info167, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i64
  %addtmp168 = add nsw i64 %114, 1
  %115 = inttoptr i64 %addtmp168 to i8*
  %116 = getelementptr inbounds %sParserInfo, %sParserInfo* %info166, i32 0, i32 4
  store i8* %115, i8** %116, align 8
  %117 = ptrtoint i8* %115 to i64
  %subtmp169 = sub nsw i64 %117, 1
  %118 = inttoptr i64 %subtmp169 to i8*
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %120 = bitcast i8* %119 to %sParserInfo**
  %info170 = load %sParserInfo*, %sParserInfo** %120, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info170)
  %right171 = alloca %sCLNode*
  %121 = bitcast %sCLNode** %right171 to i8*
  store i8* %121, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right171, align 8
  %right172 = load %sCLNode*, %sCLNode** %right171, align 8
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %123 = bitcast i8* %122 to %sParserInfo**
  %info173 = load %sParserInfo*, %sParserInfo** %123, align 8
  %124 = call i1 @expression_plus_minus(%sCLNode** %right171, %sParserInfo* %info173)
  %LOGICAL_DIANEAL174 = icmp eq i1 %124, false
  br i1 %LOGICAL_DIANEAL174, label %cond_jump_then175, label %cond_end176

"cond_jump_elif4\0A":                             ; preds = %cond_jump_end160
  %andand_result_var187 = alloca i1
  %andand_result_var188 = alloca i1
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %126 = bitcast i8* %125 to %sParserInfo**
  %info189 = load %sParserInfo*, %sParserInfo** %126, align 8
  %127 = getelementptr inbounds %sParserInfo, %sParserInfo* %info189, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %derefference_value190 = load i8, i8* %128, align 8
  %eqtmpX191 = icmp eq i8 %derefference_value190, 92
  store i1 %eqtmpX191, i1* %andand_result_var188, align 1
  br i1 %eqtmpX191, label %cond_jump_then192, label %cond_jump_end193

"cond_jump_elif_then4\0A":                        ; preds = %cond_jump_end201
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %130 = bitcast i8* %129 to %sParserInfo**
  %info208 = load %sParserInfo*, %sParserInfo** %130, align 8
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %132 = bitcast i8* %131 to %sParserInfo**
  %info209 = load %sParserInfo*, %sParserInfo** %132, align 8
  %133 = getelementptr inbounds %sParserInfo, %sParserInfo* %info209, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %134 to i64
  %addtmp210 = add nsw i64 %135, 2
  %136 = inttoptr i64 %addtmp210 to i8*
  %137 = getelementptr inbounds %sParserInfo, %sParserInfo* %info208, i32 0, i32 4
  store i8* %136, i8** %137, align 8
  %138 = ptrtoint i8* %136 to i64
  %subtmp211 = sub nsw i64 %138, 2
  %139 = inttoptr i64 %subtmp211 to i8*
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %141 = bitcast i8* %140 to %sParserInfo**
  %info212 = load %sParserInfo*, %sParserInfo** %141, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info212)
  %right213 = alloca %sCLNode*
  %142 = bitcast %sCLNode** %right213 to i8*
  store i8* %142, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right213, align 8
  %right214 = load %sCLNode*, %sCLNode** %right213, align 8
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %144 = bitcast i8* %143 to %sParserInfo**
  %info215 = load %sParserInfo*, %sParserInfo** %144, align 8
  %145 = call i1 @expression_plus_minus(%sCLNode** %right213, %sParserInfo* %info215)
  %LOGICAL_DIANEAL216 = icmp eq i1 %145, false
  br i1 %LOGICAL_DIANEAL216, label %cond_jump_then217, label %cond_end218

"cond_jump_elif5\0A":                             ; preds = %cond_jump_end201
  %andand_result_var229 = alloca i1
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %147 = bitcast i8* %146 to %sParserInfo**
  %info230 = load %sParserInfo*, %sParserInfo** %147, align 8
  %148 = getelementptr inbounds %sParserInfo, %sParserInfo* %info230, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %derefference_value231 = load i8, i8* %149, align 8
  %eqtmpX232 = icmp eq i8 %derefference_value231, 60
  store i1 %eqtmpX232, i1* %andand_result_var229, align 1
  br i1 %eqtmpX232, label %cond_jump_then233, label %cond_jump_end234

"cond_jump_elif_then5\0A":                        ; preds = %cond_jump_end234
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %151 = bitcast i8* %150 to %sParserInfo**
  %info241 = load %sParserInfo*, %sParserInfo** %151, align 8
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %153 = bitcast i8* %152 to %sParserInfo**
  %info242 = load %sParserInfo*, %sParserInfo** %153, align 8
  %154 = getelementptr inbounds %sParserInfo, %sParserInfo* %info242, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = ptrtoint i8* %155 to i64
  %addtmp243 = add nsw i64 %156, 1
  %157 = inttoptr i64 %addtmp243 to i8*
  %158 = getelementptr inbounds %sParserInfo, %sParserInfo* %info241, i32 0, i32 4
  store i8* %157, i8** %158, align 8
  %159 = ptrtoint i8* %157 to i64
  %subtmp244 = sub nsw i64 %159, 1
  %160 = inttoptr i64 %subtmp244 to i8*
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %162 = bitcast i8* %161 to %sParserInfo**
  %info245 = load %sParserInfo*, %sParserInfo** %162, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info245)
  %right246 = alloca %sCLNode*
  %163 = bitcast %sCLNode** %right246 to i8*
  store i8* %163, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right246, align 8
  %right247 = load %sCLNode*, %sCLNode** %right246, align 8
  %164 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %165 = bitcast i8* %164 to %sParserInfo**
  %info248 = load %sParserInfo*, %sParserInfo** %165, align 8
  %166 = call i1 @expression_plus_minus(%sCLNode** %right246, %sParserInfo* %info248)
  %LOGICAL_DIANEAL249 = icmp eq i1 %166, false
  br i1 %LOGICAL_DIANEAL249, label %cond_jump_then250, label %cond_end251

"cond_jump_elif6\0A":                             ; preds = %cond_jump_end234
  %andand_result_var262 = alloca i1
  %andand_result_var263 = alloca i1
  %167 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %168 = bitcast i8* %167 to %sParserInfo**
  %info264 = load %sParserInfo*, %sParserInfo** %168, align 8
  %169 = getelementptr inbounds %sParserInfo, %sParserInfo* %info264, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %derefference_value265 = load i8, i8* %170, align 8
  %eqtmpX266 = icmp eq i8 %derefference_value265, 92
  store i1 %eqtmpX266, i1* %andand_result_var263, align 1
  br i1 %eqtmpX266, label %cond_jump_then267, label %cond_jump_end268

"cond_jump_elif_then6\0A":                        ; preds = %cond_jump_end276
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %172 = bitcast i8* %171 to %sParserInfo**
  %info283 = load %sParserInfo*, %sParserInfo** %172, align 8
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %174 = bitcast i8* %173 to %sParserInfo**
  %info284 = load %sParserInfo*, %sParserInfo** %174, align 8
  %175 = getelementptr inbounds %sParserInfo, %sParserInfo* %info284, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %176 to i64
  %addtmp285 = add nsw i64 %177, 2
  %178 = inttoptr i64 %addtmp285 to i8*
  %179 = getelementptr inbounds %sParserInfo, %sParserInfo* %info283, i32 0, i32 4
  store i8* %178, i8** %179, align 8
  %180 = ptrtoint i8* %178 to i64
  %subtmp286 = sub nsw i64 %180, 2
  %181 = inttoptr i64 %subtmp286 to i8*
  %182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %183 = bitcast i8* %182 to %sParserInfo**
  %info287 = load %sParserInfo*, %sParserInfo** %183, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info287)
  %right288 = alloca %sCLNode*
  %184 = bitcast %sCLNode** %right288 to i8*
  store i8* %184, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right288, align 8
  %right289 = load %sCLNode*, %sCLNode** %right288, align 8
  %185 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %186 = bitcast i8* %185 to %sParserInfo**
  %info290 = load %sParserInfo*, %sParserInfo** %186, align 8
  %187 = call i1 @expression_plus_minus(%sCLNode** %right288, %sParserInfo* %info290)
  %LOGICAL_DIANEAL291 = icmp eq i1 %187, false
  br i1 %LOGICAL_DIANEAL291, label %cond_jump_then292, label %cond_end293

cond_else_block:                                  ; preds = %cond_jump_end276
  br label %cond_end_block

cond_end18:                                       ; preds = %after_break, %cond_end297, %cond_end255, %cond_end222, %cond_end180, %cond_end148, %cond_end106, %cond_end73, %cond_end31
  br label %loop_top_block

cond_jump_then26:                                 ; preds = %cond_jump_then17
  %188 = bitcast [8192 x i8*]* %lvtable to i8*
  %189 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %188, i64 65536)
  ret i1 false

cond_end27:                                       ; preds = %cond_jump_then17
  %right28 = load %sCLNode*, %sCLNode** %right, align 8
  %eqtmpX29 = icmp eq %sCLNode* %right28, null
  br i1 %eqtmpX29, label %cond_jump_then30, label %cond_end31

cond_jump_then30:                                 ; preds = %cond_end27
  %190 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %191 = bitcast i8* %190 to %sParserInfo**
  %info32 = load %sParserInfo*, %sParserInfo** %191, align 8
  call void @parser_err_msg(%sParserInfo* %info32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.92, i32 0, i32 0))
  %192 = bitcast [8192 x i8*]* %lvtable to i8*
  %193 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %192, i64 65536)
  ret i1 true

cond_end31:                                       ; preds = %cond_end27
  %194 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %195 = bitcast i8* %194 to %sCLNode***
  %node33 = load %sCLNode**, %sCLNode*** %195, align 8
  %196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %197 = bitcast i8* %196 to %sCLNode***
  %node34 = load %sCLNode**, %sCLNode*** %197, align 8
  %derefference_value35 = load %sCLNode*, %sCLNode** %node34, align 8
  %right36 = load %sCLNode*, %sCLNode** %right, align 8
  %198 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %199 = bitcast i8* %198 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %199, align 8
  %200 = call %sCLNode* @sNodeTree_create_greater_equal(%sCLNode* %derefference_value35, %sCLNode* %right36, %sParserInfo* %info37)
  store %sCLNode* %200, %sCLNode** %node33, align 8
  br label %cond_end18

cond_jump_then43:                                 ; preds = %"cond_jump_elif0\0A"
  %201 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %202 = bitcast i8* %201 to %sParserInfo**
  %info45 = load %sParserInfo*, %sParserInfo** %202, align 8
  %203 = getelementptr inbounds %sParserInfo, %sParserInfo* %info45, i32 0, i32 4
  %204 = load i8*, i8** %203, align 8
  %205 = ptrtoint i8* %204 to i64
  %addtmp46 = add nsw i64 %205, 1
  %206 = inttoptr i64 %addtmp46 to i8*
  %derefference_value47 = load i8, i8* %206, align 8
  %eqtmpX48 = icmp eq i8 %derefference_value47, 62
  %andand49 = and i1 %eqtmpX42, %eqtmpX48
  store i1 %andand49, i1* %andand_result_var39, align 1
  br label %cond_jump_end44

cond_jump_end44:                                  ; preds = %cond_jump_then43, %"cond_jump_elif0\0A"
  %andand_result_value50 = load i1, i1* %andand_result_var39, align 1
  store i1 %andand_result_value50, i1* %andand_result_var38, align 1
  br i1 %andand_result_value50, label %cond_jump_then51, label %cond_jump_end52

cond_jump_then51:                                 ; preds = %cond_jump_end44
  %207 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %208 = bitcast i8* %207 to %sParserInfo**
  %info53 = load %sParserInfo*, %sParserInfo** %208, align 8
  %209 = getelementptr inbounds %sParserInfo, %sParserInfo* %info53, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %210 to i64
  %addtmp54 = add nsw i64 %211, 2
  %212 = inttoptr i64 %addtmp54 to i8*
  %derefference_value55 = load i8, i8* %212, align 8
  %eqtmpX56 = icmp eq i8 %derefference_value55, 61
  %andand57 = and i1 %andand_result_value50, %eqtmpX56
  store i1 %andand57, i1* %andand_result_var38, align 1
  br label %cond_jump_end52

cond_jump_end52:                                  ; preds = %cond_jump_then51, %cond_jump_end44
  %andand_result_value58 = load i1, i1* %andand_result_var38, align 1
  br i1 %andand_result_value58, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

cond_jump_then68:                                 ; preds = %"cond_jump_elif_then0\0A"
  %213 = bitcast [8192 x i8*]* %lvtable to i8*
  %214 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %213, i64 65536)
  ret i1 false

cond_end69:                                       ; preds = %"cond_jump_elif_then0\0A"
  %right70 = load %sCLNode*, %sCLNode** %right64, align 8
  %eqtmpX71 = icmp eq %sCLNode* %right70, null
  br i1 %eqtmpX71, label %cond_jump_then72, label %cond_end73

cond_jump_then72:                                 ; preds = %cond_end69
  %215 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %216 = bitcast i8* %215 to %sParserInfo**
  %info74 = load %sParserInfo*, %sParserInfo** %216, align 8
  call void @parser_err_msg(%sParserInfo* %info74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.93, i32 0, i32 0))
  %217 = bitcast [8192 x i8*]* %lvtable to i8*
  %218 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %217, i64 65536)
  ret i1 true

cond_end73:                                       ; preds = %cond_end69
  %219 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %220 = bitcast i8* %219 to %sCLNode***
  %node75 = load %sCLNode**, %sCLNode*** %220, align 8
  %221 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %222 = bitcast i8* %221 to %sCLNode***
  %node76 = load %sCLNode**, %sCLNode*** %222, align 8
  %derefference_value77 = load %sCLNode*, %sCLNode** %node76, align 8
  %right78 = load %sCLNode*, %sCLNode** %right64, align 8
  %223 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %224 = bitcast i8* %223 to %sParserInfo**
  %info79 = load %sParserInfo*, %sParserInfo** %224, align 8
  %225 = call %sCLNode* @sNodeTree_create_primitive_greater_equal(%sCLNode* %derefference_value77, %sCLNode* %right78, %sParserInfo* %info79)
  store %sCLNode* %225, %sCLNode** %node75, align 8
  br label %cond_end18

cond_jump_then84:                                 ; preds = %"cond_jump_elif1\0A"
  %226 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %227 = bitcast i8* %226 to %sParserInfo**
  %info86 = load %sParserInfo*, %sParserInfo** %227, align 8
  %228 = getelementptr inbounds %sParserInfo, %sParserInfo* %info86, i32 0, i32 4
  %229 = load i8*, i8** %228, align 8
  %230 = ptrtoint i8* %229 to i64
  %addtmp87 = add nsw i64 %230, 1
  %231 = inttoptr i64 %addtmp87 to i8*
  %derefference_value88 = load i8, i8* %231, align 8
  %eqtmpX89 = icmp eq i8 %derefference_value88, 61
  %andand90 = and i1 %eqtmpX83, %eqtmpX89
  store i1 %andand90, i1* %andand_result_var80, align 1
  br label %cond_jump_end85

cond_jump_end85:                                  ; preds = %cond_jump_then84, %"cond_jump_elif1\0A"
  %andand_result_value91 = load i1, i1* %andand_result_var80, align 1
  br i1 %andand_result_value91, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

cond_jump_then101:                                ; preds = %"cond_jump_elif_then1\0A"
  %232 = bitcast [8192 x i8*]* %lvtable to i8*
  %233 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %232, i64 65536)
  ret i1 false

cond_end102:                                      ; preds = %"cond_jump_elif_then1\0A"
  %right103 = load %sCLNode*, %sCLNode** %right97, align 8
  %eqtmpX104 = icmp eq %sCLNode* %right103, null
  br i1 %eqtmpX104, label %cond_jump_then105, label %cond_end106

cond_jump_then105:                                ; preds = %cond_end102
  %234 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %235 = bitcast i8* %234 to %sParserInfo**
  %info107 = load %sParserInfo*, %sParserInfo** %235, align 8
  call void @parser_err_msg(%sParserInfo* %info107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.94, i32 0, i32 0))
  %236 = bitcast [8192 x i8*]* %lvtable to i8*
  %237 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %236, i64 65536)
  ret i1 true

cond_end106:                                      ; preds = %cond_end102
  %238 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %239 = bitcast i8* %238 to %sCLNode***
  %node108 = load %sCLNode**, %sCLNode*** %239, align 8
  %240 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %241 = bitcast i8* %240 to %sCLNode***
  %node109 = load %sCLNode**, %sCLNode*** %241, align 8
  %derefference_value110 = load %sCLNode*, %sCLNode** %node109, align 8
  %right111 = load %sCLNode*, %sCLNode** %right97, align 8
  %242 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %243 = bitcast i8* %242 to %sParserInfo**
  %info112 = load %sParserInfo*, %sParserInfo** %243, align 8
  %244 = call %sCLNode* @sNodeTree_create_lesser_equal(%sCLNode* %derefference_value110, %sCLNode* %right111, %sParserInfo* %info112)
  store %sCLNode* %244, %sCLNode** %node108, align 8
  br label %cond_end18

cond_jump_then118:                                ; preds = %"cond_jump_elif2\0A"
  %245 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %246 = bitcast i8* %245 to %sParserInfo**
  %info120 = load %sParserInfo*, %sParserInfo** %246, align 8
  %247 = getelementptr inbounds %sParserInfo, %sParserInfo* %info120, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = ptrtoint i8* %248 to i64
  %addtmp121 = add nsw i64 %249, 1
  %250 = inttoptr i64 %addtmp121 to i8*
  %derefference_value122 = load i8, i8* %250, align 8
  %eqtmpX123 = icmp eq i8 %derefference_value122, 60
  %andand124 = and i1 %eqtmpX117, %eqtmpX123
  store i1 %andand124, i1* %andand_result_var114, align 1
  br label %cond_jump_end119

cond_jump_end119:                                 ; preds = %cond_jump_then118, %"cond_jump_elif2\0A"
  %andand_result_value125 = load i1, i1* %andand_result_var114, align 1
  store i1 %andand_result_value125, i1* %andand_result_var113, align 1
  br i1 %andand_result_value125, label %cond_jump_then126, label %cond_jump_end127

cond_jump_then126:                                ; preds = %cond_jump_end119
  %251 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %252 = bitcast i8* %251 to %sParserInfo**
  %info128 = load %sParserInfo*, %sParserInfo** %252, align 8
  %253 = getelementptr inbounds %sParserInfo, %sParserInfo* %info128, i32 0, i32 4
  %254 = load i8*, i8** %253, align 8
  %255 = ptrtoint i8* %254 to i64
  %addtmp129 = add nsw i64 %255, 2
  %256 = inttoptr i64 %addtmp129 to i8*
  %derefference_value130 = load i8, i8* %256, align 8
  %eqtmpX131 = icmp eq i8 %derefference_value130, 61
  %andand132 = and i1 %andand_result_value125, %eqtmpX131
  store i1 %andand132, i1* %andand_result_var113, align 1
  br label %cond_jump_end127

cond_jump_end127:                                 ; preds = %cond_jump_then126, %cond_jump_end119
  %andand_result_value133 = load i1, i1* %andand_result_var113, align 1
  br i1 %andand_result_value133, label %"cond_jump_elif_then2\0A", label %"cond_jump_elif3\0A"

cond_jump_then143:                                ; preds = %"cond_jump_elif_then2\0A"
  %257 = bitcast [8192 x i8*]* %lvtable to i8*
  %258 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %257, i64 65536)
  ret i1 false

cond_end144:                                      ; preds = %"cond_jump_elif_then2\0A"
  %right145 = load %sCLNode*, %sCLNode** %right139, align 8
  %eqtmpX146 = icmp eq %sCLNode* %right145, null
  br i1 %eqtmpX146, label %cond_jump_then147, label %cond_end148

cond_jump_then147:                                ; preds = %cond_end144
  %259 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %260 = bitcast i8* %259 to %sParserInfo**
  %info149 = load %sParserInfo*, %sParserInfo** %260, align 8
  call void @parser_err_msg(%sParserInfo* %info149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.95, i32 0, i32 0))
  %261 = bitcast [8192 x i8*]* %lvtable to i8*
  %262 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %261, i64 65536)
  ret i1 true

cond_end148:                                      ; preds = %cond_end144
  %263 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %264 = bitcast i8* %263 to %sCLNode***
  %node150 = load %sCLNode**, %sCLNode*** %264, align 8
  %265 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %266 = bitcast i8* %265 to %sCLNode***
  %node151 = load %sCLNode**, %sCLNode*** %266, align 8
  %derefference_value152 = load %sCLNode*, %sCLNode** %node151, align 8
  %right153 = load %sCLNode*, %sCLNode** %right139, align 8
  %267 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %268 = bitcast i8* %267 to %sParserInfo**
  %info154 = load %sParserInfo*, %sParserInfo** %268, align 8
  %269 = call %sCLNode* @sNodeTree_create_primitive_lesser_equal(%sCLNode* %derefference_value152, %sCLNode* %right153, %sParserInfo* %info154)
  store %sCLNode* %269, %sCLNode** %node150, align 8
  br label %cond_end18

cond_jump_then159:                                ; preds = %"cond_jump_elif3\0A"
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %271 = bitcast i8* %270 to %sParserInfo**
  %info161 = load %sParserInfo*, %sParserInfo** %271, align 8
  %272 = getelementptr inbounds %sParserInfo, %sParserInfo* %info161, i32 0, i32 4
  %273 = load i8*, i8** %272, align 8
  %274 = ptrtoint i8* %273 to i64
  %addtmp162 = add nsw i64 %274, 1
  %275 = inttoptr i64 %addtmp162 to i8*
  %derefference_value163 = load i8, i8* %275, align 8
  %noteqtmp = icmp ne i8 %derefference_value163, 62
  %andand164 = and i1 %eqtmpX158, %noteqtmp
  store i1 %andand164, i1* %andand_result_var155, align 1
  br label %cond_jump_end160

cond_jump_end160:                                 ; preds = %cond_jump_then159, %"cond_jump_elif3\0A"
  %andand_result_value165 = load i1, i1* %andand_result_var155, align 1
  br i1 %andand_result_value165, label %"cond_jump_elif_then3\0A", label %"cond_jump_elif4\0A"

cond_jump_then175:                                ; preds = %"cond_jump_elif_then3\0A"
  %276 = bitcast [8192 x i8*]* %lvtable to i8*
  %277 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %276, i64 65536)
  ret i1 false

cond_end176:                                      ; preds = %"cond_jump_elif_then3\0A"
  %right177 = load %sCLNode*, %sCLNode** %right171, align 8
  %eqtmpX178 = icmp eq %sCLNode* %right177, null
  br i1 %eqtmpX178, label %cond_jump_then179, label %cond_end180

cond_jump_then179:                                ; preds = %cond_end176
  %278 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %279 = bitcast i8* %278 to %sParserInfo**
  %info181 = load %sParserInfo*, %sParserInfo** %279, align 8
  call void @parser_err_msg(%sParserInfo* %info181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.96, i32 0, i32 0))
  %280 = bitcast [8192 x i8*]* %lvtable to i8*
  %281 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %280, i64 65536)
  ret i1 true

cond_end180:                                      ; preds = %cond_end176
  %282 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %283 = bitcast i8* %282 to %sCLNode***
  %node182 = load %sCLNode**, %sCLNode*** %283, align 8
  %284 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %285 = bitcast i8* %284 to %sCLNode***
  %node183 = load %sCLNode**, %sCLNode*** %285, align 8
  %derefference_value184 = load %sCLNode*, %sCLNode** %node183, align 8
  %right185 = load %sCLNode*, %sCLNode** %right171, align 8
  %286 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %287 = bitcast i8* %286 to %sParserInfo**
  %info186 = load %sParserInfo*, %sParserInfo** %287, align 8
  %288 = call %sCLNode* @sNodeTree_create_greater(%sCLNode* %derefference_value184, %sCLNode* %right185, %sParserInfo* %info186)
  store %sCLNode* %288, %sCLNode** %node182, align 8
  br label %cond_end18

cond_jump_then192:                                ; preds = %"cond_jump_elif4\0A"
  %289 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %290 = bitcast i8* %289 to %sParserInfo**
  %info194 = load %sParserInfo*, %sParserInfo** %290, align 8
  %291 = getelementptr inbounds %sParserInfo, %sParserInfo* %info194, i32 0, i32 4
  %292 = load i8*, i8** %291, align 8
  %293 = ptrtoint i8* %292 to i64
  %addtmp195 = add nsw i64 %293, 1
  %294 = inttoptr i64 %addtmp195 to i8*
  %derefference_value196 = load i8, i8* %294, align 8
  %eqtmpX197 = icmp eq i8 %derefference_value196, 62
  %andand198 = and i1 %eqtmpX191, %eqtmpX197
  store i1 %andand198, i1* %andand_result_var188, align 1
  br label %cond_jump_end193

cond_jump_end193:                                 ; preds = %cond_jump_then192, %"cond_jump_elif4\0A"
  %andand_result_value199 = load i1, i1* %andand_result_var188, align 1
  store i1 %andand_result_value199, i1* %andand_result_var187, align 1
  br i1 %andand_result_value199, label %cond_jump_then200, label %cond_jump_end201

cond_jump_then200:                                ; preds = %cond_jump_end193
  %295 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %296 = bitcast i8* %295 to %sParserInfo**
  %info202 = load %sParserInfo*, %sParserInfo** %296, align 8
  %297 = getelementptr inbounds %sParserInfo, %sParserInfo* %info202, i32 0, i32 4
  %298 = load i8*, i8** %297, align 8
  %299 = ptrtoint i8* %298 to i64
  %addtmp203 = add nsw i64 %299, 2
  %300 = inttoptr i64 %addtmp203 to i8*
  %derefference_value204 = load i8, i8* %300, align 8
  %noteqtmp205 = icmp ne i8 %derefference_value204, 62
  %andand206 = and i1 %andand_result_value199, %noteqtmp205
  store i1 %andand206, i1* %andand_result_var187, align 1
  br label %cond_jump_end201

cond_jump_end201:                                 ; preds = %cond_jump_then200, %cond_jump_end193
  %andand_result_value207 = load i1, i1* %andand_result_var187, align 1
  br i1 %andand_result_value207, label %"cond_jump_elif_then4\0A", label %"cond_jump_elif5\0A"

cond_jump_then217:                                ; preds = %"cond_jump_elif_then4\0A"
  %301 = bitcast [8192 x i8*]* %lvtable to i8*
  %302 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %301, i64 65536)
  ret i1 false

cond_end218:                                      ; preds = %"cond_jump_elif_then4\0A"
  %right219 = load %sCLNode*, %sCLNode** %right213, align 8
  %eqtmpX220 = icmp eq %sCLNode* %right219, null
  br i1 %eqtmpX220, label %cond_jump_then221, label %cond_end222

cond_jump_then221:                                ; preds = %cond_end218
  %303 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %304 = bitcast i8* %303 to %sParserInfo**
  %info223 = load %sParserInfo*, %sParserInfo** %304, align 8
  call void @parser_err_msg(%sParserInfo* %info223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.97, i32 0, i32 0))
  %305 = bitcast [8192 x i8*]* %lvtable to i8*
  %306 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %305, i64 65536)
  ret i1 true

cond_end222:                                      ; preds = %cond_end218
  %307 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %308 = bitcast i8* %307 to %sCLNode***
  %node224 = load %sCLNode**, %sCLNode*** %308, align 8
  %309 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %310 = bitcast i8* %309 to %sCLNode***
  %node225 = load %sCLNode**, %sCLNode*** %310, align 8
  %derefference_value226 = load %sCLNode*, %sCLNode** %node225, align 8
  %right227 = load %sCLNode*, %sCLNode** %right213, align 8
  %311 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %312 = bitcast i8* %311 to %sParserInfo**
  %info228 = load %sParserInfo*, %sParserInfo** %312, align 8
  %313 = call %sCLNode* @sNodeTree_create_primitive_greater(%sCLNode* %derefference_value226, %sCLNode* %right227, %sParserInfo* %info228)
  store %sCLNode* %313, %sCLNode** %node224, align 8
  br label %cond_end18

cond_jump_then233:                                ; preds = %"cond_jump_elif5\0A"
  %314 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %315 = bitcast i8* %314 to %sParserInfo**
  %info235 = load %sParserInfo*, %sParserInfo** %315, align 8
  %316 = getelementptr inbounds %sParserInfo, %sParserInfo* %info235, i32 0, i32 4
  %317 = load i8*, i8** %316, align 8
  %318 = ptrtoint i8* %317 to i64
  %addtmp236 = add nsw i64 %318, 1
  %319 = inttoptr i64 %addtmp236 to i8*
  %derefference_value237 = load i8, i8* %319, align 8
  %noteqtmp238 = icmp ne i8 %derefference_value237, 60
  %andand239 = and i1 %eqtmpX232, %noteqtmp238
  store i1 %andand239, i1* %andand_result_var229, align 1
  br label %cond_jump_end234

cond_jump_end234:                                 ; preds = %cond_jump_then233, %"cond_jump_elif5\0A"
  %andand_result_value240 = load i1, i1* %andand_result_var229, align 1
  br i1 %andand_result_value240, label %"cond_jump_elif_then5\0A", label %"cond_jump_elif6\0A"

cond_jump_then250:                                ; preds = %"cond_jump_elif_then5\0A"
  %320 = bitcast [8192 x i8*]* %lvtable to i8*
  %321 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %320, i64 65536)
  ret i1 false

cond_end251:                                      ; preds = %"cond_jump_elif_then5\0A"
  %right252 = load %sCLNode*, %sCLNode** %right246, align 8
  %eqtmpX253 = icmp eq %sCLNode* %right252, null
  br i1 %eqtmpX253, label %cond_jump_then254, label %cond_end255

cond_jump_then254:                                ; preds = %cond_end251
  %322 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %323 = bitcast i8* %322 to %sParserInfo**
  %info256 = load %sParserInfo*, %sParserInfo** %323, align 8
  call void @parser_err_msg(%sParserInfo* %info256, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.98, i32 0, i32 0))
  %324 = bitcast [8192 x i8*]* %lvtable to i8*
  %325 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %324, i64 65536)
  ret i1 true

cond_end255:                                      ; preds = %cond_end251
  %326 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %327 = bitcast i8* %326 to %sCLNode***
  %node257 = load %sCLNode**, %sCLNode*** %327, align 8
  %328 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %329 = bitcast i8* %328 to %sCLNode***
  %node258 = load %sCLNode**, %sCLNode*** %329, align 8
  %derefference_value259 = load %sCLNode*, %sCLNode** %node258, align 8
  %right260 = load %sCLNode*, %sCLNode** %right246, align 8
  %330 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %331 = bitcast i8* %330 to %sParserInfo**
  %info261 = load %sParserInfo*, %sParserInfo** %331, align 8
  %332 = call %sCLNode* @sNodeTree_create_lesser(%sCLNode* %derefference_value259, %sCLNode* %right260, %sParserInfo* %info261)
  store %sCLNode* %332, %sCLNode** %node257, align 8
  br label %cond_end18

cond_jump_then267:                                ; preds = %"cond_jump_elif6\0A"
  %333 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %334 = bitcast i8* %333 to %sParserInfo**
  %info269 = load %sParserInfo*, %sParserInfo** %334, align 8
  %335 = getelementptr inbounds %sParserInfo, %sParserInfo* %info269, i32 0, i32 4
  %336 = load i8*, i8** %335, align 8
  %337 = ptrtoint i8* %336 to i64
  %addtmp270 = add nsw i64 %337, 1
  %338 = inttoptr i64 %addtmp270 to i8*
  %derefference_value271 = load i8, i8* %338, align 8
  %eqtmpX272 = icmp eq i8 %derefference_value271, 60
  %andand273 = and i1 %eqtmpX266, %eqtmpX272
  store i1 %andand273, i1* %andand_result_var263, align 1
  br label %cond_jump_end268

cond_jump_end268:                                 ; preds = %cond_jump_then267, %"cond_jump_elif6\0A"
  %andand_result_value274 = load i1, i1* %andand_result_var263, align 1
  store i1 %andand_result_value274, i1* %andand_result_var262, align 1
  br i1 %andand_result_value274, label %cond_jump_then275, label %cond_jump_end276

cond_jump_then275:                                ; preds = %cond_jump_end268
  %339 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %340 = bitcast i8* %339 to %sParserInfo**
  %info277 = load %sParserInfo*, %sParserInfo** %340, align 8
  %341 = getelementptr inbounds %sParserInfo, %sParserInfo* %info277, i32 0, i32 4
  %342 = load i8*, i8** %341, align 8
  %343 = ptrtoint i8* %342 to i64
  %addtmp278 = add nsw i64 %343, 2
  %344 = inttoptr i64 %addtmp278 to i8*
  %derefference_value279 = load i8, i8* %344, align 8
  %noteqtmp280 = icmp ne i8 %derefference_value279, 60
  %andand281 = and i1 %andand_result_value274, %noteqtmp280
  store i1 %andand281, i1* %andand_result_var262, align 1
  br label %cond_jump_end276

cond_jump_end276:                                 ; preds = %cond_jump_then275, %cond_jump_end268
  %andand_result_value282 = load i1, i1* %andand_result_var262, align 1
  br i1 %andand_result_value282, label %"cond_jump_elif_then6\0A", label %cond_else_block

cond_jump_then292:                                ; preds = %"cond_jump_elif_then6\0A"
  %345 = bitcast [8192 x i8*]* %lvtable to i8*
  %346 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %345, i64 65536)
  ret i1 false

cond_end293:                                      ; preds = %"cond_jump_elif_then6\0A"
  %right294 = load %sCLNode*, %sCLNode** %right288, align 8
  %eqtmpX295 = icmp eq %sCLNode* %right294, null
  br i1 %eqtmpX295, label %cond_jump_then296, label %cond_end297

cond_jump_then296:                                ; preds = %cond_end293
  %347 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %348 = bitcast i8* %347 to %sParserInfo**
  %info298 = load %sParserInfo*, %sParserInfo** %348, align 8
  call void @parser_err_msg(%sParserInfo* %info298, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.99, i32 0, i32 0))
  %349 = bitcast [8192 x i8*]* %lvtable to i8*
  %350 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %349, i64 65536)
  ret i1 true

cond_end297:                                      ; preds = %cond_end293
  %351 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %352 = bitcast i8* %351 to %sCLNode***
  %node299 = load %sCLNode**, %sCLNode*** %352, align 8
  %353 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %354 = bitcast i8* %353 to %sCLNode***
  %node300 = load %sCLNode**, %sCLNode*** %354, align 8
  %derefference_value301 = load %sCLNode*, %sCLNode** %node300, align 8
  %right302 = load %sCLNode*, %sCLNode** %right288, align 8
  %355 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %356 = bitcast i8* %355 to %sParserInfo**
  %info303 = load %sParserInfo*, %sParserInfo** %356, align 8
  %357 = call %sCLNode* @sNodeTree_create_primitive_lesser(%sCLNode* %derefference_value301, %sCLNode* %right302, %sParserInfo* %info303)
  store %sCLNode* %357, %sCLNode** %node299, align 8
  br label %cond_end18

after_break:                                      ; No predecessors!
  br label %cond_end18
}

define i1 @expression_comparison_equal_operator(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i1 @expression_comparison_operator(%sCLNode** %node3, %sParserInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %node5 = load %sCLNode**, %sCLNode*** %node1, align 8
  %derefference_value = load %sCLNode*, %sCLNode** %node5, align 8
  %eqtmpX = icmp eq %sCLNode* %derefference_value, null
  br i1 %eqtmpX, label %cond_jump_then6, label %cond_end7

cond_jump_then6:                                  ; preds = %cond_end
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 true

cond_end7:                                        ; preds = %cond_end
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end18, %cond_end7
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %derefference_value9 = load i8, i8* %10, align 8
  %11 = icmp ne i8 %derefference_value9, 0
  br i1 %11, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %13 = bitcast i8* %12 to %sParserInfo**
  %info10 = load %sParserInfo*, %sParserInfo** %13, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %derefference_value11 = load i8, i8* %15, align 8
  %eqtmpX12 = icmp eq i8 %derefference_value11, 61
  store i1 %eqtmpX12, i1* %andand_result_var, align 1
  br i1 %eqtmpX12, label %cond_jump_then13, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true

cond_jump_then13:                                 ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info14 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info14, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i64
  %addtmp = add nsw i64 %22, 1
  %23 = inttoptr i64 %addtmp to i8*
  %derefference_value15 = load i8, i8* %23, align 8
  %eqtmpX16 = icmp eq i8 %derefference_value15, 61
  %andand = and i1 %eqtmpX12, %eqtmpX16
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then13, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then17, label %"cond_jump_elif0\0A"

cond_jump_then17:                                 ; preds = %cond_jump_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %25 = bitcast i8* %24 to %sParserInfo**
  %info19 = load %sParserInfo*, %sParserInfo** %25, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %27 = bitcast i8* %26 to %sParserInfo**
  %info20 = load %sParserInfo*, %sParserInfo** %27, align 8
  %28 = getelementptr inbounds %sParserInfo, %sParserInfo* %info20, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %addtmp21 = add nsw i64 %30, 2
  %31 = inttoptr i64 %addtmp21 to i8*
  %32 = getelementptr inbounds %sParserInfo, %sParserInfo* %info19, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = ptrtoint i8* %31 to i64
  %subtmp = sub nsw i64 %33, 2
  %34 = inttoptr i64 %subtmp to i8*
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %36 = bitcast i8* %35 to %sParserInfo**
  %info22 = load %sParserInfo*, %sParserInfo** %36, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info22)
  %right = alloca %sCLNode*
  %37 = bitcast %sCLNode** %right to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right, align 8
  %right23 = load %sCLNode*, %sCLNode** %right, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sParserInfo**
  %info24 = load %sParserInfo*, %sParserInfo** %39, align 8
  %40 = call i1 @expression_comparison_operator(%sCLNode** %right, %sParserInfo* %info24)
  %LOGICAL_DIANEAL25 = icmp eq i1 %40, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end
  %andand_result_var38 = alloca i1
  %andand_result_var39 = alloca i1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info40 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info40, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %derefference_value41 = load i8, i8* %44, align 8
  %eqtmpX42 = icmp eq i8 %derefference_value41, 92
  store i1 %eqtmpX42, i1* %andand_result_var39, align 1
  br i1 %eqtmpX42, label %cond_jump_then43, label %cond_jump_end44

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end52
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %46 = bitcast i8* %45 to %sParserInfo**
  %info59 = load %sParserInfo*, %sParserInfo** %46, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sParserInfo**
  %info60 = load %sParserInfo*, %sParserInfo** %48, align 8
  %49 = getelementptr inbounds %sParserInfo, %sParserInfo* %info60, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %addtmp61 = add nsw i64 %51, 3
  %52 = inttoptr i64 %addtmp61 to i8*
  %53 = getelementptr inbounds %sParserInfo, %sParserInfo* %info59, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = ptrtoint i8* %52 to i64
  %subtmp62 = sub nsw i64 %54, 3
  %55 = inttoptr i64 %subtmp62 to i8*
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sParserInfo**
  %info63 = load %sParserInfo*, %sParserInfo** %57, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info63)
  %right64 = alloca %sCLNode*
  %58 = bitcast %sCLNode** %right64 to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right64, align 8
  %right65 = load %sCLNode*, %sCLNode** %right64, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %60 = bitcast i8* %59 to %sParserInfo**
  %info66 = load %sParserInfo*, %sParserInfo** %60, align 8
  %61 = call i1 @expression_comparison_operator(%sCLNode** %right64, %sParserInfo* %info66)
  %LOGICAL_DIANEAL67 = icmp eq i1 %61, false
  br i1 %LOGICAL_DIANEAL67, label %cond_jump_then68, label %cond_end69

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end52
  %andand_result_var80 = alloca i1
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sParserInfo**
  %info81 = load %sParserInfo*, %sParserInfo** %63, align 8
  %64 = getelementptr inbounds %sParserInfo, %sParserInfo* %info81, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %derefference_value82 = load i8, i8* %65, align 8
  %eqtmpX83 = icmp eq i8 %derefference_value82, 33
  store i1 %eqtmpX83, i1* %andand_result_var80, align 1
  br i1 %eqtmpX83, label %cond_jump_then84, label %cond_jump_end85

"cond_jump_elif_then1\0A":                        ; preds = %cond_jump_end85
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %67 = bitcast i8* %66 to %sParserInfo**
  %info92 = load %sParserInfo*, %sParserInfo** %67, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %69 = bitcast i8* %68 to %sParserInfo**
  %info93 = load %sParserInfo*, %sParserInfo** %69, align 8
  %70 = getelementptr inbounds %sParserInfo, %sParserInfo* %info93, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %71 to i64
  %addtmp94 = add nsw i64 %72, 2
  %73 = inttoptr i64 %addtmp94 to i8*
  %74 = getelementptr inbounds %sParserInfo, %sParserInfo* %info92, i32 0, i32 4
  store i8* %73, i8** %74, align 8
  %75 = ptrtoint i8* %73 to i64
  %subtmp95 = sub nsw i64 %75, 2
  %76 = inttoptr i64 %subtmp95 to i8*
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %78 = bitcast i8* %77 to %sParserInfo**
  %info96 = load %sParserInfo*, %sParserInfo** %78, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info96)
  %right97 = alloca %sCLNode*
  %79 = bitcast %sCLNode** %right97 to i8*
  store i8* %79, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right97, align 8
  %right98 = load %sCLNode*, %sCLNode** %right97, align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %81 = bitcast i8* %80 to %sParserInfo**
  %info99 = load %sParserInfo*, %sParserInfo** %81, align 8
  %82 = call i1 @expression_comparison_operator(%sCLNode** %right97, %sParserInfo* %info99)
  %LOGICAL_DIANEAL100 = icmp eq i1 %82, false
  br i1 %LOGICAL_DIANEAL100, label %cond_jump_then101, label %cond_end102

"cond_jump_elif2\0A":                             ; preds = %cond_jump_end85
  %andand_result_var113 = alloca i1
  %andand_result_var114 = alloca i1
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %84 = bitcast i8* %83 to %sParserInfo**
  %info115 = load %sParserInfo*, %sParserInfo** %84, align 8
  %85 = getelementptr inbounds %sParserInfo, %sParserInfo* %info115, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %derefference_value116 = load i8, i8* %86, align 8
  %eqtmpX117 = icmp eq i8 %derefference_value116, 92
  store i1 %eqtmpX117, i1* %andand_result_var114, align 1
  br i1 %eqtmpX117, label %cond_jump_then118, label %cond_jump_end119

"cond_jump_elif_then2\0A":                        ; preds = %cond_jump_end127
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %88 = bitcast i8* %87 to %sParserInfo**
  %info134 = load %sParserInfo*, %sParserInfo** %88, align 8
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %90 = bitcast i8* %89 to %sParserInfo**
  %info135 = load %sParserInfo*, %sParserInfo** %90, align 8
  %91 = getelementptr inbounds %sParserInfo, %sParserInfo* %info135, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %92 to i64
  %addtmp136 = add nsw i64 %93, 3
  %94 = inttoptr i64 %addtmp136 to i8*
  %95 = getelementptr inbounds %sParserInfo, %sParserInfo* %info134, i32 0, i32 4
  store i8* %94, i8** %95, align 8
  %96 = ptrtoint i8* %94 to i64
  %subtmp137 = sub nsw i64 %96, 3
  %97 = inttoptr i64 %subtmp137 to i8*
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %99 = bitcast i8* %98 to %sParserInfo**
  %info138 = load %sParserInfo*, %sParserInfo** %99, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info138)
  %right139 = alloca %sCLNode*
  %100 = bitcast %sCLNode** %right139 to i8*
  store i8* %100, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right139, align 8
  %right140 = load %sCLNode*, %sCLNode** %right139, align 8
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %102 = bitcast i8* %101 to %sParserInfo**
  %info141 = load %sParserInfo*, %sParserInfo** %102, align 8
  %103 = call i1 @expression_comparison_operator(%sCLNode** %right139, %sParserInfo* %info141)
  %LOGICAL_DIANEAL142 = icmp eq i1 %103, false
  br i1 %LOGICAL_DIANEAL142, label %cond_jump_then143, label %cond_end144

cond_else_block:                                  ; preds = %cond_jump_end127
  br label %cond_end_block

cond_end18:                                       ; preds = %after_break, %cond_end148, %cond_end106, %cond_end73, %cond_end31
  br label %loop_top_block

cond_jump_then26:                                 ; preds = %cond_jump_then17
  %104 = bitcast [8192 x i8*]* %lvtable to i8*
  %105 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %104, i64 65536)
  ret i1 false

cond_end27:                                       ; preds = %cond_jump_then17
  %right28 = load %sCLNode*, %sCLNode** %right, align 8
  %eqtmpX29 = icmp eq %sCLNode* %right28, null
  br i1 %eqtmpX29, label %cond_jump_then30, label %cond_end31

cond_jump_then30:                                 ; preds = %cond_end27
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %107 = bitcast i8* %106 to %sParserInfo**
  %info32 = load %sParserInfo*, %sParserInfo** %107, align 8
  call void @parser_err_msg(%sParserInfo* %info32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.100, i32 0, i32 0))
  br label %cond_end31

cond_end31:                                       ; preds = %cond_jump_then30, %cond_end27
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %109 = bitcast i8* %108 to %sCLNode***
  %node33 = load %sCLNode**, %sCLNode*** %109, align 8
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %111 = bitcast i8* %110 to %sCLNode***
  %node34 = load %sCLNode**, %sCLNode*** %111, align 8
  %derefference_value35 = load %sCLNode*, %sCLNode** %node34, align 8
  %right36 = load %sCLNode*, %sCLNode** %right, align 8
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %113 = bitcast i8* %112 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %113, align 8
  %114 = call %sCLNode* @sNodeTree_create_equal(%sCLNode* %derefference_value35, %sCLNode* %right36, %sParserInfo* %info37)
  store %sCLNode* %114, %sCLNode** %node33, align 8
  br label %cond_end18

cond_jump_then43:                                 ; preds = %"cond_jump_elif0\0A"
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %116 = bitcast i8* %115 to %sParserInfo**
  %info45 = load %sParserInfo*, %sParserInfo** %116, align 8
  %117 = getelementptr inbounds %sParserInfo, %sParserInfo* %info45, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = ptrtoint i8* %118 to i64
  %addtmp46 = add nsw i64 %119, 1
  %120 = inttoptr i64 %addtmp46 to i8*
  %derefference_value47 = load i8, i8* %120, align 8
  %eqtmpX48 = icmp eq i8 %derefference_value47, 61
  %andand49 = and i1 %eqtmpX42, %eqtmpX48
  store i1 %andand49, i1* %andand_result_var39, align 1
  br label %cond_jump_end44

cond_jump_end44:                                  ; preds = %cond_jump_then43, %"cond_jump_elif0\0A"
  %andand_result_value50 = load i1, i1* %andand_result_var39, align 1
  store i1 %andand_result_value50, i1* %andand_result_var38, align 1
  br i1 %andand_result_value50, label %cond_jump_then51, label %cond_jump_end52

cond_jump_then51:                                 ; preds = %cond_jump_end44
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %122 = bitcast i8* %121 to %sParserInfo**
  %info53 = load %sParserInfo*, %sParserInfo** %122, align 8
  %123 = getelementptr inbounds %sParserInfo, %sParserInfo* %info53, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i64
  %addtmp54 = add nsw i64 %125, 2
  %126 = inttoptr i64 %addtmp54 to i8*
  %derefference_value55 = load i8, i8* %126, align 8
  %eqtmpX56 = icmp eq i8 %derefference_value55, 61
  %andand57 = and i1 %andand_result_value50, %eqtmpX56
  store i1 %andand57, i1* %andand_result_var38, align 1
  br label %cond_jump_end52

cond_jump_end52:                                  ; preds = %cond_jump_then51, %cond_jump_end44
  %andand_result_value58 = load i1, i1* %andand_result_var38, align 1
  br i1 %andand_result_value58, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

cond_jump_then68:                                 ; preds = %"cond_jump_elif_then0\0A"
  %127 = bitcast [8192 x i8*]* %lvtable to i8*
  %128 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %127, i64 65536)
  ret i1 false

cond_end69:                                       ; preds = %"cond_jump_elif_then0\0A"
  %right70 = load %sCLNode*, %sCLNode** %right64, align 8
  %eqtmpX71 = icmp eq %sCLNode* %right70, null
  br i1 %eqtmpX71, label %cond_jump_then72, label %cond_end73

cond_jump_then72:                                 ; preds = %cond_end69
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %130 = bitcast i8* %129 to %sParserInfo**
  %info74 = load %sParserInfo*, %sParserInfo** %130, align 8
  call void @parser_err_msg(%sParserInfo* %info74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.101, i32 0, i32 0))
  br label %cond_end73

cond_end73:                                       ; preds = %cond_jump_then72, %cond_end69
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %132 = bitcast i8* %131 to %sCLNode***
  %node75 = load %sCLNode**, %sCLNode*** %132, align 8
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %134 = bitcast i8* %133 to %sCLNode***
  %node76 = load %sCLNode**, %sCLNode*** %134, align 8
  %derefference_value77 = load %sCLNode*, %sCLNode** %node76, align 8
  %right78 = load %sCLNode*, %sCLNode** %right64, align 8
  %135 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %136 = bitcast i8* %135 to %sParserInfo**
  %info79 = load %sParserInfo*, %sParserInfo** %136, align 8
  %137 = call %sCLNode* @sNodeTree_create_primitive_equal(%sCLNode* %derefference_value77, %sCLNode* %right78, %sParserInfo* %info79)
  store %sCLNode* %137, %sCLNode** %node75, align 8
  br label %cond_end18

cond_jump_then84:                                 ; preds = %"cond_jump_elif1\0A"
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %139 = bitcast i8* %138 to %sParserInfo**
  %info86 = load %sParserInfo*, %sParserInfo** %139, align 8
  %140 = getelementptr inbounds %sParserInfo, %sParserInfo* %info86, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = ptrtoint i8* %141 to i64
  %addtmp87 = add nsw i64 %142, 1
  %143 = inttoptr i64 %addtmp87 to i8*
  %derefference_value88 = load i8, i8* %143, align 8
  %eqtmpX89 = icmp eq i8 %derefference_value88, 61
  %andand90 = and i1 %eqtmpX83, %eqtmpX89
  store i1 %andand90, i1* %andand_result_var80, align 1
  br label %cond_jump_end85

cond_jump_end85:                                  ; preds = %cond_jump_then84, %"cond_jump_elif1\0A"
  %andand_result_value91 = load i1, i1* %andand_result_var80, align 1
  br i1 %andand_result_value91, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

cond_jump_then101:                                ; preds = %"cond_jump_elif_then1\0A"
  %144 = bitcast [8192 x i8*]* %lvtable to i8*
  %145 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %144, i64 65536)
  ret i1 false

cond_end102:                                      ; preds = %"cond_jump_elif_then1\0A"
  %right103 = load %sCLNode*, %sCLNode** %right97, align 8
  %eqtmpX104 = icmp eq %sCLNode* %right103, null
  br i1 %eqtmpX104, label %cond_jump_then105, label %cond_end106

cond_jump_then105:                                ; preds = %cond_end102
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %147 = bitcast i8* %146 to %sParserInfo**
  %info107 = load %sParserInfo*, %sParserInfo** %147, align 8
  call void @parser_err_msg(%sParserInfo* %info107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.102, i32 0, i32 0))
  br label %cond_end106

cond_end106:                                      ; preds = %cond_jump_then105, %cond_end102
  %148 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %149 = bitcast i8* %148 to %sCLNode***
  %node108 = load %sCLNode**, %sCLNode*** %149, align 8
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %151 = bitcast i8* %150 to %sCLNode***
  %node109 = load %sCLNode**, %sCLNode*** %151, align 8
  %derefference_value110 = load %sCLNode*, %sCLNode** %node109, align 8
  %right111 = load %sCLNode*, %sCLNode** %right97, align 8
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %153 = bitcast i8* %152 to %sParserInfo**
  %info112 = load %sParserInfo*, %sParserInfo** %153, align 8
  %154 = call %sCLNode* @sNodeTree_create_not_equal(%sCLNode* %derefference_value110, %sCLNode* %right111, %sParserInfo* %info112)
  store %sCLNode* %154, %sCLNode** %node108, align 8
  br label %cond_end18

cond_jump_then118:                                ; preds = %"cond_jump_elif2\0A"
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %156 = bitcast i8* %155 to %sParserInfo**
  %info120 = load %sParserInfo*, %sParserInfo** %156, align 8
  %157 = getelementptr inbounds %sParserInfo, %sParserInfo* %info120, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = ptrtoint i8* %158 to i64
  %addtmp121 = add nsw i64 %159, 1
  %160 = inttoptr i64 %addtmp121 to i8*
  %derefference_value122 = load i8, i8* %160, align 8
  %eqtmpX123 = icmp eq i8 %derefference_value122, 33
  %andand124 = and i1 %eqtmpX117, %eqtmpX123
  store i1 %andand124, i1* %andand_result_var114, align 1
  br label %cond_jump_end119

cond_jump_end119:                                 ; preds = %cond_jump_then118, %"cond_jump_elif2\0A"
  %andand_result_value125 = load i1, i1* %andand_result_var114, align 1
  store i1 %andand_result_value125, i1* %andand_result_var113, align 1
  br i1 %andand_result_value125, label %cond_jump_then126, label %cond_jump_end127

cond_jump_then126:                                ; preds = %cond_jump_end119
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %162 = bitcast i8* %161 to %sParserInfo**
  %info128 = load %sParserInfo*, %sParserInfo** %162, align 8
  %163 = getelementptr inbounds %sParserInfo, %sParserInfo* %info128, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %164 to i64
  %addtmp129 = add nsw i64 %165, 2
  %166 = inttoptr i64 %addtmp129 to i8*
  %derefference_value130 = load i8, i8* %166, align 8
  %eqtmpX131 = icmp eq i8 %derefference_value130, 61
  %andand132 = and i1 %andand_result_value125, %eqtmpX131
  store i1 %andand132, i1* %andand_result_var113, align 1
  br label %cond_jump_end127

cond_jump_end127:                                 ; preds = %cond_jump_then126, %cond_jump_end119
  %andand_result_value133 = load i1, i1* %andand_result_var113, align 1
  br i1 %andand_result_value133, label %"cond_jump_elif_then2\0A", label %cond_else_block

cond_jump_then143:                                ; preds = %"cond_jump_elif_then2\0A"
  %167 = bitcast [8192 x i8*]* %lvtable to i8*
  %168 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %167, i64 65536)
  ret i1 false

cond_end144:                                      ; preds = %"cond_jump_elif_then2\0A"
  %right145 = load %sCLNode*, %sCLNode** %right139, align 8
  %eqtmpX146 = icmp eq %sCLNode* %right145, null
  br i1 %eqtmpX146, label %cond_jump_then147, label %cond_end148

cond_jump_then147:                                ; preds = %cond_end144
  %169 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %170 = bitcast i8* %169 to %sParserInfo**
  %info149 = load %sParserInfo*, %sParserInfo** %170, align 8
  call void @parser_err_msg(%sParserInfo* %info149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.103, i32 0, i32 0))
  br label %cond_end148

cond_end148:                                      ; preds = %cond_jump_then147, %cond_end144
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %172 = bitcast i8* %171 to %sCLNode***
  %node150 = load %sCLNode**, %sCLNode*** %172, align 8
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %174 = bitcast i8* %173 to %sCLNode***
  %node151 = load %sCLNode**, %sCLNode*** %174, align 8
  %derefference_value152 = load %sCLNode*, %sCLNode** %node151, align 8
  %right153 = load %sCLNode*, %sCLNode** %right139, align 8
  %175 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %176 = bitcast i8* %175 to %sParserInfo**
  %info154 = load %sParserInfo*, %sParserInfo** %176, align 8
  %177 = call %sCLNode* @sNodeTree_create_primitive_not_equal(%sCLNode* %derefference_value152, %sCLNode* %right153, %sParserInfo* %info154)
  store %sCLNode* %177, %sCLNode** %node150, align 8
  br label %cond_end18

after_break:                                      ; No predecessors!
  br label %cond_end18
}

define i1 @expression_and_and_or_or(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i1 @expression_comparison_equal_operator(%sCLNode** %node3, %sParserInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %node5 = load %sCLNode**, %sCLNode*** %node1, align 8
  %derefference_value = load %sCLNode*, %sCLNode** %node5, align 8
  %eqtmpX = icmp eq %sCLNode* %derefference_value, null
  br i1 %eqtmpX, label %cond_jump_then6, label %cond_end7

cond_jump_then6:                                  ; preds = %cond_end
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 true

cond_end7:                                        ; preds = %cond_end
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end18, %cond_end7
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %derefference_value9 = load i8, i8* %10, align 8
  %11 = icmp ne i8 %derefference_value9, 0
  br i1 %11, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %13 = bitcast i8* %12 to %sParserInfo**
  %info10 = load %sParserInfo*, %sParserInfo** %13, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %derefference_value11 = load i8, i8* %15, align 8
  %eqtmpX12 = icmp eq i8 %derefference_value11, 38
  store i1 %eqtmpX12, i1* %andand_result_var, align 1
  br i1 %eqtmpX12, label %cond_jump_then13, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true

cond_jump_then13:                                 ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %19 = bitcast i8* %18 to %sParserInfo**
  %info14 = load %sParserInfo*, %sParserInfo** %19, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info14, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i64
  %addtmp = add nsw i64 %22, 1
  %23 = inttoptr i64 %addtmp to i8*
  %derefference_value15 = load i8, i8* %23, align 8
  %eqtmpX16 = icmp eq i8 %derefference_value15, 38
  %andand = and i1 %eqtmpX12, %eqtmpX16
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then13, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then17, label %"cond_jump_elif0\0A"

cond_jump_then17:                                 ; preds = %cond_jump_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %25 = bitcast i8* %24 to %sParserInfo**
  %info19 = load %sParserInfo*, %sParserInfo** %25, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %27 = bitcast i8* %26 to %sParserInfo**
  %info20 = load %sParserInfo*, %sParserInfo** %27, align 8
  %28 = getelementptr inbounds %sParserInfo, %sParserInfo* %info20, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %addtmp21 = add nsw i64 %30, 2
  %31 = inttoptr i64 %addtmp21 to i8*
  %32 = getelementptr inbounds %sParserInfo, %sParserInfo* %info19, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = ptrtoint i8* %31 to i64
  %subtmp = sub nsw i64 %33, 2
  %34 = inttoptr i64 %subtmp to i8*
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %36 = bitcast i8* %35 to %sParserInfo**
  %info22 = load %sParserInfo*, %sParserInfo** %36, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info22)
  %right = alloca %sCLNode*
  %37 = bitcast %sCLNode** %right to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right, align 8
  %right23 = load %sCLNode*, %sCLNode** %right, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sParserInfo**
  %info24 = load %sParserInfo*, %sParserInfo** %39, align 8
  %40 = call i1 @expression_comparison_equal_operator(%sCLNode** %right, %sParserInfo* %info24)
  %LOGICAL_DIANEAL25 = icmp eq i1 %40, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end
  %andand_result_var38 = alloca i1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info39 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info39, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %derefference_value40 = load i8, i8* %44, align 8
  %eqtmpX41 = icmp eq i8 %derefference_value40, 124
  store i1 %eqtmpX41, i1* %andand_result_var38, align 1
  br i1 %eqtmpX41, label %cond_jump_then42, label %cond_jump_end43

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end43
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %46 = bitcast i8* %45 to %sParserInfo**
  %info50 = load %sParserInfo*, %sParserInfo** %46, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sParserInfo**
  %info51 = load %sParserInfo*, %sParserInfo** %48, align 8
  %49 = getelementptr inbounds %sParserInfo, %sParserInfo* %info51, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %addtmp52 = add nsw i64 %51, 2
  %52 = inttoptr i64 %addtmp52 to i8*
  %53 = getelementptr inbounds %sParserInfo, %sParserInfo* %info50, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = ptrtoint i8* %52 to i64
  %subtmp53 = sub nsw i64 %54, 2
  %55 = inttoptr i64 %subtmp53 to i8*
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sParserInfo**
  %info54 = load %sParserInfo*, %sParserInfo** %57, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info54)
  %right55 = alloca %sCLNode*
  %58 = bitcast %sCLNode** %right55 to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* null, %sCLNode** %right55, align 8
  %right56 = load %sCLNode*, %sCLNode** %right55, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %60 = bitcast i8* %59 to %sParserInfo**
  %info57 = load %sParserInfo*, %sParserInfo** %60, align 8
  %61 = call i1 @expression_comparison_equal_operator(%sCLNode** %right55, %sParserInfo* %info57)
  %LOGICAL_DIANEAL58 = icmp eq i1 %61, false
  br i1 %LOGICAL_DIANEAL58, label %cond_jump_then59, label %cond_end60

cond_else_block:                                  ; preds = %cond_jump_end43
  br label %cond_end_block

cond_end18:                                       ; preds = %after_break, %cond_end64, %cond_end31
  br label %loop_top_block

cond_jump_then26:                                 ; preds = %cond_jump_then17
  %62 = bitcast [8192 x i8*]* %lvtable to i8*
  %63 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %62, i64 65536)
  ret i1 false

cond_end27:                                       ; preds = %cond_jump_then17
  %right28 = load %sCLNode*, %sCLNode** %right, align 8
  %eqtmpX29 = icmp eq %sCLNode* %right28, null
  br i1 %eqtmpX29, label %cond_jump_then30, label %cond_end31

cond_jump_then30:                                 ; preds = %cond_end27
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %65 = bitcast i8* %64 to %sParserInfo**
  %info32 = load %sParserInfo*, %sParserInfo** %65, align 8
  call void @parser_err_msg(%sParserInfo* %info32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.104, i32 0, i32 0))
  br label %cond_end31

cond_end31:                                       ; preds = %cond_jump_then30, %cond_end27
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %67 = bitcast i8* %66 to %sCLNode***
  %node33 = load %sCLNode**, %sCLNode*** %67, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %69 = bitcast i8* %68 to %sCLNode***
  %node34 = load %sCLNode**, %sCLNode*** %69, align 8
  %derefference_value35 = load %sCLNode*, %sCLNode** %node34, align 8
  %right36 = load %sCLNode*, %sCLNode** %right, align 8
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %71 = bitcast i8* %70 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %71, align 8
  %72 = call %sCLNode* @sNodeTree_create_and_and(%sCLNode* %derefference_value35, %sCLNode* %right36, %sParserInfo* %info37)
  store %sCLNode* %72, %sCLNode** %node33, align 8
  br label %cond_end18

cond_jump_then42:                                 ; preds = %"cond_jump_elif0\0A"
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %74 = bitcast i8* %73 to %sParserInfo**
  %info44 = load %sParserInfo*, %sParserInfo** %74, align 8
  %75 = getelementptr inbounds %sParserInfo, %sParserInfo* %info44, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i64
  %addtmp45 = add nsw i64 %77, 1
  %78 = inttoptr i64 %addtmp45 to i8*
  %derefference_value46 = load i8, i8* %78, align 8
  %eqtmpX47 = icmp eq i8 %derefference_value46, 124
  %andand48 = and i1 %eqtmpX41, %eqtmpX47
  store i1 %andand48, i1* %andand_result_var38, align 1
  br label %cond_jump_end43

cond_jump_end43:                                  ; preds = %cond_jump_then42, %"cond_jump_elif0\0A"
  %andand_result_value49 = load i1, i1* %andand_result_var38, align 1
  br i1 %andand_result_value49, label %"cond_jump_elif_then0\0A", label %cond_else_block

cond_jump_then59:                                 ; preds = %"cond_jump_elif_then0\0A"
  %79 = bitcast [8192 x i8*]* %lvtable to i8*
  %80 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %79, i64 65536)
  ret i1 false

cond_end60:                                       ; preds = %"cond_jump_elif_then0\0A"
  %right61 = load %sCLNode*, %sCLNode** %right55, align 8
  %eqtmpX62 = icmp eq %sCLNode* %right61, null
  br i1 %eqtmpX62, label %cond_jump_then63, label %cond_end64

cond_jump_then63:                                 ; preds = %cond_end60
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %82 = bitcast i8* %81 to %sParserInfo**
  %info65 = load %sParserInfo*, %sParserInfo** %82, align 8
  call void @parser_err_msg(%sParserInfo* %info65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.105, i32 0, i32 0))
  br label %cond_end64

cond_end64:                                       ; preds = %cond_jump_then63, %cond_end60
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %84 = bitcast i8* %83 to %sCLNode***
  %node66 = load %sCLNode**, %sCLNode*** %84, align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %86 = bitcast i8* %85 to %sCLNode***
  %node67 = load %sCLNode**, %sCLNode*** %86, align 8
  %derefference_value68 = load %sCLNode*, %sCLNode** %node67, align 8
  %right69 = load %sCLNode*, %sCLNode** %right55, align 8
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %88 = bitcast i8* %87 to %sParserInfo**
  %info70 = load %sParserInfo*, %sParserInfo** %88, align 8
  %89 = call %sCLNode* @sNodeTree_create_or_or(%sCLNode* %derefference_value68, %sCLNode* %right69, %sParserInfo* %info70)
  store %sCLNode* %89, %sCLNode** %node66, align 8
  br label %cond_end18

after_break:                                      ; No predecessors!
  br label %cond_end18
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/parser.nc", directory: "/home/ab25cq/repo/neo-c/sevenstar")
!2 = !{}
