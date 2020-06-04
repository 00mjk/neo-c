; ModuleID = 'Module vm'
source_filename = "Module vm"

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
%sCLInt = type { %sCLType*, i32, i32, i32 }
%sCLObject = type { %sCLType*, i32, i32, %anon85 }
%anon85 = type { [32 x %CLVALUE] }
%sCLCommand = type { %sCLType*, i32, i32, i32, i32, i32, i1, i8*, [32 x i8] }
%sCLBlock = type { %sCLType*, i32, i32, i32*, i32 }
%anon86 = type { i32, i32, i32, i32, %anon87 }
%anon87 = type { [28 x i32] }
%sigaction = type { %anon100, %anon6, i32, void ()* }
%anon100 = type { void (i32)* }
%sigval = type { i8* }
%sigcontext = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i64, i64, i64, %anon102, [8 x i64] }
%anon102 = type { %_fpstate* }
%_fpstate = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %_fpxreg], [16 x %_xmmreg], [24 x i32] }
%_fpxreg = type { [4 x i16], i16, [3 x i16] }
%_xmmreg = type { [4 x i32] }
%anon103 = type { i8*, i32, i64 }
%sigstack = type { i8*, i32 }
%rusage = type {}
%sCLJob = type { %sCLType*, i32, i32, [32 x i8], %termios, i32 }

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
@_sys_siglist = external externally_initialized global [65 x i8*], align 8
@sys_siglist = external externally_initialized global [65 x i8*], align 8
@global_string = private constant [10 x i8] c"%s %d: %s\00", align 1
@global_string.1 = private constant [4 x i8] c"int\00", align 1
@global_string.2 = private constant [10 x i8] c"value %d \00", align 1
@global_string.3 = private constant [5 x i8] c"bool\00", align 1
@global_string.4 = private constant [10 x i8] c"value %d \00", align 1
@global_string.5 = private constant [7 x i8] c"string\00", align 1
@global_string.6 = private constant [10 x i8] c"value %s \00", align 1
@global_string.7 = private constant [10 x i8] c"v[%d] %d \00", align 1
@global_string.8 = private constant [1 x i8] zeroinitializer, align 1
@global_string.9 = private constant [10 x i8] c" [%d] %d \00", align 1
@global_string.10 = private constant [1 x i8] zeroinitializer, align 1
@global_string.11 = private constant [46 x i8] c"invoke method %s.%s num_params %d var_num %d\0A\00", align 1
@global_string.12 = private constant [32 x i8] c"invoked method %s.%s result %d\0A\00", align 1
@global_string.13 = private constant [39 x i8] c"invoke block num_params %d var_num %d\0A\00", align 1
@global_string.14 = private constant [25 x i8] c"invoked block result %d\0A\00", align 1
@global_string.15 = private constant [10 x i8] c"OP_ANDAND\00", align 1
@global_string.16 = private constant [8 x i8] c"OP_OROR\00", align 1
@global_string.17 = private constant [9 x i8] c"OP_NOTEQ\00", align 1
@global_string.18 = private constant [6 x i8] c"OP_EQ\00", align 1
@global_string.19 = private constant [7 x i8] c"OP_POP\00", align 1
@global_string.20 = private constant [9 x i8] c"OP_THROW\00", align 1
@global_string.21 = private constant [10 x i8] c"OP_RETURN\00", align 1
@global_string.22 = private constant [13 x i8] c"OP_INT_VALUE\00", align 1
@global_string.23 = private constant [16 x i8] c"OP_STRING_VALUE\00", align 1
@global_string.24 = private constant [8 x i8] c"OP_IADD\00", align 1
@global_string.25 = private constant [8 x i8] c"OP_ISUB\00", align 1
@global_string.26 = private constant [18 x i8] c"OP_STORE_VARIABLE\00", align 1
@global_string.27 = private constant [17 x i8] c"OP_LOAD_VARIABLE\00", align 1
@global_string.28 = private constant [7 x i8] c"OP_TRY\00", align 1
@global_string.29 = private constant [7 x i8] c"OP_IEQ\00", align 1
@global_string.30 = private constant [10 x i8] c"OP_INOTEQ\00", align 1
@global_string.31 = private constant [7 x i8] c"OP_ILT\00", align 1
@global_string.32 = private constant [7 x i8] c"OP_IGT\00", align 1
@global_string.33 = private constant [7 x i8] c"OP_ILE\00", align 1
@global_string.34 = private constant [7 x i8] c"OP_IGE\00", align 1
@global_string.35 = private constant [13 x i8] c"OP_COND_JUMP\00", align 1
@global_string.36 = private constant [17 x i8] c"OP_COND_NOT_JUMP\00", align 1
@global_string.37 = private constant [8 x i8] c"OP_GOTO\00", align 1
@global_string.38 = private constant [17 x i8] c"OP_CREATE_OBJECT\00", align 1
@global_string.39 = private constant [17 x i8] c"OP_INVOKE_METHOD\00", align 1
@global_string.40 = private constant [8 x i8] c"OP_EXIT\00", align 1
@global_string.41 = private constant [14 x i8] c"OP_TRUE_VALUE\00", align 1
@global_string.42 = private constant [15 x i8] c"OP_FALSE_VALUE\00", align 1
@global_string.43 = private constant [23 x i8] c"OP_CREATE_BLOCK_OBJECT\00", align 1
@global_string.44 = private constant [23 x i8] c"OP_INVOKE_BLOCK_OBJECT\00", align 1
@global_string.45 = private constant [15 x i8] c"OP_STORE_FIELD\00", align 1
@global_string.46 = private constant [14 x i8] c"OP_LOAD_FIELD\00", align 1
@global_string.47 = private constant [14 x i8] c"OP_NULL_VALUE\00", align 1
@global_string.48 = private constant [17 x i8] c"OP_COMMAND_VALUE\00", align 1
@global_string.49 = private constant [18 x i8] c"OP_LOGICAL_DENIAL\00", align 1
@global_string.50 = private constant [7 x i8] c"OP %d\0A\00", align 1
@global_string.51 = private constant [23 x i8] c"command not found(%s)\0A\00", align 1
@global_string.52 = private constant [5 x i8] c"int%\00", align 1
@global_string.53 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.54 = private constant [22 x i8] c"push_back_int3_src/vm\00", align 1
@global_string.55 = private constant [29 x i8] c"vector_push_back_int3_src/vm\00", align 1
@global_string.56 = private constant [1 x i8] zeroinitializer, align 1
@global_string.57 = private constant [1 x i8] zeroinitializer, align 1
@global_string.58 = private constant [1 x i8] zeroinitializer, align 1
@global_string.59 = private constant [1 x i8] zeroinitializer, align 1
@global_string.60 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.61 = private constant [10 x i8] c"src/vm.nc\00", align 1
@global_string.62 = private constant [15 x i8] c"invoke_command\00", align 1
@global_string.63 = private constant [15 x i8] c"invoke_command\00", align 1
@global_string.64 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.65 = private constant [10 x i8] c"src/vm.nc\00", align 1
@global_string.66 = private constant [15 x i8] c"invoke_command\00", align 1
@global_string.67 = private constant [15 x i8] c"invoke_command\00", align 1
@global_string.68 = private constant [23 x i8] c"command not found(%s)\0A\00", align 1
@global_string.69 = private constant [12 x i8] c"dup2 error\0A\00", align 1
@global_string.70 = private constant [23 x i8] c"command not found(%s)\0A\00", align 1
@global_string.71 = private constant [5 x i8] c"int%\00", align 1
@global_string.72 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.73 = private constant [22 x i8] c"push_back_int4_src/vm\00", align 1
@global_string.74 = private constant [29 x i8] c"vector_push_back_int4_src/vm\00", align 1
@global_string.75 = private constant [1 x i8] zeroinitializer, align 1
@global_string.76 = private constant [1 x i8] zeroinitializer, align 1
@global_string.77 = private constant [1 x i8] zeroinitializer, align 1
@global_string.78 = private constant [1 x i8] zeroinitializer, align 1
@global_string.79 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.80 = private constant [10 x i8] c"src/vm.nc\00", align 1
@global_string.81 = private constant [25 x i8] c"invoke_command_with_pipe\00", align 1
@global_string.82 = private constant [25 x i8] c"invoke_command_with_pipe\00", align 1
@global_string.83 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.84 = private constant [10 x i8] c"src/vm.nc\00", align 1
@global_string.85 = private constant [25 x i8] c"invoke_command_with_pipe\00", align 1
@global_string.86 = private constant [25 x i8] c"invoke_command_with_pipe\00", align 1
@global_string.87 = private constant [23 x i8] c"command not found(%s)\0A\00", align 1
@global_string.88 = private constant [11 x i8] c"job %d %s\0A\00", align 1
@global_string.89 = private constant [11 x i8] c"job %d %s\0A\00", align 1
@global_string.90 = private constant [18 x i8] c"Job<%s> is done.\0A\00", align 1
@global_string.91 = private constant [15 x i8] c"sCLStackFrame%\00", align 1
@global_string.92 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.93 = private constant [33 x i8] c"push_back_sCLStackFrame10_src/vm\00", align 1
@global_string.94 = private constant [40 x i8] c"vector_push_back_sCLStackFrame10_src/vm\00", align 1
@global_string.95 = private constant [1 x i8] zeroinitializer, align 1
@global_string.96 = private constant [1 x i8] zeroinitializer, align 1
@global_string.97 = private constant [21 x i8] c"class not found(%s)\0A\00", align 1
@global_string.98 = private constant [21 x i8] c"class not found(%s)\0A\00", align 1
@global_string.99 = private constant [8 x i8] c"command\00", align 1
@global_string.100 = private constant [7 x i8] c"string\00", align 1
@global_string.101 = private constant [29 x i8] c"type error command parametor\00", align 1
@global_string.102 = private constant [25 x i8] c"invoke command error(%s)\00", align 1
@global_string.103 = private constant [25 x i8] c"invoke command error(%s)\00", align 1
@global_string.104 = private constant [25 x i8] c"invoke command error(%s)\00", align 1
@global_string.105 = private constant [25 x i8] c"invoke command error(%s)\00", align 1
@global_string.106 = private constant [25 x i8] c"method not found(%s.%s)\0A\00", align 1
@global_string.107 = private constant [36 x i8] c"method parametor is invalid(%s.%s)\0A\00", align 1
@global_string.108 = private constant [28 x i8] c"native method error(%s.%s)\0A\00", align 1
@global_string.109 = private constant [5 x i8] c"void\00", align 1
@global_string.110 = private constant [5 x i8] c"void\00", align 1
@global_string.111 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.112 = private constant [10 x i8] c"src/vm.nc\00", align 1
@global_string.113 = private constant [3 x i8] c"vm\00", align 1
@global_string.114 = private constant [3 x i8] c"vm\00", align 1
@global_string.115 = private constant [9 x i8] c"fg error\00", align 1
@global_string.116 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.117 = private constant [10 x i8] c"src/vm.nc\00", align 1
@global_string.118 = private constant [3 x i8] c"vm\00", align 1
@global_string.119 = private constant [3 x i8] c"vm\00", align 1
@global_string.120 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.121 = private constant [10 x i8] c"src/vm.nc\00", align 1
@global_string.122 = private constant [3 x i8] c"vm\00", align 1
@global_string.123 = private constant [3 x i8] c"vm\00", align 1

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

declare void @parser_err_msg(%sParserInfo*, i8*)

declare void @skip_spaces_and_lf(%sParserInfo*)

declare i1 @parse_params(%sCLParam*, i32*, %sParserInfo*)

declare i8* @parse_word(%sParserInfo*)

declare i1 @parse_type(%sCLType**, %sParserInfo*)

declare void @expected_next_character(i8, %sParserInfo*)

declare void @parse_comment(%sParserInfo*)

declare i1 @expression(%sCLNode**, %sParserInfo*)

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

define void @vm_err_msg(%CLVALUE** %stack_ptr, %sVMInfo* %info, i8* %msg) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %stack_ptr1 = alloca %CLVALUE**
  store %CLVALUE** %stack_ptr, %CLVALUE*** %stack_ptr1, align 8
  %2 = bitcast %CLVALUE*** %stack_ptr1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %msg3 = alloca i8*
  store i8* %msg, i8** %msg3, align 8
  %4 = bitcast i8** %msg3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %buf = alloca [128 x i8]
  %5 = bitcast [128 x i8]* %buf to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %info4 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %6 = getelementptr inbounds %sVMInfo, %sVMInfo* %info4, i32 0, i32 0
  %7 = bitcast [4096 x i8]* %6 to i8*
  %info5 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %8 = getelementptr inbounds %sVMInfo, %sVMInfo* %info5, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %msg6 = load i8*, i8** %msg3, align 8
  %10 = bitcast [128 x i8]* %buf to i8*
  %11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string, i32 0, i32 0), i8* %7, i32 %9, i8* %msg6)
  %info7 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %12 = bitcast [128 x i8]* %buf to i8*
  %13 = call i32 @create_string_object(i8* %12, %sVMInfo* %info7)
  %obj = alloca i32
  %14 = bitcast i32* %obj to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  store i32 %13, i32* %obj, align 4
  %stack_ptr8 = load %CLVALUE**, %CLVALUE*** %stack_ptr1, align 8
  %derefference_value = load %CLVALUE*, %CLVALUE** %stack_ptr8, align 8
  %obj9 = load i32, i32* %obj, align 4
  %15 = bitcast %CLVALUE* %derefference_value to i32*
  store i32 %obj9, i32* %15, align 4
  %stack_ptr10 = load %CLVALUE**, %CLVALUE*** %stack_ptr1, align 8
  %derefference_value11 = load %CLVALUE*, %CLVALUE** %stack_ptr10, align 8
  %16 = ptrtoint %CLVALUE* %derefference_value11 to i64
  %adddtmp = add nsw i64 %16, 4
  %17 = inttoptr i64 %adddtmp to %CLVALUE*
  store %CLVALUE* %17, %CLVALUE** %stack_ptr10, align 8
  %info12 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %18 = getelementptr inbounds %sVMInfo, %sVMInfo* %info12, i32 0, i32 6
  %19 = load %CLVALUE, %CLVALUE* %18, align 8
  %obj13 = load i32, i32* %obj, align 4
  %20 = bitcast %CLVALUE* %18 to i32*
  store i32 %obj13, i32* %20, align 4
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

define i1 @vm(%buffer* %codes, %CLVALUE* %parent_stack_ptr, i32 %num_params, i32 %var_num, %CLVALUE* %result, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %codes1 = alloca %buffer*
  store %buffer* %codes, %buffer** %codes1, align 8
  %2 = bitcast %buffer** %codes1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %parent_stack_ptr2 = alloca %CLVALUE*
  store %CLVALUE* %parent_stack_ptr, %CLVALUE** %parent_stack_ptr2, align 8
  %3 = bitcast %CLVALUE** %parent_stack_ptr2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %num_params3 = alloca i32
  store i32 %num_params, i32* %num_params3, align 4
  %4 = bitcast i32* %num_params3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %var_num4 = alloca i32
  store i32 %var_num, i32* %var_num4, align 4
  %5 = bitcast i32* %var_num4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %result5 = alloca %CLVALUE*
  store %CLVALUE* %result, %CLVALUE** %result5, align 8
  %6 = bitcast %CLVALUE** %result5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %info6 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info6, align 8
  %7 = bitcast %sVMInfo** %info6 to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %null_parent_stack_frame = alloca %sCLStackFrame
  %8 = bitcast %sCLStackFrame* %null_parent_stack_frame to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %null_parent_stack_frame7 = load %sCLStackFrame, %sCLStackFrame* %null_parent_stack_frame, align 8
  %9 = bitcast %sCLStackFrame* %null_parent_stack_frame to i8*
  %10 = call i8* @memset(i8* %9, i32 0, i64 32)
  %stack = alloca [1024 x %CLVALUE]
  %11 = bitcast [1024 x %CLVALUE]* %stack to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %stack_frame = alloca %sCLStackFrame
  %12 = bitcast %sCLStackFrame* %stack_frame to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  %13 = bitcast [1024 x %CLVALUE]* %stack to i8*
  %14 = call i8* @memset(i8* %13, i32 0, i64 4096)
  %15 = bitcast [1024 x %CLVALUE]* %stack to %CLVALUE*
  %var_num8 = load i32, i32* %var_num4, align 4
  %16 = ptrtoint %CLVALUE* %15 to i64
  %sext1 = sext i32 %var_num8 to i64
  %multtmp = mul nsw i64 %sext1, 4
  %addtmp = add nsw i64 %16, %multtmp
  %17 = inttoptr i64 %addtmp to %CLVALUE*
  %stack_ptr = alloca %CLVALUE*
  %18 = bitcast %CLVALUE** %stack_ptr to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  store %CLVALUE* %17, %CLVALUE** %stack_ptr, align 8
  %codes9 = load %buffer*, %buffer** %codes1, align 8
  %19 = getelementptr inbounds %buffer, %buffer* %codes9, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to i32*
  %head_codes = alloca i32*
  %22 = bitcast i32** %head_codes to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  store i32* %21, i32** %head_codes, align 8
  %codes10 = load %buffer*, %buffer** %codes1, align 8
  %23 = getelementptr inbounds %buffer, %buffer* %codes10, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32*
  %p = alloca i32*
  %26 = bitcast i32** %p to i8*
  store i8* %26, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  store i32* %25, i32** %p, align 8
  %stack_frame11 = load %sCLStackFrame, %sCLStackFrame* %stack_frame, align 8
  %27 = bitcast [1024 x %CLVALUE]* %stack to %CLVALUE*
  %28 = getelementptr inbounds %sCLStackFrame, %sCLStackFrame* %stack_frame, i32 0, i32 1
  store %CLVALUE* %27, %CLVALUE** %28, align 8
  %stack_frame12 = load %sCLStackFrame, %sCLStackFrame* %stack_frame, align 8
  %stack_ptr13 = load %CLVALUE*, %CLVALUE** %stack_ptr, align 8
  %29 = getelementptr inbounds %sCLStackFrame, %sCLStackFrame* %stack_frame, i32 0, i32 2
  store %CLVALUE** %stack_ptr, %CLVALUE*** %29, align 8
  %stack_frame14 = load %sCLStackFrame, %sCLStackFrame* %stack_frame, align 8
  %var_num15 = load i32, i32* %var_num4, align 4
  %30 = getelementptr inbounds %sCLStackFrame, %sCLStackFrame* %stack_frame, i32 0, i32 3
  store i32 %var_num15, i32* %30, align 4
  %stack_frame16 = load %sCLStackFrame, %sCLStackFrame* %stack_frame, align 8
  %info17 = load %sVMInfo*, %sVMInfo** %info6, align 8
  %31 = getelementptr inbounds %sVMInfo, %sVMInfo* %info17, i32 0, i32 5
  %32 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %31, align 8
  %33 = call i32 @"vector_length_sCLStackFrame9_src/vm"(%vector__sCLStackFrame* %32)
  %34 = getelementptr inbounds %sCLStackFrame, %sCLStackFrame* %stack_frame, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %info18 = load %sVMInfo*, %sVMInfo** %info6, align 8
  %35 = getelementptr inbounds %sVMInfo, %sVMInfo* %info18, i32 0, i32 5
  %36 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %35, align 8
  %stack_frame19 = load %sCLStackFrame, %sCLStackFrame* %stack_frame, align 8
  call void @"vector_push_back_sCLStackFrame10_src/vm"(%vector__sCLStackFrame* %36, %sCLStackFrame %stack_frame19)
  %parent_stack_ptr20 = load %CLVALUE*, %CLVALUE** %parent_stack_ptr2, align 8
  %num_params21 = load i32, i32* %num_params3, align 4
  %var_num22 = load i32, i32* %var_num4, align 4
  %info23 = load %sVMInfo*, %sVMInfo** %info6, align 8
  %37 = bitcast [1024 x %CLVALUE]* %stack to %CLVALUE*
  call void @ready_for_vm_stack(%CLVALUE* %37, %CLVALUE* %parent_stack_ptr20, i32 %num_params21, i32 %var_num22, %sVMInfo* %info23)
  %info24 = load %sVMInfo*, %sVMInfo** %info6, align 8
  %38 = getelementptr inbounds %sVMInfo, %sVMInfo* %info24, i32 0, i32 6
  %39 = load %CLVALUE, %CLVALUE* %38, align 8
  %40 = bitcast %CLVALUE* %38 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %44 = bitcast i8* %43 to %CLVALUE**
  %stack_ptr25 = load %CLVALUE*, %CLVALUE** %44, align 8
  %45 = ptrtoint %CLVALUE* %stack_ptr25 to i64
  %subtmp = sub nsw i64 %45, 4
  %46 = inttoptr i64 %subtmp to %CLVALUE*
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %48 = bitcast i8* %47 to %sVMInfo**
  %info26 = load %sVMInfo*, %sVMInfo** %48, align 8
  %49 = getelementptr inbounds %sVMInfo, %sVMInfo* %info26, i32 0, i32 6
  %50 = load %CLVALUE, %CLVALUE* %49, align 8
  store %CLVALUE %50, %CLVALUE* %46, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  br label %loop_top_block

loop_top_block:                                   ; preds = %end_block, %cond_end
  %p27 = load i32*, i32** %p, align 8
  %head_codes28 = load i32*, i32** %head_codes, align 8
  %51 = ptrtoint i32* %p27 to i64
  %52 = ptrtoint i32* %head_codes28 to i64
  %subtmp29 = sub nsw i64 %51, %52
  %codes30 = load %buffer*, %buffer** %codes1, align 8
  %53 = getelementptr inbounds %buffer, %buffer* %codes30, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %sext14 = zext i32 %54 to i64
  %letmp = icmp slt i64 %subtmp29, %sext14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %56 = bitcast i8* %55 to i32**
  %p31 = load i32*, i32** %56, align 8
  %derefference_value = load i32, i32* %p31, align 8
  %op = alloca i32
  %57 = bitcast i32* %op to i8*
  store i8* %57, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  store i32 %derefference_value, i32* %op, align 4
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %59 = bitcast i8* %58 to i32**
  %p32 = load i32*, i32** %59, align 8
  %60 = ptrtoint i32* %p32 to i64
  %addtmp33 = add nsw i64 %60, 4
  %61 = inttoptr i64 %addtmp33 to i32*
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %63 = bitcast i8* %62 to i32**
  store i32* %61, i32** %63, align 8
  %64 = ptrtoint i32* %61 to i64
  %subtmp34 = sub nsw i64 %64, 4
  %65 = inttoptr i64 %subtmp34 to i32*
  %op35 = load i32, i32* %op, align 4
  %eqtmpY = icmp eq i32 %op35, 0
  br i1 %eqtmpY, label %cond_then_block36, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %result1275 = load %CLVALUE*, %CLVALUE** %result5, align 8
  %stack_ptr1276 = load %CLVALUE*, %CLVALUE** %stack_ptr, align 8
  %66 = ptrtoint %CLVALUE* %stack_ptr1276 to i64
  %subtmp1277 = sub nsw i64 %66, 4
  %67 = inttoptr i64 %subtmp1277 to %CLVALUE*
  %derefference_value1278 = load %CLVALUE, %CLVALUE* %67, align 8
  store %CLVALUE %derefference_value1278, %CLVALUE* %result1275, align 8
  %info1279 = load %sVMInfo*, %sVMInfo** %info6, align 8
  %68 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1279, i32 0, i32 5
  %69 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %68, align 8
  %null_parent_stack_frame1280 = load %sCLStackFrame, %sCLStackFrame* %null_parent_stack_frame, align 8
  %70 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame31_src/vm"(%vector__sCLStackFrame* %69, %sCLStackFrame %null_parent_stack_frame1280)
  %71 = bitcast [8192 x i8*]* %lvtable to i8*
  %72 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %71, i64 65536)
  ret i1 true

end_block:                                        ; preds = %cond_else_block1263, %cond_then_block1262, %cond_end1251, %cond_then_block1139, %cond_then_block1113, %cond_then_block1083, %cond_end1077, %cond_then_block1060, %cond_end1058, %cond_end728, %cond_then_block659, %cond_end648, %cond_end615, %cond_then_block569, %cond_then_block540, %cond_then_block511, %cond_then_block482, %cond_then_block452, %cond_then_block429, %cond_jump_end413, %cond_jump_end, %cond_then_block342, %cond_then_block313, %cond_then_block287, %cond_then_block258, %cond_then_block230, %cond_then_block207, %cond_then_block158, %cond_end141, %cond_then_block93, %cond_then_block82, %cond_then_block72, %cond_then_block63, %cond_then_block54, %cond_then_block40, %cond_then_block36
  br label %loop_top_block

cond_then_block36:                                ; preds = %cond_then_block
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %74 = bitcast i8* %73 to %CLVALUE**
  %stack_ptr37 = load %CLVALUE*, %CLVALUE** %74, align 8
  %75 = ptrtoint %CLVALUE* %stack_ptr37 to i64
  %subtmp38 = sub nsw i64 %75, 4
  %76 = inttoptr i64 %subtmp38 to %CLVALUE*
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %78 = bitcast i8* %77 to %CLVALUE**
  store %CLVALUE* %76, %CLVALUE** %78, align 8
  %79 = ptrtoint %CLVALUE* %76 to i64
  %addtmp39 = add nsw i64 %79, 4
  %80 = inttoptr i64 %addtmp39 to %CLVALUE*
  br label %end_block

cond_else_block:                                  ; preds = %after_break, %cond_then_block
  %eqtmpY42 = icmp eq i32 %op35, 1
  br i1 %eqtmpY42, label %cond_then_block40, label %cond_else_block41

after_break:                                      ; No predecessors!
  br label %cond_else_block

cond_then_block40:                                ; preds = %cond_else_block
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %82 = bitcast i8* %81 to %CLVALUE**
  %stack_ptr43 = load %CLVALUE*, %CLVALUE** %82, align 8
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %84 = bitcast i8* %83 to i32**
  %p44 = load i32*, i32** %84, align 8
  %derefference_value45 = load i32, i32* %p44, align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %86 = bitcast i8* %85 to %sVMInfo**
  %info46 = load %sVMInfo*, %sVMInfo** %86, align 8
  %87 = call i32 @create_int_object(i32 %derefference_value45, %sVMInfo* %info46)
  %88 = bitcast %CLVALUE* %stack_ptr43 to i32*
  store i32 %87, i32* %88, align 4
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %90 = bitcast i8* %89 to i32**
  %p47 = load i32*, i32** %90, align 8
  %91 = ptrtoint i32* %p47 to i64
  %addtmp48 = add nsw i64 %91, 4
  %92 = inttoptr i64 %addtmp48 to i32*
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %94 = bitcast i8* %93 to i32**
  store i32* %92, i32** %94, align 8
  %95 = ptrtoint i32* %92 to i64
  %subtmp49 = sub nsw i64 %95, 4
  %96 = inttoptr i64 %subtmp49 to i32*
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %98 = bitcast i8* %97 to %CLVALUE**
  %stack_ptr50 = load %CLVALUE*, %CLVALUE** %98, align 8
  %99 = ptrtoint %CLVALUE* %stack_ptr50 to i64
  %addtmp51 = add nsw i64 %99, 4
  %100 = inttoptr i64 %addtmp51 to %CLVALUE*
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %102 = bitcast i8* %101 to %CLVALUE**
  store %CLVALUE* %100, %CLVALUE** %102, align 8
  %103 = ptrtoint %CLVALUE* %100 to i64
  %subtmp52 = sub nsw i64 %103, 4
  %104 = inttoptr i64 %subtmp52 to %CLVALUE*
  br label %end_block

cond_else_block41:                                ; preds = %after_break53, %cond_else_block
  %eqtmpY56 = icmp eq i32 %op35, 27
  br i1 %eqtmpY56, label %cond_then_block54, label %cond_else_block55

after_break53:                                    ; No predecessors!
  br label %cond_else_block41

cond_then_block54:                                ; preds = %cond_else_block41
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %106 = bitcast i8* %105 to %CLVALUE**
  %stack_ptr57 = load %CLVALUE*, %CLVALUE** %106, align 8
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %108 = bitcast i8* %107 to %sVMInfo**
  %info58 = load %sVMInfo*, %sVMInfo** %108, align 8
  %109 = call i32 @create_bool_object(i32 1, %sVMInfo* %info58)
  %110 = bitcast %CLVALUE* %stack_ptr57 to i32*
  store i32 %109, i32* %110, align 4
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %112 = bitcast i8* %111 to %CLVALUE**
  %stack_ptr59 = load %CLVALUE*, %CLVALUE** %112, align 8
  %113 = ptrtoint %CLVALUE* %stack_ptr59 to i64
  %addtmp60 = add nsw i64 %113, 4
  %114 = inttoptr i64 %addtmp60 to %CLVALUE*
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %116 = bitcast i8* %115 to %CLVALUE**
  store %CLVALUE* %114, %CLVALUE** %116, align 8
  %117 = ptrtoint %CLVALUE* %114 to i64
  %subtmp61 = sub nsw i64 %117, 4
  %118 = inttoptr i64 %subtmp61 to %CLVALUE*
  br label %end_block

cond_else_block55:                                ; preds = %after_break62, %cond_else_block41
  %eqtmpY65 = icmp eq i32 %op35, 28
  br i1 %eqtmpY65, label %cond_then_block63, label %cond_else_block64

after_break62:                                    ; No predecessors!
  br label %cond_else_block55

cond_then_block63:                                ; preds = %cond_else_block55
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %120 = bitcast i8* %119 to %CLVALUE**
  %stack_ptr66 = load %CLVALUE*, %CLVALUE** %120, align 8
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %122 = bitcast i8* %121 to %sVMInfo**
  %info67 = load %sVMInfo*, %sVMInfo** %122, align 8
  %123 = call i32 @create_bool_object(i32 0, %sVMInfo* %info67)
  %124 = bitcast %CLVALUE* %stack_ptr66 to i32*
  store i32 %123, i32* %124, align 4
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %126 = bitcast i8* %125 to %CLVALUE**
  %stack_ptr68 = load %CLVALUE*, %CLVALUE** %126, align 8
  %127 = ptrtoint %CLVALUE* %stack_ptr68 to i64
  %addtmp69 = add nsw i64 %127, 4
  %128 = inttoptr i64 %addtmp69 to %CLVALUE*
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %130 = bitcast i8* %129 to %CLVALUE**
  store %CLVALUE* %128, %CLVALUE** %130, align 8
  %131 = ptrtoint %CLVALUE* %128 to i64
  %subtmp70 = sub nsw i64 %131, 4
  %132 = inttoptr i64 %subtmp70 to %CLVALUE*
  br label %end_block

cond_else_block64:                                ; preds = %after_break71, %cond_else_block55
  %eqtmpY74 = icmp eq i32 %op35, 31
  br i1 %eqtmpY74, label %cond_then_block72, label %cond_else_block73

after_break71:                                    ; No predecessors!
  br label %cond_else_block64

cond_then_block72:                                ; preds = %cond_else_block64
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %134 = bitcast i8* %133 to %sVMInfo**
  %info75 = load %sVMInfo*, %sVMInfo** %134, align 8
  %135 = call i32 @create_null_object(%sVMInfo* %info75)
  %obj = alloca i32
  %136 = bitcast i32* %obj to i8*
  store i8* %136, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %135, i32* %obj, align 4
  %137 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %138 = bitcast i8* %137 to %CLVALUE**
  %stack_ptr76 = load %CLVALUE*, %CLVALUE** %138, align 8
  %obj77 = load i32, i32* %obj, align 4
  %139 = bitcast %CLVALUE* %stack_ptr76 to i32*
  store i32 %obj77, i32* %139, align 4
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %141 = bitcast i8* %140 to %CLVALUE**
  %stack_ptr78 = load %CLVALUE*, %CLVALUE** %141, align 8
  %142 = ptrtoint %CLVALUE* %stack_ptr78 to i64
  %addtmp79 = add nsw i64 %142, 4
  %143 = inttoptr i64 %addtmp79 to %CLVALUE*
  %144 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %145 = bitcast i8* %144 to %CLVALUE**
  store %CLVALUE* %143, %CLVALUE** %145, align 8
  %146 = ptrtoint %CLVALUE* %143 to i64
  %subtmp80 = sub nsw i64 %146, 4
  %147 = inttoptr i64 %subtmp80 to %CLVALUE*
  br label %end_block

cond_else_block73:                                ; preds = %after_break81, %cond_else_block64
  %eqtmpY84 = icmp eq i32 %op35, 37
  br i1 %eqtmpY84, label %cond_then_block82, label %cond_else_block83

after_break81:                                    ; No predecessors!
  br label %cond_else_block73

cond_then_block82:                                ; preds = %cond_else_block73
  %148 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %149 = bitcast i8* %148 to %sVMInfo**
  %info85 = load %sVMInfo*, %sVMInfo** %149, align 8
  %150 = call i32 @create_command_object(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.95, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.96, i32 0, i32 0), i32 1, i32 0, i1 true, %sVMInfo* %info85)
  %obj86 = alloca i32
  %151 = bitcast i32* %obj86 to i8*
  store i8* %151, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %150, i32* %obj86, align 4
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %153 = bitcast i8* %152 to %CLVALUE**
  %stack_ptr87 = load %CLVALUE*, %CLVALUE** %153, align 8
  %obj88 = load i32, i32* %obj86, align 4
  %154 = bitcast %CLVALUE* %stack_ptr87 to i32*
  store i32 %obj88, i32* %154, align 4
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %156 = bitcast i8* %155 to %CLVALUE**
  %stack_ptr89 = load %CLVALUE*, %CLVALUE** %156, align 8
  %157 = ptrtoint %CLVALUE* %stack_ptr89 to i64
  %addtmp90 = add nsw i64 %157, 4
  %158 = inttoptr i64 %addtmp90 to %CLVALUE*
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %160 = bitcast i8* %159 to %CLVALUE**
  store %CLVALUE* %158, %CLVALUE** %160, align 8
  %161 = ptrtoint %CLVALUE* %158 to i64
  %subtmp91 = sub nsw i64 %161, 4
  %162 = inttoptr i64 %subtmp91 to %CLVALUE*
  br label %end_block

cond_else_block83:                                ; preds = %after_break92, %cond_else_block73
  %eqtmpY95 = icmp eq i32 %op35, 2
  br i1 %eqtmpY95, label %cond_then_block93, label %cond_else_block94

after_break92:                                    ; No predecessors!
  br label %cond_else_block83

cond_then_block93:                                ; preds = %cond_else_block83
  %163 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %164 = bitcast i8* %163 to i32**
  %p96 = load i32*, i32** %164, align 8
  %165 = bitcast i32* %p96 to i8*
  %str = alloca i8*
  %166 = bitcast i8** %str to i8*
  store i8* %166, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i8* %165, i8** %str, align 8
  %str97 = load i8*, i8** %str, align 8
  %167 = call i64 @strlen(i8* %str97)
  %addtmp98 = add nsw i64 %167, 1
  %168 = trunc i64 %addtmp98 to i32
  %len = alloca i32
  %169 = bitcast i32* %len to i8*
  store i8* %169, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %168, i32* %len, align 4
  %len99 = load i32, i32* %len, align 4
  call void @alignment(i32* %len)
  %len100 = load i32, i32* %len, align 4
  %divtmp = sdiv i32 %len100, 4
  store i32 %divtmp, i32* %len, align 4
  %170 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %171 = bitcast i8* %170 to i32**
  %p101 = load i32*, i32** %171, align 8
  %len102 = load i32, i32* %len, align 4
  %172 = ptrtoint i32* %p101 to i64
  %sext1103 = sext i32 %len102 to i64
  %multtmp104 = mul nsw i64 %sext1103, 4
  %addtmp105 = add nsw i64 %172, %multtmp104
  %173 = inttoptr i64 %addtmp105 to i32*
  %174 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %175 = bitcast i8* %174 to i32**
  store i32* %173, i32** %175, align 8
  %len106 = load i32, i32* %len, align 4
  %176 = ptrtoint i32* %173 to i64
  %sext2 = sext i32 %len106 to i64
  %multtmp107 = mul nsw i64 %sext2, 4
  %subtmp108 = sub nsw i64 %176, %multtmp107
  %177 = inttoptr i64 %subtmp108 to i32*
  %str109 = load i8*, i8** %str, align 8
  %178 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %179 = bitcast i8* %178 to %sVMInfo**
  %info110 = load %sVMInfo*, %sVMInfo** %179, align 8
  %180 = call i32 @create_string_object(i8* %str109, %sVMInfo* %info110)
  %obj111 = alloca i32
  %181 = bitcast i32* %obj111 to i8*
  store i8* %181, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %180, i32* %obj111, align 4
  %182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %183 = bitcast i8* %182 to %CLVALUE**
  %stack_ptr112 = load %CLVALUE*, %CLVALUE** %183, align 8
  %obj113 = load i32, i32* %obj111, align 4
  %184 = bitcast %CLVALUE* %stack_ptr112 to i32*
  store i32 %obj113, i32* %184, align 4
  %185 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %186 = bitcast i8* %185 to %CLVALUE**
  %stack_ptr114 = load %CLVALUE*, %CLVALUE** %186, align 8
  %187 = ptrtoint %CLVALUE* %stack_ptr114 to i64
  %addtmp115 = add nsw i64 %187, 4
  %188 = inttoptr i64 %addtmp115 to %CLVALUE*
  %189 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %190 = bitcast i8* %189 to %CLVALUE**
  store %CLVALUE* %188, %CLVALUE** %190, align 8
  %191 = ptrtoint %CLVALUE* %188 to i64
  %subtmp116 = sub nsw i64 %191, 4
  %192 = inttoptr i64 %subtmp116 to %CLVALUE*
  br label %end_block

cond_else_block94:                                ; preds = %after_break117, %cond_else_block83
  %eqtmpY120 = icmp eq i32 %op35, 16
  br i1 %eqtmpY120, label %cond_then_block118, label %cond_else_block119

after_break117:                                   ; No predecessors!
  br label %cond_else_block94

cond_then_block118:                               ; preds = %cond_else_block94
  %193 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %194 = bitcast i8* %193 to i32**
  %p121 = load i32*, i32** %194, align 8
  %195 = bitcast i32* %p121 to i8*
  %type_name = alloca i8*
  %196 = bitcast i8** %type_name to i8*
  store i8* %196, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i8* %195, i8** %type_name, align 8
  %type_name122 = load i8*, i8** %type_name, align 8
  %197 = call i64 @strlen(i8* %type_name122)
  %addtmp123 = add nsw i64 %197, 1
  %198 = trunc i64 %addtmp123 to i32
  %len124 = alloca i32
  %199 = bitcast i32* %len124 to i8*
  store i8* %199, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %198, i32* %len124, align 4
  %len125 = load i32, i32* %len124, align 4
  call void @alignment(i32* %len124)
  %len126 = load i32, i32* %len124, align 4
  %divtmp127 = sdiv i32 %len126, 4
  store i32 %divtmp127, i32* %len124, align 4
  %200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %201 = bitcast i8* %200 to i32**
  %p128 = load i32*, i32** %201, align 8
  %len129 = load i32, i32* %len124, align 4
  %202 = ptrtoint i32* %p128 to i64
  %sext1130 = sext i32 %len129 to i64
  %multtmp131 = mul nsw i64 %sext1130, 4
  %addtmp132 = add nsw i64 %202, %multtmp131
  %203 = inttoptr i64 %addtmp132 to i32*
  %204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %205 = bitcast i8* %204 to i32**
  store i32* %203, i32** %205, align 8
  %len133 = load i32, i32* %len124, align 4
  %206 = ptrtoint i32* %203 to i64
  %sext2134 = sext i32 %len133 to i64
  %multtmp135 = mul nsw i64 %sext2134, 4
  %subtmp136 = sub nsw i64 %206, %multtmp135
  %207 = inttoptr i64 %subtmp136 to i32*
  %type_name137 = load i8*, i8** %type_name, align 8
  %208 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %209 = bitcast i8* %208 to %sVMInfo**
  %info138 = load %sVMInfo*, %sVMInfo** %209, align 8
  %210 = call %sCLType* @parse_type_runtime(i8* %type_name137, %sVMInfo* %info138)
  %type = alloca %sCLType*
  %211 = bitcast %sCLType** %type to i8*
  store i8* %211, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLType* %210, %sCLType** %type, align 8
  %type139 = load %sCLType*, %sCLType** %type, align 8
  %eqtmpX = icmp eq %sCLType* %type139, null
  br i1 %eqtmpX, label %cond_jump_then140, label %cond_end141

cond_else_block119:                               ; preds = %after_break157, %cond_else_block94
  %eqtmpY160 = icmp eq i32 %op35, 18
  br i1 %eqtmpY160, label %cond_then_block158, label %cond_else_block159

cond_jump_then140:                                ; preds = %cond_then_block118
  %212 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %213 = bitcast i8* %212 to %CLVALUE**
  %stack_ptr142 = load %CLVALUE*, %CLVALUE** %213, align 8
  %214 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %215 = bitcast i8* %214 to %sVMInfo**
  %info143 = load %sVMInfo*, %sVMInfo** %215, align 8
  %216 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %217 = bitcast i8* %216 to i8**
  %type_name144 = load i8*, i8** %217, align 8
  %218 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.97, i32 0, i32 0), i8* %type_name144)
  call void @vm_err_msg(%CLVALUE** %213, %sVMInfo* %info143, i8* %218)
  %219 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %220 = bitcast i8* %219 to %sVMInfo**
  %info145 = load %sVMInfo*, %sVMInfo** %220, align 8
  %221 = getelementptr inbounds %sVMInfo, %sVMInfo* %info145, i32 0, i32 5
  %222 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %221, align 8
  %223 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %224 = bitcast i8* %223 to %sCLStackFrame*
  %null_parent_stack_frame146 = load %sCLStackFrame, %sCLStackFrame* %224, align 8
  %225 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame11_src/vm"(%vector__sCLStackFrame* %222, %sCLStackFrame %null_parent_stack_frame146)
  %226 = bitcast [8192 x i8*]* %lvtable to i8*
  %227 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %226, i64 65536)
  %228 = ptrtoint i8* %218 to i64
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %cond_then_block147, label %cond_end148

cond_end141:                                      ; preds = %cond_then_block118
  %type149 = load %sCLType*, %sCLType** %type, align 8
  %230 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %231 = bitcast i8* %230 to %sVMInfo**
  %info150 = load %sVMInfo*, %sVMInfo** %231, align 8
  %232 = call i32 @create_object(%sCLType* %type149, %sVMInfo* %info150)
  %obj151 = alloca i32
  %233 = bitcast i32* %obj151 to i8*
  store i8* %233, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %232, i32* %obj151, align 4
  %234 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %235 = bitcast i8* %234 to %CLVALUE**
  %stack_ptr152 = load %CLVALUE*, %CLVALUE** %235, align 8
  %obj153 = load i32, i32* %obj151, align 4
  %236 = bitcast %CLVALUE* %stack_ptr152 to i32*
  store i32 %obj153, i32* %236, align 4
  %237 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %238 = bitcast i8* %237 to %CLVALUE**
  %stack_ptr154 = load %CLVALUE*, %CLVALUE** %238, align 8
  %239 = ptrtoint %CLVALUE* %stack_ptr154 to i64
  %addtmp155 = add nsw i64 %239, 4
  %240 = inttoptr i64 %addtmp155 to %CLVALUE*
  %241 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %242 = bitcast i8* %241 to %CLVALUE**
  store %CLVALUE* %240, %CLVALUE** %242, align 8
  %243 = ptrtoint %CLVALUE* %240 to i64
  %subtmp156 = sub nsw i64 %243, 4
  %244 = inttoptr i64 %subtmp156 to %CLVALUE*
  br label %end_block

cond_then_block147:                               ; preds = %cond_jump_then140
  br label %cond_end148

cond_end148:                                      ; preds = %cond_then_block147, %cond_jump_then140
  call void @xfree(i8* %218)
  ret i1 false

after_break157:                                   ; No predecessors!
  br label %cond_else_block119

cond_then_block158:                               ; preds = %cond_else_block119
  %245 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %246 = bitcast i8* %245 to i32**
  %p161 = load i32*, i32** %246, align 8
  %247 = bitcast i32* %p161 to i8*
  %type_name162 = alloca i8*
  %248 = bitcast i8** %type_name162 to i8*
  store i8* %248, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i8* %247, i8** %type_name162, align 8
  %type_name163 = load i8*, i8** %type_name162, align 8
  %249 = call i64 @strlen(i8* %type_name163)
  %addtmp164 = add nsw i64 %249, 1
  %250 = trunc i64 %addtmp164 to i32
  %len165 = alloca i32
  %251 = bitcast i32* %len165 to i8*
  store i8* %251, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %250, i32* %len165, align 4
  %len166 = load i32, i32* %len165, align 4
  call void @alignment(i32* %len165)
  %len167 = load i32, i32* %len165, align 4
  %divtmp168 = sdiv i32 %len167, 4
  store i32 %divtmp168, i32* %len165, align 4
  %252 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %253 = bitcast i8* %252 to i32**
  %p169 = load i32*, i32** %253, align 8
  %len170 = load i32, i32* %len165, align 4
  %254 = ptrtoint i32* %p169 to i64
  %sext1171 = sext i32 %len170 to i64
  %multtmp172 = mul nsw i64 %sext1171, 4
  %addtmp173 = add nsw i64 %254, %multtmp172
  %255 = inttoptr i64 %addtmp173 to i32*
  %256 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %257 = bitcast i8* %256 to i32**
  store i32* %255, i32** %257, align 8
  %len174 = load i32, i32* %len165, align 4
  %258 = ptrtoint i32* %255 to i64
  %sext2175 = sext i32 %len174 to i64
  %multtmp176 = mul nsw i64 %sext2175, 4
  %subtmp177 = sub nsw i64 %258, %multtmp176
  %259 = inttoptr i64 %subtmp177 to i32*
  %260 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %261 = bitcast i8* %260 to i32**
  %p178 = load i32*, i32** %261, align 8
  %derefference_value179 = load i32, i32* %p178, align 8
  %codes_len = alloca i32
  %262 = bitcast i32* %codes_len to i8*
  store i8* %262, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %derefference_value179, i32* %codes_len, align 4
  %263 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %264 = bitcast i8* %263 to i32**
  %p180 = load i32*, i32** %264, align 8
  %265 = ptrtoint i32* %p180 to i64
  %addtmp181 = add nsw i64 %265, 4
  %266 = inttoptr i64 %addtmp181 to i32*
  %267 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %268 = bitcast i8* %267 to i32**
  store i32* %266, i32** %268, align 8
  %269 = ptrtoint i32* %266 to i64
  %subtmp182 = sub nsw i64 %269, 4
  %270 = inttoptr i64 %subtmp182 to i32*
  %271 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %272 = bitcast i8* %271 to i32**
  %p183 = load i32*, i32** %272, align 8
  %codes184 = alloca i32*
  %273 = bitcast i32** %codes184 to i8*
  store i8* %273, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32* %p183, i32** %codes184, align 8
  %274 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %275 = bitcast i8* %274 to i32**
  %p185 = load i32*, i32** %275, align 8
  %codes_len186 = load i32, i32* %codes_len, align 4
  %divtmp187 = sdiv i32 %codes_len186, 4
  %276 = ptrtoint i32* %p185 to i64
  %sext1188 = sext i32 %divtmp187 to i64
  %multtmp189 = mul nsw i64 %sext1188, 4
  %addtmp190 = add nsw i64 %276, %multtmp189
  %277 = inttoptr i64 %addtmp190 to i32*
  %278 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %279 = bitcast i8* %278 to i32**
  store i32* %277, i32** %279, align 8
  %codes_len191 = load i32, i32* %codes_len, align 4
  %divtmp192 = sdiv i32 %codes_len191, 4
  %280 = ptrtoint i32* %277 to i64
  %sext2193 = sext i32 %divtmp192 to i64
  %multtmp194 = mul nsw i64 %sext2193, 4
  %subtmp195 = sub nsw i64 %280, %multtmp194
  %281 = inttoptr i64 %subtmp195 to i32*
  %type_name196 = load i8*, i8** %type_name162, align 8
  %codes197 = load i32*, i32** %codes184, align 8
  %codes_len198 = load i32, i32* %codes_len, align 4
  %282 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %283 = bitcast i8* %282 to %sVMInfo**
  %info199 = load %sVMInfo*, %sVMInfo** %283, align 8
  %284 = call i32 @create_block_object(i8* %type_name196, i32* %codes197, i32 %codes_len198, %sVMInfo* %info199)
  %obj200 = alloca i32
  %285 = bitcast i32* %obj200 to i8*
  store i8* %285, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %284, i32* %obj200, align 4
  %286 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %287 = bitcast i8* %286 to %CLVALUE**
  %stack_ptr201 = load %CLVALUE*, %CLVALUE** %287, align 8
  %obj202 = load i32, i32* %obj200, align 4
  %288 = bitcast %CLVALUE* %stack_ptr201 to i32*
  store i32 %obj202, i32* %288, align 4
  %289 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %290 = bitcast i8* %289 to %CLVALUE**
  %stack_ptr203 = load %CLVALUE*, %CLVALUE** %290, align 8
  %291 = ptrtoint %CLVALUE* %stack_ptr203 to i64
  %addtmp204 = add nsw i64 %291, 4
  %292 = inttoptr i64 %addtmp204 to %CLVALUE*
  %293 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %294 = bitcast i8* %293 to %CLVALUE**
  store %CLVALUE* %292, %CLVALUE** %294, align 8
  %295 = ptrtoint %CLVALUE* %292 to i64
  %subtmp205 = sub nsw i64 %295, 4
  %296 = inttoptr i64 %subtmp205 to %CLVALUE*
  br label %end_block

cond_else_block159:                               ; preds = %after_break206, %cond_else_block119
  %eqtmpY209 = icmp eq i32 %op35, 3
  br i1 %eqtmpY209, label %cond_then_block207, label %cond_else_block208

after_break206:                                   ; No predecessors!
  br label %cond_else_block159

cond_then_block207:                               ; preds = %cond_else_block159
  %297 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %298 = bitcast i8* %297 to %CLVALUE**
  %stack_ptr210 = load %CLVALUE*, %CLVALUE** %298, align 8
  %299 = ptrtoint %CLVALUE* %stack_ptr210 to i64
  %subtmp211 = sub nsw i64 %299, 8
  %300 = inttoptr i64 %subtmp211 to %CLVALUE*
  %301 = bitcast %CLVALUE* %300 to i32*
  %302 = load i32, i32* %301, align 4
  %lvalue = alloca i32
  %303 = bitcast i32* %lvalue to i8*
  store i8* %303, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %302, i32* %lvalue, align 4
  %304 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %305 = bitcast i8* %304 to %CLVALUE**
  %stack_ptr212 = load %CLVALUE*, %CLVALUE** %305, align 8
  %306 = ptrtoint %CLVALUE* %stack_ptr212 to i64
  %subtmp213 = sub nsw i64 %306, 4
  %307 = inttoptr i64 %subtmp213 to %CLVALUE*
  %308 = bitcast %CLVALUE* %307 to i32*
  %309 = load i32, i32* %308, align 4
  %rvalue = alloca i32
  %310 = bitcast i32* %rvalue to i8*
  store i8* %310, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %309, i32* %rvalue, align 4
  %lvalue214 = load i32, i32* %lvalue, align 4
  %311 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue214)
  %312 = bitcast %sCLHeapMem* %311 to %sCLInt*
  %lvalue_data = alloca %sCLInt*
  %313 = bitcast %sCLInt** %lvalue_data to i8*
  store i8* %313, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %312, %sCLInt** %lvalue_data, align 8
  %rvalue215 = load i32, i32* %rvalue, align 4
  %314 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue215)
  %315 = bitcast %sCLHeapMem* %314 to %sCLInt*
  %rvalue_data = alloca %sCLInt*
  %316 = bitcast %sCLInt** %rvalue_data to i8*
  store i8* %316, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %315, %sCLInt** %rvalue_data, align 8
  %lvalue_data216 = load %sCLInt*, %sCLInt** %lvalue_data, align 8
  %317 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data216, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %rvalue_data217 = load %sCLInt*, %sCLInt** %rvalue_data, align 8
  %319 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data217, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %addtmp218 = add nsw i32 %318, %320
  %value = alloca i32
  %321 = bitcast i32* %value to i8*
  store i8* %321, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %addtmp218, i32* %value, align 4
  %value219 = load i32, i32* %value, align 4
  %322 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %323 = bitcast i8* %322 to %sVMInfo**
  %info220 = load %sVMInfo*, %sVMInfo** %323, align 8
  %324 = call i32 @create_int_object(i32 %value219, %sVMInfo* %info220)
  %new_obj = alloca i32
  %325 = bitcast i32* %new_obj to i8*
  store i8* %325, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %324, i32* %new_obj, align 4
  %326 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %327 = bitcast i8* %326 to %CLVALUE**
  %stack_ptr221 = load %CLVALUE*, %CLVALUE** %327, align 8
  %328 = ptrtoint %CLVALUE* %stack_ptr221 to i64
  %subtmp222 = sub nsw i64 %328, 8
  %329 = inttoptr i64 %subtmp222 to %CLVALUE*
  %330 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %331 = bitcast i8* %330 to %CLVALUE**
  store %CLVALUE* %329, %CLVALUE** %331, align 8
  %332 = ptrtoint %CLVALUE* %329 to i64
  %addtmp223 = add nsw i64 %332, 8
  %333 = inttoptr i64 %addtmp223 to %CLVALUE*
  %334 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %335 = bitcast i8* %334 to %CLVALUE**
  %stack_ptr224 = load %CLVALUE*, %CLVALUE** %335, align 8
  %new_obj225 = load i32, i32* %new_obj, align 4
  %336 = bitcast %CLVALUE* %stack_ptr224 to i32*
  store i32 %new_obj225, i32* %336, align 4
  %337 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %338 = bitcast i8* %337 to %CLVALUE**
  %stack_ptr226 = load %CLVALUE*, %CLVALUE** %338, align 8
  %339 = ptrtoint %CLVALUE* %stack_ptr226 to i64
  %addtmp227 = add nsw i64 %339, 4
  %340 = inttoptr i64 %addtmp227 to %CLVALUE*
  %341 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %342 = bitcast i8* %341 to %CLVALUE**
  store %CLVALUE* %340, %CLVALUE** %342, align 8
  %343 = ptrtoint %CLVALUE* %340 to i64
  %subtmp228 = sub nsw i64 %343, 4
  %344 = inttoptr i64 %subtmp228 to %CLVALUE*
  br label %end_block

cond_else_block208:                               ; preds = %after_break229, %cond_else_block159
  %eqtmpY232 = icmp eq i32 %op35, 4
  br i1 %eqtmpY232, label %cond_then_block230, label %cond_else_block231

after_break229:                                   ; No predecessors!
  br label %cond_else_block208

cond_then_block230:                               ; preds = %cond_else_block208
  %345 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %346 = bitcast i8* %345 to %CLVALUE**
  %stack_ptr233 = load %CLVALUE*, %CLVALUE** %346, align 8
  %347 = ptrtoint %CLVALUE* %stack_ptr233 to i64
  %subtmp234 = sub nsw i64 %347, 8
  %348 = inttoptr i64 %subtmp234 to %CLVALUE*
  %349 = bitcast %CLVALUE* %348 to i32*
  %350 = load i32, i32* %349, align 4
  %lvalue235 = alloca i32
  %351 = bitcast i32* %lvalue235 to i8*
  store i8* %351, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %350, i32* %lvalue235, align 4
  %352 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %353 = bitcast i8* %352 to %CLVALUE**
  %stack_ptr236 = load %CLVALUE*, %CLVALUE** %353, align 8
  %354 = ptrtoint %CLVALUE* %stack_ptr236 to i64
  %subtmp237 = sub nsw i64 %354, 4
  %355 = inttoptr i64 %subtmp237 to %CLVALUE*
  %356 = bitcast %CLVALUE* %355 to i32*
  %357 = load i32, i32* %356, align 4
  %rvalue238 = alloca i32
  %358 = bitcast i32* %rvalue238 to i8*
  store i8* %358, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %357, i32* %rvalue238, align 4
  %lvalue239 = load i32, i32* %lvalue235, align 4
  %359 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue239)
  %360 = bitcast %sCLHeapMem* %359 to %sCLInt*
  %lvalue_data240 = alloca %sCLInt*
  %361 = bitcast %sCLInt** %lvalue_data240 to i8*
  store i8* %361, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %360, %sCLInt** %lvalue_data240, align 8
  %rvalue241 = load i32, i32* %rvalue238, align 4
  %362 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue241)
  %363 = bitcast %sCLHeapMem* %362 to %sCLInt*
  %rvalue_data242 = alloca %sCLInt*
  %364 = bitcast %sCLInt** %rvalue_data242 to i8*
  store i8* %364, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %363, %sCLInt** %rvalue_data242, align 8
  %lvalue_data243 = load %sCLInt*, %sCLInt** %lvalue_data240, align 8
  %365 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data243, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %rvalue_data244 = load %sCLInt*, %sCLInt** %rvalue_data242, align 8
  %367 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data244, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %subttmp = sub nsw i32 %366, %368
  %value245 = alloca i32
  %369 = bitcast i32* %value245 to i8*
  store i8* %369, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %subttmp, i32* %value245, align 4
  %value246 = load i32, i32* %value245, align 4
  %370 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %371 = bitcast i8* %370 to %sVMInfo**
  %info247 = load %sVMInfo*, %sVMInfo** %371, align 8
  %372 = call i32 @create_int_object(i32 %value246, %sVMInfo* %info247)
  %new_obj248 = alloca i32
  %373 = bitcast i32* %new_obj248 to i8*
  store i8* %373, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %372, i32* %new_obj248, align 4
  %374 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %375 = bitcast i8* %374 to %CLVALUE**
  %stack_ptr249 = load %CLVALUE*, %CLVALUE** %375, align 8
  %376 = ptrtoint %CLVALUE* %stack_ptr249 to i64
  %subtmp250 = sub nsw i64 %376, 8
  %377 = inttoptr i64 %subtmp250 to %CLVALUE*
  %378 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %379 = bitcast i8* %378 to %CLVALUE**
  store %CLVALUE* %377, %CLVALUE** %379, align 8
  %380 = ptrtoint %CLVALUE* %377 to i64
  %addtmp251 = add nsw i64 %380, 8
  %381 = inttoptr i64 %addtmp251 to %CLVALUE*
  %382 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %383 = bitcast i8* %382 to %CLVALUE**
  %stack_ptr252 = load %CLVALUE*, %CLVALUE** %383, align 8
  %new_obj253 = load i32, i32* %new_obj248, align 4
  %384 = bitcast %CLVALUE* %stack_ptr252 to i32*
  store i32 %new_obj253, i32* %384, align 4
  %385 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %386 = bitcast i8* %385 to %CLVALUE**
  %stack_ptr254 = load %CLVALUE*, %CLVALUE** %386, align 8
  %387 = ptrtoint %CLVALUE* %stack_ptr254 to i64
  %addtmp255 = add nsw i64 %387, 4
  %388 = inttoptr i64 %addtmp255 to %CLVALUE*
  %389 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %390 = bitcast i8* %389 to %CLVALUE**
  store %CLVALUE* %388, %CLVALUE** %390, align 8
  %391 = ptrtoint %CLVALUE* %388 to i64
  %subtmp256 = sub nsw i64 %391, 4
  %392 = inttoptr i64 %subtmp256 to %CLVALUE*
  br label %end_block

cond_else_block231:                               ; preds = %after_break257, %cond_else_block208
  %eqtmpY260 = icmp eq i32 %op35, 7
  br i1 %eqtmpY260, label %cond_then_block258, label %cond_else_block259

after_break257:                                   ; No predecessors!
  br label %cond_else_block231

cond_then_block258:                               ; preds = %cond_else_block231
  %393 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %394 = bitcast i8* %393 to %CLVALUE**
  %stack_ptr261 = load %CLVALUE*, %CLVALUE** %394, align 8
  %395 = ptrtoint %CLVALUE* %stack_ptr261 to i64
  %subtmp262 = sub nsw i64 %395, 8
  %396 = inttoptr i64 %subtmp262 to %CLVALUE*
  %397 = bitcast %CLVALUE* %396 to i32*
  %398 = load i32, i32* %397, align 4
  %lvalue263 = alloca i32
  %399 = bitcast i32* %lvalue263 to i8*
  store i8* %399, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %398, i32* %lvalue263, align 4
  %400 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %401 = bitcast i8* %400 to %CLVALUE**
  %stack_ptr264 = load %CLVALUE*, %CLVALUE** %401, align 8
  %402 = ptrtoint %CLVALUE* %stack_ptr264 to i64
  %subtmp265 = sub nsw i64 %402, 4
  %403 = inttoptr i64 %subtmp265 to %CLVALUE*
  %404 = bitcast %CLVALUE* %403 to i32*
  %405 = load i32, i32* %404, align 4
  %rvalue266 = alloca i32
  %406 = bitcast i32* %rvalue266 to i8*
  store i8* %406, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %405, i32* %rvalue266, align 4
  %lvalue267 = load i32, i32* %lvalue263, align 4
  %407 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue267)
  %408 = bitcast %sCLHeapMem* %407 to %sCLInt*
  %lvalue_data268 = alloca %sCLInt*
  %409 = bitcast %sCLInt** %lvalue_data268 to i8*
  store i8* %409, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %408, %sCLInt** %lvalue_data268, align 8
  %rvalue269 = load i32, i32* %rvalue266, align 4
  %410 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue269)
  %411 = bitcast %sCLHeapMem* %410 to %sCLInt*
  %rvalue_data270 = alloca %sCLInt*
  %412 = bitcast %sCLInt** %rvalue_data270 to i8*
  store i8* %412, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %411, %sCLInt** %rvalue_data270, align 8
  %lvalue_data271 = load %sCLInt*, %sCLInt** %lvalue_data268, align 8
  %413 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data271, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %rvalue_data272 = load %sCLInt*, %sCLInt** %rvalue_data270, align 8
  %415 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data272, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %eqtmpX273 = icmp eq i32 %414, %416
  %sext13 = zext i1 %eqtmpX273 to i32
  %value274 = alloca i32
  %417 = bitcast i32* %value274 to i8*
  store i8* %417, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13, i32* %value274, align 4
  %value275 = load i32, i32* %value274, align 4
  %418 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %419 = bitcast i8* %418 to %sVMInfo**
  %info276 = load %sVMInfo*, %sVMInfo** %419, align 8
  %420 = call i32 @create_bool_object(i32 %value275, %sVMInfo* %info276)
  %new_obj277 = alloca i32
  %421 = bitcast i32* %new_obj277 to i8*
  store i8* %421, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %420, i32* %new_obj277, align 4
  %422 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %423 = bitcast i8* %422 to %CLVALUE**
  %stack_ptr278 = load %CLVALUE*, %CLVALUE** %423, align 8
  %424 = ptrtoint %CLVALUE* %stack_ptr278 to i64
  %subtmp279 = sub nsw i64 %424, 8
  %425 = inttoptr i64 %subtmp279 to %CLVALUE*
  %426 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %427 = bitcast i8* %426 to %CLVALUE**
  store %CLVALUE* %425, %CLVALUE** %427, align 8
  %428 = ptrtoint %CLVALUE* %425 to i64
  %addtmp280 = add nsw i64 %428, 8
  %429 = inttoptr i64 %addtmp280 to %CLVALUE*
  %430 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %431 = bitcast i8* %430 to %CLVALUE**
  %stack_ptr281 = load %CLVALUE*, %CLVALUE** %431, align 8
  %new_obj282 = load i32, i32* %new_obj277, align 4
  %432 = bitcast %CLVALUE* %stack_ptr281 to i32*
  store i32 %new_obj282, i32* %432, align 4
  %433 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %434 = bitcast i8* %433 to %CLVALUE**
  %stack_ptr283 = load %CLVALUE*, %CLVALUE** %434, align 8
  %435 = ptrtoint %CLVALUE* %stack_ptr283 to i64
  %addtmp284 = add nsw i64 %435, 4
  %436 = inttoptr i64 %addtmp284 to %CLVALUE*
  %437 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %438 = bitcast i8* %437 to %CLVALUE**
  store %CLVALUE* %436, %CLVALUE** %438, align 8
  %439 = ptrtoint %CLVALUE* %436 to i64
  %subtmp285 = sub nsw i64 %439, 4
  %440 = inttoptr i64 %subtmp285 to %CLVALUE*
  br label %end_block

cond_else_block259:                               ; preds = %after_break286, %cond_else_block231
  %eqtmpY289 = icmp eq i32 %op35, 32
  br i1 %eqtmpY289, label %cond_then_block287, label %cond_else_block288

after_break286:                                   ; No predecessors!
  br label %cond_else_block259

cond_then_block287:                               ; preds = %cond_else_block259
  %441 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %442 = bitcast i8* %441 to %CLVALUE**
  %stack_ptr290 = load %CLVALUE*, %CLVALUE** %442, align 8
  %443 = ptrtoint %CLVALUE* %stack_ptr290 to i64
  %subtmp291 = sub nsw i64 %443, 8
  %444 = inttoptr i64 %subtmp291 to %CLVALUE*
  %445 = bitcast %CLVALUE* %444 to i32*
  %446 = load i32, i32* %445, align 4
  %lvalue292 = alloca i32
  %447 = bitcast i32* %lvalue292 to i8*
  store i8* %447, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %446, i32* %lvalue292, align 4
  %448 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %449 = bitcast i8* %448 to %CLVALUE**
  %stack_ptr293 = load %CLVALUE*, %CLVALUE** %449, align 8
  %450 = ptrtoint %CLVALUE* %stack_ptr293 to i64
  %subtmp294 = sub nsw i64 %450, 4
  %451 = inttoptr i64 %subtmp294 to %CLVALUE*
  %452 = bitcast %CLVALUE* %451 to i32*
  %453 = load i32, i32* %452, align 4
  %rvalue295 = alloca i32
  %454 = bitcast i32* %rvalue295 to i8*
  store i8* %454, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %453, i32* %rvalue295, align 4
  %lvalue296 = load i32, i32* %lvalue292, align 4
  %rvalue297 = load i32, i32* %rvalue295, align 4
  %eqtmpX298 = icmp eq i32 %lvalue296, %rvalue297
  %sext13299 = zext i1 %eqtmpX298 to i32
  %value300 = alloca i32
  %455 = bitcast i32* %value300 to i8*
  store i8* %455, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %sext13299, i32* %value300, align 4
  %value301 = load i32, i32* %value300, align 4
  %456 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %457 = bitcast i8* %456 to %sVMInfo**
  %info302 = load %sVMInfo*, %sVMInfo** %457, align 8
  %458 = call i32 @create_bool_object(i32 %value301, %sVMInfo* %info302)
  %new_obj303 = alloca i32
  %459 = bitcast i32* %new_obj303 to i8*
  store i8* %459, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %458, i32* %new_obj303, align 4
  %460 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %461 = bitcast i8* %460 to %CLVALUE**
  %stack_ptr304 = load %CLVALUE*, %CLVALUE** %461, align 8
  %462 = ptrtoint %CLVALUE* %stack_ptr304 to i64
  %subtmp305 = sub nsw i64 %462, 8
  %463 = inttoptr i64 %subtmp305 to %CLVALUE*
  %464 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %465 = bitcast i8* %464 to %CLVALUE**
  store %CLVALUE* %463, %CLVALUE** %465, align 8
  %466 = ptrtoint %CLVALUE* %463 to i64
  %addtmp306 = add nsw i64 %466, 8
  %467 = inttoptr i64 %addtmp306 to %CLVALUE*
  %468 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %469 = bitcast i8* %468 to %CLVALUE**
  %stack_ptr307 = load %CLVALUE*, %CLVALUE** %469, align 8
  %new_obj308 = load i32, i32* %new_obj303, align 4
  %470 = bitcast %CLVALUE* %stack_ptr307 to i32*
  store i32 %new_obj308, i32* %470, align 4
  %471 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %472 = bitcast i8* %471 to %CLVALUE**
  %stack_ptr309 = load %CLVALUE*, %CLVALUE** %472, align 8
  %473 = ptrtoint %CLVALUE* %stack_ptr309 to i64
  %addtmp310 = add nsw i64 %473, 4
  %474 = inttoptr i64 %addtmp310 to %CLVALUE*
  %475 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %476 = bitcast i8* %475 to %CLVALUE**
  store %CLVALUE* %474, %CLVALUE** %476, align 8
  %477 = ptrtoint %CLVALUE* %474 to i64
  %subtmp311 = sub nsw i64 %477, 4
  %478 = inttoptr i64 %subtmp311 to %CLVALUE*
  br label %end_block

cond_else_block288:                               ; preds = %after_break312, %cond_else_block259
  %eqtmpY315 = icmp eq i32 %op35, 8
  br i1 %eqtmpY315, label %cond_then_block313, label %cond_else_block314

after_break312:                                   ; No predecessors!
  br label %cond_else_block288

cond_then_block313:                               ; preds = %cond_else_block288
  %479 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %480 = bitcast i8* %479 to %CLVALUE**
  %stack_ptr316 = load %CLVALUE*, %CLVALUE** %480, align 8
  %481 = ptrtoint %CLVALUE* %stack_ptr316 to i64
  %subtmp317 = sub nsw i64 %481, 8
  %482 = inttoptr i64 %subtmp317 to %CLVALUE*
  %483 = bitcast %CLVALUE* %482 to i32*
  %484 = load i32, i32* %483, align 4
  %lvalue318 = alloca i32
  %485 = bitcast i32* %lvalue318 to i8*
  store i8* %485, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %484, i32* %lvalue318, align 4
  %486 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %487 = bitcast i8* %486 to %CLVALUE**
  %stack_ptr319 = load %CLVALUE*, %CLVALUE** %487, align 8
  %488 = ptrtoint %CLVALUE* %stack_ptr319 to i64
  %subtmp320 = sub nsw i64 %488, 4
  %489 = inttoptr i64 %subtmp320 to %CLVALUE*
  %490 = bitcast %CLVALUE* %489 to i32*
  %491 = load i32, i32* %490, align 4
  %rvalue321 = alloca i32
  %492 = bitcast i32* %rvalue321 to i8*
  store i8* %492, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %491, i32* %rvalue321, align 4
  %lvalue322 = load i32, i32* %lvalue318, align 4
  %493 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue322)
  %494 = bitcast %sCLHeapMem* %493 to %sCLInt*
  %lvalue_data323 = alloca %sCLInt*
  %495 = bitcast %sCLInt** %lvalue_data323 to i8*
  store i8* %495, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %494, %sCLInt** %lvalue_data323, align 8
  %rvalue324 = load i32, i32* %rvalue321, align 4
  %496 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue324)
  %497 = bitcast %sCLHeapMem* %496 to %sCLInt*
  %rvalue_data325 = alloca %sCLInt*
  %498 = bitcast %sCLInt** %rvalue_data325 to i8*
  store i8* %498, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %497, %sCLInt** %rvalue_data325, align 8
  %lvalue_data326 = load %sCLInt*, %sCLInt** %lvalue_data323, align 8
  %499 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data326, i32 0, i32 3
  %500 = load i32, i32* %499, align 4
  %rvalue_data327 = load %sCLInt*, %sCLInt** %rvalue_data325, align 8
  %501 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data327, i32 0, i32 3
  %502 = load i32, i32* %501, align 4
  %noteqtmp = icmp ne i32 %500, %502
  %sext13328 = zext i1 %noteqtmp to i32
  %value329 = alloca i32
  %503 = bitcast i32* %value329 to i8*
  store i8* %503, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13328, i32* %value329, align 4
  %value330 = load i32, i32* %value329, align 4
  %504 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %505 = bitcast i8* %504 to %sVMInfo**
  %info331 = load %sVMInfo*, %sVMInfo** %505, align 8
  %506 = call i32 @create_bool_object(i32 %value330, %sVMInfo* %info331)
  %new_obj332 = alloca i32
  %507 = bitcast i32* %new_obj332 to i8*
  store i8* %507, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %506, i32* %new_obj332, align 4
  %508 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %509 = bitcast i8* %508 to %CLVALUE**
  %stack_ptr333 = load %CLVALUE*, %CLVALUE** %509, align 8
  %510 = ptrtoint %CLVALUE* %stack_ptr333 to i64
  %subtmp334 = sub nsw i64 %510, 8
  %511 = inttoptr i64 %subtmp334 to %CLVALUE*
  %512 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %513 = bitcast i8* %512 to %CLVALUE**
  store %CLVALUE* %511, %CLVALUE** %513, align 8
  %514 = ptrtoint %CLVALUE* %511 to i64
  %addtmp335 = add nsw i64 %514, 8
  %515 = inttoptr i64 %addtmp335 to %CLVALUE*
  %516 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %517 = bitcast i8* %516 to %CLVALUE**
  %stack_ptr336 = load %CLVALUE*, %CLVALUE** %517, align 8
  %new_obj337 = load i32, i32* %new_obj332, align 4
  %518 = bitcast %CLVALUE* %stack_ptr336 to i32*
  store i32 %new_obj337, i32* %518, align 4
  %519 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %520 = bitcast i8* %519 to %CLVALUE**
  %stack_ptr338 = load %CLVALUE*, %CLVALUE** %520, align 8
  %521 = ptrtoint %CLVALUE* %stack_ptr338 to i64
  %addtmp339 = add nsw i64 %521, 4
  %522 = inttoptr i64 %addtmp339 to %CLVALUE*
  %523 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %524 = bitcast i8* %523 to %CLVALUE**
  store %CLVALUE* %522, %CLVALUE** %524, align 8
  %525 = ptrtoint %CLVALUE* %522 to i64
  %subtmp340 = sub nsw i64 %525, 4
  %526 = inttoptr i64 %subtmp340 to %CLVALUE*
  br label %end_block

cond_else_block314:                               ; preds = %after_break341, %cond_else_block288
  %eqtmpY344 = icmp eq i32 %op35, 33
  br i1 %eqtmpY344, label %cond_then_block342, label %cond_else_block343

after_break341:                                   ; No predecessors!
  br label %cond_else_block314

cond_then_block342:                               ; preds = %cond_else_block314
  %527 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %528 = bitcast i8* %527 to %CLVALUE**
  %stack_ptr345 = load %CLVALUE*, %CLVALUE** %528, align 8
  %529 = ptrtoint %CLVALUE* %stack_ptr345 to i64
  %subtmp346 = sub nsw i64 %529, 8
  %530 = inttoptr i64 %subtmp346 to %CLVALUE*
  %531 = bitcast %CLVALUE* %530 to i32*
  %532 = load i32, i32* %531, align 4
  %lvalue347 = alloca i32
  %533 = bitcast i32* %lvalue347 to i8*
  store i8* %533, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %532, i32* %lvalue347, align 4
  %534 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %535 = bitcast i8* %534 to %CLVALUE**
  %stack_ptr348 = load %CLVALUE*, %CLVALUE** %535, align 8
  %536 = ptrtoint %CLVALUE* %stack_ptr348 to i64
  %subtmp349 = sub nsw i64 %536, 4
  %537 = inttoptr i64 %subtmp349 to %CLVALUE*
  %538 = bitcast %CLVALUE* %537 to i32*
  %539 = load i32, i32* %538, align 4
  %rvalue350 = alloca i32
  %540 = bitcast i32* %rvalue350 to i8*
  store i8* %540, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %539, i32* %rvalue350, align 4
  %lvalue351 = load i32, i32* %lvalue347, align 4
  %rvalue352 = load i32, i32* %rvalue350, align 4
  %noteqtmp353 = icmp ne i32 %lvalue351, %rvalue352
  %sext13354 = zext i1 %noteqtmp353 to i32
  %value355 = alloca i32
  %541 = bitcast i32* %value355 to i8*
  store i8* %541, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %sext13354, i32* %value355, align 4
  %value356 = load i32, i32* %value355, align 4
  %542 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %543 = bitcast i8* %542 to %sVMInfo**
  %info357 = load %sVMInfo*, %sVMInfo** %543, align 8
  %544 = call i32 @create_bool_object(i32 %value356, %sVMInfo* %info357)
  %new_obj358 = alloca i32
  %545 = bitcast i32* %new_obj358 to i8*
  store i8* %545, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %544, i32* %new_obj358, align 4
  %546 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %547 = bitcast i8* %546 to %CLVALUE**
  %stack_ptr359 = load %CLVALUE*, %CLVALUE** %547, align 8
  %548 = ptrtoint %CLVALUE* %stack_ptr359 to i64
  %subtmp360 = sub nsw i64 %548, 8
  %549 = inttoptr i64 %subtmp360 to %CLVALUE*
  %550 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %551 = bitcast i8* %550 to %CLVALUE**
  store %CLVALUE* %549, %CLVALUE** %551, align 8
  %552 = ptrtoint %CLVALUE* %549 to i64
  %addtmp361 = add nsw i64 %552, 8
  %553 = inttoptr i64 %addtmp361 to %CLVALUE*
  %554 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %555 = bitcast i8* %554 to %CLVALUE**
  %stack_ptr362 = load %CLVALUE*, %CLVALUE** %555, align 8
  %new_obj363 = load i32, i32* %new_obj358, align 4
  %556 = bitcast %CLVALUE* %stack_ptr362 to i32*
  store i32 %new_obj363, i32* %556, align 4
  %557 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %558 = bitcast i8* %557 to %CLVALUE**
  %stack_ptr364 = load %CLVALUE*, %CLVALUE** %558, align 8
  %559 = ptrtoint %CLVALUE* %stack_ptr364 to i64
  %addtmp365 = add nsw i64 %559, 4
  %560 = inttoptr i64 %addtmp365 to %CLVALUE*
  %561 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %562 = bitcast i8* %561 to %CLVALUE**
  store %CLVALUE* %560, %CLVALUE** %562, align 8
  %563 = ptrtoint %CLVALUE* %560 to i64
  %subtmp366 = sub nsw i64 %563, 4
  %564 = inttoptr i64 %subtmp366 to %CLVALUE*
  br label %end_block

cond_else_block343:                               ; preds = %after_break367, %cond_else_block314
  %eqtmpY370 = icmp eq i32 %op35, 34
  br i1 %eqtmpY370, label %cond_then_block368, label %cond_else_block369

after_break367:                                   ; No predecessors!
  br label %cond_else_block343

cond_then_block368:                               ; preds = %cond_else_block343
  %565 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %566 = bitcast i8* %565 to %CLVALUE**
  %stack_ptr371 = load %CLVALUE*, %CLVALUE** %566, align 8
  %567 = ptrtoint %CLVALUE* %stack_ptr371 to i64
  %subtmp372 = sub nsw i64 %567, 8
  %568 = inttoptr i64 %subtmp372 to %CLVALUE*
  %569 = bitcast %CLVALUE* %568 to i32*
  %570 = load i32, i32* %569, align 4
  %lvalue373 = alloca i32
  %571 = bitcast i32* %lvalue373 to i8*
  store i8* %571, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %570, i32* %lvalue373, align 4
  %572 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %573 = bitcast i8* %572 to %CLVALUE**
  %stack_ptr374 = load %CLVALUE*, %CLVALUE** %573, align 8
  %574 = ptrtoint %CLVALUE* %stack_ptr374 to i64
  %subtmp375 = sub nsw i64 %574, 4
  %575 = inttoptr i64 %subtmp375 to %CLVALUE*
  %576 = bitcast %CLVALUE* %575 to i32*
  %577 = load i32, i32* %576, align 4
  %rvalue376 = alloca i32
  %578 = bitcast i32* %rvalue376 to i8*
  store i8* %578, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %577, i32* %rvalue376, align 4
  %lvalue377 = load i32, i32* %lvalue373, align 4
  %579 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue377)
  %580 = bitcast %sCLHeapMem* %579 to %sCLInt*
  %lvalue_data378 = alloca %sCLInt*
  %581 = bitcast %sCLInt** %lvalue_data378 to i8*
  store i8* %581, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %580, %sCLInt** %lvalue_data378, align 8
  %rvalue379 = load i32, i32* %rvalue376, align 4
  %582 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue379)
  %583 = bitcast %sCLHeapMem* %582 to %sCLInt*
  %rvalue_data380 = alloca %sCLInt*
  %584 = bitcast %sCLInt** %rvalue_data380 to i8*
  store i8* %584, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %583, %sCLInt** %rvalue_data380, align 8
  %andand_result_var = alloca i1
  %lvalue_data381 = load %sCLInt*, %sCLInt** %lvalue_data378, align 8
  %585 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data381, i32 0, i32 3
  %586 = load i32, i32* %585, align 4
  %587 = icmp ne i32 %586, 0
  store i1 %587, i1* %andand_result_var, align 1
  br i1 %587, label %cond_jump_then382, label %cond_jump_end

cond_else_block369:                               ; preds = %after_break397, %cond_else_block343
  %eqtmpY400 = icmp eq i32 %op35, 35
  br i1 %eqtmpY400, label %cond_then_block398, label %cond_else_block399

cond_jump_then382:                                ; preds = %cond_then_block368
  %rvalue_data383 = load %sCLInt*, %sCLInt** %rvalue_data380, align 8
  %588 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data383, i32 0, i32 3
  %589 = load i32, i32* %588, align 4
  %590 = icmp ne i32 %589, 0
  %andand = and i1 %587, %590
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then382, %cond_then_block368
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  %sext13384 = zext i1 %andand_result_value to i32
  %value385 = alloca i32
  %591 = bitcast i32* %value385 to i8*
  store i8* %591, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13384, i32* %value385, align 4
  %value386 = load i32, i32* %value385, align 4
  %592 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %593 = bitcast i8* %592 to %sVMInfo**
  %info387 = load %sVMInfo*, %sVMInfo** %593, align 8
  %594 = call i32 @create_bool_object(i32 %value386, %sVMInfo* %info387)
  %new_obj388 = alloca i32
  %595 = bitcast i32* %new_obj388 to i8*
  store i8* %595, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %594, i32* %new_obj388, align 4
  %596 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %597 = bitcast i8* %596 to %CLVALUE**
  %stack_ptr389 = load %CLVALUE*, %CLVALUE** %597, align 8
  %598 = ptrtoint %CLVALUE* %stack_ptr389 to i64
  %subtmp390 = sub nsw i64 %598, 8
  %599 = inttoptr i64 %subtmp390 to %CLVALUE*
  %600 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %601 = bitcast i8* %600 to %CLVALUE**
  store %CLVALUE* %599, %CLVALUE** %601, align 8
  %602 = ptrtoint %CLVALUE* %599 to i64
  %addtmp391 = add nsw i64 %602, 8
  %603 = inttoptr i64 %addtmp391 to %CLVALUE*
  %604 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %605 = bitcast i8* %604 to %CLVALUE**
  %stack_ptr392 = load %CLVALUE*, %CLVALUE** %605, align 8
  %new_obj393 = load i32, i32* %new_obj388, align 4
  %606 = bitcast %CLVALUE* %stack_ptr392 to i32*
  store i32 %new_obj393, i32* %606, align 4
  %607 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %608 = bitcast i8* %607 to %CLVALUE**
  %stack_ptr394 = load %CLVALUE*, %CLVALUE** %608, align 8
  %609 = ptrtoint %CLVALUE* %stack_ptr394 to i64
  %addtmp395 = add nsw i64 %609, 4
  %610 = inttoptr i64 %addtmp395 to %CLVALUE*
  %611 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %612 = bitcast i8* %611 to %CLVALUE**
  store %CLVALUE* %610, %CLVALUE** %612, align 8
  %613 = ptrtoint %CLVALUE* %610 to i64
  %subtmp396 = sub nsw i64 %613, 4
  %614 = inttoptr i64 %subtmp396 to %CLVALUE*
  br label %end_block

after_break397:                                   ; No predecessors!
  br label %cond_else_block369

cond_then_block398:                               ; preds = %cond_else_block369
  %615 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %616 = bitcast i8* %615 to %CLVALUE**
  %stack_ptr401 = load %CLVALUE*, %CLVALUE** %616, align 8
  %617 = ptrtoint %CLVALUE* %stack_ptr401 to i64
  %subtmp402 = sub nsw i64 %617, 8
  %618 = inttoptr i64 %subtmp402 to %CLVALUE*
  %619 = bitcast %CLVALUE* %618 to i32*
  %620 = load i32, i32* %619, align 4
  %lvalue403 = alloca i32
  %621 = bitcast i32* %lvalue403 to i8*
  store i8* %621, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %620, i32* %lvalue403, align 4
  %622 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %623 = bitcast i8* %622 to %CLVALUE**
  %stack_ptr404 = load %CLVALUE*, %CLVALUE** %623, align 8
  %624 = ptrtoint %CLVALUE* %stack_ptr404 to i64
  %subtmp405 = sub nsw i64 %624, 4
  %625 = inttoptr i64 %subtmp405 to %CLVALUE*
  %626 = bitcast %CLVALUE* %625 to i32*
  %627 = load i32, i32* %626, align 4
  %rvalue406 = alloca i32
  %628 = bitcast i32* %rvalue406 to i8*
  store i8* %628, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %627, i32* %rvalue406, align 4
  %lvalue407 = load i32, i32* %lvalue403, align 4
  %629 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue407)
  %630 = bitcast %sCLHeapMem* %629 to %sCLInt*
  %lvalue_data408 = alloca %sCLInt*
  %631 = bitcast %sCLInt** %lvalue_data408 to i8*
  store i8* %631, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %630, %sCLInt** %lvalue_data408, align 8
  %rvalue409 = load i32, i32* %rvalue406, align 4
  %632 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue409)
  %633 = bitcast %sCLHeapMem* %632 to %sCLInt*
  %rvalue_data410 = alloca %sCLInt*
  %634 = bitcast %sCLInt** %rvalue_data410 to i8*
  store i8* %634, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %633, %sCLInt** %rvalue_data410, align 8
  %oror_result_var = alloca i1
  %lvalue_data411 = load %sCLInt*, %sCLInt** %lvalue_data408, align 8
  %635 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data411, i32 0, i32 3
  %636 = load i32, i32* %635, align 4
  %637 = icmp ne i32 %636, 0
  store i1 %637, i1* %oror_result_var, align 1
  br i1 %637, label %cond_jump_end413, label %cond_jump_then412

cond_else_block399:                               ; preds = %after_break428, %cond_else_block369
  %eqtmpY431 = icmp eq i32 %op35, 36
  br i1 %eqtmpY431, label %cond_then_block429, label %cond_else_block430

cond_jump_then412:                                ; preds = %cond_then_block398
  %rvalue_data414 = load %sCLInt*, %sCLInt** %rvalue_data410, align 8
  %638 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data414, i32 0, i32 3
  %639 = load i32, i32* %638, align 4
  %640 = icmp ne i32 %639, 0
  %oror = or i1 %637, %640
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end413

cond_jump_end413:                                 ; preds = %cond_jump_then412, %cond_then_block398
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  %sext13415 = zext i1 %oror_result_value to i32
  %value416 = alloca i32
  %641 = bitcast i32* %value416 to i8*
  store i8* %641, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13415, i32* %value416, align 4
  %value417 = load i32, i32* %value416, align 4
  %642 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %643 = bitcast i8* %642 to %sVMInfo**
  %info418 = load %sVMInfo*, %sVMInfo** %643, align 8
  %644 = call i32 @create_bool_object(i32 %value417, %sVMInfo* %info418)
  %new_obj419 = alloca i32
  %645 = bitcast i32* %new_obj419 to i8*
  store i8* %645, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %644, i32* %new_obj419, align 4
  %646 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %647 = bitcast i8* %646 to %CLVALUE**
  %stack_ptr420 = load %CLVALUE*, %CLVALUE** %647, align 8
  %648 = ptrtoint %CLVALUE* %stack_ptr420 to i64
  %subtmp421 = sub nsw i64 %648, 8
  %649 = inttoptr i64 %subtmp421 to %CLVALUE*
  %650 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %651 = bitcast i8* %650 to %CLVALUE**
  store %CLVALUE* %649, %CLVALUE** %651, align 8
  %652 = ptrtoint %CLVALUE* %649 to i64
  %addtmp422 = add nsw i64 %652, 8
  %653 = inttoptr i64 %addtmp422 to %CLVALUE*
  %654 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %655 = bitcast i8* %654 to %CLVALUE**
  %stack_ptr423 = load %CLVALUE*, %CLVALUE** %655, align 8
  %new_obj424 = load i32, i32* %new_obj419, align 4
  %656 = bitcast %CLVALUE* %stack_ptr423 to i32*
  store i32 %new_obj424, i32* %656, align 4
  %657 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %658 = bitcast i8* %657 to %CLVALUE**
  %stack_ptr425 = load %CLVALUE*, %CLVALUE** %658, align 8
  %659 = ptrtoint %CLVALUE* %stack_ptr425 to i64
  %addtmp426 = add nsw i64 %659, 4
  %660 = inttoptr i64 %addtmp426 to %CLVALUE*
  %661 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %662 = bitcast i8* %661 to %CLVALUE**
  store %CLVALUE* %660, %CLVALUE** %662, align 8
  %663 = ptrtoint %CLVALUE* %660 to i64
  %subtmp427 = sub nsw i64 %663, 4
  %664 = inttoptr i64 %subtmp427 to %CLVALUE*
  br label %end_block

after_break428:                                   ; No predecessors!
  br label %cond_else_block399

cond_then_block429:                               ; preds = %cond_else_block399
  %665 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %666 = bitcast i8* %665 to %CLVALUE**
  %stack_ptr432 = load %CLVALUE*, %CLVALUE** %666, align 8
  %667 = ptrtoint %CLVALUE* %stack_ptr432 to i64
  %subtmp433 = sub nsw i64 %667, 4
  %668 = inttoptr i64 %subtmp433 to %CLVALUE*
  %669 = bitcast %CLVALUE* %668 to i32*
  %670 = load i32, i32* %669, align 4
  %lvalue434 = alloca i32
  %671 = bitcast i32* %lvalue434 to i8*
  store i8* %671, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %670, i32* %lvalue434, align 4
  %lvalue435 = load i32, i32* %lvalue434, align 4
  %672 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue435)
  %673 = bitcast %sCLHeapMem* %672 to %sCLInt*
  %lvalue_data436 = alloca %sCLInt*
  %674 = bitcast %sCLInt** %lvalue_data436 to i8*
  store i8* %674, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store %sCLInt* %673, %sCLInt** %lvalue_data436, align 8
  %lvalue_data437 = load %sCLInt*, %sCLInt** %lvalue_data436, align 8
  %675 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data437, i32 0, i32 3
  %676 = load i32, i32* %675, align 4
  %677 = icmp ne i32 %676, 0
  %LOGICAL_DIANEAL = icmp eq i1 %677, false
  %sext13438 = zext i1 %LOGICAL_DIANEAL to i32
  %value439 = alloca i32
  %678 = bitcast i32* %value439 to i8*
  store i8* %678, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %sext13438, i32* %value439, align 4
  %value440 = load i32, i32* %value439, align 4
  %679 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %680 = bitcast i8* %679 to %sVMInfo**
  %info441 = load %sVMInfo*, %sVMInfo** %680, align 8
  %681 = call i32 @create_bool_object(i32 %value440, %sVMInfo* %info441)
  %new_obj442 = alloca i32
  %682 = bitcast i32* %new_obj442 to i8*
  store i8* %682, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %681, i32* %new_obj442, align 4
  %683 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %684 = bitcast i8* %683 to %CLVALUE**
  %stack_ptr443 = load %CLVALUE*, %CLVALUE** %684, align 8
  %685 = ptrtoint %CLVALUE* %stack_ptr443 to i64
  %subtmp444 = sub nsw i64 %685, 4
  %686 = inttoptr i64 %subtmp444 to %CLVALUE*
  %687 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %688 = bitcast i8* %687 to %CLVALUE**
  store %CLVALUE* %686, %CLVALUE** %688, align 8
  %689 = ptrtoint %CLVALUE* %686 to i64
  %addtmp445 = add nsw i64 %689, 4
  %690 = inttoptr i64 %addtmp445 to %CLVALUE*
  %691 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %692 = bitcast i8* %691 to %CLVALUE**
  %stack_ptr446 = load %CLVALUE*, %CLVALUE** %692, align 8
  %new_obj447 = load i32, i32* %new_obj442, align 4
  %693 = bitcast %CLVALUE* %stack_ptr446 to i32*
  store i32 %new_obj447, i32* %693, align 4
  %694 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %695 = bitcast i8* %694 to %CLVALUE**
  %stack_ptr448 = load %CLVALUE*, %CLVALUE** %695, align 8
  %696 = ptrtoint %CLVALUE* %stack_ptr448 to i64
  %addtmp449 = add nsw i64 %696, 4
  %697 = inttoptr i64 %addtmp449 to %CLVALUE*
  %698 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %699 = bitcast i8* %698 to %CLVALUE**
  store %CLVALUE* %697, %CLVALUE** %699, align 8
  %700 = ptrtoint %CLVALUE* %697 to i64
  %subtmp450 = sub nsw i64 %700, 4
  %701 = inttoptr i64 %subtmp450 to %CLVALUE*
  br label %end_block

cond_else_block430:                               ; preds = %after_break451, %cond_else_block399
  %eqtmpY454 = icmp eq i32 %op35, 9
  br i1 %eqtmpY454, label %cond_then_block452, label %cond_else_block453

after_break451:                                   ; No predecessors!
  br label %cond_else_block430

cond_then_block452:                               ; preds = %cond_else_block430
  %702 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %703 = bitcast i8* %702 to %CLVALUE**
  %stack_ptr455 = load %CLVALUE*, %CLVALUE** %703, align 8
  %704 = ptrtoint %CLVALUE* %stack_ptr455 to i64
  %subtmp456 = sub nsw i64 %704, 8
  %705 = inttoptr i64 %subtmp456 to %CLVALUE*
  %706 = bitcast %CLVALUE* %705 to i32*
  %707 = load i32, i32* %706, align 4
  %lvalue457 = alloca i32
  %708 = bitcast i32* %lvalue457 to i8*
  store i8* %708, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %707, i32* %lvalue457, align 4
  %709 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %710 = bitcast i8* %709 to %CLVALUE**
  %stack_ptr458 = load %CLVALUE*, %CLVALUE** %710, align 8
  %711 = ptrtoint %CLVALUE* %stack_ptr458 to i64
  %subtmp459 = sub nsw i64 %711, 4
  %712 = inttoptr i64 %subtmp459 to %CLVALUE*
  %713 = bitcast %CLVALUE* %712 to i32*
  %714 = load i32, i32* %713, align 4
  %rvalue460 = alloca i32
  %715 = bitcast i32* %rvalue460 to i8*
  store i8* %715, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %714, i32* %rvalue460, align 4
  %lvalue461 = load i32, i32* %lvalue457, align 4
  %716 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue461)
  %717 = bitcast %sCLHeapMem* %716 to %sCLInt*
  %lvalue_data462 = alloca %sCLInt*
  %718 = bitcast %sCLInt** %lvalue_data462 to i8*
  store i8* %718, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %717, %sCLInt** %lvalue_data462, align 8
  %rvalue463 = load i32, i32* %rvalue460, align 4
  %719 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue463)
  %720 = bitcast %sCLHeapMem* %719 to %sCLInt*
  %rvalue_data464 = alloca %sCLInt*
  %721 = bitcast %sCLInt** %rvalue_data464 to i8*
  store i8* %721, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %720, %sCLInt** %rvalue_data464, align 8
  %lvalue_data465 = load %sCLInt*, %sCLInt** %lvalue_data462, align 8
  %722 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data465, i32 0, i32 3
  %723 = load i32, i32* %722, align 4
  %rvalue_data466 = load %sCLInt*, %sCLInt** %rvalue_data464, align 8
  %724 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data466, i32 0, i32 3
  %725 = load i32, i32* %724, align 4
  %letmp467 = icmp slt i32 %723, %725
  %sext13468 = zext i1 %letmp467 to i32
  %value469 = alloca i32
  %726 = bitcast i32* %value469 to i8*
  store i8* %726, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13468, i32* %value469, align 4
  %value470 = load i32, i32* %value469, align 4
  %727 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %728 = bitcast i8* %727 to %sVMInfo**
  %info471 = load %sVMInfo*, %sVMInfo** %728, align 8
  %729 = call i32 @create_bool_object(i32 %value470, %sVMInfo* %info471)
  %new_obj472 = alloca i32
  %730 = bitcast i32* %new_obj472 to i8*
  store i8* %730, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %729, i32* %new_obj472, align 4
  %731 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %732 = bitcast i8* %731 to %CLVALUE**
  %stack_ptr473 = load %CLVALUE*, %CLVALUE** %732, align 8
  %733 = ptrtoint %CLVALUE* %stack_ptr473 to i64
  %subtmp474 = sub nsw i64 %733, 8
  %734 = inttoptr i64 %subtmp474 to %CLVALUE*
  %735 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %736 = bitcast i8* %735 to %CLVALUE**
  store %CLVALUE* %734, %CLVALUE** %736, align 8
  %737 = ptrtoint %CLVALUE* %734 to i64
  %addtmp475 = add nsw i64 %737, 8
  %738 = inttoptr i64 %addtmp475 to %CLVALUE*
  %739 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %740 = bitcast i8* %739 to %CLVALUE**
  %stack_ptr476 = load %CLVALUE*, %CLVALUE** %740, align 8
  %new_obj477 = load i32, i32* %new_obj472, align 4
  %741 = bitcast %CLVALUE* %stack_ptr476 to i32*
  store i32 %new_obj477, i32* %741, align 4
  %742 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %743 = bitcast i8* %742 to %CLVALUE**
  %stack_ptr478 = load %CLVALUE*, %CLVALUE** %743, align 8
  %744 = ptrtoint %CLVALUE* %stack_ptr478 to i64
  %addtmp479 = add nsw i64 %744, 4
  %745 = inttoptr i64 %addtmp479 to %CLVALUE*
  %746 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %747 = bitcast i8* %746 to %CLVALUE**
  store %CLVALUE* %745, %CLVALUE** %747, align 8
  %748 = ptrtoint %CLVALUE* %745 to i64
  %subtmp480 = sub nsw i64 %748, 4
  %749 = inttoptr i64 %subtmp480 to %CLVALUE*
  br label %end_block

cond_else_block453:                               ; preds = %after_break481, %cond_else_block430
  %eqtmpY484 = icmp eq i32 %op35, 11
  br i1 %eqtmpY484, label %cond_then_block482, label %cond_else_block483

after_break481:                                   ; No predecessors!
  br label %cond_else_block453

cond_then_block482:                               ; preds = %cond_else_block453
  %750 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %751 = bitcast i8* %750 to %CLVALUE**
  %stack_ptr485 = load %CLVALUE*, %CLVALUE** %751, align 8
  %752 = ptrtoint %CLVALUE* %stack_ptr485 to i64
  %subtmp486 = sub nsw i64 %752, 8
  %753 = inttoptr i64 %subtmp486 to %CLVALUE*
  %754 = bitcast %CLVALUE* %753 to i32*
  %755 = load i32, i32* %754, align 4
  %lvalue487 = alloca i32
  %756 = bitcast i32* %lvalue487 to i8*
  store i8* %756, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %755, i32* %lvalue487, align 4
  %757 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %758 = bitcast i8* %757 to %CLVALUE**
  %stack_ptr488 = load %CLVALUE*, %CLVALUE** %758, align 8
  %759 = ptrtoint %CLVALUE* %stack_ptr488 to i64
  %subtmp489 = sub nsw i64 %759, 4
  %760 = inttoptr i64 %subtmp489 to %CLVALUE*
  %761 = bitcast %CLVALUE* %760 to i32*
  %762 = load i32, i32* %761, align 4
  %rvalue490 = alloca i32
  %763 = bitcast i32* %rvalue490 to i8*
  store i8* %763, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %762, i32* %rvalue490, align 4
  %lvalue491 = load i32, i32* %lvalue487, align 4
  %764 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue491)
  %765 = bitcast %sCLHeapMem* %764 to %sCLInt*
  %lvalue_data492 = alloca %sCLInt*
  %766 = bitcast %sCLInt** %lvalue_data492 to i8*
  store i8* %766, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %765, %sCLInt** %lvalue_data492, align 8
  %rvalue493 = load i32, i32* %rvalue490, align 4
  %767 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue493)
  %768 = bitcast %sCLHeapMem* %767 to %sCLInt*
  %rvalue_data494 = alloca %sCLInt*
  %769 = bitcast %sCLInt** %rvalue_data494 to i8*
  store i8* %769, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %768, %sCLInt** %rvalue_data494, align 8
  %lvalue_data495 = load %sCLInt*, %sCLInt** %lvalue_data492, align 8
  %770 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data495, i32 0, i32 3
  %771 = load i32, i32* %770, align 4
  %rvalue_data496 = load %sCLInt*, %sCLInt** %rvalue_data494, align 8
  %772 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data496, i32 0, i32 3
  %773 = load i32, i32* %772, align 4
  %gttmp = icmp sgt i32 %771, %773
  %sext13497 = zext i1 %gttmp to i32
  %value498 = alloca i32
  %774 = bitcast i32* %value498 to i8*
  store i8* %774, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13497, i32* %value498, align 4
  %value499 = load i32, i32* %value498, align 4
  %775 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %776 = bitcast i8* %775 to %sVMInfo**
  %info500 = load %sVMInfo*, %sVMInfo** %776, align 8
  %777 = call i32 @create_bool_object(i32 %value499, %sVMInfo* %info500)
  %new_obj501 = alloca i32
  %778 = bitcast i32* %new_obj501 to i8*
  store i8* %778, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %777, i32* %new_obj501, align 4
  %779 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %780 = bitcast i8* %779 to %CLVALUE**
  %stack_ptr502 = load %CLVALUE*, %CLVALUE** %780, align 8
  %781 = ptrtoint %CLVALUE* %stack_ptr502 to i64
  %subtmp503 = sub nsw i64 %781, 8
  %782 = inttoptr i64 %subtmp503 to %CLVALUE*
  %783 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %784 = bitcast i8* %783 to %CLVALUE**
  store %CLVALUE* %782, %CLVALUE** %784, align 8
  %785 = ptrtoint %CLVALUE* %782 to i64
  %addtmp504 = add nsw i64 %785, 8
  %786 = inttoptr i64 %addtmp504 to %CLVALUE*
  %787 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %788 = bitcast i8* %787 to %CLVALUE**
  %stack_ptr505 = load %CLVALUE*, %CLVALUE** %788, align 8
  %new_obj506 = load i32, i32* %new_obj501, align 4
  %789 = bitcast %CLVALUE* %stack_ptr505 to i32*
  store i32 %new_obj506, i32* %789, align 4
  %790 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %791 = bitcast i8* %790 to %CLVALUE**
  %stack_ptr507 = load %CLVALUE*, %CLVALUE** %791, align 8
  %792 = ptrtoint %CLVALUE* %stack_ptr507 to i64
  %addtmp508 = add nsw i64 %792, 4
  %793 = inttoptr i64 %addtmp508 to %CLVALUE*
  %794 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %795 = bitcast i8* %794 to %CLVALUE**
  store %CLVALUE* %793, %CLVALUE** %795, align 8
  %796 = ptrtoint %CLVALUE* %793 to i64
  %subtmp509 = sub nsw i64 %796, 4
  %797 = inttoptr i64 %subtmp509 to %CLVALUE*
  br label %end_block

cond_else_block483:                               ; preds = %after_break510, %cond_else_block453
  %eqtmpY513 = icmp eq i32 %op35, 10
  br i1 %eqtmpY513, label %cond_then_block511, label %cond_else_block512

after_break510:                                   ; No predecessors!
  br label %cond_else_block483

cond_then_block511:                               ; preds = %cond_else_block483
  %798 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %799 = bitcast i8* %798 to %CLVALUE**
  %stack_ptr514 = load %CLVALUE*, %CLVALUE** %799, align 8
  %800 = ptrtoint %CLVALUE* %stack_ptr514 to i64
  %subtmp515 = sub nsw i64 %800, 8
  %801 = inttoptr i64 %subtmp515 to %CLVALUE*
  %802 = bitcast %CLVALUE* %801 to i32*
  %803 = load i32, i32* %802, align 4
  %lvalue516 = alloca i32
  %804 = bitcast i32* %lvalue516 to i8*
  store i8* %804, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %803, i32* %lvalue516, align 4
  %805 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %806 = bitcast i8* %805 to %CLVALUE**
  %stack_ptr517 = load %CLVALUE*, %CLVALUE** %806, align 8
  %807 = ptrtoint %CLVALUE* %stack_ptr517 to i64
  %subtmp518 = sub nsw i64 %807, 4
  %808 = inttoptr i64 %subtmp518 to %CLVALUE*
  %809 = bitcast %CLVALUE* %808 to i32*
  %810 = load i32, i32* %809, align 4
  %rvalue519 = alloca i32
  %811 = bitcast i32* %rvalue519 to i8*
  store i8* %811, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %810, i32* %rvalue519, align 4
  %lvalue520 = load i32, i32* %lvalue516, align 4
  %812 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue520)
  %813 = bitcast %sCLHeapMem* %812 to %sCLInt*
  %lvalue_data521 = alloca %sCLInt*
  %814 = bitcast %sCLInt** %lvalue_data521 to i8*
  store i8* %814, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %813, %sCLInt** %lvalue_data521, align 8
  %rvalue522 = load i32, i32* %rvalue519, align 4
  %815 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue522)
  %816 = bitcast %sCLHeapMem* %815 to %sCLInt*
  %rvalue_data523 = alloca %sCLInt*
  %817 = bitcast %sCLInt** %rvalue_data523 to i8*
  store i8* %817, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %816, %sCLInt** %rvalue_data523, align 8
  %lvalue_data524 = load %sCLInt*, %sCLInt** %lvalue_data521, align 8
  %818 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data524, i32 0, i32 3
  %819 = load i32, i32* %818, align 4
  %rvalue_data525 = load %sCLInt*, %sCLInt** %rvalue_data523, align 8
  %820 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data525, i32 0, i32 3
  %821 = load i32, i32* %820, align 4
  %leeqtmp = icmp sle i32 %819, %821
  %sext13526 = zext i1 %leeqtmp to i32
  %value527 = alloca i32
  %822 = bitcast i32* %value527 to i8*
  store i8* %822, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13526, i32* %value527, align 4
  %value528 = load i32, i32* %value527, align 4
  %823 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %824 = bitcast i8* %823 to %sVMInfo**
  %info529 = load %sVMInfo*, %sVMInfo** %824, align 8
  %825 = call i32 @create_bool_object(i32 %value528, %sVMInfo* %info529)
  %new_obj530 = alloca i32
  %826 = bitcast i32* %new_obj530 to i8*
  store i8* %826, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %825, i32* %new_obj530, align 4
  %827 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %828 = bitcast i8* %827 to %CLVALUE**
  %stack_ptr531 = load %CLVALUE*, %CLVALUE** %828, align 8
  %829 = ptrtoint %CLVALUE* %stack_ptr531 to i64
  %subtmp532 = sub nsw i64 %829, 8
  %830 = inttoptr i64 %subtmp532 to %CLVALUE*
  %831 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %832 = bitcast i8* %831 to %CLVALUE**
  store %CLVALUE* %830, %CLVALUE** %832, align 8
  %833 = ptrtoint %CLVALUE* %830 to i64
  %addtmp533 = add nsw i64 %833, 8
  %834 = inttoptr i64 %addtmp533 to %CLVALUE*
  %835 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %836 = bitcast i8* %835 to %CLVALUE**
  %stack_ptr534 = load %CLVALUE*, %CLVALUE** %836, align 8
  %new_obj535 = load i32, i32* %new_obj530, align 4
  %837 = bitcast %CLVALUE* %stack_ptr534 to i32*
  store i32 %new_obj535, i32* %837, align 4
  %838 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %839 = bitcast i8* %838 to %CLVALUE**
  %stack_ptr536 = load %CLVALUE*, %CLVALUE** %839, align 8
  %840 = ptrtoint %CLVALUE* %stack_ptr536 to i64
  %addtmp537 = add nsw i64 %840, 4
  %841 = inttoptr i64 %addtmp537 to %CLVALUE*
  %842 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %843 = bitcast i8* %842 to %CLVALUE**
  store %CLVALUE* %841, %CLVALUE** %843, align 8
  %844 = ptrtoint %CLVALUE* %841 to i64
  %subtmp538 = sub nsw i64 %844, 4
  %845 = inttoptr i64 %subtmp538 to %CLVALUE*
  br label %end_block

cond_else_block512:                               ; preds = %after_break539, %cond_else_block483
  %eqtmpY542 = icmp eq i32 %op35, 12
  br i1 %eqtmpY542, label %cond_then_block540, label %cond_else_block541

after_break539:                                   ; No predecessors!
  br label %cond_else_block512

cond_then_block540:                               ; preds = %cond_else_block512
  %846 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %847 = bitcast i8* %846 to %CLVALUE**
  %stack_ptr543 = load %CLVALUE*, %CLVALUE** %847, align 8
  %848 = ptrtoint %CLVALUE* %stack_ptr543 to i64
  %subtmp544 = sub nsw i64 %848, 8
  %849 = inttoptr i64 %subtmp544 to %CLVALUE*
  %850 = bitcast %CLVALUE* %849 to i32*
  %851 = load i32, i32* %850, align 4
  %lvalue545 = alloca i32
  %852 = bitcast i32* %lvalue545 to i8*
  store i8* %852, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %851, i32* %lvalue545, align 4
  %853 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %854 = bitcast i8* %853 to %CLVALUE**
  %stack_ptr546 = load %CLVALUE*, %CLVALUE** %854, align 8
  %855 = ptrtoint %CLVALUE* %stack_ptr546 to i64
  %subtmp547 = sub nsw i64 %855, 4
  %856 = inttoptr i64 %subtmp547 to %CLVALUE*
  %857 = bitcast %CLVALUE* %856 to i32*
  %858 = load i32, i32* %857, align 4
  %rvalue548 = alloca i32
  %859 = bitcast i32* %rvalue548 to i8*
  store i8* %859, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %858, i32* %rvalue548, align 4
  %lvalue549 = load i32, i32* %lvalue545, align 4
  %860 = call %sCLHeapMem* @get_object_pointer(i32 %lvalue549)
  %861 = bitcast %sCLHeapMem* %860 to %sCLInt*
  %lvalue_data550 = alloca %sCLInt*
  %862 = bitcast %sCLInt** %lvalue_data550 to i8*
  store i8* %862, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %861, %sCLInt** %lvalue_data550, align 8
  %rvalue551 = load i32, i32* %rvalue548, align 4
  %863 = call %sCLHeapMem* @get_object_pointer(i32 %rvalue551)
  %864 = bitcast %sCLHeapMem* %863 to %sCLInt*
  %rvalue_data552 = alloca %sCLInt*
  %865 = bitcast %sCLInt** %rvalue_data552 to i8*
  store i8* %865, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLInt* %864, %sCLInt** %rvalue_data552, align 8
  %lvalue_data553 = load %sCLInt*, %sCLInt** %lvalue_data550, align 8
  %866 = getelementptr inbounds %sCLInt, %sCLInt* %lvalue_data553, i32 0, i32 3
  %867 = load i32, i32* %866, align 4
  %rvalue_data554 = load %sCLInt*, %sCLInt** %rvalue_data552, align 8
  %868 = getelementptr inbounds %sCLInt, %sCLInt* %rvalue_data554, i32 0, i32 3
  %869 = load i32, i32* %868, align 4
  %getmp = icmp sge i32 %867, %869
  %sext13555 = zext i1 %getmp to i32
  %value556 = alloca i32
  %870 = bitcast i32* %value556 to i8*
  store i8* %870, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %sext13555, i32* %value556, align 4
  %value557 = load i32, i32* %value556, align 4
  %871 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %872 = bitcast i8* %871 to %sVMInfo**
  %info558 = load %sVMInfo*, %sVMInfo** %872, align 8
  %873 = call i32 @create_bool_object(i32 %value557, %sVMInfo* %info558)
  %new_obj559 = alloca i32
  %874 = bitcast i32* %new_obj559 to i8*
  store i8* %874, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %873, i32* %new_obj559, align 4
  %875 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %876 = bitcast i8* %875 to %CLVALUE**
  %stack_ptr560 = load %CLVALUE*, %CLVALUE** %876, align 8
  %877 = ptrtoint %CLVALUE* %stack_ptr560 to i64
  %subtmp561 = sub nsw i64 %877, 8
  %878 = inttoptr i64 %subtmp561 to %CLVALUE*
  %879 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %880 = bitcast i8* %879 to %CLVALUE**
  store %CLVALUE* %878, %CLVALUE** %880, align 8
  %881 = ptrtoint %CLVALUE* %878 to i64
  %addtmp562 = add nsw i64 %881, 8
  %882 = inttoptr i64 %addtmp562 to %CLVALUE*
  %883 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %884 = bitcast i8* %883 to %CLVALUE**
  %stack_ptr563 = load %CLVALUE*, %CLVALUE** %884, align 8
  %new_obj564 = load i32, i32* %new_obj559, align 4
  %885 = bitcast %CLVALUE* %stack_ptr563 to i32*
  store i32 %new_obj564, i32* %885, align 4
  %886 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %887 = bitcast i8* %886 to %CLVALUE**
  %stack_ptr565 = load %CLVALUE*, %CLVALUE** %887, align 8
  %888 = ptrtoint %CLVALUE* %stack_ptr565 to i64
  %addtmp566 = add nsw i64 %888, 4
  %889 = inttoptr i64 %addtmp566 to %CLVALUE*
  %890 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %891 = bitcast i8* %890 to %CLVALUE**
  store %CLVALUE* %889, %CLVALUE** %891, align 8
  %892 = ptrtoint %CLVALUE* %889 to i64
  %subtmp567 = sub nsw i64 %892, 4
  %893 = inttoptr i64 %subtmp567 to %CLVALUE*
  br label %end_block

cond_else_block541:                               ; preds = %after_break568, %cond_else_block512
  %eqtmpY571 = icmp eq i32 %op35, 5
  br i1 %eqtmpY571, label %cond_then_block569, label %cond_else_block570

after_break568:                                   ; No predecessors!
  br label %cond_else_block541

cond_then_block569:                               ; preds = %cond_else_block541
  %894 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %895 = bitcast i8* %894 to i32**
  %p572 = load i32*, i32** %895, align 8
  %derefference_value573 = load i32, i32* %p572, align 8
  %var_index = alloca i32
  %896 = bitcast i32* %var_index to i8*
  store i8* %896, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value573, i32* %var_index, align 4
  %897 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %898 = bitcast i8* %897 to i32**
  %p574 = load i32*, i32** %898, align 8
  %899 = ptrtoint i32* %p574 to i64
  %addtmp575 = add nsw i64 %899, 4
  %900 = inttoptr i64 %addtmp575 to i32*
  %901 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %902 = bitcast i8* %901 to i32**
  store i32* %900, i32** %902, align 8
  %903 = ptrtoint i32* %900 to i64
  %subtmp576 = sub nsw i64 %903, 4
  %904 = inttoptr i64 %subtmp576 to i32*
  %905 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %906 = bitcast i8* %905 to [1024 x %CLVALUE]*
  %var_index577 = load i32, i32* %var_index, align 4
  %907 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %908 = bitcast i8* %907 to %CLVALUE**
  %stack_ptr578 = load %CLVALUE*, %CLVALUE** %908, align 8
  %909 = ptrtoint %CLVALUE* %stack_ptr578 to i64
  %subtmp579 = sub nsw i64 %909, 4
  %910 = inttoptr i64 %subtmp579 to %CLVALUE*
  %derefference_value580 = load %CLVALUE, %CLVALUE* %910, align 8
  %911 = bitcast [1024 x %CLVALUE]* %906 to %CLVALUE*
  %element_address = getelementptr %CLVALUE, %CLVALUE* %911, i32 %var_index577
  store %CLVALUE %derefference_value580, %CLVALUE* %element_address, align 8
  br label %end_block

cond_else_block570:                               ; preds = %after_break581, %cond_else_block541
  %eqtmpY584 = icmp eq i32 %op35, 6
  br i1 %eqtmpY584, label %cond_then_block582, label %cond_else_block583

after_break581:                                   ; No predecessors!
  br label %cond_else_block570

cond_then_block582:                               ; preds = %cond_else_block570
  %912 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %913 = bitcast i8* %912 to i32**
  %p585 = load i32*, i32** %913, align 8
  %derefference_value586 = load i32, i32* %p585, align 8
  %var_index587 = alloca i32
  %914 = bitcast i32* %var_index587 to i8*
  store i8* %914, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value586, i32* %var_index587, align 4
  %915 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %916 = bitcast i8* %915 to i32**
  %p588 = load i32*, i32** %916, align 8
  %917 = ptrtoint i32* %p588 to i64
  %addtmp589 = add nsw i64 %917, 4
  %918 = inttoptr i64 %addtmp589 to i32*
  %919 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %920 = bitcast i8* %919 to i32**
  store i32* %918, i32** %920, align 8
  %921 = ptrtoint i32* %918 to i64
  %subtmp590 = sub nsw i64 %921, 4
  %922 = inttoptr i64 %subtmp590 to i32*
  %923 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %924 = bitcast i8* %923 to %CLVALUE**
  %stack_ptr591 = load %CLVALUE*, %CLVALUE** %924, align 8
  %925 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %926 = bitcast i8* %925 to [1024 x %CLVALUE]*
  %var_index592 = load i32, i32* %var_index587, align 4
  %927 = bitcast [1024 x %CLVALUE]* %926 to %CLVALUE*
  %element_address593 = getelementptr %CLVALUE, %CLVALUE* %927, i32 %var_index592
  %element = load %CLVALUE, %CLVALUE* %element_address593, align 8
  store %CLVALUE %element, %CLVALUE* %stack_ptr591, align 8
  %928 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %929 = bitcast i8* %928 to %CLVALUE**
  %stack_ptr594 = load %CLVALUE*, %CLVALUE** %929, align 8
  %930 = ptrtoint %CLVALUE* %stack_ptr594 to i64
  %addtmp595 = add nsw i64 %930, 4
  %931 = inttoptr i64 %addtmp595 to %CLVALUE*
  %932 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %933 = bitcast i8* %932 to %CLVALUE**
  store %CLVALUE* %931, %CLVALUE** %933, align 8
  %934 = ptrtoint %CLVALUE* %931 to i64
  %subtmp596 = sub nsw i64 %934, 4
  %935 = inttoptr i64 %subtmp596 to %CLVALUE*
  br label %cond_else_block583

cond_else_block583:                               ; preds = %cond_then_block582, %cond_else_block570
  %eqtmpY599 = icmp eq i32 %op35, 13
  br i1 %eqtmpY599, label %cond_then_block597, label %cond_else_block598

cond_then_block597:                               ; preds = %cond_else_block583
  %936 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %937 = bitcast i8* %936 to i32**
  %p600 = load i32*, i32** %937, align 8
  %derefference_value601 = load i32, i32* %p600, align 8
  %jump_size = alloca i32
  %938 = bitcast i32* %jump_size to i8*
  store i8* %938, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value601, i32* %jump_size, align 4
  %939 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %940 = bitcast i8* %939 to i32**
  %p602 = load i32*, i32** %940, align 8
  %941 = ptrtoint i32* %p602 to i64
  %addtmp603 = add nsw i64 %941, 4
  %942 = inttoptr i64 %addtmp603 to i32*
  %943 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %944 = bitcast i8* %943 to i32**
  store i32* %942, i32** %944, align 8
  %945 = ptrtoint i32* %942 to i64
  %subtmp604 = sub nsw i64 %945, 4
  %946 = inttoptr i64 %subtmp604 to i32*
  %947 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %948 = bitcast i8* %947 to %CLVALUE**
  %stack_ptr605 = load %CLVALUE*, %CLVALUE** %948, align 8
  %949 = ptrtoint %CLVALUE* %stack_ptr605 to i64
  %subtmp606 = sub nsw i64 %949, 4
  %950 = inttoptr i64 %subtmp606 to %CLVALUE*
  %951 = bitcast %CLVALUE* %950 to i32*
  %952 = load i32, i32* %951, align 4
  %conditional = alloca i32
  %953 = bitcast i32* %conditional to i8*
  store i8* %953, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %952, i32* %conditional, align 4
  %conditional607 = load i32, i32* %conditional, align 4
  %954 = call %sCLHeapMem* @get_object_pointer(i32 %conditional607)
  %955 = bitcast %sCLHeapMem* %954 to %sCLInt*
  %conditional_data = alloca %sCLInt*
  %956 = bitcast %sCLInt** %conditional_data to i8*
  store i8* %956, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %955, %sCLInt** %conditional_data, align 8
  %conditional_data608 = load %sCLInt*, %sCLInt** %conditional_data, align 8
  %957 = getelementptr inbounds %sCLInt, %sCLInt* %conditional_data608, i32 0, i32 3
  %958 = load i32, i32* %957, align 4
  %value609 = alloca i32
  %959 = bitcast i32* %value609 to i8*
  store i8* %959, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %958, i32* %value609, align 4
  %960 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %961 = bitcast i8* %960 to %CLVALUE**
  %stack_ptr610 = load %CLVALUE*, %CLVALUE** %961, align 8
  %962 = ptrtoint %CLVALUE* %stack_ptr610 to i64
  %subtmp611 = sub nsw i64 %962, 4
  %963 = inttoptr i64 %subtmp611 to %CLVALUE*
  %964 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %965 = bitcast i8* %964 to %CLVALUE**
  store %CLVALUE* %963, %CLVALUE** %965, align 8
  %966 = ptrtoint %CLVALUE* %963 to i64
  %addtmp612 = add nsw i64 %966, 4
  %967 = inttoptr i64 %addtmp612 to %CLVALUE*
  %value613 = load i32, i32* %value609, align 4
  %968 = icmp ne i32 %value613, 0
  br i1 %968, label %cond_jump_then614, label %cond_end615

cond_else_block598:                               ; preds = %after_break625, %cond_else_block583
  %eqtmpY628 = icmp eq i32 %op35, 14
  br i1 %eqtmpY628, label %cond_then_block626, label %cond_else_block627

cond_jump_then614:                                ; preds = %cond_then_block597
  %969 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %970 = bitcast i8* %969 to i32**
  %p616 = load i32*, i32** %970, align 8
  %971 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %972 = bitcast i8* %971 to i32*
  %jump_size617 = load i32, i32* %972, align 4
  %973 = ptrtoint i32* %p616 to i64
  %sext1618 = sext i32 %jump_size617 to i64
  %multtmp619 = mul nsw i64 %sext1618, 4
  %addtmp620 = add nsw i64 %973, %multtmp619
  %974 = inttoptr i64 %addtmp620 to i32*
  %975 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %976 = bitcast i8* %975 to i32**
  store i32* %974, i32** %976, align 8
  %977 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %978 = bitcast i8* %977 to i32*
  %jump_size621 = load i32, i32* %978, align 4
  %979 = ptrtoint i32* %974 to i64
  %sext2622 = sext i32 %jump_size621 to i64
  %multtmp623 = mul nsw i64 %sext2622, 4
  %subtmp624 = sub nsw i64 %979, %multtmp623
  %980 = inttoptr i64 %subtmp624 to i32*
  br label %cond_end615

cond_end615:                                      ; preds = %cond_jump_then614, %cond_then_block597
  br label %end_block

after_break625:                                   ; No predecessors!
  br label %cond_else_block598

cond_then_block626:                               ; preds = %cond_else_block598
  %981 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %982 = bitcast i8* %981 to i32**
  %p629 = load i32*, i32** %982, align 8
  %derefference_value630 = load i32, i32* %p629, align 8
  %jump_size631 = alloca i32
  %983 = bitcast i32* %jump_size631 to i8*
  store i8* %983, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value630, i32* %jump_size631, align 4
  %984 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %985 = bitcast i8* %984 to i32**
  %p632 = load i32*, i32** %985, align 8
  %986 = ptrtoint i32* %p632 to i64
  %addtmp633 = add nsw i64 %986, 4
  %987 = inttoptr i64 %addtmp633 to i32*
  %988 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %989 = bitcast i8* %988 to i32**
  store i32* %987, i32** %989, align 8
  %990 = ptrtoint i32* %987 to i64
  %subtmp634 = sub nsw i64 %990, 4
  %991 = inttoptr i64 %subtmp634 to i32*
  %992 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %993 = bitcast i8* %992 to %CLVALUE**
  %stack_ptr635 = load %CLVALUE*, %CLVALUE** %993, align 8
  %994 = ptrtoint %CLVALUE* %stack_ptr635 to i64
  %subtmp636 = sub nsw i64 %994, 4
  %995 = inttoptr i64 %subtmp636 to %CLVALUE*
  %996 = bitcast %CLVALUE* %995 to i32*
  %997 = load i32, i32* %996, align 4
  %conditional637 = alloca i32
  %998 = bitcast i32* %conditional637 to i8*
  store i8* %998, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %997, i32* %conditional637, align 4
  %conditional638 = load i32, i32* %conditional637, align 4
  %999 = call %sCLHeapMem* @get_object_pointer(i32 %conditional638)
  %1000 = bitcast %sCLHeapMem* %999 to %sCLInt*
  %conditional_data639 = alloca %sCLInt*
  %1001 = bitcast %sCLInt** %conditional_data639 to i8*
  store i8* %1001, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLInt* %1000, %sCLInt** %conditional_data639, align 8
  %conditional_data640 = load %sCLInt*, %sCLInt** %conditional_data639, align 8
  %1002 = getelementptr inbounds %sCLInt, %sCLInt* %conditional_data640, i32 0, i32 3
  %1003 = load i32, i32* %1002, align 4
  %value641 = alloca i32
  %1004 = bitcast i32* %value641 to i8*
  store i8* %1004, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %1003, i32* %value641, align 4
  %1005 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1006 = bitcast i8* %1005 to %CLVALUE**
  %stack_ptr642 = load %CLVALUE*, %CLVALUE** %1006, align 8
  %1007 = ptrtoint %CLVALUE* %stack_ptr642 to i64
  %subtmp643 = sub nsw i64 %1007, 4
  %1008 = inttoptr i64 %subtmp643 to %CLVALUE*
  %1009 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1010 = bitcast i8* %1009 to %CLVALUE**
  store %CLVALUE* %1008, %CLVALUE** %1010, align 8
  %1011 = ptrtoint %CLVALUE* %1008 to i64
  %addtmp644 = add nsw i64 %1011, 4
  %1012 = inttoptr i64 %addtmp644 to %CLVALUE*
  %value645 = load i32, i32* %value641, align 4
  %1013 = icmp ne i32 %value645, 0
  %LOGICAL_DIANEAL646 = icmp eq i1 %1013, false
  br i1 %LOGICAL_DIANEAL646, label %cond_jump_then647, label %cond_end648

cond_else_block627:                               ; preds = %after_break658, %cond_else_block598
  %eqtmpY661 = icmp eq i32 %op35, 15
  br i1 %eqtmpY661, label %cond_then_block659, label %cond_else_block660

cond_jump_then647:                                ; preds = %cond_then_block626
  %1014 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1015 = bitcast i8* %1014 to i32**
  %p649 = load i32*, i32** %1015, align 8
  %1016 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1017 = bitcast i8* %1016 to i32*
  %jump_size650 = load i32, i32* %1017, align 4
  %1018 = ptrtoint i32* %p649 to i64
  %sext1651 = sext i32 %jump_size650 to i64
  %multtmp652 = mul nsw i64 %sext1651, 4
  %addtmp653 = add nsw i64 %1018, %multtmp652
  %1019 = inttoptr i64 %addtmp653 to i32*
  %1020 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1021 = bitcast i8* %1020 to i32**
  store i32* %1019, i32** %1021, align 8
  %1022 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1023 = bitcast i8* %1022 to i32*
  %jump_size654 = load i32, i32* %1023, align 4
  %1024 = ptrtoint i32* %1019 to i64
  %sext2655 = sext i32 %jump_size654 to i64
  %multtmp656 = mul nsw i64 %sext2655, 4
  %subtmp657 = sub nsw i64 %1024, %multtmp656
  %1025 = inttoptr i64 %subtmp657 to i32*
  br label %cond_end648

cond_end648:                                      ; preds = %cond_jump_then647, %cond_then_block626
  br label %end_block

after_break658:                                   ; No predecessors!
  br label %cond_else_block627

cond_then_block659:                               ; preds = %cond_else_block627
  %1026 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1027 = bitcast i8* %1026 to i32**
  %p662 = load i32*, i32** %1027, align 8
  %derefference_value663 = load i32, i32* %p662, align 8
  %goto_point = alloca i32
  %1028 = bitcast i32* %goto_point to i8*
  store i8* %1028, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value663, i32* %goto_point, align 4
  %1029 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1030 = bitcast i8* %1029 to i32**
  %p664 = load i32*, i32** %1030, align 8
  %1031 = ptrtoint i32* %p664 to i64
  %addtmp665 = add nsw i64 %1031, 4
  %1032 = inttoptr i64 %addtmp665 to i32*
  %1033 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1034 = bitcast i8* %1033 to i32**
  store i32* %1032, i32** %1034, align 8
  %1035 = ptrtoint i32* %1032 to i64
  %subtmp666 = sub nsw i64 %1035, 4
  %1036 = inttoptr i64 %subtmp666 to i32*
  %1037 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %1038 = bitcast i8* %1037 to i32**
  %head_codes667 = load i32*, i32** %1038, align 8
  %1039 = bitcast i32* %head_codes667 to i8*
  %goto_point668 = load i32, i32* %goto_point, align 4
  %1040 = ptrtoint i8* %1039 to i64
  %sext1669 = sext i32 %goto_point668 to i64
  %multtmp670 = mul nsw i64 %sext1669, 1
  %addtmp671 = add nsw i64 %1040, %multtmp670
  %1041 = inttoptr i64 %addtmp671 to i8*
  %1042 = bitcast i8* %1041 to i32*
  %1043 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1044 = bitcast i8* %1043 to i32**
  store i32* %1042, i32** %1044, align 8
  br label %end_block

cond_else_block660:                               ; preds = %after_break672, %cond_else_block627
  %eqtmpY675 = icmp eq i32 %op35, 17
  br i1 %eqtmpY675, label %cond_then_block673, label %cond_else_block674

after_break672:                                   ; No predecessors!
  br label %cond_else_block660

cond_then_block673:                               ; preds = %cond_else_block660
  %1045 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1046 = bitcast i8* %1045 to i32**
  %p676 = load i32*, i32** %1046, align 8
  %1047 = bitcast i32* %p676 to i8*
  %method_name = alloca i8*
  %1048 = bitcast i8** %method_name to i8*
  store i8* %1048, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i8* %1047, i8** %method_name, align 8
  %method_name677 = load i8*, i8** %method_name, align 8
  %1049 = call i64 @strlen(i8* %method_name677)
  %addtmp678 = add nsw i64 %1049, 1
  %1050 = trunc i64 %addtmp678 to i32
  %len679 = alloca i32
  %1051 = bitcast i32* %len679 to i8*
  store i8* %1051, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %1050, i32* %len679, align 4
  %len680 = load i32, i32* %len679, align 4
  call void @alignment(i32* %len679)
  %len681 = load i32, i32* %len679, align 4
  %divtmp682 = sdiv i32 %len681, 4
  store i32 %divtmp682, i32* %len679, align 4
  %1052 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1053 = bitcast i8* %1052 to i32**
  %p683 = load i32*, i32** %1053, align 8
  %len684 = load i32, i32* %len679, align 4
  %1054 = ptrtoint i32* %p683 to i64
  %sext1685 = sext i32 %len684 to i64
  %multtmp686 = mul nsw i64 %sext1685, 4
  %addtmp687 = add nsw i64 %1054, %multtmp686
  %1055 = inttoptr i64 %addtmp687 to i32*
  %1056 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1057 = bitcast i8* %1056 to i32**
  store i32* %1055, i32** %1057, align 8
  %len688 = load i32, i32* %len679, align 4
  %1058 = ptrtoint i32* %1055 to i64
  %sext2689 = sext i32 %len688 to i64
  %multtmp690 = mul nsw i64 %sext2689, 4
  %subtmp691 = sub nsw i64 %1058, %multtmp690
  %1059 = inttoptr i64 %subtmp691 to i32*
  %1060 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1061 = bitcast i8* %1060 to i32**
  %p692 = load i32*, i32** %1061, align 8
  %derefference_value693 = load i32, i32* %p692, align 8
  %num_params694 = alloca i32
  %1062 = bitcast i32* %num_params694 to i8*
  store i8* %1062, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %derefference_value693, i32* %num_params694, align 4
  %1063 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1064 = bitcast i8* %1063 to i32**
  %p695 = load i32*, i32** %1064, align 8
  %1065 = ptrtoint i32* %p695 to i64
  %addtmp696 = add nsw i64 %1065, 4
  %1066 = inttoptr i64 %addtmp696 to i32*
  %1067 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1068 = bitcast i8* %1067 to i32**
  store i32* %1066, i32** %1068, align 8
  %1069 = ptrtoint i32* %1066 to i64
  %subtmp697 = sub nsw i64 %1069, 4
  %1070 = inttoptr i64 %subtmp697 to i32*
  %1071 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1072 = bitcast i8* %1071 to i32**
  %p698 = load i32*, i32** %1072, align 8
  %derefference_value699 = load i32, i32* %p698, align 8
  %last_method_chain = alloca i32
  %1073 = bitcast i32* %last_method_chain to i8*
  store i8* %1073, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %derefference_value699, i32* %last_method_chain, align 4
  %1074 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1075 = bitcast i8* %1074 to i32**
  %p700 = load i32*, i32** %1075, align 8
  %1076 = ptrtoint i32* %p700 to i64
  %addtmp701 = add nsw i64 %1076, 4
  %1077 = inttoptr i64 %addtmp701 to i32*
  %1078 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1079 = bitcast i8* %1078 to i32**
  store i32* %1077, i32** %1079, align 8
  %1080 = ptrtoint i32* %1077 to i64
  %subtmp702 = sub nsw i64 %1080, 4
  %1081 = inttoptr i64 %subtmp702 to i32*
  %1082 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1083 = bitcast i8* %1082 to %CLVALUE**
  %stack_ptr703 = load %CLVALUE*, %CLVALUE** %1083, align 8
  %num_params704 = load i32, i32* %num_params694, align 4
  %1084 = ptrtoint %CLVALUE* %stack_ptr703 to i64
  %sext2705 = sext i32 %num_params704 to i64
  %multtmp706 = mul nsw i64 %sext2705, 4
  %subtmp707 = sub nsw i64 %1084, %multtmp706
  %1085 = inttoptr i64 %subtmp707 to %CLVALUE*
  %1086 = bitcast %CLVALUE* %1085 to i32*
  %1087 = load i32, i32* %1086, align 4
  %obj708 = alloca i32
  %1088 = bitcast i32* %obj708 to i8*
  store i8* %1088, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %1087, i32* %obj708, align 4
  %obj709 = load i32, i32* %obj708, align 4
  %1089 = call %sCLHeapMem* @get_object_pointer(i32 %obj709)
  %1090 = bitcast %sCLHeapMem* %1089 to %sCLObject*
  %object_data = alloca %sCLObject*
  %1091 = bitcast %sCLObject** %object_data to i8*
  store i8* %1091, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store %sCLObject* %1090, %sCLObject** %object_data, align 8
  %object_data710 = load %sCLObject*, %sCLObject** %object_data, align 8
  %1092 = getelementptr inbounds %sCLObject, %sCLObject* %object_data710, i32 0, i32 0
  %1093 = load %sCLType*, %sCLType** %1092, align 8
  %generics_types = alloca %sCLType*
  %1094 = bitcast %sCLType** %generics_types to i8*
  store i8* %1094, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  store %sCLType* %1093, %sCLType** %generics_types, align 8
  %object_data711 = load %sCLObject*, %sCLObject** %object_data, align 8
  %1095 = getelementptr inbounds %sCLObject, %sCLObject* %object_data711, i32 0, i32 0
  %1096 = load %sCLType*, %sCLType** %1095, align 8
  %1097 = getelementptr inbounds %sCLType, %sCLType* %1096, i32 0, i32 1
  %1098 = load %sCLClass*, %sCLClass** %1097, align 8
  %klass = alloca %sCLClass*
  %1099 = bitcast %sCLClass** %klass to i8*
  store i8* %1099, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  store %sCLClass* %1098, %sCLClass** %klass, align 8
  %klass712 = load %sCLClass*, %sCLClass** %klass, align 8
  %eqtmpX713 = icmp eq %sCLClass* %klass712, null
  br i1 %eqtmpX713, label %cond_jump_then714, label %cond_end715

cond_else_block674:                               ; preds = %after_break980, %cond_else_block660
  %eqtmpY983 = icmp eq i32 %op35, 19
  br i1 %eqtmpY983, label %cond_then_block981, label %cond_else_block982

cond_jump_then714:                                ; preds = %cond_then_block673
  %1100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1101 = bitcast i8* %1100 to %CLVALUE**
  %stack_ptr716 = load %CLVALUE*, %CLVALUE** %1101, align 8
  %1102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1103 = bitcast i8* %1102 to %sVMInfo**
  %info717 = load %sVMInfo*, %sVMInfo** %1103, align 8
  %1104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1105 = bitcast i8* %1104 to %sCLClass**
  %klass718 = load %sCLClass*, %sCLClass** %1105, align 8
  %1106 = getelementptr inbounds %sCLClass, %sCLClass* %klass718, i32 0, i32 0
  %1107 = load i8*, i8** %1106, align 8
  %1108 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.98, i32 0, i32 0), i8* %1107)
  call void @vm_err_msg(%CLVALUE** %1101, %sVMInfo* %info717, i8* %1108)
  %1109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1110 = bitcast i8* %1109 to %sVMInfo**
  %info719 = load %sVMInfo*, %sVMInfo** %1110, align 8
  %1111 = getelementptr inbounds %sVMInfo, %sVMInfo* %info719, i32 0, i32 5
  %1112 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1111, align 8
  %1113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1114 = bitcast i8* %1113 to %sCLStackFrame*
  %null_parent_stack_frame720 = load %sCLStackFrame, %sCLStackFrame* %1114, align 8
  %1115 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame12_src/vm"(%vector__sCLStackFrame* %1112, %sCLStackFrame %null_parent_stack_frame720)
  %1116 = bitcast [8192 x i8*]* %lvtable to i8*
  %1117 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1116, i64 65536)
  %1118 = ptrtoint i8* %1108 to i64
  %1119 = icmp ne i64 %1118, 0
  br i1 %1119, label %cond_then_block721, label %cond_end722

cond_end715:                                      ; preds = %cond_then_block673
  %klass723 = load %sCLClass*, %sCLClass** %klass, align 8
  %1120 = getelementptr inbounds %sCLClass, %sCLClass* %klass723, i32 0, i32 0
  %1121 = load i8*, i8** %1120, align 8
  %klass_name = alloca i8*
  %1122 = bitcast i8** %klass_name to i8*
  store i8* %1122, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  store i8* %1121, i8** %klass_name, align 8
  %klass_name724 = load i8*, i8** %klass_name, align 8
  %1123 = call i32 @strcmp(i8* %klass_name724, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.99, i32 0, i32 0))
  %eqtmpX725 = icmp eq i32 %1123, 0
  br i1 %eqtmpX725, label %cond_jump_then726, label %cond_else_block727

cond_then_block721:                               ; preds = %cond_jump_then714
  br label %cond_end722

cond_end722:                                      ; preds = %cond_then_block721, %cond_jump_then714
  call void @xfree(i8* %1108)
  ret i1 false

cond_jump_then726:                                ; preds = %cond_end715
  %1124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  %1125 = bitcast i8* %1124 to i32*
  %obj729 = load i32, i32* %1125, align 4
  %parent_obj = alloca i32
  %1126 = bitcast i32* %parent_obj to i8*
  store i8* %1126, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  store i32 %obj729, i32* %parent_obj, align 4
  %parent_obj730 = load i32, i32* %parent_obj, align 4
  %1127 = call %sCLHeapMem* @get_object_pointer(i32 %parent_obj730)
  %1128 = bitcast %sCLHeapMem* %1127 to %sCLCommand*
  %command_obj = alloca %sCLCommand*
  %1129 = bitcast %sCLCommand** %command_obj to i8*
  store i8* %1129, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  store %sCLCommand* %1128, %sCLCommand** %command_obj, align 8
  %command_obj731 = load %sCLCommand*, %sCLCommand** %command_obj, align 8
  %1130 = getelementptr inbounds %sCLCommand, %sCLCommand* %command_obj731, i32 0, i32 6
  %1131 = load i1, i1* %1130, align 1
  %first_method_chain = alloca i1
  %1132 = bitcast i1* %first_method_chain to i8*
  store i8* %1132, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  store i1 %1131, i1* %first_method_chain, align 1
  %argv = alloca [32 x i8*]
  %1133 = bitcast [32 x i8*]* %argv to i8*
  store i8* %1133, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %1134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1135 = bitcast i8* %1134 to i8**
  %method_name732 = load i8*, i8** %1135, align 8
  %1136 = bitcast [32 x i8*]* %argv to i8**
  %element_address733 = getelementptr i8*, i8** %1136, i32 0
  store i8* %method_name732, i8** %element_address733, align 8
  %i = alloca i32
  %1137 = bitcast i32* %i to i8*
  store i8* %1137, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  store i32 1, i32* %i, align 4
  br label %loop_top_block734

cond_else_block727:                               ; preds = %cond_end715
  %method = alloca %sCLMethod*
  %1138 = bitcast %sCLMethod** %method to i8*
  store i8* %1138, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  store %sCLMethod* null, %sCLMethod** %method, align 8
  br label %loop_top_block842

cond_end728:                                      ; preds = %cond_end887, %cond_end773
  br label %end_block

loop_top_block734:                                ; preds = %cond_end757, %cond_jump_then726
  %i735 = load i32, i32* %i, align 4
  %1139 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1140 = bitcast i8* %1139 to i32*
  %num_params736 = load i32, i32* %1140, align 4
  %letmp737 = icmp slt i32 %i735, %num_params736
  br i1 %letmp737, label %cond_then_block738, label %cond_end_block739

cond_then_block738:                               ; preds = %loop_top_block734
  %1141 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1142 = bitcast i8* %1141 to %CLVALUE**
  %stack_ptr740 = load %CLVALUE*, %CLVALUE** %1142, align 8
  %1143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1144 = bitcast i8* %1143 to i32*
  %num_params741 = load i32, i32* %1144, align 4
  %1145 = ptrtoint %CLVALUE* %stack_ptr740 to i64
  %sext2742 = sext i32 %num_params741 to i64
  %multtmp743 = mul nsw i64 %sext2742, 4
  %subtmp744 = sub nsw i64 %1145, %multtmp743
  %1146 = inttoptr i64 %subtmp744 to %CLVALUE*
  %i745 = load i32, i32* %i, align 4
  %1147 = ptrtoint %CLVALUE* %1146 to i64
  %sext1746 = sext i32 %i745 to i64
  %multtmp747 = mul nsw i64 %sext1746, 4
  %addtmp748 = add nsw i64 %1147, %multtmp747
  %1148 = inttoptr i64 %addtmp748 to %CLVALUE*
  %1149 = bitcast %CLVALUE* %1148 to i32*
  %1150 = load i32, i32* %1149, align 4
  %obj749 = alloca i32
  %1151 = bitcast i32* %obj749 to i8*
  store i8* %1151, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  store i32 %1150, i32* %obj749, align 4
  %obj750 = load i32, i32* %obj749, align 4
  %1152 = call %sCLHeapMem* @get_object_pointer(i32 %obj750)
  %1153 = bitcast %sCLHeapMem* %1152 to %sCLObject*
  %object_data751 = alloca %sCLObject*
  %1154 = bitcast %sCLObject** %object_data751 to i8*
  store i8* %1154, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store %sCLObject* %1153, %sCLObject** %object_data751, align 8
  %1155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1156 = bitcast i8* %1155 to %sVMInfo**
  %info752 = load %sVMInfo*, %sVMInfo** %1156, align 8
  %1157 = getelementptr inbounds %sVMInfo, %sVMInfo* %info752, i32 0, i32 3
  %1158 = load %sCompileInfo*, %sCompileInfo** %1157, align 8
  %1159 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %1158, i32 0, i32 4
  %1160 = load %sParserInfo*, %sParserInfo** %1159, align 8
  %1161 = call %sCLType* @create_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.100, i32 0, i32 0), %sParserInfo* %1160)
  %string_type = alloca %sCLType*
  %1162 = bitcast %sCLType** %string_type to i8*
  store i8* %1162, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 513), align 8
  store %sCLType* %1161, %sCLType** %string_type, align 8
  %string_type753 = load %sCLType*, %sCLType** %string_type, align 8
  %object_data754 = load %sCLObject*, %sCLObject** %object_data751, align 8
  %1163 = getelementptr inbounds %sCLObject, %sCLObject* %object_data754, i32 0, i32 0
  %1164 = load %sCLType*, %sCLType** %1163, align 8
  %1165 = call i1 @substitution_posibility(%sCLType* %string_type753, %sCLType* %1164)
  %LOGICAL_DIANEAL755 = icmp eq i1 %1165, false
  br i1 %LOGICAL_DIANEAL755, label %cond_jump_then756, label %cond_end757

cond_end_block739:                                ; preds = %loop_top_block734
  %1166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1167 = bitcast i8* %1166 to i32*
  %num_params768 = load i32, i32* %1167, align 4
  %1168 = bitcast [32 x i8*]* %argv to i8**
  %element_address769 = getelementptr i8*, i8** %1168, i32 %num_params768
  store i8* null, i8** %element_address769, align 8
  %first_method_chain770 = load i1, i1* %first_method_chain, align 1
  br i1 %first_method_chain770, label %cond_jump_then771, label %cond_else_block772

cond_jump_then756:                                ; preds = %cond_then_block738
  %1169 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1170 = bitcast i8* %1169 to %CLVALUE**
  %stack_ptr758 = load %CLVALUE*, %CLVALUE** %1170, align 8
  %1171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1172 = bitcast i8* %1171 to %sVMInfo**
  %info759 = load %sVMInfo*, %sVMInfo** %1172, align 8
  call void @vm_err_msg(%CLVALUE** %1170, %sVMInfo* %info759, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.101, i32 0, i32 0))
  %1173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1174 = bitcast i8* %1173 to %sVMInfo**
  %info760 = load %sVMInfo*, %sVMInfo** %1174, align 8
  %1175 = getelementptr inbounds %sVMInfo, %sVMInfo* %info760, i32 0, i32 5
  %1176 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1175, align 8
  %1177 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1178 = bitcast i8* %1177 to %sCLStackFrame*
  %null_parent_stack_frame761 = load %sCLStackFrame, %sCLStackFrame* %1178, align 8
  %1179 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame13_src/vm"(%vector__sCLStackFrame* %1176, %sCLStackFrame %null_parent_stack_frame761)
  %1180 = bitcast [8192 x i8*]* %lvtable to i8*
  %1181 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1180, i64 65536)
  ret i1 false

cond_end757:                                      ; preds = %cond_then_block738
  %1182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %1183 = bitcast i8* %1182 to [32 x i8*]*
  %i762 = load i32, i32* %i, align 4
  %obj763 = load i32, i32* %obj749, align 4
  %1184 = call i8* @get_string_mem(i32 %obj763)
  %1185 = bitcast [32 x i8*]* %1183 to i8**
  %element_address764 = getelementptr i8*, i8** %1185, i32 %i762
  store i8* %1184, i8** %element_address764, align 8
  %i765 = load i32, i32* %i, align 4
  %addtmp766 = add nsw i32 %i765, 1
  store i32 %addtmp766, i32* %i, align 4
  %subttmp767 = sub nsw i32 %addtmp766, 1
  br label %loop_top_block734

cond_jump_then771:                                ; preds = %cond_end_block739
  %1186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %1187 = bitcast i8* %1186 to i32*
  %last_method_chain774 = load i32, i32* %1187, align 4
  %1188 = icmp ne i32 %last_method_chain774, 0
  br i1 %1188, label %cond_jump_then775, label %cond_else_block776

cond_else_block772:                               ; preds = %cond_end_block739
  %1189 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %1190 = bitcast i8* %1189 to i32*
  %last_method_chain806 = load i32, i32* %1190, align 4
  %1191 = icmp ne i32 %last_method_chain806, 0
  br i1 %1191, label %cond_jump_then807, label %cond_else_block808

cond_end773:                                      ; preds = %cond_end809, %cond_end777
  br label %cond_end728

cond_jump_then775:                                ; preds = %cond_jump_then771
  %1192 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1193 = bitcast i8* %1192 to i8**
  %method_name778 = load i8*, i8** %1193, align 8
  %1194 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %1195 = bitcast i8* %1194 to [32 x i8*]*
  %1196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1197 = bitcast i8* %1196 to i32*
  %num_params779 = load i32, i32* %1197, align 4
  %1198 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1199 = bitcast i8* %1198 to %CLVALUE**
  %stack_ptr780 = load %CLVALUE*, %CLVALUE** %1199, align 8
  %1200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1201 = bitcast i8* %1200 to %sVMInfo**
  %info781 = load %sVMInfo*, %sVMInfo** %1201, align 8
  %1202 = bitcast [32 x i8*]* %1195 to i8**
  %1203 = call i1 @invoke_command_with_control_terminal(i8* %method_name778, i8** %1202, i32 %num_params779, %CLVALUE** %1199, %sVMInfo* %info781)
  %LOGICAL_DIANEAL782 = icmp eq i1 %1203, false
  br i1 %LOGICAL_DIANEAL782, label %cond_jump_then783, label %cond_end784

cond_else_block776:                               ; preds = %cond_jump_then771
  %1204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1205 = bitcast i8* %1204 to i8**
  %method_name792 = load i8*, i8** %1205, align 8
  %1206 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %1207 = bitcast i8* %1206 to [32 x i8*]*
  %1208 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1209 = bitcast i8* %1208 to %CLVALUE**
  %stack_ptr793 = load %CLVALUE*, %CLVALUE** %1209, align 8
  %1210 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1211 = bitcast i8* %1210 to i32*
  %num_params794 = load i32, i32* %1211, align 4
  %1212 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1213 = bitcast i8* %1212 to %sVMInfo**
  %info795 = load %sVMInfo*, %sVMInfo** %1213, align 8
  %1214 = bitcast [32 x i8*]* %1207 to i8**
  %1215 = call i1 @invoke_command(i8* %method_name792, i8** %1214, %CLVALUE** %1209, i32 %num_params794, %sVMInfo* %info795)
  %LOGICAL_DIANEAL796 = icmp eq i1 %1215, false
  br i1 %LOGICAL_DIANEAL796, label %cond_jump_then797, label %cond_end798

cond_end777:                                      ; preds = %cond_end798, %cond_end784
  br label %cond_end773

cond_jump_then783:                                ; preds = %cond_jump_then775
  %1216 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1217 = bitcast i8* %1216 to %CLVALUE**
  %stack_ptr785 = load %CLVALUE*, %CLVALUE** %1217, align 8
  %1218 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1219 = bitcast i8* %1218 to %sVMInfo**
  %info786 = load %sVMInfo*, %sVMInfo** %1219, align 8
  %1220 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1221 = bitcast i8* %1220 to i8**
  %method_name787 = load i8*, i8** %1221, align 8
  %1222 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.102, i32 0, i32 0), i8* %method_name787)
  call void @vm_err_msg(%CLVALUE** %1217, %sVMInfo* %info786, i8* %1222)
  %1223 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1224 = bitcast i8* %1223 to %sVMInfo**
  %info788 = load %sVMInfo*, %sVMInfo** %1224, align 8
  %1225 = getelementptr inbounds %sVMInfo, %sVMInfo* %info788, i32 0, i32 5
  %1226 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1225, align 8
  %1227 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1228 = bitcast i8* %1227 to %sCLStackFrame*
  %null_parent_stack_frame789 = load %sCLStackFrame, %sCLStackFrame* %1228, align 8
  %1229 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame14_src/vm"(%vector__sCLStackFrame* %1226, %sCLStackFrame %null_parent_stack_frame789)
  %1230 = bitcast [8192 x i8*]* %lvtable to i8*
  %1231 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1230, i64 65536)
  %1232 = ptrtoint i8* %1222 to i64
  %1233 = icmp ne i64 %1232, 0
  br i1 %1233, label %cond_then_block790, label %cond_end791

cond_end784:                                      ; preds = %cond_jump_then775
  br label %cond_end777

cond_then_block790:                               ; preds = %cond_jump_then783
  br label %cond_end791

cond_end791:                                      ; preds = %cond_then_block790, %cond_jump_then783
  call void @xfree(i8* %1222)
  ret i1 false

cond_jump_then797:                                ; preds = %cond_else_block776
  %1234 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1235 = bitcast i8* %1234 to %CLVALUE**
  %stack_ptr799 = load %CLVALUE*, %CLVALUE** %1235, align 8
  %1236 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1237 = bitcast i8* %1236 to %sVMInfo**
  %info800 = load %sVMInfo*, %sVMInfo** %1237, align 8
  %1238 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1239 = bitcast i8* %1238 to i8**
  %method_name801 = load i8*, i8** %1239, align 8
  %1240 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.103, i32 0, i32 0), i8* %method_name801)
  call void @vm_err_msg(%CLVALUE** %1235, %sVMInfo* %info800, i8* %1240)
  %1241 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1242 = bitcast i8* %1241 to %sVMInfo**
  %info802 = load %sVMInfo*, %sVMInfo** %1242, align 8
  %1243 = getelementptr inbounds %sVMInfo, %sVMInfo* %info802, i32 0, i32 5
  %1244 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1243, align 8
  %1245 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1246 = bitcast i8* %1245 to %sCLStackFrame*
  %null_parent_stack_frame803 = load %sCLStackFrame, %sCLStackFrame* %1246, align 8
  %1247 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame15_src/vm"(%vector__sCLStackFrame* %1244, %sCLStackFrame %null_parent_stack_frame803)
  %1248 = bitcast [8192 x i8*]* %lvtable to i8*
  %1249 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1248, i64 65536)
  %1250 = ptrtoint i8* %1240 to i64
  %1251 = icmp ne i64 %1250, 0
  br i1 %1251, label %cond_then_block804, label %cond_end805

cond_end798:                                      ; preds = %cond_else_block776
  br label %cond_end777

cond_then_block804:                               ; preds = %cond_jump_then797
  br label %cond_end805

cond_end805:                                      ; preds = %cond_then_block804, %cond_jump_then797
  call void @xfree(i8* %1240)
  ret i1 false

cond_jump_then807:                                ; preds = %cond_else_block772
  %1252 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1253 = bitcast i8* %1252 to i32*
  %parent_obj810 = load i32, i32* %1253, align 4
  %1254 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1255 = bitcast i8* %1254 to i8**
  %method_name811 = load i8*, i8** %1255, align 8
  %1256 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %1257 = bitcast i8* %1256 to [32 x i8*]*
  %1258 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1259 = bitcast i8* %1258 to i32*
  %num_params812 = load i32, i32* %1259, align 4
  %1260 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1261 = bitcast i8* %1260 to %CLVALUE**
  %stack_ptr813 = load %CLVALUE*, %CLVALUE** %1261, align 8
  %1262 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1263 = bitcast i8* %1262 to %sVMInfo**
  %info814 = load %sVMInfo*, %sVMInfo** %1263, align 8
  %1264 = bitcast [32 x i8*]* %1257 to i8**
  %1265 = call i1 @invoke_command_with_control_terminal_and_pipe(i32 %parent_obj810, i8* %method_name811, i8** %1264, i32 %num_params812, %CLVALUE** %1261, %sVMInfo* %info814)
  %LOGICAL_DIANEAL815 = icmp eq i1 %1265, false
  br i1 %LOGICAL_DIANEAL815, label %cond_jump_then816, label %cond_end817

cond_else_block808:                               ; preds = %cond_else_block772
  %1266 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1267 = bitcast i8* %1266 to i32*
  %parent_obj827 = load i32, i32* %1267, align 4
  %1268 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1269 = bitcast i8* %1268 to i8**
  %method_name828 = load i8*, i8** %1269, align 8
  %1270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %1271 = bitcast i8* %1270 to [32 x i8*]*
  %1272 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1273 = bitcast i8* %1272 to %CLVALUE**
  %stack_ptr829 = load %CLVALUE*, %CLVALUE** %1273, align 8
  %1274 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1275 = bitcast i8* %1274 to i32*
  %num_params830 = load i32, i32* %1275, align 4
  %1276 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1277 = bitcast i8* %1276 to %sVMInfo**
  %info831 = load %sVMInfo*, %sVMInfo** %1277, align 8
  %1278 = bitcast [32 x i8*]* %1271 to i8**
  %1279 = call i1 @invoke_command_with_pipe(i32 %parent_obj827, i8* %method_name828, i8** %1278, %CLVALUE** %1273, i32 %num_params830, %sVMInfo* %info831)
  %LOGICAL_DIANEAL832 = icmp eq i1 %1279, false
  br i1 %LOGICAL_DIANEAL832, label %cond_jump_then833, label %cond_end834

cond_end809:                                      ; preds = %cond_end834, %cond_end817
  br label %cond_end773

cond_jump_then816:                                ; preds = %cond_jump_then807
  %1280 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1281 = bitcast i8* %1280 to %CLVALUE**
  %stack_ptr818 = load %CLVALUE*, %CLVALUE** %1281, align 8
  %1282 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1283 = bitcast i8* %1282 to %sVMInfo**
  %info819 = load %sVMInfo*, %sVMInfo** %1283, align 8
  %1284 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1285 = bitcast i8* %1284 to i8**
  %method_name820 = load i8*, i8** %1285, align 8
  %1286 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.104, i32 0, i32 0), i8* %method_name820)
  call void @vm_err_msg(%CLVALUE** %1281, %sVMInfo* %info819, i8* %1286)
  %1287 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1288 = bitcast i8* %1287 to %sVMInfo**
  %info821 = load %sVMInfo*, %sVMInfo** %1288, align 8
  %1289 = getelementptr inbounds %sVMInfo, %sVMInfo* %info821, i32 0, i32 5
  %1290 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1289, align 8
  %1291 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1292 = bitcast i8* %1291 to %sCLStackFrame*
  %null_parent_stack_frame822 = load %sCLStackFrame, %sCLStackFrame* %1292, align 8
  %1293 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame16_src/vm"(%vector__sCLStackFrame* %1290, %sCLStackFrame %null_parent_stack_frame822)
  %1294 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1295 = bitcast i8* %1294 to %sVMInfo**
  %info823 = load %sVMInfo*, %sVMInfo** %1295, align 8
  %1296 = getelementptr inbounds %sVMInfo, %sVMInfo* %info823, i32 0, i32 5
  %1297 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1296, align 8
  %1298 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1299 = bitcast i8* %1298 to %sCLStackFrame*
  %null_parent_stack_frame824 = load %sCLStackFrame, %sCLStackFrame* %1299, align 8
  %1300 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame17_src/vm"(%vector__sCLStackFrame* %1297, %sCLStackFrame %null_parent_stack_frame824)
  %1301 = bitcast [8192 x i8*]* %lvtable to i8*
  %1302 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1301, i64 65536)
  %1303 = ptrtoint i8* %1286 to i64
  %1304 = icmp ne i64 %1303, 0
  br i1 %1304, label %cond_then_block825, label %cond_end826

cond_end817:                                      ; preds = %cond_jump_then807
  br label %cond_end809

cond_then_block825:                               ; preds = %cond_jump_then816
  br label %cond_end826

cond_end826:                                      ; preds = %cond_then_block825, %cond_jump_then816
  call void @xfree(i8* %1286)
  ret i1 false

cond_jump_then833:                                ; preds = %cond_else_block808
  %1305 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1306 = bitcast i8* %1305 to %CLVALUE**
  %stack_ptr835 = load %CLVALUE*, %CLVALUE** %1306, align 8
  %1307 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1308 = bitcast i8* %1307 to %sVMInfo**
  %info836 = load %sVMInfo*, %sVMInfo** %1308, align 8
  %1309 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1310 = bitcast i8* %1309 to i8**
  %method_name837 = load i8*, i8** %1310, align 8
  %1311 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.105, i32 0, i32 0), i8* %method_name837)
  call void @vm_err_msg(%CLVALUE** %1306, %sVMInfo* %info836, i8* %1311)
  %1312 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1313 = bitcast i8* %1312 to %sVMInfo**
  %info838 = load %sVMInfo*, %sVMInfo** %1313, align 8
  %1314 = getelementptr inbounds %sVMInfo, %sVMInfo* %info838, i32 0, i32 5
  %1315 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1314, align 8
  %1316 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1317 = bitcast i8* %1316 to %sCLStackFrame*
  %null_parent_stack_frame839 = load %sCLStackFrame, %sCLStackFrame* %1317, align 8
  %1318 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame18_src/vm"(%vector__sCLStackFrame* %1315, %sCLStackFrame %null_parent_stack_frame839)
  %1319 = bitcast [8192 x i8*]* %lvtable to i8*
  %1320 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1319, i64 65536)
  %1321 = ptrtoint i8* %1311 to i64
  %1322 = icmp ne i64 %1321, 0
  br i1 %1322, label %cond_then_block840, label %cond_end841

cond_end834:                                      ; preds = %cond_else_block808
  br label %cond_end809

cond_then_block840:                               ; preds = %cond_jump_then833
  br label %cond_end841

cond_end841:                                      ; preds = %cond_then_block840, %cond_jump_then833
  call void @xfree(i8* %1311)
  ret i1 false

loop_top_block842:                                ; preds = %cond_end850, %cond_else_block727
  %1323 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1324 = bitcast i8* %1323 to %sCLClass**
  %klass843 = load %sCLClass*, %sCLClass** %1324, align 8
  %1325 = ptrtoint %sCLClass* %klass843 to i64
  %1326 = icmp ne i64 %1325, 0
  br i1 %1326, label %cond_then_block844, label %cond_end_block845

cond_then_block844:                               ; preds = %loop_top_block842
  %1327 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1328 = bitcast i8* %1327 to %sCLClass**
  %klass846 = load %sCLClass*, %sCLClass** %1328, align 8
  %1329 = getelementptr inbounds %sCLClass, %sCLClass* %klass846, i32 0, i32 1
  %1330 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %1329, align 8
  %1331 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1332 = bitcast i8* %1331 to i8**
  %method_name847 = load i8*, i8** %1332, align 8
  %1333 = call %sCLMethod* @"map_at_charp_sCLMethodp19_src/vm"(%map__charp_sCLMethodp* %1330, i8* %method_name847, %sCLMethod* null)
  %1334 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1335 = bitcast i8* %1334 to %sCLMethod**
  store %sCLMethod* %1333, %sCLMethod** %1335, align 8
  %1336 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1337 = bitcast i8* %1336 to %sCLMethod**
  %method848 = load %sCLMethod*, %sCLMethod** %1337, align 8
  %1338 = ptrtoint %sCLMethod* %method848 to i64
  %1339 = icmp ne i64 %1338, 0
  br i1 %1339, label %cond_jump_then849, label %cond_end850

cond_end_block845:                                ; preds = %cond_jump_then849, %loop_top_block842
  %method853 = load %sCLMethod*, %sCLMethod** %method, align 8
  %eqtmpX854 = icmp eq %sCLMethod* %method853, null
  br i1 %eqtmpX854, label %cond_jump_then855, label %cond_end856

cond_jump_then849:                                ; preds = %cond_then_block844
  br label %cond_end_block845

cond_end850:                                      ; preds = %after_break851, %cond_then_block844
  %1340 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1341 = bitcast i8* %1340 to %sCLClass**
  %klass852 = load %sCLClass*, %sCLClass** %1341, align 8
  %1342 = getelementptr inbounds %sCLClass, %sCLClass* %klass852, i32 0, i32 4
  %1343 = load %sCLClass*, %sCLClass** %1342, align 8
  %1344 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1345 = bitcast i8* %1344 to %sCLClass**
  store %sCLClass* %1343, %sCLClass** %1345, align 8
  br label %loop_top_block842

after_break851:                                   ; No predecessors!
  br label %cond_end850

cond_jump_then855:                                ; preds = %cond_end_block845
  %1346 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1347 = bitcast i8* %1346 to %CLVALUE**
  %stack_ptr857 = load %CLVALUE*, %CLVALUE** %1347, align 8
  %1348 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1349 = bitcast i8* %1348 to %sVMInfo**
  %info858 = load %sVMInfo*, %sVMInfo** %1349, align 8
  %1350 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  %1351 = bitcast i8* %1350 to i8**
  %klass_name859 = load i8*, i8** %1351, align 8
  %1352 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1353 = bitcast i8* %1352 to i8**
  %method_name860 = load i8*, i8** %1353, align 8
  %1354 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.106, i32 0, i32 0), i8* %klass_name859, i8* %method_name860)
  call void @vm_err_msg(%CLVALUE** %1347, %sVMInfo* %info858, i8* %1354)
  %1355 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1356 = bitcast i8* %1355 to %sVMInfo**
  %info861 = load %sVMInfo*, %sVMInfo** %1356, align 8
  %1357 = getelementptr inbounds %sVMInfo, %sVMInfo* %info861, i32 0, i32 5
  %1358 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1357, align 8
  %1359 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1360 = bitcast i8* %1359 to %sCLStackFrame*
  %null_parent_stack_frame862 = load %sCLStackFrame, %sCLStackFrame* %1360, align 8
  %1361 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame20_src/vm"(%vector__sCLStackFrame* %1358, %sCLStackFrame %null_parent_stack_frame862)
  %1362 = bitcast [8192 x i8*]* %lvtable to i8*
  %1363 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1362, i64 65536)
  %1364 = ptrtoint i8* %1354 to i64
  %1365 = icmp ne i64 %1364, 0
  br i1 %1365, label %cond_then_block863, label %cond_end864

cond_end856:                                      ; preds = %cond_end_block845
  %method865 = load %sCLMethod*, %sCLMethod** %method, align 8
  %1366 = getelementptr inbounds %sCLMethod, %sCLMethod* %method865, i32 0, i32 7
  %1367 = load i32, i32* %1366, align 4
  %var_num866 = alloca i32
  %1368 = bitcast i32* %var_num866 to i8*
  store i8* %1368, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  store i32 %1367, i32* %var_num866, align 4
  %method867 = load %sCLMethod*, %sCLMethod** %method, align 8
  %1369 = getelementptr inbounds %sCLMethod, %sCLMethod* %method867, i32 0, i32 1
  %1370 = bitcast [32 x %sCLParam]* %1369 to %sCLParam*
  %method868 = load %sCLMethod*, %sCLMethod** %method, align 8
  %1371 = getelementptr inbounds %sCLMethod, %sCLMethod* %method868, i32 0, i32 2
  %1372 = load i32, i32* %1371, align 4
  %1373 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1374 = bitcast i8* %1373 to %CLVALUE**
  %stack_ptr869 = load %CLVALUE*, %CLVALUE** %1374, align 8
  %1375 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  %1376 = bitcast i8* %1375 to %sCLType**
  %generics_types870 = load %sCLType*, %sCLType** %1376, align 8
  %1377 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1378 = bitcast i8* %1377 to %sVMInfo**
  %info871 = load %sVMInfo*, %sVMInfo** %1378, align 8
  %1379 = call i1 @param_check(%sCLParam* %1370, i32 %1372, %CLVALUE* %stack_ptr869, %sCLType* %generics_types870, %sVMInfo* %info871)
  %LOGICAL_DIANEAL872 = icmp eq i1 %1379, false
  br i1 %LOGICAL_DIANEAL872, label %cond_jump_then873, label %cond_end874

cond_then_block863:                               ; preds = %cond_jump_then855
  br label %cond_end864

cond_end864:                                      ; preds = %cond_then_block863, %cond_jump_then855
  call void @xfree(i8* %1354)
  ret i1 false

cond_jump_then873:                                ; preds = %cond_end856
  %1380 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1381 = bitcast i8* %1380 to %CLVALUE**
  %stack_ptr875 = load %CLVALUE*, %CLVALUE** %1381, align 8
  %1382 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1383 = bitcast i8* %1382 to %sVMInfo**
  %info876 = load %sVMInfo*, %sVMInfo** %1383, align 8
  %1384 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1385 = bitcast i8* %1384 to %sCLClass**
  %klass877 = load %sCLClass*, %sCLClass** %1385, align 8
  %1386 = getelementptr inbounds %sCLClass, %sCLClass* %klass877, i32 0, i32 0
  %1387 = load i8*, i8** %1386, align 8
  %1388 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1389 = bitcast i8* %1388 to i8**
  %method_name878 = load i8*, i8** %1389, align 8
  %1390 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.107, i32 0, i32 0), i8* %1387, i8* %method_name878)
  call void @vm_err_msg(%CLVALUE** %1381, %sVMInfo* %info876, i8* %1390)
  %1391 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1392 = bitcast i8* %1391 to %sVMInfo**
  %info879 = load %sVMInfo*, %sVMInfo** %1392, align 8
  %1393 = getelementptr inbounds %sVMInfo, %sVMInfo* %info879, i32 0, i32 5
  %1394 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1393, align 8
  %1395 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1396 = bitcast i8* %1395 to %sCLStackFrame*
  %null_parent_stack_frame880 = load %sCLStackFrame, %sCLStackFrame* %1396, align 8
  %1397 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame21_src/vm"(%vector__sCLStackFrame* %1394, %sCLStackFrame %null_parent_stack_frame880)
  %1398 = bitcast [8192 x i8*]* %lvtable to i8*
  %1399 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1398, i64 65536)
  %1400 = ptrtoint i8* %1390 to i64
  %1401 = icmp ne i64 %1400, 0
  br i1 %1401, label %cond_then_block881, label %cond_end882

cond_end874:                                      ; preds = %cond_end856
  %method883 = load %sCLMethod*, %sCLMethod** %method, align 8
  %1402 = getelementptr inbounds %sCLMethod, %sCLMethod* %method883, i32 0, i32 4
  %1403 = load %buffer*, %buffer** %1402, align 8
  %eqtmpX884 = icmp eq %buffer* %1403, null
  br i1 %eqtmpX884, label %cond_jump_then885, label %cond_else_block886

cond_then_block881:                               ; preds = %cond_jump_then873
  br label %cond_end882

cond_end882:                                      ; preds = %cond_then_block881, %cond_jump_then873
  call void @xfree(i8* %1390)
  ret i1 false

cond_jump_then885:                                ; preds = %cond_end874
  %1404 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1405 = bitcast i8* %1404 to %sCLClass**
  %klass888 = load %sCLClass*, %sCLClass** %1405, align 8
  %1406 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1407 = bitcast i8* %1406 to %sCLMethod**
  %method889 = load %sCLMethod*, %sCLMethod** %1407, align 8
  %1408 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1409 = bitcast i8* %1408 to %CLVALUE**
  %stack_ptr890 = load %CLVALUE*, %CLVALUE** %1409, align 8
  %1410 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1411 = bitcast i8* %1410 to %sVMInfo**
  %info891 = load %sVMInfo*, %sVMInfo** %1411, align 8
  %1412 = call i1 @invoke_native_method(%sCLClass* %klass888, %sCLMethod* %method889, %CLVALUE** %1409, %sVMInfo* %info891)
  %LOGICAL_DIANEAL892 = icmp eq i1 %1412, false
  br i1 %LOGICAL_DIANEAL892, label %cond_jump_then893, label %cond_end894

cond_else_block886:                               ; preds = %cond_end874
  %1413 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1414 = bitcast i8* %1413 to %sCLMethod**
  %method936 = load %sCLMethod*, %sCLMethod** %1414, align 8
  %1415 = getelementptr inbounds %sCLMethod, %sCLMethod* %method936, i32 0, i32 4
  %1416 = load %buffer*, %buffer** %1415, align 8
  %codes937 = alloca %buffer*
  %1417 = bitcast %buffer** %codes937 to i8*
  store i8* %1417, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  store %buffer* %1416, %buffer** %codes937, align 8
  %1418 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1419 = bitcast i8* %1418 to %sCLMethod**
  %method938 = load %sCLMethod*, %sCLMethod** %1419, align 8
  %1420 = getelementptr inbounds %sCLMethod, %sCLMethod* %method938, i32 0, i32 7
  %1421 = load i32, i32* %1420, align 4
  %var_num939 = alloca i32
  %1422 = bitcast i32* %var_num939 to i8*
  store i8* %1422, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  store i32 %1421, i32* %var_num939, align 4
  %result940 = alloca %CLVALUE
  %1423 = bitcast %CLVALUE* %result940 to i8*
  store i8* %1423, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %codes941 = load %buffer*, %buffer** %codes937, align 8
  %1424 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1425 = bitcast i8* %1424 to %CLVALUE**
  %stack_ptr942 = load %CLVALUE*, %CLVALUE** %1425, align 8
  %1426 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1427 = bitcast i8* %1426 to i32*
  %num_params943 = load i32, i32* %1427, align 4
  %var_num944 = load i32, i32* %var_num939, align 4
  %result945 = load %CLVALUE, %CLVALUE* %result940, align 8
  %1428 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1429 = bitcast i8* %1428 to %sVMInfo**
  %info946 = load %sVMInfo*, %sVMInfo** %1429, align 8
  %1430 = call i1 @vm(%buffer* %codes941, %CLVALUE* %stack_ptr942, i32 %num_params943, i32 %var_num944, %CLVALUE* %result940, %sVMInfo* %info946)
  %LOGICAL_DIANEAL947 = icmp eq i1 %1430, false
  br i1 %LOGICAL_DIANEAL947, label %cond_jump_then948, label %cond_end949

cond_end887:                                      ; preds = %cond_end968, %cond_end921
  br label %cond_end728

cond_jump_then893:                                ; preds = %cond_jump_then885
  %1431 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1432 = bitcast i8* %1431 to %CLVALUE**
  %stack_ptr895 = load %CLVALUE*, %CLVALUE** %1432, align 8
  %1433 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1434 = bitcast i8* %1433 to %sVMInfo**
  %info896 = load %sVMInfo*, %sVMInfo** %1434, align 8
  %1435 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %1436 = bitcast i8* %1435 to %sCLClass**
  %klass897 = load %sCLClass*, %sCLClass** %1436, align 8
  %1437 = getelementptr inbounds %sCLClass, %sCLClass* %klass897, i32 0, i32 0
  %1438 = load i8*, i8** %1437, align 8
  %1439 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %1440 = bitcast i8* %1439 to i8**
  %method_name898 = load i8*, i8** %1440, align 8
  %1441 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.108, i32 0, i32 0), i8* %1438, i8* %method_name898)
  call void @vm_err_msg(%CLVALUE** %1432, %sVMInfo* %info896, i8* %1441)
  %1442 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1443 = bitcast i8* %1442 to %sVMInfo**
  %info899 = load %sVMInfo*, %sVMInfo** %1443, align 8
  %1444 = getelementptr inbounds %sVMInfo, %sVMInfo* %info899, i32 0, i32 5
  %1445 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1444, align 8
  %1446 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1447 = bitcast i8* %1446 to %sCLStackFrame*
  %null_parent_stack_frame900 = load %sCLStackFrame, %sCLStackFrame* %1447, align 8
  %1448 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame22_src/vm"(%vector__sCLStackFrame* %1445, %sCLStackFrame %null_parent_stack_frame900)
  %1449 = bitcast [8192 x i8*]* %lvtable to i8*
  %1450 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1449, i64 65536)
  %1451 = ptrtoint i8* %1441 to i64
  %1452 = icmp ne i64 %1451, 0
  br i1 %1452, label %cond_then_block901, label %cond_end902

cond_end894:                                      ; preds = %cond_jump_then885
  %1453 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1454 = bitcast i8* %1453 to %CLVALUE**
  %stack_ptr903 = load %CLVALUE*, %CLVALUE** %1454, align 8
  %1455 = ptrtoint %CLVALUE* %stack_ptr903 to i64
  %subtmp904 = sub nsw i64 %1455, 4
  %1456 = inttoptr i64 %subtmp904 to %CLVALUE*
  %derefference_value905 = load %CLVALUE, %CLVALUE* %1456, align 8
  %result_value = alloca %CLVALUE
  %1457 = bitcast %CLVALUE* %result_value to i8*
  store i8* %1457, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  store %CLVALUE %derefference_value905, %CLVALUE* %result_value, align 8
  %1458 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1459 = bitcast i8* %1458 to %CLVALUE**
  %stack_ptr906 = load %CLVALUE*, %CLVALUE** %1459, align 8
  %1460 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1461 = bitcast i8* %1460 to i32*
  %num_params907 = load i32, i32* %1461, align 4
  %1462 = ptrtoint %CLVALUE* %stack_ptr906 to i64
  %sext2908 = sext i32 %num_params907 to i64
  %multtmp909 = mul nsw i64 %sext2908, 4
  %subtmp910 = sub nsw i64 %1462, %multtmp909
  %1463 = inttoptr i64 %subtmp910 to %CLVALUE*
  %1464 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1465 = bitcast i8* %1464 to %CLVALUE**
  store %CLVALUE* %1463, %CLVALUE** %1465, align 8
  %1466 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1467 = bitcast i8* %1466 to i32*
  %num_params911 = load i32, i32* %1467, align 4
  %1468 = ptrtoint %CLVALUE* %1463 to i64
  %sext1912 = sext i32 %num_params911 to i64
  %multtmp913 = mul nsw i64 %sext1912, 4
  %addtmp914 = add nsw i64 %1468, %multtmp913
  %1469 = inttoptr i64 %addtmp914 to %CLVALUE*
  %1470 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1471 = bitcast i8* %1470 to %sCLMethod**
  %method915 = load %sCLMethod*, %sCLMethod** %1471, align 8
  %1472 = getelementptr inbounds %sCLMethod, %sCLMethod* %method915, i32 0, i32 3
  %1473 = load %sCLType*, %sCLType** %1472, align 8
  %1474 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1475 = bitcast i8* %1474 to %sVMInfo**
  %info916 = load %sVMInfo*, %sVMInfo** %1475, align 8
  %1476 = getelementptr inbounds %sVMInfo, %sVMInfo* %info916, i32 0, i32 2
  %1477 = load %sParserInfo*, %sParserInfo** %1476, align 8
  %1478 = call i1 @type_identify_with_class_name(%sCLType* %1473, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.109, i32 0, i32 0), %sParserInfo* %1477)
  %LOGICAL_DIANEAL917 = icmp eq i1 %1478, false
  %result_existance = alloca i1
  %1479 = bitcast i1* %result_existance to i8*
  store i8* %1479, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  store i1 %LOGICAL_DIANEAL917, i1* %result_existance, align 1
  %result_existance918 = load i1, i1* %result_existance, align 1
  br i1 %result_existance918, label %cond_jump_then919, label %cond_else_block920

cond_then_block901:                               ; preds = %cond_jump_then893
  br label %cond_end902

cond_end902:                                      ; preds = %cond_then_block901, %cond_jump_then893
  call void @xfree(i8* %1441)
  ret i1 false

cond_jump_then919:                                ; preds = %cond_end894
  %1480 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1481 = bitcast i8* %1480 to %CLVALUE**
  %stack_ptr922 = load %CLVALUE*, %CLVALUE** %1481, align 8
  %1482 = ptrtoint %CLVALUE* %stack_ptr922 to i64
  %subtmp923 = sub nsw i64 %1482, 4
  %1483 = inttoptr i64 %subtmp923 to %CLVALUE*
  %1484 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1485 = bitcast i8* %1484 to %CLVALUE**
  store %CLVALUE* %1483, %CLVALUE** %1485, align 8
  %1486 = ptrtoint %CLVALUE* %1483 to i64
  %addtmp924 = add nsw i64 %1486, 4
  %1487 = inttoptr i64 %addtmp924 to %CLVALUE*
  %1488 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1489 = bitcast i8* %1488 to %CLVALUE**
  %stack_ptr925 = load %CLVALUE*, %CLVALUE** %1489, align 8
  %1490 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %1491 = bitcast i8* %1490 to %CLVALUE*
  %result_value926 = load %CLVALUE, %CLVALUE* %1491, align 8
  store %CLVALUE %result_value926, %CLVALUE* %stack_ptr925, align 8
  %1492 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1493 = bitcast i8* %1492 to %CLVALUE**
  %stack_ptr927 = load %CLVALUE*, %CLVALUE** %1493, align 8
  %1494 = ptrtoint %CLVALUE* %stack_ptr927 to i64
  %addtmp928 = add nsw i64 %1494, 4
  %1495 = inttoptr i64 %addtmp928 to %CLVALUE*
  %1496 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1497 = bitcast i8* %1496 to %CLVALUE**
  store %CLVALUE* %1495, %CLVALUE** %1497, align 8
  %1498 = ptrtoint %CLVALUE* %1495 to i64
  %subtmp929 = sub nsw i64 %1498, 4
  %1499 = inttoptr i64 %subtmp929 to %CLVALUE*
  br label %cond_end921

cond_else_block920:                               ; preds = %cond_end894
  %1500 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1501 = bitcast i8* %1500 to %CLVALUE**
  %stack_ptr930 = load %CLVALUE*, %CLVALUE** %1501, align 8
  %derefference_value931 = load %CLVALUE, %CLVALUE* %stack_ptr930, align 8
  %1502 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1503 = bitcast i8* %1502 to %sVMInfo**
  %info932 = load %sVMInfo*, %sVMInfo** %1503, align 8
  %1504 = call i32 @create_null_object(%sVMInfo* %info932)
  %1505 = bitcast %CLVALUE* %stack_ptr930 to i32*
  store i32 %1504, i32* %1505, align 4
  %1506 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1507 = bitcast i8* %1506 to %CLVALUE**
  %stack_ptr933 = load %CLVALUE*, %CLVALUE** %1507, align 8
  %1508 = ptrtoint %CLVALUE* %stack_ptr933 to i64
  %addtmp934 = add nsw i64 %1508, 4
  %1509 = inttoptr i64 %addtmp934 to %CLVALUE*
  %1510 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1511 = bitcast i8* %1510 to %CLVALUE**
  store %CLVALUE* %1509, %CLVALUE** %1511, align 8
  %1512 = ptrtoint %CLVALUE* %1509 to i64
  %subtmp935 = sub nsw i64 %1512, 4
  %1513 = inttoptr i64 %subtmp935 to %CLVALUE*
  br label %cond_end921

cond_end921:                                      ; preds = %cond_else_block920, %cond_jump_then919
  br label %cond_end887

cond_jump_then948:                                ; preds = %cond_else_block886
  %1514 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1515 = bitcast i8* %1514 to %sVMInfo**
  %info950 = load %sVMInfo*, %sVMInfo** %1515, align 8
  %1516 = getelementptr inbounds %sVMInfo, %sVMInfo* %info950, i32 0, i32 5
  %1517 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1516, align 8
  %1518 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1519 = bitcast i8* %1518 to %sCLStackFrame*
  %null_parent_stack_frame951 = load %sCLStackFrame, %sCLStackFrame* %1519, align 8
  %1520 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame23_src/vm"(%vector__sCLStackFrame* %1517, %sCLStackFrame %null_parent_stack_frame951)
  %1521 = bitcast [8192 x i8*]* %lvtable to i8*
  %1522 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1521, i64 65536)
  ret i1 false

cond_end949:                                      ; preds = %cond_else_block886
  %1523 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1524 = bitcast i8* %1523 to %CLVALUE**
  %stack_ptr952 = load %CLVALUE*, %CLVALUE** %1524, align 8
  %1525 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1526 = bitcast i8* %1525 to i32*
  %num_params953 = load i32, i32* %1526, align 4
  %1527 = ptrtoint %CLVALUE* %stack_ptr952 to i64
  %sext2954 = sext i32 %num_params953 to i64
  %multtmp955 = mul nsw i64 %sext2954, 4
  %subtmp956 = sub nsw i64 %1527, %multtmp955
  %1528 = inttoptr i64 %subtmp956 to %CLVALUE*
  %1529 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1530 = bitcast i8* %1529 to %CLVALUE**
  store %CLVALUE* %1528, %CLVALUE** %1530, align 8
  %1531 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %1532 = bitcast i8* %1531 to i32*
  %num_params957 = load i32, i32* %1532, align 4
  %1533 = ptrtoint %CLVALUE* %1528 to i64
  %sext1958 = sext i32 %num_params957 to i64
  %multtmp959 = mul nsw i64 %sext1958, 4
  %addtmp960 = add nsw i64 %1533, %multtmp959
  %1534 = inttoptr i64 %addtmp960 to %CLVALUE*
  %1535 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %1536 = bitcast i8* %1535 to %sCLMethod**
  %method961 = load %sCLMethod*, %sCLMethod** %1536, align 8
  %1537 = getelementptr inbounds %sCLMethod, %sCLMethod* %method961, i32 0, i32 3
  %1538 = load %sCLType*, %sCLType** %1537, align 8
  %1539 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1540 = bitcast i8* %1539 to %sVMInfo**
  %info962 = load %sVMInfo*, %sVMInfo** %1540, align 8
  %1541 = getelementptr inbounds %sVMInfo, %sVMInfo* %info962, i32 0, i32 2
  %1542 = load %sParserInfo*, %sParserInfo** %1541, align 8
  %1543 = call i1 @type_identify_with_class_name(%sCLType* %1538, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.110, i32 0, i32 0), %sParserInfo* %1542)
  %LOGICAL_DIANEAL963 = icmp eq i1 %1543, false
  %result_existance964 = alloca i1
  %1544 = bitcast i1* %result_existance964 to i8*
  store i8* %1544, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  store i1 %LOGICAL_DIANEAL963, i1* %result_existance964, align 1
  %result_existance965 = load i1, i1* %result_existance964, align 1
  br i1 %result_existance965, label %cond_jump_then966, label %cond_else_block967

cond_jump_then966:                                ; preds = %cond_end949
  %1545 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1546 = bitcast i8* %1545 to %CLVALUE**
  %stack_ptr969 = load %CLVALUE*, %CLVALUE** %1546, align 8
  %1547 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %1548 = bitcast i8* %1547 to %CLVALUE*
  %result970 = load %CLVALUE, %CLVALUE* %1548, align 8
  store %CLVALUE %result970, %CLVALUE* %stack_ptr969, align 8
  %1549 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1550 = bitcast i8* %1549 to %CLVALUE**
  %stack_ptr971 = load %CLVALUE*, %CLVALUE** %1550, align 8
  %1551 = ptrtoint %CLVALUE* %stack_ptr971 to i64
  %addtmp972 = add nsw i64 %1551, 4
  %1552 = inttoptr i64 %addtmp972 to %CLVALUE*
  %1553 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1554 = bitcast i8* %1553 to %CLVALUE**
  store %CLVALUE* %1552, %CLVALUE** %1554, align 8
  %1555 = ptrtoint %CLVALUE* %1552 to i64
  %subtmp973 = sub nsw i64 %1555, 4
  %1556 = inttoptr i64 %subtmp973 to %CLVALUE*
  br label %cond_end968

cond_else_block967:                               ; preds = %cond_end949
  %1557 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1558 = bitcast i8* %1557 to %CLVALUE**
  %stack_ptr974 = load %CLVALUE*, %CLVALUE** %1558, align 8
  %derefference_value975 = load %CLVALUE, %CLVALUE* %stack_ptr974, align 8
  %1559 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1560 = bitcast i8* %1559 to %sVMInfo**
  %info976 = load %sVMInfo*, %sVMInfo** %1560, align 8
  %1561 = call i32 @create_null_object(%sVMInfo* %info976)
  %1562 = bitcast %CLVALUE* %stack_ptr974 to i32*
  store i32 %1561, i32* %1562, align 4
  %1563 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1564 = bitcast i8* %1563 to %CLVALUE**
  %stack_ptr977 = load %CLVALUE*, %CLVALUE** %1564, align 8
  %1565 = ptrtoint %CLVALUE* %stack_ptr977 to i64
  %addtmp978 = add nsw i64 %1565, 4
  %1566 = inttoptr i64 %addtmp978 to %CLVALUE*
  %1567 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1568 = bitcast i8* %1567 to %CLVALUE**
  store %CLVALUE* %1566, %CLVALUE** %1568, align 8
  %1569 = ptrtoint %CLVALUE* %1566 to i64
  %subtmp979 = sub nsw i64 %1569, 4
  %1570 = inttoptr i64 %subtmp979 to %CLVALUE*
  br label %cond_end968

cond_end968:                                      ; preds = %cond_else_block967, %cond_jump_then966
  br label %cond_end887

after_break980:                                   ; No predecessors!
  br label %cond_else_block674

cond_then_block981:                               ; preds = %cond_else_block674
  %1571 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1572 = bitcast i8* %1571 to i32**
  %p984 = load i32*, i32** %1572, align 8
  %derefference_value985 = load i32, i32* %p984, align 8
  %var_num986 = alloca i32
  %1573 = bitcast i32* %var_num986 to i8*
  store i8* %1573, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value985, i32* %var_num986, align 4
  %1574 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1575 = bitcast i8* %1574 to i32**
  %p987 = load i32*, i32** %1575, align 8
  %1576 = ptrtoint i32* %p987 to i64
  %addtmp988 = add nsw i64 %1576, 4
  %1577 = inttoptr i64 %addtmp988 to i32*
  %1578 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1579 = bitcast i8* %1578 to i32**
  store i32* %1577, i32** %1579, align 8
  %1580 = ptrtoint i32* %1577 to i64
  %subtmp989 = sub nsw i64 %1580, 4
  %1581 = inttoptr i64 %subtmp989 to i32*
  %1582 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1583 = bitcast i8* %1582 to i32**
  %p990 = load i32*, i32** %1583, align 8
  %derefference_value991 = load i32, i32* %p990, align 8
  %num_params992 = alloca i32
  %1584 = bitcast i32* %num_params992 to i8*
  store i8* %1584, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %derefference_value991, i32* %num_params992, align 4
  %1585 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1586 = bitcast i8* %1585 to i32**
  %p993 = load i32*, i32** %1586, align 8
  %1587 = ptrtoint i32* %p993 to i64
  %addtmp994 = add nsw i64 %1587, 4
  %1588 = inttoptr i64 %addtmp994 to i32*
  %1589 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1590 = bitcast i8* %1589 to i32**
  store i32* %1588, i32** %1590, align 8
  %1591 = ptrtoint i32* %1588 to i64
  %subtmp995 = sub nsw i64 %1591, 4
  %1592 = inttoptr i64 %subtmp995 to i32*
  %1593 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1594 = bitcast i8* %1593 to i32**
  %p996 = load i32*, i32** %1594, align 8
  %derefference_value997 = load i32, i32* %p996, align 8
  %result_existance998 = alloca i32
  %1595 = bitcast i32* %result_existance998 to i8*
  store i8* %1595, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %derefference_value997, i32* %result_existance998, align 4
  %1596 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1597 = bitcast i8* %1596 to i32**
  %p999 = load i32*, i32** %1597, align 8
  %1598 = ptrtoint i32* %p999 to i64
  %addtmp1000 = add nsw i64 %1598, 4
  %1599 = inttoptr i64 %addtmp1000 to i32*
  %1600 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1601 = bitcast i8* %1600 to i32**
  store i32* %1599, i32** %1601, align 8
  %1602 = ptrtoint i32* %1599 to i64
  %subtmp1001 = sub nsw i64 %1602, 4
  %1603 = inttoptr i64 %subtmp1001 to i32*
  %1604 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1605 = bitcast i8* %1604 to %CLVALUE**
  %stack_ptr1002 = load %CLVALUE*, %CLVALUE** %1605, align 8
  %num_params1003 = load i32, i32* %num_params992, align 4
  %1606 = ptrtoint %CLVALUE* %stack_ptr1002 to i64
  %sext21004 = sext i32 %num_params1003 to i64
  %multtmp1005 = mul nsw i64 %sext21004, 4
  %subtmp1006 = sub nsw i64 %1606, %multtmp1005
  %1607 = inttoptr i64 %subtmp1006 to %CLVALUE*
  %1608 = ptrtoint %CLVALUE* %1607 to i64
  %subtmp1007 = sub nsw i64 %1608, 4
  %1609 = inttoptr i64 %subtmp1007 to %CLVALUE*
  %derefference_value1008 = load %CLVALUE, %CLVALUE* %1609, align 8
  %1610 = bitcast %CLVALUE* %1609 to i32*
  %1611 = load i32, i32* %1610, align 4
  %block_object = alloca i32
  %1612 = bitcast i32* %block_object to i8*
  store i8* %1612, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %1611, i32* %block_object, align 4
  %block_object1009 = load i32, i32* %block_object, align 4
  %1613 = call %sCLHeapMem* @get_object_pointer(i32 %block_object1009)
  %1614 = bitcast %sCLHeapMem* %1613 to %sCLBlock*
  %block_data = alloca %sCLBlock*
  %1615 = bitcast %sCLBlock** %block_data to i8*
  store i8* %1615, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store %sCLBlock* %1614, %sCLBlock** %block_data, align 8
  %block_data1010 = load %sCLBlock*, %sCLBlock** %block_data, align 8
  %1616 = getelementptr inbounds %sCLBlock, %sCLBlock* %block_data1010, i32 0, i32 3
  %1617 = load i32*, i32** %1616, align 8
  %codes1011 = alloca i32*
  %1618 = bitcast i32** %codes1011 to i8*
  store i8* %1618, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32* %1617, i32** %codes1011, align 8
  %block_data1012 = load %sCLBlock*, %sCLBlock** %block_data, align 8
  %1619 = getelementptr inbounds %sCLBlock, %sCLBlock* %block_data1012, i32 0, i32 4
  %1620 = load i32, i32* %1619, align 4
  %codes_len1013 = alloca i32
  %1621 = bitcast i32* %codes_len1013 to i8*
  store i8* %1621, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  store i32 %1620, i32* %codes_len1013, align 4
  %1622 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.111, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.112, i32 0, i32 0), i32 1296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.114, i32 0, i32 0))
  %1623 = bitcast i8* %1622 to %buffer*
  %1624 = call %buffer* @buffer_initialize(%buffer* %1623)
  %buffer = alloca %buffer*
  %1625 = bitcast %buffer** %buffer to i8*
  store i8* %1625, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  store %buffer* %1624, %buffer** %buffer, align 8
  %buffer1014 = load %buffer*, %buffer** %buffer, align 8
  %codes1015 = load i32*, i32** %codes1011, align 8
  %1626 = bitcast i32* %codes1015 to i8*
  %codes_len1016 = load i32, i32* %codes_len1013, align 4
  %sext141017 = zext i32 %codes_len1016 to i64
  call void @buffer_append(%buffer* %buffer1014, i8* %1626, i64 %sext141017)
  %result1018 = alloca %CLVALUE
  %1627 = bitcast %CLVALUE* %result1018 to i8*
  store i8* %1627, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  %buffer1019 = load %buffer*, %buffer** %buffer, align 8
  %1628 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1629 = bitcast i8* %1628 to %CLVALUE**
  %stack_ptr1020 = load %CLVALUE*, %CLVALUE** %1629, align 8
  %num_params1021 = load i32, i32* %num_params992, align 4
  %var_num1022 = load i32, i32* %var_num986, align 4
  %result1023 = load %CLVALUE, %CLVALUE* %result1018, align 8
  %1630 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1631 = bitcast i8* %1630 to %sVMInfo**
  %info1024 = load %sVMInfo*, %sVMInfo** %1631, align 8
  %1632 = call i1 @vm(%buffer* %buffer1019, %CLVALUE* %stack_ptr1020, i32 %num_params1021, i32 %var_num1022, %CLVALUE* %result1018, %sVMInfo* %info1024)
  %LOGICAL_DIANEAL1025 = icmp eq i1 %1632, false
  br i1 %LOGICAL_DIANEAL1025, label %cond_jump_then1026, label %cond_end1027

cond_else_block982:                               ; preds = %after_break1059, %cond_else_block674
  %eqtmpY1062 = icmp eq i32 %op35, 21
  br i1 %eqtmpY1062, label %cond_then_block1060, label %cond_else_block1061

cond_jump_then1026:                               ; preds = %cond_then_block981
  %1633 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1634 = bitcast i8* %1633 to %sVMInfo**
  %info1028 = load %sVMInfo*, %sVMInfo** %1634, align 8
  %1635 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1028, i32 0, i32 5
  %1636 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1635, align 8
  %1637 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1638 = bitcast i8* %1637 to %sCLStackFrame*
  %null_parent_stack_frame1029 = load %sCLStackFrame, %sCLStackFrame* %1638, align 8
  %1639 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame24_src/vm"(%vector__sCLStackFrame* %1636, %sCLStackFrame %null_parent_stack_frame1029)
  %1640 = bitcast [8192 x i8*]* %lvtable to i8*
  %1641 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1640, i64 65536)
  %1642 = load %buffer*, %buffer** %buffer, align 8
  call void @buffer_finalize(%buffer* %1642)
  %1643 = ptrtoint %buffer* %1642 to i64
  %1644 = icmp ne i64 %1643, 0
  br i1 %1644, label %cond_then_block1030, label %cond_end1031

cond_end1027:                                     ; preds = %cond_then_block981
  %1645 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1646 = bitcast i8* %1645 to %CLVALUE**
  %stack_ptr1032 = load %CLVALUE*, %CLVALUE** %1646, align 8
  %num_params1033 = load i32, i32* %num_params992, align 4
  %addtmp1034 = add nsw i32 %num_params1033, 1
  %1647 = ptrtoint %CLVALUE* %stack_ptr1032 to i64
  %sext21035 = sext i32 %addtmp1034 to i64
  %multtmp1036 = mul nsw i64 %sext21035, 4
  %subtmp1037 = sub nsw i64 %1647, %multtmp1036
  %1648 = inttoptr i64 %subtmp1037 to %CLVALUE*
  %1649 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1650 = bitcast i8* %1649 to %CLVALUE**
  store %CLVALUE* %1648, %CLVALUE** %1650, align 8
  %num_params1038 = load i32, i32* %num_params992, align 4
  %addtmp1039 = add nsw i32 %num_params1038, 1
  %1651 = ptrtoint %CLVALUE* %1648 to i64
  %sext11040 = sext i32 %addtmp1039 to i64
  %multtmp1041 = mul nsw i64 %sext11040, 4
  %addtmp1042 = add nsw i64 %1651, %multtmp1041
  %1652 = inttoptr i64 %addtmp1042 to %CLVALUE*
  %result_existance1043 = load i32, i32* %result_existance998, align 4
  %1653 = icmp ne i32 %result_existance1043, 0
  br i1 %1653, label %cond_jump_then1044, label %cond_else_block1045

cond_then_block1030:                              ; preds = %cond_jump_then1026
  br label %cond_end1031

cond_end1031:                                     ; preds = %cond_then_block1030, %cond_jump_then1026
  %1654 = bitcast %buffer* %1642 to i8*
  call void @xfree(i8* %1654)
  ret i1 false

cond_jump_then1044:                               ; preds = %cond_end1027
  %1655 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1656 = bitcast i8* %1655 to %CLVALUE**
  %stack_ptr1047 = load %CLVALUE*, %CLVALUE** %1656, align 8
  %1657 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  %1658 = bitcast i8* %1657 to %CLVALUE*
  %result1048 = load %CLVALUE, %CLVALUE* %1658, align 8
  store %CLVALUE %result1048, %CLVALUE* %stack_ptr1047, align 8
  %1659 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1660 = bitcast i8* %1659 to %CLVALUE**
  %stack_ptr1049 = load %CLVALUE*, %CLVALUE** %1660, align 8
  %1661 = ptrtoint %CLVALUE* %stack_ptr1049 to i64
  %addtmp1050 = add nsw i64 %1661, 4
  %1662 = inttoptr i64 %addtmp1050 to %CLVALUE*
  %1663 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1664 = bitcast i8* %1663 to %CLVALUE**
  store %CLVALUE* %1662, %CLVALUE** %1664, align 8
  %1665 = ptrtoint %CLVALUE* %1662 to i64
  %subtmp1051 = sub nsw i64 %1665, 4
  %1666 = inttoptr i64 %subtmp1051 to %CLVALUE*
  br label %cond_end1046

cond_else_block1045:                              ; preds = %cond_end1027
  %1667 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1668 = bitcast i8* %1667 to %CLVALUE**
  %stack_ptr1052 = load %CLVALUE*, %CLVALUE** %1668, align 8
  %1669 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1670 = bitcast i8* %1669 to %sVMInfo**
  %info1053 = load %sVMInfo*, %sVMInfo** %1670, align 8
  %1671 = call i32 @create_null_object(%sVMInfo* %info1053)
  %1672 = bitcast %CLVALUE* %stack_ptr1052 to i32*
  store i32 %1671, i32* %1672, align 4
  %1673 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1674 = bitcast i8* %1673 to %CLVALUE**
  %stack_ptr1054 = load %CLVALUE*, %CLVALUE** %1674, align 8
  %1675 = ptrtoint %CLVALUE* %stack_ptr1054 to i64
  %addtmp1055 = add nsw i64 %1675, 4
  %1676 = inttoptr i64 %addtmp1055 to %CLVALUE*
  %1677 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1678 = bitcast i8* %1677 to %CLVALUE**
  store %CLVALUE* %1676, %CLVALUE** %1678, align 8
  %1679 = ptrtoint %CLVALUE* %1676 to i64
  %subtmp1056 = sub nsw i64 %1679, 4
  %1680 = inttoptr i64 %subtmp1056 to %CLVALUE*
  br label %cond_end1046

cond_end1046:                                     ; preds = %cond_else_block1045, %cond_jump_then1044
  %1681 = load %buffer*, %buffer** %buffer, align 8
  call void @buffer_finalize(%buffer* %1681)
  %1682 = ptrtoint %buffer* %1681 to i64
  %1683 = icmp ne i64 %1682, 0
  br i1 %1683, label %cond_then_block1057, label %cond_end1058

cond_then_block1057:                              ; preds = %cond_end1046
  br label %cond_end1058

cond_end1058:                                     ; preds = %cond_then_block1057, %cond_end1046
  %1684 = bitcast %buffer* %1681 to i8*
  call void @xfree(i8* %1684)
  br label %end_block

after_break1059:                                  ; No predecessors!
  br label %cond_else_block982

cond_then_block1060:                              ; preds = %cond_else_block982
  %1685 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1686 = bitcast i8* %1685 to %sVMInfo**
  %info1063 = load %sVMInfo*, %sVMInfo** %1686, align 8
  call void @jobs(%sVMInfo* %info1063)
  br label %end_block

cond_else_block1061:                              ; preds = %after_break1064, %cond_else_block982
  %eqtmpY1067 = icmp eq i32 %op35, 22
  br i1 %eqtmpY1067, label %cond_then_block1065, label %cond_else_block1066

after_break1064:                                  ; No predecessors!
  br label %cond_else_block1061

cond_then_block1065:                              ; preds = %cond_else_block1061
  %1687 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1688 = bitcast i8* %1687 to i32**
  %p1068 = load i32*, i32** %1688, align 8
  %derefference_value1069 = load i32, i32* %p1068, align 8
  %job_num = alloca i32
  %1689 = bitcast i32* %job_num to i8*
  store i8* %1689, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value1069, i32* %job_num, align 4
  %1690 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1691 = bitcast i8* %1690 to i32**
  %p1070 = load i32*, i32** %1691, align 8
  %1692 = ptrtoint i32* %p1070 to i64
  %addtmp1071 = add nsw i64 %1692, 4
  %1693 = inttoptr i64 %addtmp1071 to i32*
  %1694 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1695 = bitcast i8* %1694 to i32**
  store i32* %1693, i32** %1695, align 8
  %1696 = ptrtoint i32* %1693 to i64
  %subtmp1072 = sub nsw i64 %1696, 4
  %1697 = inttoptr i64 %subtmp1072 to i32*
  %job_num1073 = load i32, i32* %job_num, align 4
  %1698 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1699 = bitcast i8* %1698 to %sVMInfo**
  %info1074 = load %sVMInfo*, %sVMInfo** %1699, align 8
  %1700 = call i1 @forgroud_job(i32 %job_num1073, %sVMInfo* %info1074)
  %LOGICAL_DIANEAL1075 = icmp eq i1 %1700, false
  br i1 %LOGICAL_DIANEAL1075, label %cond_jump_then1076, label %cond_end1077

cond_else_block1066:                              ; preds = %after_break1082, %cond_else_block1061
  %eqtmpY1085 = icmp eq i32 %op35, 24
  br i1 %eqtmpY1085, label %cond_then_block1083, label %cond_else_block1084

cond_jump_then1076:                               ; preds = %cond_then_block1065
  %1701 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1702 = bitcast i8* %1701 to %CLVALUE**
  %stack_ptr1078 = load %CLVALUE*, %CLVALUE** %1702, align 8
  %1703 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1704 = bitcast i8* %1703 to %sVMInfo**
  %info1079 = load %sVMInfo*, %sVMInfo** %1704, align 8
  call void @vm_err_msg(%CLVALUE** %1702, %sVMInfo* %info1079, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.115, i32 0, i32 0))
  %1705 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1706 = bitcast i8* %1705 to %sVMInfo**
  %info1080 = load %sVMInfo*, %sVMInfo** %1706, align 8
  %1707 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1080, i32 0, i32 5
  %1708 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1707, align 8
  %1709 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1710 = bitcast i8* %1709 to %sCLStackFrame*
  %null_parent_stack_frame1081 = load %sCLStackFrame, %sCLStackFrame* %1710, align 8
  %1711 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame25_src/vm"(%vector__sCLStackFrame* %1708, %sCLStackFrame %null_parent_stack_frame1081)
  %1712 = bitcast [8192 x i8*]* %lvtable to i8*
  %1713 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1712, i64 65536)
  ret i1 false

cond_end1077:                                     ; preds = %cond_then_block1065
  br label %end_block

after_break1082:                                  ; No predecessors!
  br label %cond_else_block1066

cond_then_block1083:                              ; preds = %cond_else_block1066
  %1714 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1715 = bitcast i8* %1714 to i32**
  %p1086 = load i32*, i32** %1715, align 8
  %derefference_value1087 = load i32, i32* %p1086, align 8
  %field_index = alloca i32
  %1716 = bitcast i32* %field_index to i8*
  store i8* %1716, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value1087, i32* %field_index, align 4
  %1717 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1718 = bitcast i8* %1717 to i32**
  %p1088 = load i32*, i32** %1718, align 8
  %1719 = ptrtoint i32* %p1088 to i64
  %addtmp1089 = add nsw i64 %1719, 4
  %1720 = inttoptr i64 %addtmp1089 to i32*
  %1721 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1722 = bitcast i8* %1721 to i32**
  store i32* %1720, i32** %1722, align 8
  %1723 = ptrtoint i32* %1720 to i64
  %subtmp1090 = sub nsw i64 %1723, 4
  %1724 = inttoptr i64 %subtmp1090 to i32*
  %1725 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1726 = bitcast i8* %1725 to %CLVALUE**
  %stack_ptr1091 = load %CLVALUE*, %CLVALUE** %1726, align 8
  %1727 = ptrtoint %CLVALUE* %stack_ptr1091 to i64
  %subtmp1092 = sub nsw i64 %1727, 8
  %1728 = inttoptr i64 %subtmp1092 to %CLVALUE*
  %1729 = bitcast %CLVALUE* %1728 to i32*
  %1730 = load i32, i32* %1729, align 4
  %obj1093 = alloca i32
  %1731 = bitcast i32* %obj1093 to i8*
  store i8* %1731, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %1730, i32* %obj1093, align 4
  %1732 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1733 = bitcast i8* %1732 to %CLVALUE**
  %stack_ptr1094 = load %CLVALUE*, %CLVALUE** %1733, align 8
  %1734 = ptrtoint %CLVALUE* %stack_ptr1094 to i64
  %subtmp1095 = sub nsw i64 %1734, 4
  %1735 = inttoptr i64 %subtmp1095 to %CLVALUE*
  %derefference_value1096 = load %CLVALUE, %CLVALUE* %1735, align 8
  %value1097 = alloca %CLVALUE
  %1736 = bitcast %CLVALUE* %value1097 to i8*
  store i8* %1736, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %CLVALUE %derefference_value1096, %CLVALUE* %value1097, align 8
  %obj1098 = load i32, i32* %obj1093, align 4
  %1737 = call %sCLHeapMem* @get_object_pointer(i32 %obj1098)
  %1738 = bitcast %sCLHeapMem* %1737 to %sCLObject*
  %object_data1099 = alloca %sCLObject*
  %1739 = bitcast %sCLObject** %object_data1099 to i8*
  store i8* %1739, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLObject* %1738, %sCLObject** %object_data1099, align 8
  %object_data1100 = load %sCLObject*, %sCLObject** %object_data1099, align 8
  %1740 = getelementptr inbounds %sCLObject, %sCLObject* %object_data1100, i32 0, i32 3
  %1741 = load %anon85, %anon85* %1740, align 8
  %1742 = bitcast %anon85* %1740 to [32 x %CLVALUE]*
  %1743 = bitcast [32 x %CLVALUE]* %1742 to %CLVALUE*
  %field_index1101 = load i32, i32* %field_index, align 4
  %value1102 = load %CLVALUE, %CLVALUE* %value1097, align 8
  %element_address1103 = getelementptr %CLVALUE, %CLVALUE* %1743, i32 %field_index1101
  store %CLVALUE %value1102, %CLVALUE* %element_address1103, align 8
  %1744 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1745 = bitcast i8* %1744 to %CLVALUE**
  %stack_ptr1104 = load %CLVALUE*, %CLVALUE** %1745, align 8
  %1746 = ptrtoint %CLVALUE* %stack_ptr1104 to i64
  %subtmp1105 = sub nsw i64 %1746, 8
  %1747 = inttoptr i64 %subtmp1105 to %CLVALUE*
  %1748 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1749 = bitcast i8* %1748 to %CLVALUE**
  store %CLVALUE* %1747, %CLVALUE** %1749, align 8
  %1750 = ptrtoint %CLVALUE* %1747 to i64
  %addtmp1106 = add nsw i64 %1750, 8
  %1751 = inttoptr i64 %addtmp1106 to %CLVALUE*
  %1752 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1753 = bitcast i8* %1752 to %CLVALUE**
  %stack_ptr1107 = load %CLVALUE*, %CLVALUE** %1753, align 8
  %value1108 = load %CLVALUE, %CLVALUE* %value1097, align 8
  store %CLVALUE %value1108, %CLVALUE* %stack_ptr1107, align 8
  %1754 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1755 = bitcast i8* %1754 to %CLVALUE**
  %stack_ptr1109 = load %CLVALUE*, %CLVALUE** %1755, align 8
  %1756 = ptrtoint %CLVALUE* %stack_ptr1109 to i64
  %addtmp1110 = add nsw i64 %1756, 4
  %1757 = inttoptr i64 %addtmp1110 to %CLVALUE*
  %1758 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1759 = bitcast i8* %1758 to %CLVALUE**
  store %CLVALUE* %1757, %CLVALUE** %1759, align 8
  %1760 = ptrtoint %CLVALUE* %1757 to i64
  %subtmp1111 = sub nsw i64 %1760, 4
  %1761 = inttoptr i64 %subtmp1111 to %CLVALUE*
  br label %end_block

cond_else_block1084:                              ; preds = %after_break1112, %cond_else_block1066
  %eqtmpY1115 = icmp eq i32 %op35, 23
  br i1 %eqtmpY1115, label %cond_then_block1113, label %cond_else_block1114

after_break1112:                                  ; No predecessors!
  br label %cond_else_block1084

cond_then_block1113:                              ; preds = %cond_else_block1084
  %1762 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1763 = bitcast i8* %1762 to i32**
  %p1116 = load i32*, i32** %1763, align 8
  %derefference_value1117 = load i32, i32* %p1116, align 8
  %field_index1118 = alloca i32
  %1764 = bitcast i32* %field_index1118 to i8*
  store i8* %1764, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value1117, i32* %field_index1118, align 4
  %1765 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1766 = bitcast i8* %1765 to i32**
  %p1119 = load i32*, i32** %1766, align 8
  %1767 = ptrtoint i32* %p1119 to i64
  %addtmp1120 = add nsw i64 %1767, 4
  %1768 = inttoptr i64 %addtmp1120 to i32*
  %1769 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1770 = bitcast i8* %1769 to i32**
  store i32* %1768, i32** %1770, align 8
  %1771 = ptrtoint i32* %1768 to i64
  %subtmp1121 = sub nsw i64 %1771, 4
  %1772 = inttoptr i64 %subtmp1121 to i32*
  %1773 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1774 = bitcast i8* %1773 to %CLVALUE**
  %stack_ptr1122 = load %CLVALUE*, %CLVALUE** %1774, align 8
  %1775 = ptrtoint %CLVALUE* %stack_ptr1122 to i64
  %subtmp1123 = sub nsw i64 %1775, 4
  %1776 = inttoptr i64 %subtmp1123 to %CLVALUE*
  %1777 = bitcast %CLVALUE* %1776 to i32*
  %1778 = load i32, i32* %1777, align 4
  %obj1124 = alloca i32
  %1779 = bitcast i32* %obj1124 to i8*
  store i8* %1779, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %1778, i32* %obj1124, align 4
  %obj1125 = load i32, i32* %obj1124, align 4
  %1780 = call %sCLHeapMem* @get_object_pointer(i32 %obj1125)
  %1781 = bitcast %sCLHeapMem* %1780 to %sCLObject*
  %object_data1126 = alloca %sCLObject*
  %1782 = bitcast %sCLObject** %object_data1126 to i8*
  store i8* %1782, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLObject* %1781, %sCLObject** %object_data1126, align 8
  %1783 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1784 = bitcast i8* %1783 to %CLVALUE**
  %stack_ptr1127 = load %CLVALUE*, %CLVALUE** %1784, align 8
  %1785 = ptrtoint %CLVALUE* %stack_ptr1127 to i64
  %subtmp1128 = sub nsw i64 %1785, 4
  %1786 = inttoptr i64 %subtmp1128 to %CLVALUE*
  %1787 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1788 = bitcast i8* %1787 to %CLVALUE**
  store %CLVALUE* %1786, %CLVALUE** %1788, align 8
  %1789 = ptrtoint %CLVALUE* %1786 to i64
  %addtmp1129 = add nsw i64 %1789, 4
  %1790 = inttoptr i64 %addtmp1129 to %CLVALUE*
  %1791 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1792 = bitcast i8* %1791 to %CLVALUE**
  %stack_ptr1130 = load %CLVALUE*, %CLVALUE** %1792, align 8
  %object_data1131 = load %sCLObject*, %sCLObject** %object_data1126, align 8
  %1793 = getelementptr inbounds %sCLObject, %sCLObject* %object_data1131, i32 0, i32 3
  %1794 = load %anon85, %anon85* %1793, align 8
  %1795 = bitcast %anon85* %1793 to [32 x %CLVALUE]*
  %1796 = bitcast [32 x %CLVALUE]* %1795 to %CLVALUE*
  %field_index1132 = load i32, i32* %field_index1118, align 4
  %element_address1133 = getelementptr %CLVALUE, %CLVALUE* %1796, i32 %field_index1132
  %element1134 = load %CLVALUE, %CLVALUE* %element_address1133, align 8
  store %CLVALUE %element1134, %CLVALUE* %stack_ptr1130, align 8
  %1797 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1798 = bitcast i8* %1797 to %CLVALUE**
  %stack_ptr1135 = load %CLVALUE*, %CLVALUE** %1798, align 8
  %1799 = ptrtoint %CLVALUE* %stack_ptr1135 to i64
  %addtmp1136 = add nsw i64 %1799, 4
  %1800 = inttoptr i64 %addtmp1136 to %CLVALUE*
  %1801 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1802 = bitcast i8* %1801 to %CLVALUE**
  store %CLVALUE* %1800, %CLVALUE** %1802, align 8
  %1803 = ptrtoint %CLVALUE* %1800 to i64
  %subtmp1137 = sub nsw i64 %1803, 4
  %1804 = inttoptr i64 %subtmp1137 to %CLVALUE*
  br label %end_block

cond_else_block1114:                              ; preds = %after_break1138, %cond_else_block1084
  %eqtmpY1141 = icmp eq i32 %op35, 29
  br i1 %eqtmpY1141, label %cond_then_block1139, label %cond_else_block1140

after_break1138:                                  ; No predecessors!
  br label %cond_else_block1114

cond_then_block1139:                              ; preds = %cond_else_block1114
  %1805 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1806 = bitcast i8* %1805 to %CLVALUE**
  %stack_ptr1142 = load %CLVALUE*, %CLVALUE** %1806, align 8
  %1807 = ptrtoint %CLVALUE* %stack_ptr1142 to i64
  %subtmp1143 = sub nsw i64 %1807, 4
  %1808 = inttoptr i64 %subtmp1143 to %CLVALUE*
  %1809 = bitcast %CLVALUE* %1808 to i32*
  %1810 = load i32, i32* %1809, align 4
  %obj1144 = alloca i32
  %1811 = bitcast i32* %obj1144 to i8*
  store i8* %1811, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %1810, i32* %obj1144, align 4
  %obj1145 = load i32, i32* %obj1144, align 4
  %1812 = call %sCLHeapMem* @get_object_pointer(i32 %obj1145)
  %1813 = bitcast %sCLHeapMem* %1812 to %sCLInt*
  %object_data1146 = alloca %sCLInt*
  %1814 = bitcast %sCLInt** %object_data1146 to i8*
  store i8* %1814, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store %sCLInt* %1813, %sCLInt** %object_data1146, align 8
  %object_data1147 = load %sCLInt*, %sCLInt** %object_data1146, align 8
  %1815 = getelementptr inbounds %sCLInt, %sCLInt* %object_data1147, i32 0, i32 3
  %1816 = load i32, i32* %1815, align 4
  call void @exit(i32 %1816)
  %1817 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1818 = bitcast i8* %1817 to %CLVALUE**
  %stack_ptr1148 = load %CLVALUE*, %CLVALUE** %1818, align 8
  %1819 = ptrtoint %CLVALUE* %stack_ptr1148 to i64
  %subtmp1149 = sub nsw i64 %1819, 4
  %1820 = inttoptr i64 %subtmp1149 to %CLVALUE*
  %1821 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1822 = bitcast i8* %1821 to %CLVALUE**
  store %CLVALUE* %1820, %CLVALUE** %1822, align 8
  %1823 = ptrtoint %CLVALUE* %1820 to i64
  %addtmp1150 = add nsw i64 %1823, 4
  %1824 = inttoptr i64 %addtmp1150 to %CLVALUE*
  br label %end_block

cond_else_block1140:                              ; preds = %after_break1151, %cond_else_block1114
  %eqtmpY1154 = icmp eq i32 %op35, 30
  br i1 %eqtmpY1154, label %cond_then_block1152, label %cond_else_block1153

after_break1151:                                  ; No predecessors!
  br label %cond_else_block1140

cond_then_block1152:                              ; preds = %cond_else_block1140
  %1825 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1826 = bitcast i8* %1825 to i32**
  %p1155 = load i32*, i32** %1826, align 8
  %derefference_value1156 = load i32, i32* %p1155, align 8
  %try_codes_len = alloca i32
  %1827 = bitcast i32* %try_codes_len to i8*
  store i8* %1827, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %derefference_value1156, i32* %try_codes_len, align 4
  %1828 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1829 = bitcast i8* %1828 to i32**
  %p1157 = load i32*, i32** %1829, align 8
  %1830 = ptrtoint i32* %p1157 to i64
  %addtmp1158 = add nsw i64 %1830, 4
  %1831 = inttoptr i64 %addtmp1158 to i32*
  %1832 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1833 = bitcast i8* %1832 to i32**
  store i32* %1831, i32** %1833, align 8
  %1834 = ptrtoint i32* %1831 to i64
  %subtmp1159 = sub nsw i64 %1834, 4
  %1835 = inttoptr i64 %subtmp1159 to i32*
  %1836 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1837 = bitcast i8* %1836 to i32**
  %p1160 = load i32*, i32** %1837, align 8
  %try_head_codes = alloca i32*
  %1838 = bitcast i32** %try_head_codes to i8*
  store i8* %1838, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32* %p1160, i32** %try_head_codes, align 8
  %1839 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1840 = bitcast i8* %1839 to i32**
  %p1161 = load i32*, i32** %1840, align 8
  %try_codes_len1162 = load i32, i32* %try_codes_len, align 4
  %divtmp1163 = sdiv i32 %try_codes_len1162, 4
  %1841 = ptrtoint i32* %p1161 to i64
  %sext11164 = sext i32 %divtmp1163 to i64
  %multtmp1165 = mul nsw i64 %sext11164, 4
  %addtmp1166 = add nsw i64 %1841, %multtmp1165
  %1842 = inttoptr i64 %addtmp1166 to i32*
  %1843 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1844 = bitcast i8* %1843 to i32**
  store i32* %1842, i32** %1844, align 8
  %try_codes_len1167 = load i32, i32* %try_codes_len, align 4
  %divtmp1168 = sdiv i32 %try_codes_len1167, 4
  %1845 = ptrtoint i32* %1842 to i64
  %sext21169 = sext i32 %divtmp1168 to i64
  %multtmp1170 = mul nsw i64 %sext21169, 4
  %subtmp1171 = sub nsw i64 %1845, %multtmp1170
  %1846 = inttoptr i64 %subtmp1171 to i32*
  %1847 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1848 = bitcast i8* %1847 to i32**
  %p1172 = load i32*, i32** %1848, align 8
  %derefference_value1173 = load i32, i32* %p1172, align 8
  %try_var_num = alloca i32
  %1849 = bitcast i32* %try_var_num to i8*
  store i8* %1849, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 %derefference_value1173, i32* %try_var_num, align 4
  %1850 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1851 = bitcast i8* %1850 to i32**
  %p1174 = load i32*, i32** %1851, align 8
  %1852 = ptrtoint i32* %p1174 to i64
  %addtmp1175 = add nsw i64 %1852, 4
  %1853 = inttoptr i64 %addtmp1175 to i32*
  %1854 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1855 = bitcast i8* %1854 to i32**
  store i32* %1853, i32** %1855, align 8
  %1856 = ptrtoint i32* %1853 to i64
  %subtmp1176 = sub nsw i64 %1856, 4
  %1857 = inttoptr i64 %subtmp1176 to i32*
  %1858 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1859 = bitcast i8* %1858 to i32**
  %p1177 = load i32*, i32** %1859, align 8
  %derefference_value1178 = load i32, i32* %p1177, align 8
  %catch_codes_len = alloca i32
  %1860 = bitcast i32* %catch_codes_len to i8*
  store i8* %1860, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %derefference_value1178, i32* %catch_codes_len, align 4
  %1861 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1862 = bitcast i8* %1861 to i32**
  %p1179 = load i32*, i32** %1862, align 8
  %1863 = ptrtoint i32* %p1179 to i64
  %addtmp1180 = add nsw i64 %1863, 4
  %1864 = inttoptr i64 %addtmp1180 to i32*
  %1865 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1866 = bitcast i8* %1865 to i32**
  store i32* %1864, i32** %1866, align 8
  %1867 = ptrtoint i32* %1864 to i64
  %subtmp1181 = sub nsw i64 %1867, 4
  %1868 = inttoptr i64 %subtmp1181 to i32*
  %1869 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1870 = bitcast i8* %1869 to i32**
  %p1182 = load i32*, i32** %1870, align 8
  %catch_head_codes = alloca i32*
  %1871 = bitcast i32** %catch_head_codes to i8*
  store i8* %1871, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32* %p1182, i32** %catch_head_codes, align 8
  %1872 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1873 = bitcast i8* %1872 to i32**
  %p1183 = load i32*, i32** %1873, align 8
  %catch_codes_len1184 = load i32, i32* %catch_codes_len, align 4
  %divtmp1185 = sdiv i32 %catch_codes_len1184, 4
  %1874 = ptrtoint i32* %p1183 to i64
  %sext11186 = sext i32 %divtmp1185 to i64
  %multtmp1187 = mul nsw i64 %sext11186, 4
  %addtmp1188 = add nsw i64 %1874, %multtmp1187
  %1875 = inttoptr i64 %addtmp1188 to i32*
  %1876 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1877 = bitcast i8* %1876 to i32**
  store i32* %1875, i32** %1877, align 8
  %catch_codes_len1189 = load i32, i32* %catch_codes_len, align 4
  %divtmp1190 = sdiv i32 %catch_codes_len1189, 4
  %1878 = ptrtoint i32* %1875 to i64
  %sext21191 = sext i32 %divtmp1190 to i64
  %multtmp1192 = mul nsw i64 %sext21191, 4
  %subtmp1193 = sub nsw i64 %1878, %multtmp1192
  %1879 = inttoptr i64 %subtmp1193 to i32*
  %1880 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1881 = bitcast i8* %1880 to i32**
  %p1194 = load i32*, i32** %1881, align 8
  %derefference_value1195 = load i32, i32* %p1194, align 8
  %catch_var_num = alloca i32
  %1882 = bitcast i32* %catch_var_num to i8*
  store i8* %1882, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %derefference_value1195, i32* %catch_var_num, align 4
  %1883 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1884 = bitcast i8* %1883 to i32**
  %p1196 = load i32*, i32** %1884, align 8
  %1885 = ptrtoint i32* %p1196 to i64
  %addtmp1197 = add nsw i64 %1885, 4
  %1886 = inttoptr i64 %addtmp1197 to i32*
  %1887 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %1888 = bitcast i8* %1887 to i32**
  store i32* %1886, i32** %1888, align 8
  %1889 = ptrtoint i32* %1886 to i64
  %subtmp1198 = sub nsw i64 %1889, 4
  %1890 = inttoptr i64 %subtmp1198 to i32*
  %1891 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.116, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.117, i32 0, i32 0), i32 1401, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.118, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.119, i32 0, i32 0))
  %1892 = bitcast i8* %1891 to %buffer*
  %1893 = call %buffer* @buffer_initialize(%buffer* %1892)
  %try_codes = alloca %buffer*
  %1894 = bitcast %buffer** %try_codes to i8*
  store i8* %1894, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  store %buffer* %1893, %buffer** %try_codes, align 8
  %try_codes1199 = load %buffer*, %buffer** %try_codes, align 8
  %try_head_codes1200 = load i32*, i32** %try_head_codes, align 8
  %1895 = bitcast i32* %try_head_codes1200 to i8*
  %try_codes_len1201 = load i32, i32* %try_codes_len, align 4
  %sext141202 = zext i32 %try_codes_len1201 to i64
  call void @buffer_append(%buffer* %try_codes1199, i8* %1895, i64 %sext141202)
  %num_params1203 = alloca i32
  %1896 = bitcast i32* %num_params1203 to i8*
  store i8* %1896, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  store i32 0, i32* %num_params1203, align 4
  %try_var_num1204 = load i32, i32* %try_var_num, align 4
  %var_num1205 = alloca i32
  %1897 = bitcast i32* %var_num1205 to i8*
  store i8* %1897, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  store i32 %try_var_num1204, i32* %var_num1205, align 4
  %1898 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1899 = bitcast i8* %1898 to %sVMInfo**
  %info1206 = load %sVMInfo*, %sVMInfo** %1899, align 8
  %1900 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1206, i32 0, i32 5
  %1901 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1900, align 8
  %1902 = call i32 @"vector_length_sCLStackFrame26_src/vm"(%vector__sCLStackFrame* %1901)
  %subttmp1207 = sub nsw i32 %1902, 1
  %parent_stack_frame_index = alloca i32
  %1903 = bitcast i32* %parent_stack_frame_index to i8*
  store i8* %1903, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  store i32 %subttmp1207, i32* %parent_stack_frame_index, align 4
  %enable_parent_stack = alloca i1
  %1904 = bitcast i1* %enable_parent_stack to i8*
  store i8* %1904, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  store i1 true, i1* %enable_parent_stack, align 1
  %result_obj = alloca %CLVALUE
  %1905 = bitcast %CLVALUE* %result_obj to i8*
  store i8* %1905, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %1906 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1907 = bitcast i8* %1906 to %sVMInfo**
  %info1208 = load %sVMInfo*, %sVMInfo** %1907, align 8
  %1908 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1208, i32 0, i32 6
  %1909 = load %CLVALUE, %CLVALUE* %1908, align 8
  %1910 = bitcast %CLVALUE* %1908 to i32*
  store i32 0, i32* %1910, align 4
  %try_codes1209 = load %buffer*, %buffer** %try_codes, align 8
  %1911 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1912 = bitcast i8* %1911 to %CLVALUE**
  %stack_ptr1210 = load %CLVALUE*, %CLVALUE** %1912, align 8
  %num_params1211 = load i32, i32* %num_params1203, align 4
  %var_num1212 = load i32, i32* %var_num1205, align 4
  %result_obj1213 = load %CLVALUE, %CLVALUE* %result_obj, align 8
  %1913 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1914 = bitcast i8* %1913 to %sVMInfo**
  %info1214 = load %sVMInfo*, %sVMInfo** %1914, align 8
  %1915 = call i1 @vm(%buffer* %try_codes1209, %CLVALUE* %stack_ptr1210, i32 %num_params1211, i32 %var_num1212, %CLVALUE* %result_obj, %sVMInfo* %info1214)
  %result1215 = alloca i1
  %1916 = bitcast i1* %result1215 to i8*
  store i8* %1916, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  store i1 %1915, i1* %result1215, align 1
  %result1216 = load i1, i1* %result1215, align 1
  %LOGICAL_DIANEAL1217 = icmp eq i1 %result1216, false
  br i1 %LOGICAL_DIANEAL1217, label %cond_jump_then1218, label %cond_end1219

cond_else_block1153:                              ; preds = %after_break1252, %cond_else_block1140
  %eqtmpY1255 = icmp eq i32 %op35, 26
  br i1 %eqtmpY1255, label %cond_then_block1253, label %cond_else_block1254

cond_jump_then1218:                               ; preds = %cond_then_block1152
  %1917 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.121, i32 0, i32 0), i32 1415, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.123, i32 0, i32 0))
  %1918 = bitcast i8* %1917 to %buffer*
  %1919 = call %buffer* @buffer_initialize(%buffer* %1918)
  %catch_codes = alloca %buffer*
  %1920 = bitcast %buffer** %catch_codes to i8*
  store i8* %1920, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  store %buffer* %1919, %buffer** %catch_codes, align 8
  %catch_codes1220 = load %buffer*, %buffer** %catch_codes, align 8
  %1921 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  %1922 = bitcast i8* %1921 to i32**
  %catch_head_codes1221 = load i32*, i32** %1922, align 8
  %1923 = bitcast i32* %catch_head_codes1221 to i8*
  %1924 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %1925 = bitcast i8* %1924 to i32*
  %catch_codes_len1222 = load i32, i32* %1925, align 4
  %sext141223 = zext i32 %catch_codes_len1222 to i64
  call void @buffer_append(%buffer* %catch_codes1220, i8* %1923, i64 %sext141223)
  %num_params1224 = alloca i32
  %1926 = bitcast i32* %num_params1224 to i8*
  store i8* %1926, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  store i32 1, i32* %num_params1224, align 4
  %1927 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %1928 = bitcast i8* %1927 to i32*
  %catch_var_num1225 = load i32, i32* %1928, align 4
  %var_num1226 = alloca i32
  %1929 = bitcast i32* %var_num1226 to i8*
  store i8* %1929, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store i32 %catch_var_num1225, i32* %var_num1226, align 4
  %1930 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1931 = bitcast i8* %1930 to %sVMInfo**
  %info1227 = load %sVMInfo*, %sVMInfo** %1931, align 8
  %1932 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1227, i32 0, i32 5
  %1933 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1932, align 8
  %1934 = call i32 @"vector_length_sCLStackFrame27_src/vm"(%vector__sCLStackFrame* %1933)
  %subttmp1228 = sub nsw i32 %1934, 1
  %parent_stack_frame_index1229 = alloca i32
  %1935 = bitcast i32* %parent_stack_frame_index1229 to i8*
  store i8* %1935, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 513), align 8
  store i32 %subttmp1228, i32* %parent_stack_frame_index1229, align 4
  %enable_parent_stack1230 = alloca i1
  %1936 = bitcast i1* %enable_parent_stack1230 to i8*
  store i8* %1936, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 514), align 8
  store i1 true, i1* %enable_parent_stack1230, align 1
  %result_obj1231 = alloca %CLVALUE
  %1937 = bitcast %CLVALUE* %result_obj1231 to i8*
  store i8* %1937, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 515), align 8
  %catch_codes1232 = load %buffer*, %buffer** %catch_codes, align 8
  %1938 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1939 = bitcast i8* %1938 to %CLVALUE**
  %stack_ptr1233 = load %CLVALUE*, %CLVALUE** %1939, align 8
  %num_params1234 = load i32, i32* %num_params1224, align 4
  %var_num1235 = load i32, i32* %var_num1226, align 4
  %result_obj1236 = load %CLVALUE, %CLVALUE* %result_obj1231, align 8
  %1940 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1941 = bitcast i8* %1940 to %sVMInfo**
  %info1237 = load %sVMInfo*, %sVMInfo** %1941, align 8
  %1942 = call i1 @vm(%buffer* %catch_codes1232, %CLVALUE* %stack_ptr1233, i32 %num_params1234, i32 %var_num1235, %CLVALUE* %result_obj1231, %sVMInfo* %info1237)
  %LOGICAL_DIANEAL1238 = icmp eq i1 %1942, false
  br i1 %LOGICAL_DIANEAL1238, label %cond_jump_then1239, label %cond_end1240

cond_end1219:                                     ; preds = %cond_end1248, %cond_then_block1152
  %1943 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1944 = bitcast i8* %1943 to %sVMInfo**
  %info1249 = load %sVMInfo*, %sVMInfo** %1944, align 8
  %1945 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1249, i32 0, i32 6
  %1946 = load %CLVALUE, %CLVALUE* %1945, align 8
  %1947 = bitcast %CLVALUE* %1945 to i32*
  store i32 0, i32* %1947, align 4
  %1948 = load %buffer*, %buffer** %try_codes, align 8
  call void @buffer_finalize(%buffer* %1948)
  %1949 = ptrtoint %buffer* %1948 to i64
  %1950 = icmp ne i64 %1949, 0
  br i1 %1950, label %cond_then_block1250, label %cond_end1251

cond_jump_then1239:                               ; preds = %cond_jump_then1218
  %1951 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1952 = bitcast i8* %1951 to %sVMInfo**
  %info1241 = load %sVMInfo*, %sVMInfo** %1952, align 8
  %1953 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1241, i32 0, i32 5
  %1954 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1953, align 8
  %1955 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1956 = bitcast i8* %1955 to %sCLStackFrame*
  %null_parent_stack_frame1242 = load %sCLStackFrame, %sCLStackFrame* %1956, align 8
  %1957 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame28_src/vm"(%vector__sCLStackFrame* %1954, %sCLStackFrame %null_parent_stack_frame1242)
  %1958 = bitcast [8192 x i8*]* %lvtable to i8*
  %1959 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1958, i64 65536)
  %1960 = load %buffer*, %buffer** %catch_codes, align 8
  call void @buffer_finalize(%buffer* %1960)
  %1961 = ptrtoint %buffer* %1960 to i64
  %1962 = icmp ne i64 %1961, 0
  br i1 %1962, label %cond_then_block1243, label %cond_end1244

cond_end1240:                                     ; preds = %cond_jump_then1218
  %1963 = load %buffer*, %buffer** %catch_codes, align 8
  call void @buffer_finalize(%buffer* %1963)
  %1964 = ptrtoint %buffer* %1963 to i64
  %1965 = icmp ne i64 %1964, 0
  br i1 %1965, label %cond_then_block1247, label %cond_end1248

cond_then_block1243:                              ; preds = %cond_jump_then1239
  br label %cond_end1244

cond_end1244:                                     ; preds = %cond_then_block1243, %cond_jump_then1239
  %1966 = bitcast %buffer* %1960 to i8*
  call void @xfree(i8* %1966)
  %1967 = load %buffer*, %buffer** %try_codes, align 8
  call void @buffer_finalize(%buffer* %1967)
  %1968 = ptrtoint %buffer* %1967 to i64
  %1969 = icmp ne i64 %1968, 0
  br i1 %1969, label %cond_then_block1245, label %cond_end1246

cond_then_block1245:                              ; preds = %cond_end1244
  br label %cond_end1246

cond_end1246:                                     ; preds = %cond_then_block1245, %cond_end1244
  %1970 = bitcast %buffer* %1967 to i8*
  call void @xfree(i8* %1970)
  ret i1 false

cond_then_block1247:                              ; preds = %cond_end1240
  br label %cond_end1248

cond_end1248:                                     ; preds = %cond_then_block1247, %cond_end1240
  %1971 = bitcast %buffer* %1963 to i8*
  call void @xfree(i8* %1971)
  br label %cond_end1219

cond_then_block1250:                              ; preds = %cond_end1219
  br label %cond_end1251

cond_end1251:                                     ; preds = %cond_then_block1250, %cond_end1219
  %1972 = bitcast %buffer* %1948 to i8*
  call void @xfree(i8* %1972)
  br label %end_block

after_break1252:                                  ; No predecessors!
  br label %cond_else_block1153

cond_then_block1253:                              ; preds = %cond_else_block1153
  %1973 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %1974 = bitcast i8* %1973 to %CLVALUE**
  %result1256 = load %CLVALUE*, %CLVALUE** %1974, align 8
  %1975 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1976 = bitcast i8* %1975 to %CLVALUE**
  %stack_ptr1257 = load %CLVALUE*, %CLVALUE** %1976, align 8
  %1977 = ptrtoint %CLVALUE* %stack_ptr1257 to i64
  %subtmp1258 = sub nsw i64 %1977, 4
  %1978 = inttoptr i64 %subtmp1258 to %CLVALUE*
  %derefference_value1259 = load %CLVALUE, %CLVALUE* %1978, align 8
  store %CLVALUE %derefference_value1259, %CLVALUE* %result1256, align 8
  %1979 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1980 = bitcast i8* %1979 to %sVMInfo**
  %info1260 = load %sVMInfo*, %sVMInfo** %1980, align 8
  %1981 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1260, i32 0, i32 5
  %1982 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %1981, align 8
  %1983 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %1984 = bitcast i8* %1983 to %sCLStackFrame*
  %null_parent_stack_frame1261 = load %sCLStackFrame, %sCLStackFrame* %1984, align 8
  %1985 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame29_src/vm"(%vector__sCLStackFrame* %1982, %sCLStackFrame %null_parent_stack_frame1261)
  %1986 = bitcast [8192 x i8*]* %lvtable to i8*
  %1987 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %1986, i64 65536)
  ret i1 true

cond_else_block1254:                              ; preds = %cond_else_block1153
  %eqtmpY1264 = icmp eq i32 %op35, 25
  br i1 %eqtmpY1264, label %cond_then_block1262, label %cond_else_block1263

cond_then_block1262:                              ; preds = %cond_else_block1254
  %1988 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %1989 = bitcast i8* %1988 to %sVMInfo**
  %info1265 = load %sVMInfo*, %sVMInfo** %1989, align 8
  %1990 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1991 = bitcast i8* %1990 to %CLVALUE**
  %stack_ptr1266 = load %CLVALUE*, %CLVALUE** %1991, align 8
  %1992 = ptrtoint %CLVALUE* %stack_ptr1266 to i64
  %subtmp1267 = sub nsw i64 %1992, 4
  %1993 = inttoptr i64 %subtmp1267 to %CLVALUE*
  %derefference_value1268 = load %CLVALUE, %CLVALUE* %1993, align 8
  %1994 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1265, i32 0, i32 6
  store %CLVALUE %derefference_value1268, %CLVALUE* %1994, align 8
  %1995 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %1996 = bitcast i8* %1995 to %CLVALUE**
  %stack_ptr1269 = load %CLVALUE*, %CLVALUE** %1996, align 8
  %1997 = ptrtoint %CLVALUE* %stack_ptr1269 to i64
  %subtmp1270 = sub nsw i64 %1997, 4
  %1998 = inttoptr i64 %subtmp1270 to %CLVALUE*
  %1999 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %2000 = bitcast i8* %1999 to %CLVALUE**
  store %CLVALUE* %1998, %CLVALUE** %2000, align 8
  %2001 = ptrtoint %CLVALUE* %1998 to i64
  %addtmp1271 = add nsw i64 %2001, 4
  %2002 = inttoptr i64 %addtmp1271 to %CLVALUE*
  %2003 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %2004 = bitcast i8* %2003 to %sVMInfo**
  %info1272 = load %sVMInfo*, %sVMInfo** %2004, align 8
  %2005 = getelementptr inbounds %sVMInfo, %sVMInfo* %info1272, i32 0, i32 5
  %2006 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %2005, align 8
  %2007 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %2008 = bitcast i8* %2007 to %sCLStackFrame*
  %null_parent_stack_frame1273 = load %sCLStackFrame, %sCLStackFrame* %2008, align 8
  %2009 = call %sCLStackFrame @"vector_pop_back_sCLStackFrame30_src/vm"(%vector__sCLStackFrame* %2006, %sCLStackFrame %null_parent_stack_frame1273)
  %2010 = bitcast [8192 x i8*]* %lvtable to i8*
  %2011 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %2010, i64 65536)
  ret i1 false
  br label %end_block

cond_else_block1263:                              ; preds = %after_break1274, %cond_else_block1254
  br label %end_block

after_break1274:                                  ; No predecessors!
  br label %cond_else_block1263
}

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

declare void @__assert_fail(i8*, i8*, i32, i8*)

declare void @__assert_perror_fail(i32, i8*, i32, i8*)

declare void @__assert(i8*, i8*, i32)

declare void (i32)* @__sysv_signal(i32, void (i32)*)

declare void (i32)* @signal(i32, void (i32)*)

declare i32 @kill(i32, i32)

declare i32 @killpg(i32, i32)

declare i32 @raise(i32)

declare void (i32)* @ssignal(i32, void (i32)*)

declare i32 @gsignal(i32)

declare void @psignal(i32, i8*)

declare void @psiginfo(%anon86*, i8*)

declare i32 @sigblock(i32)

declare i32 @sigsetmask(i32)

declare i32 @siggetmask()

declare i32 @sigemptyset(%anon6*)

declare i32 @sigfillset(%anon6*)

declare i32 @sigaddset(%anon6*, i32)

declare i32 @sigdelset(%anon6*, i32)

declare i32 @sigismember(%anon6*, i32)

declare i32 @sigprocmask(i32, %anon6*, %anon6*)

declare i32 @sigsuspend(%anon6*)

declare i32 @sigaction(i32, %sigaction*, %sigaction*)

declare i32 @sigpending(%anon6*)

declare i32 @sigwait(%anon6*, i32*)

declare i32 @sigwaitinfo(%anon6*, %anon86*)

declare i32 @sigtimedwait(%anon6*, %anon86*, %timespec*)

declare i32 @sigqueue(i32, i32, %sigval)

declare i32 @sigreturn(%sigcontext*)

declare i32 @siginterrupt(i32, i32)

declare i32 @sigaltstack(%anon103*, %anon103*)

declare i32 @sigstack(%sigstack*, %sigstack*)

declare i32 @pthread_sigmask(i32, %anon6*, %anon6*)

declare i32 @pthread_kill(i64, i32)

declare i32 @__libc_current_sigrtmin()

declare i32 @__libc_current_sigrtmax()

declare i32 @wait(i32*)

declare i32 @waitpid(i32, i32*, i32)

declare i32 @waitid(i32, i32, %anon86*, i32)

declare i32 @wait3(i32*, i32, %rusage*)

declare i32 @wait4(i32, i32*, i32, %rusage*)

define void @show_contents(%sCLObject* %object_data, i32 %obj) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %object_data1 = alloca %sCLObject*
  store %sCLObject* %object_data, %sCLObject** %object_data1, align 8
  %2 = bitcast %sCLObject** %object_data1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %obj2 = alloca i32
  store i32 %obj, i32* %obj2, align 4
  %3 = bitcast i32* %obj2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %object_data3 = load %sCLObject*, %sCLObject** %object_data1, align 8
  %4 = getelementptr inbounds %sCLObject, %sCLObject* %object_data3, i32 0, i32 0
  %5 = load %sCLType*, %sCLType** %4, align 8
  %6 = getelementptr inbounds %sCLType, %sCLType* %5, i32 0, i32 1
  %7 = load %sCLClass*, %sCLClass** %6, align 8
  %gClasses = load %map__charp_sCLClassp*, %map__charp_sCLClassp** @gClasses, align 8
  %8 = call %sCLClass* @"map_at_charp_sCLClassp0_src/vm"(%map__charp_sCLClassp* %gClasses, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.1, i32 0, i32 0), %sCLClass* null)
  %eqtmpX = icmp eq %sCLClass* %7, %8
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %10 = bitcast i8* %9 to %sCLObject**
  %object_data4 = load %sCLObject*, %sCLObject** %10, align 8
  %11 = bitcast %sCLObject* %object_data4 to %sCLInt*
  %object_data2 = alloca %sCLInt*
  %12 = bitcast %sCLInt** %object_data2 to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  store %sCLInt* %11, %sCLInt** %object_data2, align 8
  %object_data25 = load %sCLInt*, %sCLInt** %object_data2, align 8
  %13 = getelementptr inbounds %sCLInt, %sCLInt* %object_data25, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.2, i32 0, i32 0), i32 %14)
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %object_data6 = load %sCLObject*, %sCLObject** %object_data1, align 8
  %16 = getelementptr inbounds %sCLObject, %sCLObject* %object_data6, i32 0, i32 0
  %17 = load %sCLType*, %sCLType** %16, align 8
  %18 = getelementptr inbounds %sCLType, %sCLType* %17, i32 0, i32 1
  %19 = load %sCLClass*, %sCLClass** %18, align 8
  %gClasses7 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** @gClasses, align 8
  %20 = call %sCLClass* @"map_at_charp_sCLClassp1_src/vm"(%map__charp_sCLClassp* %gClasses7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.3, i32 0, i32 0), %sCLClass* null)
  %eqtmpX8 = icmp eq %sCLClass* %19, %20
  br i1 %eqtmpX8, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %22 = bitcast i8* %21 to %sCLObject**
  %object_data9 = load %sCLObject*, %sCLObject** %22, align 8
  %23 = bitcast %sCLObject* %object_data9 to %sCLInt*
  %object_data210 = alloca %sCLInt*
  %24 = bitcast %sCLInt** %object_data210 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  store %sCLInt* %23, %sCLInt** %object_data210, align 8
  %object_data211 = load %sCLInt*, %sCLInt** %object_data210, align 8
  %25 = getelementptr inbounds %sCLInt, %sCLInt* %object_data211, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.4, i32 0, i32 0), i32 %26)
  br label %cond_end

"cond_jump_elif1\0A":                             ; preds = %"cond_jump_elif0\0A"
  %object_data12 = load %sCLObject*, %sCLObject** %object_data1, align 8
  %28 = getelementptr inbounds %sCLObject, %sCLObject* %object_data12, i32 0, i32 0
  %29 = load %sCLType*, %sCLType** %28, align 8
  %30 = getelementptr inbounds %sCLType, %sCLType* %29, i32 0, i32 1
  %31 = load %sCLClass*, %sCLClass** %30, align 8
  %gClasses13 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** @gClasses, align 8
  %32 = call %sCLClass* @"map_at_charp_sCLClassp2_src/vm"(%map__charp_sCLClassp* %gClasses13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.5, i32 0, i32 0), %sCLClass* null)
  %eqtmpX14 = icmp eq %sCLClass* %31, %32
  br i1 %eqtmpX14, label %"cond_jump_elif_then1\0A", label %cond_end

"cond_jump_elif_then1\0A":                        ; preds = %"cond_jump_elif1\0A"
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %34 = bitcast i8* %33 to i32*
  %obj15 = load i32, i32* %34, align 4
  %35 = call i8* @get_string_mem(i32 %obj15)
  %value = alloca i8*
  %36 = bitcast i8** %value to i8*
  store i8* %36, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  store i8* %35, i8** %value, align 8
  %value16 = load i8*, i8** %value, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.6, i32 0, i32 0), i8* %value16)
  br label %cond_end

cond_end:                                         ; preds = %"cond_jump_elif_then1\0A", %"cond_jump_elif1\0A", %"cond_jump_elif_then0\0A", %cond_jump_then
  %38 = bitcast [8192 x i8*]* %lvtable to i8*
  %39 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %38, i64 65536)
  ret void
}

define %sCLClass* @"map_at_charp_sCLClassp0_src/vm"(%map__charp_sCLClassp* %self, i8* %key, %sCLClass* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLClassp*
  store %map__charp_sCLClassp* %self, %map__charp_sCLClassp** %self1, align 8
  %2 = bitcast %map__charp_sCLClassp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %default_value3 = alloca %sCLClass*
  store %sCLClass* %default_value, %sCLClass** %default_value3, align 8
  %4 = bitcast %sCLClass** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLClassp**
  %self7 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sCLClass*, %sCLClass** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sCLClass* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLClassp**
  %self9 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %28 = bitcast i8* %27 to %sCLClass**
  %default_value28 = load %sCLClass*, %sCLClass** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLClass* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLClassp**
  %self16 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self16, i32 0, i32 2
  %34 = load %sCLClass**, %sCLClass*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLClass*, %sCLClass** %34, i32 %it17
  %element19 = load %sCLClass*, %sCLClass** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLClass* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLClassp**
  %self22 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %56 = bitcast i8* %55 to %sCLClass**
  %default_value27 = load %sCLClass*, %sCLClass** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLClass* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define %sCLClass* @"map_at_charp_sCLClassp1_src/vm"(%map__charp_sCLClassp* %self, i8* %key, %sCLClass* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLClassp*
  store %map__charp_sCLClassp* %self, %map__charp_sCLClassp** %self1, align 8
  %2 = bitcast %map__charp_sCLClassp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %default_value3 = alloca %sCLClass*
  store %sCLClass* %default_value, %sCLClass** %default_value3, align 8
  %4 = bitcast %sCLClass** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLClassp**
  %self7 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sCLClass*, %sCLClass** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sCLClass* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLClassp**
  %self9 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %28 = bitcast i8* %27 to %sCLClass**
  %default_value28 = load %sCLClass*, %sCLClass** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLClass* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLClassp**
  %self16 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self16, i32 0, i32 2
  %34 = load %sCLClass**, %sCLClass*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLClass*, %sCLClass** %34, i32 %it17
  %element19 = load %sCLClass*, %sCLClass** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLClass* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLClassp**
  %self22 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %56 = bitcast i8* %55 to %sCLClass**
  %default_value27 = load %sCLClass*, %sCLClass** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLClass* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define %sCLClass* @"map_at_charp_sCLClassp2_src/vm"(%map__charp_sCLClassp* %self, i8* %key, %sCLClass* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLClassp*
  store %map__charp_sCLClassp* %self, %map__charp_sCLClassp** %self1, align 8
  %2 = bitcast %map__charp_sCLClassp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %default_value3 = alloca %sCLClass*
  store %sCLClass* %default_value, %sCLClass** %default_value3, align 8
  %4 = bitcast %sCLClass** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLClassp**
  %self7 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sCLClass*, %sCLClass** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sCLClass* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLClassp**
  %self9 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %28 = bitcast i8* %27 to %sCLClass**
  %default_value28 = load %sCLClass*, %sCLClass** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLClass* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLClassp**
  %self16 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self16, i32 0, i32 2
  %34 = load %sCLClass**, %sCLClass*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLClass*, %sCLClass** %34, i32 %it17
  %element19 = load %sCLClass*, %sCLClass** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLClass* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLClassp**
  %self22 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %56 = bitcast i8* %55 to %sCLClass**
  %default_value27 = load %sCLClass*, %sCLClass** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLClass* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define void @print_stack(%CLVALUE* %stack, %CLVALUE* %stack_ptr, i32 %var_num) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %stack1 = alloca %CLVALUE*
  store %CLVALUE* %stack, %CLVALUE** %stack1, align 8
  %2 = bitcast %CLVALUE** %stack1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %stack_ptr2 = alloca %CLVALUE*
  store %CLVALUE* %stack_ptr, %CLVALUE** %stack_ptr2, align 8
  %3 = bitcast %CLVALUE** %stack_ptr2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %var_num3 = alloca i32
  store i32 %var_num, i32* %var_num3, align 4
  %4 = bitcast i32* %var_num3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %stack4 = load %CLVALUE*, %CLVALUE** %stack1, align 8
  %p = alloca %CLVALUE*
  %5 = bitcast %CLVALUE** %p to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  store %CLVALUE* %stack4, %CLVALUE** %p, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %p5 = load %CLVALUE*, %CLVALUE** %p, align 8
  %stack_ptr6 = load %CLVALUE*, %CLVALUE** %stack_ptr2, align 8
  %letmp = icmp slt %CLVALUE* %p5, %stack_ptr6
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %7 = bitcast i8* %6 to %CLVALUE**
  %p7 = load %CLVALUE*, %CLVALUE** %7, align 8
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %9 = bitcast i8* %8 to %CLVALUE**
  %stack8 = load %CLVALUE*, %CLVALUE** %9, align 8
  %10 = ptrtoint %CLVALUE* %p7 to i64
  %11 = ptrtoint %CLVALUE* %stack8 to i64
  %subtmp = sub nsw i64 %10, %11
  %divtmp = sdiv i64 %subtmp, 4
  %12 = trunc i64 %divtmp to i32
  %index = alloca i32
  %13 = bitcast i32* %index to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  store i32 %12, i32* %index, align 4
  %index9 = load i32, i32* %index, align 4
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %15 = bitcast i8* %14 to i32*
  %var_num10 = load i32, i32* %15, align 4
  %letmp11 = icmp slt i32 %index9, %var_num10
  br i1 %letmp11, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %19 = bitcast i8* %18 to i32*
  %index12 = load i32, i32* %19, align 4
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %21 = bitcast i8* %20 to %CLVALUE**
  %p13 = load %CLVALUE*, %CLVALUE** %21, align 8
  %22 = bitcast %CLVALUE* %p13 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.7, i32 0, i32 0), i32 %index12, i32 %23)
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %26 = bitcast i8* %25 to %CLVALUE**
  %p14 = load %CLVALUE*, %CLVALUE** %26, align 8
  %27 = bitcast %CLVALUE* %p14 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %cond_jump_then15, label %cond_else_block16

cond_else_block:                                  ; preds = %cond_then_block
  %stderr22 = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %31 = bitcast i8* %30 to i32*
  %index23 = load i32, i32* %31, align 4
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %33 = bitcast i8* %32 to %CLVALUE**
  %p24 = load %CLVALUE*, %CLVALUE** %33, align 8
  %34 = bitcast %CLVALUE* %p24 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.9, i32 0, i32 0), i32 %index23, i32 %35)
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %38 = bitcast i8* %37 to %CLVALUE**
  %p25 = load %CLVALUE*, %CLVALUE** %38, align 8
  %39 = bitcast %CLVALUE* %p25 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %cond_jump_then26, label %cond_else_block27

cond_end:                                         ; preds = %cond_end28, %cond_end17
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %43 = bitcast i8* %42 to %CLVALUE**
  %p34 = load %CLVALUE*, %CLVALUE** %43, align 8
  %44 = ptrtoint %CLVALUE* %p34 to i64
  %addtmp = add nsw i64 %44, 4
  %45 = inttoptr i64 %addtmp to %CLVALUE*
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %47 = bitcast i8* %46 to %CLVALUE**
  store %CLVALUE* %45, %CLVALUE** %47, align 8
  %48 = ptrtoint %CLVALUE* %45 to i64
  %subtmp35 = sub nsw i64 %48, 4
  %49 = inttoptr i64 %subtmp35 to %CLVALUE*
  br label %loop_top_block

cond_jump_then15:                                 ; preds = %cond_jump_then
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %51 = bitcast i8* %50 to %CLVALUE**
  %p18 = load %CLVALUE*, %CLVALUE** %51, align 8
  %52 = bitcast %CLVALUE* %p18 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = call %sCLHeapMem* @get_object_pointer(i32 %53)
  %55 = bitcast %sCLHeapMem* %54 to %sCLObject*
  %object_data = alloca %sCLObject*
  %56 = bitcast %sCLObject** %object_data to i8*
  store i8* %56, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store %sCLObject* %55, %sCLObject** %object_data, align 8
  %object_data19 = load %sCLObject*, %sCLObject** %object_data, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %58 = bitcast i8* %57 to %CLVALUE**
  %p20 = load %CLVALUE*, %CLVALUE** %58, align 8
  %59 = bitcast %CLVALUE* %p20 to i32*
  %60 = load i32, i32* %59, align 4
  call void @show_contents(%sCLObject* %object_data19, i32 %60)
  %object_data21 = load %sCLObject*, %sCLObject** %object_data, align 8
  %61 = getelementptr inbounds %sCLObject, %sCLObject* %object_data21, i32 0, i32 0
  %62 = load %sCLType*, %sCLType** %61, align 8
  call void @show_type(%sCLType* %62)
  br label %cond_end17

cond_else_block16:                                ; preds = %cond_jump_then
  %63 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.8, i32 0, i32 0))
  br label %cond_end17

cond_end17:                                       ; preds = %cond_else_block16, %cond_jump_then15
  br label %cond_end

cond_jump_then26:                                 ; preds = %cond_else_block
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %65 = bitcast i8* %64 to %CLVALUE**
  %p29 = load %CLVALUE*, %CLVALUE** %65, align 8
  %66 = bitcast %CLVALUE* %p29 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = call %sCLHeapMem* @get_object_pointer(i32 %67)
  %69 = bitcast %sCLHeapMem* %68 to %sCLObject*
  %object_data30 = alloca %sCLObject*
  %70 = bitcast %sCLObject** %object_data30 to i8*
  store i8* %70, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store %sCLObject* %69, %sCLObject** %object_data30, align 8
  %object_data31 = load %sCLObject*, %sCLObject** %object_data30, align 8
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %72 = bitcast i8* %71 to %CLVALUE**
  %p32 = load %CLVALUE*, %CLVALUE** %72, align 8
  %73 = bitcast %CLVALUE* %p32 to i32*
  %74 = load i32, i32* %73, align 4
  call void @show_contents(%sCLObject* %object_data31, i32 %74)
  %object_data33 = load %sCLObject*, %sCLObject** %object_data30, align 8
  %75 = getelementptr inbounds %sCLObject, %sCLObject* %object_data33, i32 0, i32 0
  %76 = load %sCLType*, %sCLType** %75, align 8
  call void @show_type(%sCLType* %76)
  br label %cond_end28

cond_else_block27:                                ; preds = %cond_else_block
  %77 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.10, i32 0, i32 0))
  br label %cond_end28

cond_end28:                                       ; preds = %cond_else_block27, %cond_jump_then26
  br label %cond_end
}

define void @print_method(%sCLClass* %klass, %sCLMethod* %method, i32 %num_params, i32 %var_num) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %klass1 = alloca %sCLClass*
  store %sCLClass* %klass, %sCLClass** %klass1, align 8
  %2 = bitcast %sCLClass** %klass1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %method2 = alloca %sCLMethod*
  store %sCLMethod* %method, %sCLMethod** %method2, align 8
  %3 = bitcast %sCLMethod** %method2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %num_params3 = alloca i32
  store i32 %num_params, i32* %num_params3, align 4
  %4 = bitcast i32* %num_params3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %var_num4 = alloca i32
  store i32 %var_num, i32* %var_num4, align 4
  %5 = bitcast i32* %var_num4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %klass5 = load %sCLClass*, %sCLClass** %klass1, align 8
  %6 = getelementptr inbounds %sCLClass, %sCLClass* %klass5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %method6 = load %sCLMethod*, %sCLMethod** %method2, align 8
  %8 = getelementptr inbounds %sCLMethod, %sCLMethod* %method6, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %num_params7 = load i32, i32* %num_params3, align 4
  %var_num8 = load i32, i32* %var_num4, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @global_string.11, i32 0, i32 0), i8* %7, i8* %9, i32 %num_params7, i32 %var_num8)
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret void
}

define void @print_method_end(%sCLClass* %klass, %sCLMethod* %method, %CLVALUE %result) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %klass1 = alloca %sCLClass*
  store %sCLClass* %klass, %sCLClass** %klass1, align 8
  %2 = bitcast %sCLClass** %klass1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %method2 = alloca %sCLMethod*
  store %sCLMethod* %method, %sCLMethod** %method2, align 8
  %3 = bitcast %sCLMethod** %method2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %result3 = alloca %CLVALUE
  store %CLVALUE %result, %CLVALUE* %result3, align 8
  %4 = bitcast %CLVALUE* %result3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %klass4 = load %sCLClass*, %sCLClass** %klass1, align 8
  %5 = getelementptr inbounds %sCLClass, %sCLClass* %klass4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %method5 = load %sCLMethod*, %sCLMethod** %method2, align 8
  %7 = getelementptr inbounds %sCLMethod, %sCLMethod* %method5, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %result6 = load %CLVALUE, %CLVALUE* %result3, align 8
  %9 = bitcast %CLVALUE* %result3 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.12, i32 0, i32 0), i8* %6, i8* %8, i32 %10)
  %12 = bitcast [8192 x i8*]* %lvtable to i8*
  %13 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %12, i64 65536)
  ret void
}

define void @print_block(i32 %num_params, i32 %var_num) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %num_params1 = alloca i32
  store i32 %num_params, i32* %num_params1, align 4
  %2 = bitcast i32* %num_params1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %var_num2 = alloca i32
  store i32 %var_num, i32* %var_num2, align 4
  %3 = bitcast i32* %var_num2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %num_params3 = load i32, i32* %num_params1, align 4
  %var_num4 = load i32, i32* %var_num2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.13, i32 0, i32 0), i32 %num_params3, i32 %var_num4)
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret void
}

define void @print_block_end(%CLVALUE %result) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %result1 = alloca %CLVALUE
  store %CLVALUE %result, %CLVALUE* %result1, align 8
  %2 = bitcast %CLVALUE* %result1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %result2 = load %CLVALUE, %CLVALUE* %result1, align 8
  %3 = bitcast %CLVALUE* %result1 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.14, i32 0, i32 0), i32 %4)
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret void
}

define void @print_op(i32 %op) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %op1 = alloca i32
  store i32 %op, i32* %op1, align 4
  %2 = bitcast i32* %op1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %op2 = load i32, i32* %op1, align 4
  %eqtmpY = icmp eq i32 %op2, 34
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block140, %cond_then_block139, %cond_then_block135, %cond_then_block131, %cond_then_block127, %cond_then_block123, %cond_then_block119, %cond_then_block115, %cond_then_block111, %cond_then_block107, %cond_then_block103, %cond_then_block99, %cond_then_block95, %cond_then_block91, %cond_then_block87, %cond_then_block83, %cond_then_block79, %cond_then_block75, %cond_then_block71, %cond_then_block67, %cond_then_block63, %cond_then_block59, %cond_then_block55, %cond_then_block51, %cond_then_block47, %cond_then_block43, %cond_then_block39, %cond_then_block35, %cond_then_block31, %cond_then_block27, %cond_then_block23, %cond_then_block19, %cond_then_block15, %cond_then_block11, %cond_then_block7, %cond_then_block3, %cond_then_block
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_then_block:                                  ; preds = %entry
  %5 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.15, i32 0, i32 0))
  br label %end_block

cond_else_block:                                  ; preds = %after_break, %entry
  %eqtmpY5 = icmp eq i32 %op2, 35
  br i1 %eqtmpY5, label %cond_then_block3, label %cond_else_block4

after_break:                                      ; No predecessors!
  br label %cond_else_block

cond_then_block3:                                 ; preds = %cond_else_block
  %6 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.16, i32 0, i32 0))
  br label %end_block

cond_else_block4:                                 ; preds = %after_break6, %cond_else_block
  %eqtmpY9 = icmp eq i32 %op2, 33
  br i1 %eqtmpY9, label %cond_then_block7, label %cond_else_block8

after_break6:                                     ; No predecessors!
  br label %cond_else_block4

cond_then_block7:                                 ; preds = %cond_else_block4
  %7 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.17, i32 0, i32 0))
  br label %end_block

cond_else_block8:                                 ; preds = %after_break10, %cond_else_block4
  %eqtmpY13 = icmp eq i32 %op2, 32
  br i1 %eqtmpY13, label %cond_then_block11, label %cond_else_block12

after_break10:                                    ; No predecessors!
  br label %cond_else_block8

cond_then_block11:                                ; preds = %cond_else_block8
  %8 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.18, i32 0, i32 0))
  br label %end_block

cond_else_block12:                                ; preds = %after_break14, %cond_else_block8
  %eqtmpY17 = icmp eq i32 %op2, 0
  br i1 %eqtmpY17, label %cond_then_block15, label %cond_else_block16

after_break14:                                    ; No predecessors!
  br label %cond_else_block12

cond_then_block15:                                ; preds = %cond_else_block12
  %9 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.19, i32 0, i32 0))
  br label %end_block

cond_else_block16:                                ; preds = %after_break18, %cond_else_block12
  %eqtmpY21 = icmp eq i32 %op2, 25
  br i1 %eqtmpY21, label %cond_then_block19, label %cond_else_block20

after_break18:                                    ; No predecessors!
  br label %cond_else_block16

cond_then_block19:                                ; preds = %cond_else_block16
  %10 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.20, i32 0, i32 0))
  br label %end_block

cond_else_block20:                                ; preds = %after_break22, %cond_else_block16
  %eqtmpY25 = icmp eq i32 %op2, 26
  br i1 %eqtmpY25, label %cond_then_block23, label %cond_else_block24

after_break22:                                    ; No predecessors!
  br label %cond_else_block20

cond_then_block23:                                ; preds = %cond_else_block20
  %11 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.21, i32 0, i32 0))
  br label %end_block

cond_else_block24:                                ; preds = %after_break26, %cond_else_block20
  %eqtmpY29 = icmp eq i32 %op2, 1
  br i1 %eqtmpY29, label %cond_then_block27, label %cond_else_block28

after_break26:                                    ; No predecessors!
  br label %cond_else_block24

cond_then_block27:                                ; preds = %cond_else_block24
  %12 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.22, i32 0, i32 0))
  br label %end_block

cond_else_block28:                                ; preds = %after_break30, %cond_else_block24
  %eqtmpY33 = icmp eq i32 %op2, 2
  br i1 %eqtmpY33, label %cond_then_block31, label %cond_else_block32

after_break30:                                    ; No predecessors!
  br label %cond_else_block28

cond_then_block31:                                ; preds = %cond_else_block28
  %13 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.23, i32 0, i32 0))
  br label %end_block

cond_else_block32:                                ; preds = %after_break34, %cond_else_block28
  %eqtmpY37 = icmp eq i32 %op2, 3
  br i1 %eqtmpY37, label %cond_then_block35, label %cond_else_block36

after_break34:                                    ; No predecessors!
  br label %cond_else_block32

cond_then_block35:                                ; preds = %cond_else_block32
  %14 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.24, i32 0, i32 0))
  br label %end_block

cond_else_block36:                                ; preds = %after_break38, %cond_else_block32
  %eqtmpY41 = icmp eq i32 %op2, 4
  br i1 %eqtmpY41, label %cond_then_block39, label %cond_else_block40

after_break38:                                    ; No predecessors!
  br label %cond_else_block36

cond_then_block39:                                ; preds = %cond_else_block36
  %15 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.25, i32 0, i32 0))
  br label %end_block

cond_else_block40:                                ; preds = %after_break42, %cond_else_block36
  %eqtmpY45 = icmp eq i32 %op2, 5
  br i1 %eqtmpY45, label %cond_then_block43, label %cond_else_block44

after_break42:                                    ; No predecessors!
  br label %cond_else_block40

cond_then_block43:                                ; preds = %cond_else_block40
  %16 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.26, i32 0, i32 0))
  br label %end_block

cond_else_block44:                                ; preds = %after_break46, %cond_else_block40
  %eqtmpY49 = icmp eq i32 %op2, 6
  br i1 %eqtmpY49, label %cond_then_block47, label %cond_else_block48

after_break46:                                    ; No predecessors!
  br label %cond_else_block44

cond_then_block47:                                ; preds = %cond_else_block44
  %17 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.27, i32 0, i32 0))
  br label %end_block

cond_else_block48:                                ; preds = %after_break50, %cond_else_block44
  %eqtmpY53 = icmp eq i32 %op2, 30
  br i1 %eqtmpY53, label %cond_then_block51, label %cond_else_block52

after_break50:                                    ; No predecessors!
  br label %cond_else_block48

cond_then_block51:                                ; preds = %cond_else_block48
  %18 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.28, i32 0, i32 0))
  br label %end_block

cond_else_block52:                                ; preds = %after_break54, %cond_else_block48
  %eqtmpY57 = icmp eq i32 %op2, 7
  br i1 %eqtmpY57, label %cond_then_block55, label %cond_else_block56

after_break54:                                    ; No predecessors!
  br label %cond_else_block52

cond_then_block55:                                ; preds = %cond_else_block52
  %19 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.29, i32 0, i32 0))
  br label %end_block

cond_else_block56:                                ; preds = %after_break58, %cond_else_block52
  %eqtmpY61 = icmp eq i32 %op2, 8
  br i1 %eqtmpY61, label %cond_then_block59, label %cond_else_block60

after_break58:                                    ; No predecessors!
  br label %cond_else_block56

cond_then_block59:                                ; preds = %cond_else_block56
  %20 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.30, i32 0, i32 0))
  br label %end_block

cond_else_block60:                                ; preds = %after_break62, %cond_else_block56
  %eqtmpY65 = icmp eq i32 %op2, 9
  br i1 %eqtmpY65, label %cond_then_block63, label %cond_else_block64

after_break62:                                    ; No predecessors!
  br label %cond_else_block60

cond_then_block63:                                ; preds = %cond_else_block60
  %21 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.31, i32 0, i32 0))
  br label %end_block

cond_else_block64:                                ; preds = %after_break66, %cond_else_block60
  %eqtmpY69 = icmp eq i32 %op2, 11
  br i1 %eqtmpY69, label %cond_then_block67, label %cond_else_block68

after_break66:                                    ; No predecessors!
  br label %cond_else_block64

cond_then_block67:                                ; preds = %cond_else_block64
  %22 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.32, i32 0, i32 0))
  br label %end_block

cond_else_block68:                                ; preds = %after_break70, %cond_else_block64
  %eqtmpY73 = icmp eq i32 %op2, 10
  br i1 %eqtmpY73, label %cond_then_block71, label %cond_else_block72

after_break70:                                    ; No predecessors!
  br label %cond_else_block68

cond_then_block71:                                ; preds = %cond_else_block68
  %23 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.33, i32 0, i32 0))
  br label %end_block

cond_else_block72:                                ; preds = %after_break74, %cond_else_block68
  %eqtmpY77 = icmp eq i32 %op2, 12
  br i1 %eqtmpY77, label %cond_then_block75, label %cond_else_block76

after_break74:                                    ; No predecessors!
  br label %cond_else_block72

cond_then_block75:                                ; preds = %cond_else_block72
  %24 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.34, i32 0, i32 0))
  br label %end_block

cond_else_block76:                                ; preds = %after_break78, %cond_else_block72
  %eqtmpY81 = icmp eq i32 %op2, 13
  br i1 %eqtmpY81, label %cond_then_block79, label %cond_else_block80

after_break78:                                    ; No predecessors!
  br label %cond_else_block76

cond_then_block79:                                ; preds = %cond_else_block76
  %25 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.35, i32 0, i32 0))
  br label %end_block

cond_else_block80:                                ; preds = %after_break82, %cond_else_block76
  %eqtmpY85 = icmp eq i32 %op2, 14
  br i1 %eqtmpY85, label %cond_then_block83, label %cond_else_block84

after_break82:                                    ; No predecessors!
  br label %cond_else_block80

cond_then_block83:                                ; preds = %cond_else_block80
  %26 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.36, i32 0, i32 0))
  br label %end_block

cond_else_block84:                                ; preds = %after_break86, %cond_else_block80
  %eqtmpY89 = icmp eq i32 %op2, 15
  br i1 %eqtmpY89, label %cond_then_block87, label %cond_else_block88

after_break86:                                    ; No predecessors!
  br label %cond_else_block84

cond_then_block87:                                ; preds = %cond_else_block84
  %27 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.37, i32 0, i32 0))
  br label %end_block

cond_else_block88:                                ; preds = %after_break90, %cond_else_block84
  %eqtmpY93 = icmp eq i32 %op2, 16
  br i1 %eqtmpY93, label %cond_then_block91, label %cond_else_block92

after_break90:                                    ; No predecessors!
  br label %cond_else_block88

cond_then_block91:                                ; preds = %cond_else_block88
  %28 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.38, i32 0, i32 0))
  br label %end_block

cond_else_block92:                                ; preds = %after_break94, %cond_else_block88
  %eqtmpY97 = icmp eq i32 %op2, 17
  br i1 %eqtmpY97, label %cond_then_block95, label %cond_else_block96

after_break94:                                    ; No predecessors!
  br label %cond_else_block92

cond_then_block95:                                ; preds = %cond_else_block92
  %29 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.39, i32 0, i32 0))
  br label %end_block

cond_else_block96:                                ; preds = %after_break98, %cond_else_block92
  %eqtmpY101 = icmp eq i32 %op2, 29
  br i1 %eqtmpY101, label %cond_then_block99, label %cond_else_block100

after_break98:                                    ; No predecessors!
  br label %cond_else_block96

cond_then_block99:                                ; preds = %cond_else_block96
  %30 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.40, i32 0, i32 0))
  br label %end_block

cond_else_block100:                               ; preds = %after_break102, %cond_else_block96
  %eqtmpY105 = icmp eq i32 %op2, 27
  br i1 %eqtmpY105, label %cond_then_block103, label %cond_else_block104

after_break102:                                   ; No predecessors!
  br label %cond_else_block100

cond_then_block103:                               ; preds = %cond_else_block100
  %31 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.41, i32 0, i32 0))
  br label %end_block

cond_else_block104:                               ; preds = %after_break106, %cond_else_block100
  %eqtmpY109 = icmp eq i32 %op2, 28
  br i1 %eqtmpY109, label %cond_then_block107, label %cond_else_block108

after_break106:                                   ; No predecessors!
  br label %cond_else_block104

cond_then_block107:                               ; preds = %cond_else_block104
  %32 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.42, i32 0, i32 0))
  br label %end_block

cond_else_block108:                               ; preds = %after_break110, %cond_else_block104
  %eqtmpY113 = icmp eq i32 %op2, 18
  br i1 %eqtmpY113, label %cond_then_block111, label %cond_else_block112

after_break110:                                   ; No predecessors!
  br label %cond_else_block108

cond_then_block111:                               ; preds = %cond_else_block108
  %33 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.43, i32 0, i32 0))
  br label %end_block

cond_else_block112:                               ; preds = %after_break114, %cond_else_block108
  %eqtmpY117 = icmp eq i32 %op2, 19
  br i1 %eqtmpY117, label %cond_then_block115, label %cond_else_block116

after_break114:                                   ; No predecessors!
  br label %cond_else_block112

cond_then_block115:                               ; preds = %cond_else_block112
  %34 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.44, i32 0, i32 0))
  br label %end_block

cond_else_block116:                               ; preds = %after_break118, %cond_else_block112
  %eqtmpY121 = icmp eq i32 %op2, 24
  br i1 %eqtmpY121, label %cond_then_block119, label %cond_else_block120

after_break118:                                   ; No predecessors!
  br label %cond_else_block116

cond_then_block119:                               ; preds = %cond_else_block116
  %35 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.45, i32 0, i32 0))
  br label %end_block

cond_else_block120:                               ; preds = %after_break122, %cond_else_block116
  %eqtmpY125 = icmp eq i32 %op2, 23
  br i1 %eqtmpY125, label %cond_then_block123, label %cond_else_block124

after_break122:                                   ; No predecessors!
  br label %cond_else_block120

cond_then_block123:                               ; preds = %cond_else_block120
  %36 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.46, i32 0, i32 0))
  br label %end_block

cond_else_block124:                               ; preds = %after_break126, %cond_else_block120
  %eqtmpY129 = icmp eq i32 %op2, 31
  br i1 %eqtmpY129, label %cond_then_block127, label %cond_else_block128

after_break126:                                   ; No predecessors!
  br label %cond_else_block124

cond_then_block127:                               ; preds = %cond_else_block124
  %37 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.47, i32 0, i32 0))
  br label %end_block

cond_else_block128:                               ; preds = %after_break130, %cond_else_block124
  %eqtmpY133 = icmp eq i32 %op2, 37
  br i1 %eqtmpY133, label %cond_then_block131, label %cond_else_block132

after_break130:                                   ; No predecessors!
  br label %cond_else_block128

cond_then_block131:                               ; preds = %cond_else_block128
  %38 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.48, i32 0, i32 0))
  br label %end_block

cond_else_block132:                               ; preds = %after_break134, %cond_else_block128
  %eqtmpY137 = icmp eq i32 %op2, 36
  br i1 %eqtmpY137, label %cond_then_block135, label %cond_else_block136

after_break134:                                   ; No predecessors!
  br label %cond_else_block132

cond_then_block135:                               ; preds = %cond_else_block132
  %39 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.49, i32 0, i32 0))
  br label %end_block

cond_else_block136:                               ; preds = %after_break138, %cond_else_block132
  br label %cond_then_block139

after_break138:                                   ; No predecessors!
  br label %cond_else_block136

cond_then_block139:                               ; preds = %cond_else_block136
  %op141 = load i32, i32* %op1, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.50, i32 0, i32 0), i32 %op141)
  br label %end_block

cond_else_block140:                               ; preds = %after_break142
  br label %end_block

after_break142:                                   ; No predecessors!
  br label %cond_else_block140
}

define i1 @invoke_command_with_control_terminal(i8* %name, i8** %argv, i32 %num_params, %CLVALUE** %stack_ptr, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %name1 = alloca i8*
  store i8* %name, i8** %name1, align 8
  %2 = bitcast i8** %name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %argv2 = alloca i8**
  store i8** %argv, i8*** %argv2, align 8
  %3 = bitcast i8*** %argv2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %num_params3 = alloca i32
  store i32 %num_params, i32* %num_params3, align 4
  %4 = bitcast i32* %num_params3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %stack_ptr4 = alloca %CLVALUE**
  store %CLVALUE** %stack_ptr, %CLVALUE*** %stack_ptr4, align 8
  %5 = bitcast %CLVALUE*** %stack_ptr4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %info5 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info5, align 8
  %6 = bitcast %sVMInfo** %info5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %7 = call i32 @fork()
  %pid = alloca i32
  %8 = bitcast i32* %pid to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store i32 %7, i32* %pid, align 4
  %pid6 = load i32, i32* %pid, align 4
  %eqtmpX = icmp eq i32 %pid6, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = call i32 @getpid()
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %11 = bitcast i8* %10 to i32*
  store i32 %9, i32* %11, align 4
  %12 = call i32 @setpgid(i32 0, i32 0)
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %14 = bitcast i8* %13 to i32*
  %pid7 = load i32, i32* %14, align 4
  %15 = call i32 @tcsetpgrp(i32 0, i32 %pid7)
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %17 = bitcast i8* %16 to i8**
  %name8 = load i8*, i8** %17, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %19 = bitcast i8* %18 to i8***
  %argv9 = load i8**, i8*** %19, align 8
  %20 = call i32 @execvp(i8* %name8, i8** %argv9)
  %letmp = icmp slt i32 %20, 0
  br i1 %letmp, label %cond_jump_then10, label %cond_end11

cond_end:                                         ; preds = %cond_end11, %entry
  %pid12 = load i32, i32* %pid, align 4
  %pid13 = load i32, i32* %pid, align 4
  %21 = call i32 @setpgid(i32 %pid12, i32 %pid13)
  %pid14 = load i32, i32* %pid, align 4
  %22 = call i32 @tcsetpgrp(i32 0, i32 %pid14)
  %status = alloca i32
  %23 = bitcast i32* %status to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 0, i32* %status, align 4
  %pid15 = load i32, i32* %pid, align 4
  %status16 = load i32, i32* %status, align 4
  %24 = call i32 @waitpid(i32 %pid15, i32* %status, i32 2)
  %pid2 = alloca i32
  %25 = bitcast i32* %pid2 to i8*
  store i8* %25, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  store i32 %24, i32* %pid2, align 4
  %status17 = load i32, i32* %status, align 4
  %andtmp = and i32 %status17, 65280
  %rshifttmp = ashr i32 %andtmp, 8
  %eqtmpX18 = icmp eq i32 %rshifttmp, 64
  br i1 %eqtmpX18, label %cond_jump_then19, label %cond_end20

cond_jump_then10:                                 ; preds = %cond_jump_then
  call void @exit(i32 64)
  br label %cond_end11

cond_end11:                                       ; preds = %cond_jump_then10, %cond_jump_then
  call void @exit(i32 0)
  br label %cond_end

cond_jump_then19:                                 ; preds = %cond_end
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %27 = bitcast i8* %26 to %CLVALUE***
  %stack_ptr21 = load %CLVALUE**, %CLVALUE*** %27, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %29 = bitcast i8* %28 to %sVMInfo**
  %info22 = load %sVMInfo*, %sVMInfo** %29, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %31 = bitcast i8* %30 to i8**
  %name23 = load i8*, i8** %31, align 8
  %32 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.51, i32 0, i32 0), i8* %name23)
  call void @vm_err_msg(%CLVALUE** %stack_ptr21, %sVMInfo* %info22, i8* %32)
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  %35 = ptrtoint i8* %32 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %cond_then_block, label %cond_end24

cond_end20:                                       ; preds = %cond_end
  %status25 = load i32, i32* %status, align 4
  %andtmp26 = and i32 %status25, 255
  %eqtmpX27 = icmp eq i32 %andtmp26, 127
  br i1 %eqtmpX27, label %cond_jump_then28, label %cond_else_block

cond_then_block:                                  ; preds = %cond_jump_then19
  br label %cond_end24

cond_end24:                                       ; preds = %cond_then_block, %cond_jump_then19
  call void @xfree(i8* %32)
  ret i1 false

cond_jump_then28:                                 ; preds = %cond_end20
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %38 = bitcast i8* %37 to i32*
  %status30 = load i32, i32* %38, align 4
  %andtmp31 = and i32 %status30, 65280
  %rshifttmp32 = ashr i32 %andtmp31, 8
  %addtmp = add nsw i32 %rshifttmp32, 128
  %rcode = alloca i32
  %39 = bitcast i32* %rcode to i8*
  store i8* %39, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  store i32 %addtmp, i32* %rcode, align 4
  %title = alloca [32 x i8]
  %40 = bitcast [32 x i8]* %title to i8*
  store i8* %40, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %42 = bitcast i8* %41 to i8**
  %name33 = load i8*, i8** %42, align 8
  %43 = bitcast [32 x i8]* %title to i8*
  %44 = call i8* @xstrncpy(i8* %43, i8* %name33, i32 32)
  %tinfo = alloca %termios
  %45 = bitcast %termios* %tinfo to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %tinfo34 = load %termios, %termios* %tinfo, align 8
  %46 = call i32 @tcgetattr(i32 0, %termios* %tinfo)
  %letmp35 = icmp slt i32 %46, 0
  br i1 %letmp35, label %cond_jump_then36, label %cond_end37

cond_else_block:                                  ; preds = %cond_end20
  %47 = call i32 @getpid()
  %48 = call i32 @getpid()
  %49 = call i32 @setpgid(i32 %47, i32 %48)
  %50 = call i32 @getpid()
  %51 = call i32 @tcsetpgrp(i32 0, i32 %50)
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %53 = bitcast i8* %52 to i32*
  %status54 = load i32, i32* %53, align 4
  %andtmp55 = and i32 %status54, 65280
  %rshifttmp56 = ashr i32 %andtmp55, 8
  %rcode57 = alloca i32
  %54 = bitcast i32* %rcode57 to i8*
  store i8* %54, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  store i32 %rshifttmp56, i32* %rcode57, align 4
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %56 = bitcast i8* %55 to %CLVALUE***
  %stack_ptr58 = load %CLVALUE**, %CLVALUE*** %56, align 8
  %derefference_value59 = load %CLVALUE*, %CLVALUE** %stack_ptr58, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %58 = bitcast i8* %57 to i32*
  %num_params60 = load i32, i32* %58, align 4
  %59 = ptrtoint %CLVALUE* %derefference_value59 to i64
  %sext261 = sext i32 %num_params60 to i64
  %multtmp62 = mul nsw i64 %sext261, 4
  %subtmp63 = sub nsw i64 %59, %multtmp62
  %60 = inttoptr i64 %subtmp63 to %CLVALUE*
  store %CLVALUE* %60, %CLVALUE** %stack_ptr58, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %62 = bitcast i8* %61 to %CLVALUE***
  %stack_ptr64 = load %CLVALUE**, %CLVALUE*** %62, align 8
  %derefference_value65 = load %CLVALUE*, %CLVALUE** %stack_ptr64, align 8
  %rcode66 = load i32, i32* %rcode57, align 4
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %64 = bitcast i8* %63 to %sVMInfo**
  %info67 = load %sVMInfo*, %sVMInfo** %64, align 8
  %65 = call i32 @create_command_object(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.58, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.59, i32 0, i32 0), i32 1, i32 %rcode66, i1 false, %sVMInfo* %info67)
  %66 = bitcast %CLVALUE* %derefference_value65 to i32*
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %68 = bitcast i8* %67 to %CLVALUE***
  %stack_ptr68 = load %CLVALUE**, %CLVALUE*** %68, align 8
  %derefference_value69 = load %CLVALUE*, %CLVALUE** %stack_ptr68, align 8
  %69 = ptrtoint %CLVALUE* %derefference_value69 to i64
  %adddtmp70 = add nsw i64 %69, 4
  %70 = inttoptr i64 %adddtmp70 to %CLVALUE*
  store %CLVALUE* %70, %CLVALUE** %stack_ptr68, align 8
  br label %cond_end29

cond_end29:                                       ; preds = %cond_else_block, %cond_end37
  %71 = bitcast [8192 x i8*]* %lvtable to i8*
  %72 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %71, i64 65536)
  ret i1 true

cond_jump_then36:                                 ; preds = %cond_jump_then28
  %73 = bitcast [8192 x i8*]* %lvtable to i8*
  %74 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %73, i64 65536)
  ret i1 false

cond_end37:                                       ; preds = %cond_jump_then28
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %76 = bitcast i8* %75 to i32*
  %pid38 = load i32, i32* %76, align 4
  %pgrp = alloca i32
  %77 = bitcast i32* %pgrp to i8*
  store i8* %77, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  store i32 %pid38, i32* %pgrp, align 4
  %tinfo39 = load %termios, %termios* %tinfo, align 8
  %pgrp40 = load i32, i32* %pgrp, align 4
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %79 = bitcast i8* %78 to %sVMInfo**
  %info41 = load %sVMInfo*, %sVMInfo** %79, align 8
  %80 = bitcast [32 x i8]* %title to i8*
  %81 = call i32 @create_job_object(i8* %80, %termios* %tinfo, i32 %pgrp40, %sVMInfo* %info41)
  %job = alloca i32
  %82 = bitcast i32* %job to i8*
  store i8* %82, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  store i32 %81, i32* %job, align 4
  %gJobs = load %vector__int*, %vector__int** @gJobs, align 8
  %job42 = load i32, i32* %job, align 4
  call void @"vector_push_back_int3_src/vm"(%vector__int* %gJobs, i32 %job42)
  %83 = call i32 @getpid()
  %84 = call i32 @getpid()
  %85 = call i32 @setpgid(i32 %83, i32 %84)
  %86 = call i32 @getpid()
  %87 = call i32 @tcsetpgrp(i32 0, i32 %86)
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %89 = bitcast i8* %88 to i32*
  %status43 = load i32, i32* %89, align 4
  %andtmp44 = and i32 %status43, 65280
  %rshifttmp45 = ashr i32 %andtmp44, 8
  %rcode2 = alloca i32
  %90 = bitcast i32* %rcode2 to i8*
  store i8* %90, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %rshifttmp45, i32* %rcode2, align 4
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %92 = bitcast i8* %91 to %CLVALUE***
  %stack_ptr46 = load %CLVALUE**, %CLVALUE*** %92, align 8
  %derefference_value = load %CLVALUE*, %CLVALUE** %stack_ptr46, align 8
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %94 = bitcast i8* %93 to i32*
  %num_params47 = load i32, i32* %94, align 4
  %95 = ptrtoint %CLVALUE* %derefference_value to i64
  %sext2 = sext i32 %num_params47 to i64
  %multtmp = mul nsw i64 %sext2, 4
  %subtmp = sub nsw i64 %95, %multtmp
  %96 = inttoptr i64 %subtmp to %CLVALUE*
  store %CLVALUE* %96, %CLVALUE** %stack_ptr46, align 8
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %98 = bitcast i8* %97 to %CLVALUE***
  %stack_ptr48 = load %CLVALUE**, %CLVALUE*** %98, align 8
  %derefference_value49 = load %CLVALUE*, %CLVALUE** %stack_ptr48, align 8
  %rcode250 = load i32, i32* %rcode2, align 4
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %100 = bitcast i8* %99 to %sVMInfo**
  %info51 = load %sVMInfo*, %sVMInfo** %100, align 8
  %101 = call i32 @create_command_object(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.56, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.57, i32 0, i32 0), i32 1, i32 %rcode250, i1 false, %sVMInfo* %info51)
  %102 = bitcast %CLVALUE* %derefference_value49 to i32*
  store i32 %101, i32* %102, align 4
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %104 = bitcast i8* %103 to %CLVALUE***
  %stack_ptr52 = load %CLVALUE**, %CLVALUE*** %104, align 8
  %derefference_value53 = load %CLVALUE*, %CLVALUE** %stack_ptr52, align 8
  %105 = ptrtoint %CLVALUE* %derefference_value53 to i64
  %adddtmp = add nsw i64 %105, 4
  %106 = inttoptr i64 %adddtmp to %CLVALUE*
  store %CLVALUE* %106, %CLVALUE** %stack_ptr52, align 8
  br label %cond_end29
}

define void @"vector_push_back_int3_src/vm"(%vector__int* %self, i32 %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %item2 = alloca i32
  store i32 %item, i32* %item2, align 4
  %3 = bitcast i32* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self5 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %items = alloca i32*
  %17 = bitcast i32** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32* %16, i32** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %19 = bitcast i8* %18 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = zext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.52, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.53, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.54, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.55, i32 0, i32 0))
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end21, %entry
  %self22 = load %vector__int*, %vector__int** %self1, align 8
  %26 = getelementptr inbounds %vector__int, %vector__int* %self22, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %self23 = load %vector__int*, %vector__int** %self1, align 8
  %28 = getelementptr inbounds %vector__int, %vector__int* %self23, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item24 = load i32, i32* %item2, align 4
  %element_address25 = getelementptr i32, i32* %27, i32 %29
  store i32 %item24, i32* %element_address25, align 4
  %self26 = load %vector__int*, %vector__int** %self1, align 8
  %self27 = load %vector__int*, %vector__int** %self1, align 8
  %30 = getelementptr inbounds %vector__int, %vector__int* %self27, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp28 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__int, %vector__int* %self26, i32 0, i32 1
  store i32 %addtmp28, i32* %32, align 4
  %subttmp29 = sub nsw i32 %addtmp28, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %38 = bitcast i8* %37 to %vector__int**
  %self10 = load %vector__int*, %vector__int** %38, align 8
  %39 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %42 = bitcast i8* %41 to %vector__int**
  %self11 = load %vector__int*, %vector__int** %42, align 8
  %43 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  %48 = bitcast i8* %47 to i32**
  %items13 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr i32, i32* %items13, i32 %i14
  %element = load i32, i32* %element_address, align 4
  %element_address15 = getelementptr i32, i32* %44, i32 %i12
  store i32 %element, i32* %element_address15, align 4
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %56 = bitcast i8* %55 to %vector__int**
  %self17 = load %vector__int*, %vector__int** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__int, %vector__int* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load i32*, i32** %items, align 8
  %58 = load i32*, i32** %items, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %cond_then_block20, label %cond_end21

cond_then_block20:                                ; preds = %cond_end_block
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_end_block
  %61 = bitcast i32* %58 to i8*
  call void @xfree(i8* %61)
  br label %cond_end
}

define i1 @invoke_command(i8* %name, i8** %argv, %CLVALUE** %stack_ptr, i32 %num_params, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %name1 = alloca i8*
  store i8* %name, i8** %name1, align 8
  %2 = bitcast i8** %name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %argv2 = alloca i8**
  store i8** %argv, i8*** %argv2, align 8
  %3 = bitcast i8*** %argv2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %stack_ptr3 = alloca %CLVALUE**
  store %CLVALUE** %stack_ptr, %CLVALUE*** %stack_ptr3, align 8
  %4 = bitcast %CLVALUE*** %stack_ptr3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %num_params4 = alloca i32
  store i32 %num_params, i32* %num_params4, align 4
  %5 = bitcast i32* %num_params4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %info5 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info5, align 8
  %6 = bitcast %sVMInfo** %info5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %child2parent_write_fd = alloca i32
  %7 = bitcast i32* %child2parent_write_fd to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store i32 0, i32* %child2parent_write_fd, align 4
  %child2parent_read_fd = alloca i32
  %8 = bitcast i32* %child2parent_read_fd to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 0, i32* %child2parent_read_fd, align 4
  %parent2child_write_fd = alloca i32
  %9 = bitcast i32* %parent2child_write_fd to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  store i32 0, i32* %parent2child_write_fd, align 4
  %parent2child_read_fd = alloca i32
  %10 = bitcast i32* %parent2child_read_fd to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  store i32 0, i32* %parent2child_read_fd, align 4
  %child2parent_read_fd_err = alloca i32
  %11 = bitcast i32* %child2parent_read_fd_err to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  store i32 0, i32* %child2parent_read_fd_err, align 4
  %child2parent_write_fd_err = alloca i32
  %12 = bitcast i32* %child2parent_write_fd_err to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  store i32 0, i32* %child2parent_write_fd_err, align 4
  %pipes = alloca [2 x i32]
  %13 = bitcast [2 x i32]* %pipes to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %14 = bitcast [2 x i32]* %pipes to i32*
  %15 = call i32 @pipe(i32* %14)
  %16 = bitcast [2 x i32]* %pipes to i32*
  %element_address = getelementptr i32, i32* %16, i32 0
  %element = load i32, i32* %element_address, align 4
  store i32 %element, i32* %child2parent_read_fd, align 4
  %17 = bitcast [2 x i32]* %pipes to i32*
  %element_address6 = getelementptr i32, i32* %17, i32 1
  %element7 = load i32, i32* %element_address6, align 4
  store i32 %element7, i32* %child2parent_write_fd, align 4
  %18 = bitcast [2 x i32]* %pipes to i32*
  %19 = call i32 @pipe(i32* %18)
  %20 = bitcast [2 x i32]* %pipes to i32*
  %element_address8 = getelementptr i32, i32* %20, i32 0
  %element9 = load i32, i32* %element_address8, align 4
  store i32 %element9, i32* %parent2child_read_fd, align 4
  %21 = bitcast [2 x i32]* %pipes to i32*
  %element_address10 = getelementptr i32, i32* %21, i32 1
  %element11 = load i32, i32* %element_address10, align 4
  store i32 %element11, i32* %parent2child_write_fd, align 4
  %22 = bitcast [2 x i32]* %pipes to i32*
  %23 = call i32 @pipe(i32* %22)
  %24 = bitcast [2 x i32]* %pipes to i32*
  %element_address12 = getelementptr i32, i32* %24, i32 0
  %element13 = load i32, i32* %element_address12, align 4
  store i32 %element13, i32* %child2parent_read_fd_err, align 4
  %25 = bitcast [2 x i32]* %pipes to i32*
  %element_address14 = getelementptr i32, i32* %25, i32 1
  %element15 = load i32, i32* %element_address14, align 4
  store i32 %element15, i32* %child2parent_write_fd_err, align 4
  %26 = call i32 @fork()
  %pid = alloca i32
  %27 = bitcast i32* %pid to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  store i32 %26, i32* %pid, align 4
  %pid16 = load i32, i32* %pid, align 4
  %eqtmpX = icmp eq i32 %pid16, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %29 = bitcast i8* %28 to i32*
  %parent2child_write_fd17 = load i32, i32* %29, align 4
  %30 = call i32 @close(i32 %parent2child_write_fd17)
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %32 = bitcast i8* %31 to i32*
  %child2parent_read_fd18 = load i32, i32* %32, align 4
  %33 = call i32 @close(i32 %child2parent_read_fd18)
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %35 = bitcast i8* %34 to i32*
  %child2parent_read_fd_err19 = load i32, i32* %35, align 4
  %36 = call i32 @close(i32 %child2parent_read_fd_err19)
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  %38 = bitcast i8* %37 to i32*
  %parent2child_read_fd20 = load i32, i32* %38, align 4
  %39 = call i32 @dup2(i32 %parent2child_read_fd20, i32 0)
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %41 = bitcast i8* %40 to i32*
  %child2parent_write_fd21 = load i32, i32* %41, align 4
  %42 = call i32 @dup2(i32 %child2parent_write_fd21, i32 1)
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %44 = bitcast i8* %43 to i32*
  %child2parent_write_fd_err22 = load i32, i32* %44, align 4
  %45 = call i32 @dup2(i32 %child2parent_write_fd_err22, i32 2)
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  %47 = bitcast i8* %46 to i32*
  %parent2child_read_fd23 = load i32, i32* %47, align 4
  %48 = call i32 @close(i32 %parent2child_read_fd23)
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %50 = bitcast i8* %49 to i32*
  %child2parent_write_fd24 = load i32, i32* %50, align 4
  %51 = call i32 @close(i32 %child2parent_write_fd24)
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %53 = bitcast i8* %52 to i32*
  %child2parent_write_fd_err25 = load i32, i32* %53, align 4
  %54 = call i32 @close(i32 %child2parent_write_fd_err25)
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %56 = bitcast i8* %55 to i8**
  %name26 = load i8*, i8** %56, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %58 = bitcast i8* %57 to i8***
  %argv27 = load i8**, i8*** %58, align 8
  %59 = call i32 @execvp(i8* %name26, i8** %argv27)
  %letmp = icmp slt i32 %59, 0
  br i1 %letmp, label %cond_jump_then28, label %cond_end29

cond_end:                                         ; preds = %cond_end29, %entry
  %parent2child_read_fd30 = load i32, i32* %parent2child_read_fd, align 4
  %60 = call i32 @close(i32 %parent2child_read_fd30)
  %child2parent_write_fd31 = load i32, i32* %child2parent_write_fd, align 4
  %61 = call i32 @close(i32 %child2parent_write_fd31)
  %child2parent_write_fd_err32 = load i32, i32* %child2parent_write_fd_err, align 4
  %62 = call i32 @close(i32 %child2parent_write_fd_err32)
  %parent2child_write_fd33 = load i32, i32* %parent2child_write_fd, align 4
  %63 = call i32 @close(i32 %parent2child_write_fd33)
  %64 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.60, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.61, i32 0, i32 0), i32 360, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.62, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.63, i32 0, i32 0))
  %65 = bitcast i8* %64 to %buffer*
  %66 = call %buffer* @buffer_initialize(%buffer* %65)
  %child_output = alloca %buffer*
  %67 = bitcast %buffer** %child_output to i8*
  store i8* %67, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store %buffer* %66, %buffer** %child_output, align 8
  %68 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.64, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.65, i32 0, i32 0), i32 361, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.66, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.67, i32 0, i32 0))
  %69 = bitcast i8* %68 to %buffer*
  %70 = call %buffer* @buffer_initialize(%buffer* %69)
  %child_output_error = alloca %buffer*
  %71 = bitcast %buffer** %child_output_error to i8*
  store i8* %71, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store %buffer* %70, %buffer** %child_output_error, align 8
  br label %loop_top_block

cond_jump_then28:                                 ; preds = %cond_jump_then
  call void @exit(i32 64)
  br label %cond_end29

cond_end29:                                       ; preds = %cond_jump_then28, %cond_jump_then
  call void @exit(i32 2)
  br label %cond_end

loop_top_block:                                   ; preds = %cond_end42, %cond_end
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %pipe_data = alloca [128 x i8]
  %72 = bitcast [128 x i8]* %pipe_data to i8*
  store i8* %72, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %74 = bitcast i8* %73 to i32*
  %child2parent_read_fd34 = load i32, i32* %74, align 4
  %75 = bitcast [128 x i8]* %pipe_data to i8*
  %76 = call i64 @read(i32 %child2parent_read_fd34, i8* %75, i64 128)
  %77 = trunc i64 %76 to i32
  %readed_byte = alloca i32
  %78 = bitcast i32* %readed_byte to i8*
  store i8* %78, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  store i32 %77, i32* %readed_byte, align 4
  %pipe_data_err = alloca [128 x i8]
  %79 = bitcast [128 x i8]* %pipe_data_err to i8*
  store i8* %79, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %81 = bitcast i8* %80 to i32*
  %child2parent_read_fd_err35 = load i32, i32* %81, align 4
  %82 = bitcast [128 x i8]* %pipe_data_err to i8*
  %83 = call i64 @read(i32 %child2parent_read_fd_err35, i8* %82, i64 128)
  %84 = trunc i64 %83 to i32
  %readed_byte_err = alloca i32
  %85 = bitcast i32* %readed_byte_err to i8*
  store i8* %85, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  store i32 %84, i32* %readed_byte_err, align 4
  %andand_result_var = alloca i1
  %readed_byte36 = load i32, i32* %readed_byte, align 4
  %eqtmpX37 = icmp eq i32 %readed_byte36, 0
  store i1 %eqtmpX37, i1* %andand_result_var, align 1
  br i1 %eqtmpX37, label %cond_jump_then38, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_jump_then41, %loop_top_block
  %child2parent_read_fd48 = load i32, i32* %child2parent_read_fd, align 4
  %86 = call i32 @close(i32 %child2parent_read_fd48)
  %child2parent_read_fd_err49 = load i32, i32* %child2parent_read_fd_err, align 4
  %87 = call i32 @close(i32 %child2parent_read_fd_err49)
  %status = alloca i32
  %88 = bitcast i32* %status to i8*
  store i8* %88, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store i32 0, i32* %status, align 4
  %pid50 = load i32, i32* %pid, align 4
  %status51 = load i32, i32* %status, align 4
  %89 = call i32 @waitpid(i32 %pid50, i32* %status, i32 2)
  %pid2 = alloca i32
  %90 = bitcast i32* %pid2 to i8*
  store i8* %90, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store i32 %89, i32* %pid2, align 4
  %status52 = load i32, i32* %status, align 4
  %andtmp = and i32 %status52, 65280
  %rshifttmp = ashr i32 %andtmp, 8
  %eqtmpX53 = icmp eq i32 %rshifttmp, 64
  br i1 %eqtmpX53, label %cond_jump_then54, label %cond_end55

cond_jump_then38:                                 ; preds = %cond_then_block
  %readed_byte_err39 = load i32, i32* %readed_byte_err, align 4
  %eqtmpX40 = icmp eq i32 %readed_byte_err39, 0
  %andand = and i1 %eqtmpX37, %eqtmpX40
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then38, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then41, label %cond_end42

cond_jump_then41:                                 ; preds = %cond_jump_end
  br label %cond_end_block

cond_end42:                                       ; preds = %after_break, %cond_jump_end
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %92 = bitcast i8* %91 to %buffer**
  %child_output43 = load %buffer*, %buffer** %92, align 8
  %readed_byte44 = load i32, i32* %readed_byte, align 4
  %93 = bitcast [128 x i8]* %pipe_data to i8*
  %sext14 = zext i32 %readed_byte44 to i64
  call void @buffer_append(%buffer* %child_output43, i8* %93, i64 %sext14)
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %95 = bitcast i8* %94 to %buffer**
  %child_output_error45 = load %buffer*, %buffer** %95, align 8
  %readed_byte_err46 = load i32, i32* %readed_byte_err, align 4
  %96 = bitcast [128 x i8]* %pipe_data_err to i8*
  %sext1447 = zext i32 %readed_byte_err46 to i64
  call void @buffer_append(%buffer* %child_output_error45, i8* %96, i64 %sext1447)
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end42

cond_jump_then54:                                 ; preds = %cond_end_block
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %98 = bitcast i8* %97 to %CLVALUE***
  %stack_ptr56 = load %CLVALUE**, %CLVALUE*** %98, align 8
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %100 = bitcast i8* %99 to %sVMInfo**
  %info57 = load %sVMInfo*, %sVMInfo** %100, align 8
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %102 = bitcast i8* %101 to i8**
  %name58 = load i8*, i8** %102, align 8
  %103 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.68, i32 0, i32 0), i8* %name58)
  call void @vm_err_msg(%CLVALUE** %stack_ptr56, %sVMInfo* %info57, i8* %103)
  %104 = bitcast [8192 x i8*]* %lvtable to i8*
  %105 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %104, i64 65536)
  %106 = ptrtoint i8* %103 to i64
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %cond_then_block59, label %cond_end60

cond_end55:                                       ; preds = %cond_end_block
  %stack_ptr65 = load %CLVALUE**, %CLVALUE*** %stack_ptr3, align 8
  %derefference_value = load %CLVALUE*, %CLVALUE** %stack_ptr65, align 8
  %num_params66 = load i32, i32* %num_params4, align 4
  %108 = ptrtoint %CLVALUE* %derefference_value to i64
  %sext2 = sext i32 %num_params66 to i64
  %multtmp = mul nsw i64 %sext2, 4
  %subtmp = sub nsw i64 %108, %multtmp
  %109 = inttoptr i64 %subtmp to %CLVALUE*
  store %CLVALUE* %109, %CLVALUE** %stack_ptr65, align 8
  %status67 = load i32, i32* %status, align 4
  %andtmp68 = and i32 %status67, 65280
  %rshifttmp69 = ashr i32 %andtmp68, 8
  %rcode = alloca i32
  %110 = bitcast i32* %rcode to i8*
  store i8* %110, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %rshifttmp69, i32* %rcode, align 4
  %stack_ptr70 = load %CLVALUE**, %CLVALUE*** %stack_ptr3, align 8
  %derefference_value71 = load %CLVALUE*, %CLVALUE** %stack_ptr70, align 8
  %child_output72 = load %buffer*, %buffer** %child_output, align 8
  %111 = getelementptr inbounds %buffer, %buffer* %child_output72, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %child_output73 = load %buffer*, %buffer** %child_output, align 8
  %113 = getelementptr inbounds %buffer, %buffer* %child_output73, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %child_output_error74 = load %buffer*, %buffer** %child_output_error, align 8
  %115 = getelementptr inbounds %buffer, %buffer* %child_output_error74, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %child_output_error75 = load %buffer*, %buffer** %child_output_error, align 8
  %117 = getelementptr inbounds %buffer, %buffer* %child_output_error75, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %rcode76 = load i32, i32* %rcode, align 4
  %info77 = load %sVMInfo*, %sVMInfo** %info5, align 8
  %119 = call i32 @create_command_object(i8* %112, i32 %114, i8* %116, i32 %118, i32 %rcode76, i1 false, %sVMInfo* %info77)
  %120 = bitcast %CLVALUE* %derefference_value71 to i32*
  store i32 %119, i32* %120, align 4
  %stack_ptr78 = load %CLVALUE**, %CLVALUE*** %stack_ptr3, align 8
  %derefference_value79 = load %CLVALUE*, %CLVALUE** %stack_ptr78, align 8
  %121 = ptrtoint %CLVALUE* %derefference_value79 to i64
  %adddtmp = add nsw i64 %121, 4
  %122 = inttoptr i64 %adddtmp to %CLVALUE*
  store %CLVALUE* %122, %CLVALUE** %stack_ptr78, align 8
  %123 = bitcast [8192 x i8*]* %lvtable to i8*
  %124 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %123, i64 65536)
  %125 = load %buffer*, %buffer** %child_output, align 8
  call void @buffer_finalize(%buffer* %125)
  %126 = ptrtoint %buffer* %125 to i64
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %cond_then_block80, label %cond_end81

cond_then_block59:                                ; preds = %cond_jump_then54
  br label %cond_end60

cond_end60:                                       ; preds = %cond_then_block59, %cond_jump_then54
  call void @xfree(i8* %103)
  %128 = load %buffer*, %buffer** %child_output, align 8
  call void @buffer_finalize(%buffer* %128)
  %129 = ptrtoint %buffer* %128 to i64
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %cond_then_block61, label %cond_end62

cond_then_block61:                                ; preds = %cond_end60
  br label %cond_end62

cond_end62:                                       ; preds = %cond_then_block61, %cond_end60
  %131 = bitcast %buffer* %128 to i8*
  call void @xfree(i8* %131)
  %132 = load %buffer*, %buffer** %child_output_error, align 8
  call void @buffer_finalize(%buffer* %132)
  %133 = ptrtoint %buffer* %132 to i64
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %cond_then_block63, label %cond_end64

cond_then_block63:                                ; preds = %cond_end62
  br label %cond_end64

cond_end64:                                       ; preds = %cond_then_block63, %cond_end62
  %135 = bitcast %buffer* %132 to i8*
  call void @xfree(i8* %135)
  ret i1 false

cond_then_block80:                                ; preds = %cond_end55
  br label %cond_end81

cond_end81:                                       ; preds = %cond_then_block80, %cond_end55
  %136 = bitcast %buffer* %125 to i8*
  call void @xfree(i8* %136)
  %137 = load %buffer*, %buffer** %child_output_error, align 8
  call void @buffer_finalize(%buffer* %137)
  %138 = ptrtoint %buffer* %137 to i64
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %cond_then_block82, label %cond_end83

cond_then_block82:                                ; preds = %cond_end81
  br label %cond_end83

cond_end83:                                       ; preds = %cond_then_block82, %cond_end81
  %140 = bitcast %buffer* %137 to i8*
  call void @xfree(i8* %140)
  ret i1 true
}

define i1 @invoke_command_with_control_terminal_and_pipe(i32 %parent_obj, i8* %name, i8** %argv, i32 %num_params, %CLVALUE** %stack_ptr, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %parent_obj1 = alloca i32
  store i32 %parent_obj, i32* %parent_obj1, align 4
  %2 = bitcast i32* %parent_obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %name2 = alloca i8*
  store i8* %name, i8** %name2, align 8
  %3 = bitcast i8** %name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %argv3 = alloca i8**
  store i8** %argv, i8*** %argv3, align 8
  %4 = bitcast i8*** %argv3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %num_params4 = alloca i32
  store i32 %num_params, i32* %num_params4, align 4
  %5 = bitcast i32* %num_params4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %stack_ptr5 = alloca %CLVALUE**
  store %CLVALUE** %stack_ptr, %CLVALUE*** %stack_ptr5, align 8
  %6 = bitcast %CLVALUE*** %stack_ptr5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %info6 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info6, align 8
  %7 = bitcast %sVMInfo** %info6 to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %parent2child_write_fd = alloca i32
  %8 = bitcast i32* %parent2child_write_fd to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 0, i32* %parent2child_write_fd, align 4
  %parent2child_read_fd = alloca i32
  %9 = bitcast i32* %parent2child_read_fd to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  store i32 0, i32* %parent2child_read_fd, align 4
  %pipes = alloca [2 x i32]
  %10 = bitcast [2 x i32]* %pipes to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  %11 = bitcast [2 x i32]* %pipes to i32*
  %12 = call i32 @pipe(i32* %11)
  %letmp = icmp slt i32 %12, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %15 = bitcast [2 x i32]* %pipes to i32*
  %element_address = getelementptr i32, i32* %15, i32 0
  %element = load i32, i32* %element_address, align 4
  store i32 %element, i32* %parent2child_read_fd, align 4
  %16 = bitcast [2 x i32]* %pipes to i32*
  %element_address7 = getelementptr i32, i32* %16, i32 1
  %element8 = load i32, i32* %element_address7, align 4
  store i32 %element8, i32* %parent2child_write_fd, align 4
  %17 = call i32 @fork()
  %pid = alloca i32
  %18 = bitcast i32* %pid to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  store i32 %17, i32* %pid, align 4
  %pid9 = load i32, i32* %pid, align 4
  %eqtmpX = icmp eq i32 %pid9, 0
  br i1 %eqtmpX, label %cond_jump_then10, label %cond_end11

cond_jump_then10:                                 ; preds = %cond_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %20 = bitcast i8* %19 to i32*
  %parent2child_write_fd12 = load i32, i32* %20, align 4
  %21 = call i32 @close(i32 %parent2child_write_fd12)
  %22 = call i32 @getpid()
  %pid13 = alloca i32
  %23 = bitcast i32* %pid13 to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %22, i32* %pid13, align 4
  %24 = call i32 @setpgid(i32 0, i32 0)
  %pid14 = load i32, i32* %pid13, align 4
  %25 = call i32 @tcsetpgrp(i32 0, i32 %pid14)
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %27 = bitcast i8* %26 to i32*
  %parent2child_read_fd15 = load i32, i32* %27, align 4
  %28 = call i32 @dup2(i32 %parent2child_read_fd15, i32 0)
  %letmp16 = icmp slt i32 %28, 0
  br i1 %letmp16, label %cond_jump_then17, label %cond_end18

cond_end11:                                       ; preds = %cond_end24, %cond_end
  %pid25 = load i32, i32* %pid, align 4
  %pid26 = load i32, i32* %pid, align 4
  %29 = call i32 @setpgid(i32 %pid25, i32 %pid26)
  %pid27 = load i32, i32* %pid, align 4
  %30 = call i32 @tcsetpgrp(i32 0, i32 %pid27)
  %parent2child_read_fd28 = load i32, i32* %parent2child_read_fd, align 4
  %31 = call i32 @close(i32 %parent2child_read_fd28)
  %stack_ptr29 = load %CLVALUE**, %CLVALUE*** %stack_ptr5, align 8
  %derefference_value = load %CLVALUE*, %CLVALUE** %stack_ptr29, align 8
  %num_params30 = load i32, i32* %num_params4, align 4
  %32 = ptrtoint %CLVALUE* %derefference_value to i64
  %sext2 = sext i32 %num_params30 to i64
  %multtmp = mul nsw i64 %sext2, 4
  %subtmp = sub nsw i64 %32, %multtmp
  %33 = inttoptr i64 %subtmp to %CLVALUE*
  %34 = bitcast %CLVALUE* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %obj = alloca i32
  %36 = bitcast i32* %obj to i8*
  store i8* %36, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  store i32 %35, i32* %obj, align 4
  %obj31 = load i32, i32* %obj, align 4
  %37 = call %sCLHeapMem* @get_object_pointer(i32 %obj31)
  %38 = bitcast %sCLHeapMem* %37 to %sCLCommand*
  %command_data = alloca %sCLCommand*
  %39 = bitcast %sCLCommand** %command_data to i8*
  store i8* %39, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  store %sCLCommand* %38, %sCLCommand** %command_data, align 8
  %parent2child_write_fd32 = load i32, i32* %parent2child_write_fd, align 4
  %command_data33 = load %sCLCommand*, %sCLCommand** %command_data, align 8
  %40 = getelementptr inbounds %sCLCommand, %sCLCommand* %command_data33, i32 0, i32 8
  %41 = bitcast [32 x i8]* %40 to i8*
  %command_data34 = load %sCLCommand*, %sCLCommand** %command_data, align 8
  %42 = getelementptr inbounds %sCLCommand, %sCLCommand* %command_data34, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %sext14 = zext i32 %43 to i64
  %44 = call i64 @write(i32 %parent2child_write_fd32, i8* %41, i64 %sext14)
  %letmp35 = icmp slt i64 %44, 0
  br i1 %letmp35, label %cond_jump_then36, label %cond_end37

cond_jump_then17:                                 ; preds = %cond_jump_then10
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %45 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.69, i32 0, i32 0))
  call void @exit(i32 1)
  br label %cond_end18

cond_end18:                                       ; preds = %cond_jump_then17, %cond_jump_then10
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %47 = bitcast i8* %46 to i32*
  %parent2child_read_fd19 = load i32, i32* %47, align 4
  %48 = call i32 @close(i32 %parent2child_read_fd19)
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %50 = bitcast i8* %49 to i8**
  %name20 = load i8*, i8** %50, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %52 = bitcast i8* %51 to i8***
  %argv21 = load i8**, i8*** %52, align 8
  %53 = call i32 @execvp(i8* %name20, i8** %argv21)
  %letmp22 = icmp slt i32 %53, 0
  br i1 %letmp22, label %cond_jump_then23, label %cond_end24

cond_jump_then23:                                 ; preds = %cond_end18
  call void @exit(i32 64)
  br label %cond_end24

cond_end24:                                       ; preds = %cond_jump_then23, %cond_end18
  call void @exit(i32 0)
  br label %cond_end11

cond_jump_then36:                                 ; preds = %cond_end11
  %54 = bitcast [8192 x i8*]* %lvtable to i8*
  %55 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %54, i64 65536)
  ret i1 false

cond_end37:                                       ; preds = %cond_end11
  %parent2child_write_fd38 = load i32, i32* %parent2child_write_fd, align 4
  %56 = call i32 @close(i32 %parent2child_write_fd38)
  %status = alloca i32
  %57 = bitcast i32* %status to i8*
  store i8* %57, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  store i32 0, i32* %status, align 4
  %pid39 = load i32, i32* %pid, align 4
  %status40 = load i32, i32* %status, align 4
  %58 = call i32 @waitpid(i32 %pid39, i32* %status, i32 2)
  %pid2 = alloca i32
  %59 = bitcast i32* %pid2 to i8*
  store i8* %59, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %58, i32* %pid2, align 4
  %status41 = load i32, i32* %status, align 4
  %andtmp = and i32 %status41, 65280
  %rshifttmp = ashr i32 %andtmp, 8
  %eqtmpX42 = icmp eq i32 %rshifttmp, 64
  br i1 %eqtmpX42, label %cond_jump_then43, label %cond_end44

cond_jump_then43:                                 ; preds = %cond_end37
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %61 = bitcast i8* %60 to %CLVALUE***
  %stack_ptr45 = load %CLVALUE**, %CLVALUE*** %61, align 8
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %63 = bitcast i8* %62 to %sVMInfo**
  %info46 = load %sVMInfo*, %sVMInfo** %63, align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %65 = bitcast i8* %64 to i8**
  %name47 = load i8*, i8** %65, align 8
  %66 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.70, i32 0, i32 0), i8* %name47)
  call void @vm_err_msg(%CLVALUE** %stack_ptr45, %sVMInfo* %info46, i8* %66)
  %67 = bitcast [8192 x i8*]* %lvtable to i8*
  %68 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %67, i64 65536)
  %69 = ptrtoint i8* %66 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %cond_then_block, label %cond_end48

cond_end44:                                       ; preds = %cond_end37
  %status49 = load i32, i32* %status, align 4
  %andtmp50 = and i32 %status49, 255
  %eqtmpX51 = icmp eq i32 %andtmp50, 127
  br i1 %eqtmpX51, label %cond_jump_then52, label %cond_else_block

cond_then_block:                                  ; preds = %cond_jump_then43
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block, %cond_jump_then43
  call void @xfree(i8* %66)
  ret i1 false

cond_jump_then52:                                 ; preds = %cond_end44
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %72 = bitcast i8* %71 to i32*
  %status54 = load i32, i32* %72, align 4
  %andtmp55 = and i32 %status54, 65280
  %rshifttmp56 = ashr i32 %andtmp55, 8
  %addtmp = add nsw i32 %rshifttmp56, 128
  %rcode = alloca i32
  %73 = bitcast i32* %rcode to i8*
  store i8* %73, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %addtmp, i32* %rcode, align 4
  %title = alloca [32 x i8]
  %74 = bitcast [32 x i8]* %title to i8*
  store i8* %74, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %76 = bitcast i8* %75 to i8**
  %name57 = load i8*, i8** %76, align 8
  %77 = bitcast [32 x i8]* %title to i8*
  %78 = call i8* @xstrncpy(i8* %77, i8* %name57, i32 32)
  %tinfo = alloca %termios
  %79 = bitcast %termios* %tinfo to i8*
  store i8* %79, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %tinfo58 = load %termios, %termios* %tinfo, align 8
  %80 = call i32 @tcgetattr(i32 0, %termios* %tinfo)
  %letmp59 = icmp slt i32 %80, 0
  br i1 %letmp59, label %cond_jump_then60, label %cond_end61

cond_else_block:                                  ; preds = %cond_end44
  %81 = call i32 @getpid()
  %82 = call i32 @getpid()
  %83 = call i32 @setpgid(i32 %81, i32 %82)
  %84 = call i32 @getpid()
  %85 = call i32 @tcsetpgrp(i32 0, i32 %84)
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %87 = bitcast i8* %86 to i32*
  %status82 = load i32, i32* %87, align 4
  %andtmp83 = and i32 %status82, 65280
  %rshifttmp84 = ashr i32 %andtmp83, 8
  %rcode85 = alloca i32
  %88 = bitcast i32* %rcode85 to i8*
  store i8* %88, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %rshifttmp84, i32* %rcode85, align 4
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %90 = bitcast i8* %89 to %CLVALUE***
  %stack_ptr86 = load %CLVALUE**, %CLVALUE*** %90, align 8
  %derefference_value87 = load %CLVALUE*, %CLVALUE** %stack_ptr86, align 8
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %92 = bitcast i8* %91 to i32*
  %num_params88 = load i32, i32* %92, align 4
  %93 = ptrtoint %CLVALUE* %derefference_value87 to i64
  %sext289 = sext i32 %num_params88 to i64
  %multtmp90 = mul nsw i64 %sext289, 4
  %subtmp91 = sub nsw i64 %93, %multtmp90
  %94 = inttoptr i64 %subtmp91 to %CLVALUE*
  store %CLVALUE* %94, %CLVALUE** %stack_ptr86, align 8
  %95 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %96 = bitcast i8* %95 to %CLVALUE***
  %stack_ptr92 = load %CLVALUE**, %CLVALUE*** %96, align 8
  %derefference_value93 = load %CLVALUE*, %CLVALUE** %stack_ptr92, align 8
  %rcode94 = load i32, i32* %rcode85, align 4
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %98 = bitcast i8* %97 to %sVMInfo**
  %info95 = load %sVMInfo*, %sVMInfo** %98, align 8
  %99 = call i32 @create_command_object(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.77, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.78, i32 0, i32 0), i32 1, i32 %rcode94, i1 false, %sVMInfo* %info95)
  %100 = bitcast %CLVALUE* %derefference_value93 to i32*
  store i32 %99, i32* %100, align 4
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %102 = bitcast i8* %101 to %CLVALUE***
  %stack_ptr96 = load %CLVALUE**, %CLVALUE*** %102, align 8
  %derefference_value97 = load %CLVALUE*, %CLVALUE** %stack_ptr96, align 8
  %103 = ptrtoint %CLVALUE* %derefference_value97 to i64
  %adddtmp98 = add nsw i64 %103, 4
  %104 = inttoptr i64 %adddtmp98 to %CLVALUE*
  store %CLVALUE* %104, %CLVALUE** %stack_ptr96, align 8
  br label %cond_end53

cond_end53:                                       ; preds = %cond_else_block, %cond_end61
  %105 = bitcast [8192 x i8*]* %lvtable to i8*
  %106 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %105, i64 65536)
  ret i1 true

cond_jump_then60:                                 ; preds = %cond_jump_then52
  %107 = bitcast [8192 x i8*]* %lvtable to i8*
  %108 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %107, i64 65536)
  ret i1 false

cond_end61:                                       ; preds = %cond_jump_then52
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %110 = bitcast i8* %109 to i32*
  %pid62 = load i32, i32* %110, align 4
  %pgrp = alloca i32
  %111 = bitcast i32* %pgrp to i8*
  store i8* %111, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store i32 %pid62, i32* %pgrp, align 4
  %tinfo63 = load %termios, %termios* %tinfo, align 8
  %pgrp64 = load i32, i32* %pgrp, align 4
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %113 = bitcast i8* %112 to %sVMInfo**
  %info65 = load %sVMInfo*, %sVMInfo** %113, align 8
  %114 = bitcast [32 x i8]* %title to i8*
  %115 = call i32 @create_job_object(i8* %114, %termios* %tinfo, i32 %pgrp64, %sVMInfo* %info65)
  %job = alloca i32
  %116 = bitcast i32* %job to i8*
  store i8* %116, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 %115, i32* %job, align 4
  %gJobs = load %vector__int*, %vector__int** @gJobs, align 8
  %job66 = load i32, i32* %job, align 4
  call void @"vector_push_back_int4_src/vm"(%vector__int* %gJobs, i32 %job66)
  %117 = call i32 @getpid()
  %118 = call i32 @getpid()
  %119 = call i32 @setpgid(i32 %117, i32 %118)
  %120 = call i32 @getpid()
  %121 = call i32 @tcsetpgrp(i32 0, i32 %120)
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %123 = bitcast i8* %122 to i32*
  %status67 = load i32, i32* %123, align 4
  %andtmp68 = and i32 %status67, 65280
  %rshifttmp69 = ashr i32 %andtmp68, 8
  %rcode2 = alloca i32
  %124 = bitcast i32* %rcode2 to i8*
  store i8* %124, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  store i32 %rshifttmp69, i32* %rcode2, align 4
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %126 = bitcast i8* %125 to %CLVALUE***
  %stack_ptr70 = load %CLVALUE**, %CLVALUE*** %126, align 8
  %derefference_value71 = load %CLVALUE*, %CLVALUE** %stack_ptr70, align 8
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %128 = bitcast i8* %127 to i32*
  %num_params72 = load i32, i32* %128, align 4
  %129 = ptrtoint %CLVALUE* %derefference_value71 to i64
  %sext273 = sext i32 %num_params72 to i64
  %multtmp74 = mul nsw i64 %sext273, 4
  %subtmp75 = sub nsw i64 %129, %multtmp74
  %130 = inttoptr i64 %subtmp75 to %CLVALUE*
  store %CLVALUE* %130, %CLVALUE** %stack_ptr70, align 8
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %132 = bitcast i8* %131 to %CLVALUE***
  %stack_ptr76 = load %CLVALUE**, %CLVALUE*** %132, align 8
  %derefference_value77 = load %CLVALUE*, %CLVALUE** %stack_ptr76, align 8
  %rcode278 = load i32, i32* %rcode2, align 4
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %134 = bitcast i8* %133 to %sVMInfo**
  %info79 = load %sVMInfo*, %sVMInfo** %134, align 8
  %135 = call i32 @create_command_object(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.75, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.76, i32 0, i32 0), i32 1, i32 %rcode278, i1 false, %sVMInfo* %info79)
  %136 = bitcast %CLVALUE* %derefference_value77 to i32*
  store i32 %135, i32* %136, align 4
  %137 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %138 = bitcast i8* %137 to %CLVALUE***
  %stack_ptr80 = load %CLVALUE**, %CLVALUE*** %138, align 8
  %derefference_value81 = load %CLVALUE*, %CLVALUE** %stack_ptr80, align 8
  %139 = ptrtoint %CLVALUE* %derefference_value81 to i64
  %adddtmp = add nsw i64 %139, 4
  %140 = inttoptr i64 %adddtmp to %CLVALUE*
  store %CLVALUE* %140, %CLVALUE** %stack_ptr80, align 8
  br label %cond_end53
}

define void @"vector_push_back_int4_src/vm"(%vector__int* %self, i32 %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %item2 = alloca i32
  store i32 %item, i32* %item2, align 4
  %3 = bitcast i32* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self5 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %items = alloca i32*
  %17 = bitcast i32** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  store i32* %16, i32** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %19 = bitcast i8* %18 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = zext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.71, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.72, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.73, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.74, i32 0, i32 0))
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end21, %entry
  %self22 = load %vector__int*, %vector__int** %self1, align 8
  %26 = getelementptr inbounds %vector__int, %vector__int* %self22, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %self23 = load %vector__int*, %vector__int** %self1, align 8
  %28 = getelementptr inbounds %vector__int, %vector__int* %self23, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item24 = load i32, i32* %item2, align 4
  %element_address25 = getelementptr i32, i32* %27, i32 %29
  store i32 %item24, i32* %element_address25, align 4
  %self26 = load %vector__int*, %vector__int** %self1, align 8
  %self27 = load %vector__int*, %vector__int** %self1, align 8
  %30 = getelementptr inbounds %vector__int, %vector__int* %self27, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp28 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__int, %vector__int* %self26, i32 0, i32 1
  store i32 %addtmp28, i32* %32, align 4
  %subttmp29 = sub nsw i32 %addtmp28, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %38 = bitcast i8* %37 to %vector__int**
  %self10 = load %vector__int*, %vector__int** %38, align 8
  %39 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %42 = bitcast i8* %41 to %vector__int**
  %self11 = load %vector__int*, %vector__int** %42, align 8
  %43 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  %48 = bitcast i8* %47 to i32**
  %items13 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr i32, i32* %items13, i32 %i14
  %element = load i32, i32* %element_address, align 4
  %element_address15 = getelementptr i32, i32* %44, i32 %i12
  store i32 %element, i32* %element_address15, align 4
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  %56 = bitcast i8* %55 to %vector__int**
  %self17 = load %vector__int*, %vector__int** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__int, %vector__int* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load i32*, i32** %items, align 8
  %58 = load i32*, i32** %items, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %cond_then_block20, label %cond_end21

cond_then_block20:                                ; preds = %cond_end_block
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_end_block
  %61 = bitcast i32* %58 to i8*
  call void @xfree(i8* %61)
  br label %cond_end
}

define i1 @invoke_command_with_pipe(i32 %parent_obj, i8* %name, i8** %argv, %CLVALUE** %stack_ptr, i32 %num_params, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %parent_obj1 = alloca i32
  store i32 %parent_obj, i32* %parent_obj1, align 4
  %2 = bitcast i32* %parent_obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %name2 = alloca i8*
  store i8* %name, i8** %name2, align 8
  %3 = bitcast i8** %name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %argv3 = alloca i8**
  store i8** %argv, i8*** %argv3, align 8
  %4 = bitcast i8*** %argv3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %stack_ptr4 = alloca %CLVALUE**
  store %CLVALUE** %stack_ptr, %CLVALUE*** %stack_ptr4, align 8
  %5 = bitcast %CLVALUE*** %stack_ptr4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %num_params5 = alloca i32
  store i32 %num_params, i32* %num_params5, align 4
  %6 = bitcast i32* %num_params5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %info6 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info6, align 8
  %7 = bitcast %sVMInfo** %info6 to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %child2parent_write_fd = alloca i32
  %8 = bitcast i32* %child2parent_write_fd to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 0, i32* %child2parent_write_fd, align 4
  %child2parent_read_fd = alloca i32
  %9 = bitcast i32* %child2parent_read_fd to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  store i32 0, i32* %child2parent_read_fd, align 4
  %parent2child_write_fd = alloca i32
  %10 = bitcast i32* %parent2child_write_fd to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  store i32 0, i32* %parent2child_write_fd, align 4
  %parent2child_read_fd = alloca i32
  %11 = bitcast i32* %parent2child_read_fd to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  store i32 0, i32* %parent2child_read_fd, align 4
  %child2parent_read_fd_err = alloca i32
  %12 = bitcast i32* %child2parent_read_fd_err to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  store i32 0, i32* %child2parent_read_fd_err, align 4
  %child2parent_write_fd_err = alloca i32
  %13 = bitcast i32* %child2parent_write_fd_err to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  store i32 0, i32* %child2parent_write_fd_err, align 4
  %pipes = alloca [2 x i32]
  %14 = bitcast [2 x i32]* %pipes to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %15 = bitcast [2 x i32]* %pipes to i32*
  %16 = call i32 @pipe(i32* %15)
  %17 = bitcast [2 x i32]* %pipes to i32*
  %element_address = getelementptr i32, i32* %17, i32 0
  %element = load i32, i32* %element_address, align 4
  store i32 %element, i32* %child2parent_read_fd, align 4
  %18 = bitcast [2 x i32]* %pipes to i32*
  %element_address7 = getelementptr i32, i32* %18, i32 1
  %element8 = load i32, i32* %element_address7, align 4
  store i32 %element8, i32* %child2parent_write_fd, align 4
  %19 = bitcast [2 x i32]* %pipes to i32*
  %20 = call i32 @pipe(i32* %19)
  %21 = bitcast [2 x i32]* %pipes to i32*
  %element_address9 = getelementptr i32, i32* %21, i32 0
  %element10 = load i32, i32* %element_address9, align 4
  store i32 %element10, i32* %parent2child_read_fd, align 4
  %22 = bitcast [2 x i32]* %pipes to i32*
  %element_address11 = getelementptr i32, i32* %22, i32 1
  %element12 = load i32, i32* %element_address11, align 4
  store i32 %element12, i32* %parent2child_write_fd, align 4
  %23 = bitcast [2 x i32]* %pipes to i32*
  %24 = call i32 @pipe(i32* %23)
  %25 = bitcast [2 x i32]* %pipes to i32*
  %element_address13 = getelementptr i32, i32* %25, i32 0
  %element14 = load i32, i32* %element_address13, align 4
  store i32 %element14, i32* %child2parent_read_fd_err, align 4
  %26 = bitcast [2 x i32]* %pipes to i32*
  %element_address15 = getelementptr i32, i32* %26, i32 1
  %element16 = load i32, i32* %element_address15, align 4
  store i32 %element16, i32* %child2parent_write_fd_err, align 4
  %27 = call i32 @fork()
  %pid = alloca i32
  %28 = bitcast i32* %pid to i8*
  store i8* %28, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  store i32 %27, i32* %pid, align 4
  %pid17 = load i32, i32* %pid, align 4
  %eqtmpX = icmp eq i32 %pid17, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  %30 = bitcast i8* %29 to i32*
  %parent2child_write_fd18 = load i32, i32* %30, align 4
  %31 = call i32 @close(i32 %parent2child_write_fd18)
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %33 = bitcast i8* %32 to i32*
  %child2parent_read_fd19 = load i32, i32* %33, align 4
  %34 = call i32 @close(i32 %child2parent_read_fd19)
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %36 = bitcast i8* %35 to i32*
  %child2parent_read_fd_err20 = load i32, i32* %36, align 4
  %37 = call i32 @close(i32 %child2parent_read_fd_err20)
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %39 = bitcast i8* %38 to i32*
  %parent2child_read_fd21 = load i32, i32* %39, align 4
  %40 = call i32 @dup2(i32 %parent2child_read_fd21, i32 0)
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %42 = bitcast i8* %41 to i32*
  %child2parent_write_fd22 = load i32, i32* %42, align 4
  %43 = call i32 @dup2(i32 %child2parent_write_fd22, i32 1)
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %45 = bitcast i8* %44 to i32*
  %child2parent_write_fd_err23 = load i32, i32* %45, align 4
  %46 = call i32 @dup2(i32 %child2parent_write_fd_err23, i32 2)
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  %48 = bitcast i8* %47 to i32*
  %parent2child_read_fd24 = load i32, i32* %48, align 4
  %49 = call i32 @close(i32 %parent2child_read_fd24)
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  %51 = bitcast i8* %50 to i32*
  %child2parent_write_fd25 = load i32, i32* %51, align 4
  %52 = call i32 @close(i32 %child2parent_write_fd25)
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %54 = bitcast i8* %53 to i32*
  %child2parent_write_fd_err26 = load i32, i32* %54, align 4
  %55 = call i32 @close(i32 %child2parent_write_fd_err26)
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %57 = bitcast i8* %56 to i8**
  %name27 = load i8*, i8** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %59 = bitcast i8* %58 to i8***
  %argv28 = load i8**, i8*** %59, align 8
  %60 = call i32 @execvp(i8* %name27, i8** %argv28)
  %letmp = icmp slt i32 %60, 0
  br i1 %letmp, label %cond_jump_then29, label %cond_end30

cond_end:                                         ; preds = %cond_end30, %entry
  %parent2child_read_fd31 = load i32, i32* %parent2child_read_fd, align 4
  %61 = call i32 @close(i32 %parent2child_read_fd31)
  %child2parent_write_fd32 = load i32, i32* %child2parent_write_fd, align 4
  %62 = call i32 @close(i32 %child2parent_write_fd32)
  %child2parent_write_fd_err33 = load i32, i32* %child2parent_write_fd_err, align 4
  %63 = call i32 @close(i32 %child2parent_write_fd_err33)
  %stack_ptr34 = load %CLVALUE**, %CLVALUE*** %stack_ptr4, align 8
  %derefference_value = load %CLVALUE*, %CLVALUE** %stack_ptr34, align 8
  %num_params35 = load i32, i32* %num_params5, align 4
  %64 = ptrtoint %CLVALUE* %derefference_value to i64
  %sext2 = sext i32 %num_params35 to i64
  %multtmp = mul nsw i64 %sext2, 4
  %subtmp = sub nsw i64 %64, %multtmp
  %65 = inttoptr i64 %subtmp to %CLVALUE*
  %66 = bitcast %CLVALUE* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %obj = alloca i32
  %68 = bitcast i32* %obj to i8*
  store i8* %68, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %67, i32* %obj, align 4
  %obj36 = load i32, i32* %obj, align 4
  %69 = call %sCLHeapMem* @get_object_pointer(i32 %obj36)
  %70 = bitcast %sCLHeapMem* %69 to %sCLCommand*
  %command_data = alloca %sCLCommand*
  %71 = bitcast %sCLCommand** %command_data to i8*
  store i8* %71, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLCommand* %70, %sCLCommand** %command_data, align 8
  %parent2child_write_fd37 = load i32, i32* %parent2child_write_fd, align 4
  %command_data38 = load %sCLCommand*, %sCLCommand** %command_data, align 8
  %72 = getelementptr inbounds %sCLCommand, %sCLCommand* %command_data38, i32 0, i32 8
  %73 = bitcast [32 x i8]* %72 to i8*
  %command_data39 = load %sCLCommand*, %sCLCommand** %command_data, align 8
  %74 = getelementptr inbounds %sCLCommand, %sCLCommand* %command_data39, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %sext14 = zext i32 %75 to i64
  %76 = call i64 @write(i32 %parent2child_write_fd37, i8* %73, i64 %sext14)
  %letmp40 = icmp slt i64 %76, 0
  br i1 %letmp40, label %cond_jump_then41, label %cond_end42

cond_jump_then29:                                 ; preds = %cond_jump_then
  call void @exit(i32 64)
  br label %cond_end30

cond_end30:                                       ; preds = %cond_jump_then29, %cond_jump_then
  call void @exit(i32 2)
  br label %cond_end

cond_jump_then41:                                 ; preds = %cond_end
  %77 = bitcast [8192 x i8*]* %lvtable to i8*
  %78 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %77, i64 65536)
  ret i1 false

cond_end42:                                       ; preds = %cond_end
  %parent2child_write_fd43 = load i32, i32* %parent2child_write_fd, align 4
  %79 = call i32 @close(i32 %parent2child_write_fd43)
  %80 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.79, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.80, i32 0, i32 0), i32 556, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.81, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.82, i32 0, i32 0))
  %81 = bitcast i8* %80 to %buffer*
  %82 = call %buffer* @buffer_initialize(%buffer* %81)
  %child_output = alloca %buffer*
  %83 = bitcast %buffer** %child_output to i8*
  store i8* %83, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %buffer* %82, %buffer** %child_output, align 8
  %84 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.84, i32 0, i32 0), i32 557, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.85, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.86, i32 0, i32 0))
  %85 = bitcast i8* %84 to %buffer*
  %86 = call %buffer* @buffer_initialize(%buffer* %85)
  %child_output_error = alloca %buffer*
  %87 = bitcast %buffer** %child_output_error to i8*
  store i8* %87, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  store %buffer* %86, %buffer** %child_output_error, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end52, %cond_end42
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %pipe_data = alloca [128 x i8]
  %88 = bitcast [128 x i8]* %pipe_data to i8*
  store i8* %88, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 505), align 8
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %90 = bitcast i8* %89 to i32*
  %child2parent_read_fd44 = load i32, i32* %90, align 4
  %91 = bitcast [128 x i8]* %pipe_data to i8*
  %92 = call i64 @read(i32 %child2parent_read_fd44, i8* %91, i64 128)
  %93 = trunc i64 %92 to i32
  %readed_byte = alloca i32
  %94 = bitcast i32* %readed_byte to i8*
  store i8* %94, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  store i32 %93, i32* %readed_byte, align 4
  %pipe_data_err = alloca [128 x i8]
  %95 = bitcast [128 x i8]* %pipe_data_err to i8*
  store i8* %95, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %97 = bitcast i8* %96 to i32*
  %child2parent_read_fd_err45 = load i32, i32* %97, align 4
  %98 = bitcast [128 x i8]* %pipe_data_err to i8*
  %99 = call i64 @read(i32 %child2parent_read_fd_err45, i8* %98, i64 128)
  %100 = trunc i64 %99 to i32
  %readed_byte_err = alloca i32
  %101 = bitcast i32* %readed_byte_err to i8*
  store i8* %101, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  store i32 %100, i32* %readed_byte_err, align 4
  %andand_result_var = alloca i1
  %readed_byte46 = load i32, i32* %readed_byte, align 4
  %eqtmpX47 = icmp eq i32 %readed_byte46, 0
  store i1 %eqtmpX47, i1* %andand_result_var, align 1
  br i1 %eqtmpX47, label %cond_jump_then48, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_jump_then51, %loop_top_block
  %child2parent_read_fd59 = load i32, i32* %child2parent_read_fd, align 4
  %102 = call i32 @close(i32 %child2parent_read_fd59)
  %child2parent_read_fd_err60 = load i32, i32* %child2parent_read_fd_err, align 4
  %103 = call i32 @close(i32 %child2parent_read_fd_err60)
  %status = alloca i32
  %104 = bitcast i32* %status to i8*
  store i8* %104, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  store i32 0, i32* %status, align 4
  %pid61 = load i32, i32* %pid, align 4
  %status62 = load i32, i32* %status, align 4
  %105 = call i32 @waitpid(i32 %pid61, i32* %status, i32 2)
  %pid2 = alloca i32
  %106 = bitcast i32* %pid2 to i8*
  store i8* %106, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  store i32 %105, i32* %pid2, align 4
  %status63 = load i32, i32* %status, align 4
  %andtmp = and i32 %status63, 65280
  %rshifttmp = ashr i32 %andtmp, 8
  %eqtmpX64 = icmp eq i32 %rshifttmp, 64
  br i1 %eqtmpX64, label %cond_jump_then65, label %cond_end66

cond_jump_then48:                                 ; preds = %cond_then_block
  %readed_byte_err49 = load i32, i32* %readed_byte_err, align 4
  %eqtmpX50 = icmp eq i32 %readed_byte_err49, 0
  %andand = and i1 %eqtmpX47, %eqtmpX50
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then48, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then51, label %cond_end52

cond_jump_then51:                                 ; preds = %cond_jump_end
  br label %cond_end_block

cond_end52:                                       ; preds = %after_break, %cond_jump_end
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %108 = bitcast i8* %107 to %buffer**
  %child_output53 = load %buffer*, %buffer** %108, align 8
  %readed_byte54 = load i32, i32* %readed_byte, align 4
  %109 = bitcast [128 x i8]* %pipe_data to i8*
  %sext1455 = zext i32 %readed_byte54 to i64
  call void @buffer_append(%buffer* %child_output53, i8* %109, i64 %sext1455)
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  %111 = bitcast i8* %110 to %buffer**
  %child_output_error56 = load %buffer*, %buffer** %111, align 8
  %readed_byte_err57 = load i32, i32* %readed_byte_err, align 4
  %112 = bitcast [128 x i8]* %pipe_data_err to i8*
  %sext1458 = zext i32 %readed_byte_err57 to i64
  call void @buffer_append(%buffer* %child_output_error56, i8* %112, i64 %sext1458)
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end52

cond_jump_then65:                                 ; preds = %cond_end_block
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %114 = bitcast i8* %113 to %CLVALUE***
  %stack_ptr67 = load %CLVALUE**, %CLVALUE*** %114, align 8
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %116 = bitcast i8* %115 to %sVMInfo**
  %info68 = load %sVMInfo*, %sVMInfo** %116, align 8
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %118 = bitcast i8* %117 to i8**
  %name69 = load i8*, i8** %118, align 8
  %119 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.87, i32 0, i32 0), i8* %name69)
  call void @vm_err_msg(%CLVALUE** %stack_ptr67, %sVMInfo* %info68, i8* %119)
  %120 = bitcast [8192 x i8*]* %lvtable to i8*
  %121 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %120, i64 65536)
  %122 = ptrtoint i8* %119 to i64
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %cond_then_block70, label %cond_end71

cond_end66:                                       ; preds = %cond_end_block
  %stack_ptr76 = load %CLVALUE**, %CLVALUE*** %stack_ptr4, align 8
  %derefference_value77 = load %CLVALUE*, %CLVALUE** %stack_ptr76, align 8
  %num_params78 = load i32, i32* %num_params5, align 4
  %124 = ptrtoint %CLVALUE* %derefference_value77 to i64
  %sext279 = sext i32 %num_params78 to i64
  %multtmp80 = mul nsw i64 %sext279, 4
  %subtmp81 = sub nsw i64 %124, %multtmp80
  %125 = inttoptr i64 %subtmp81 to %CLVALUE*
  store %CLVALUE* %125, %CLVALUE** %stack_ptr76, align 8
  %status82 = load i32, i32* %status, align 4
  %andtmp83 = and i32 %status82, 65280
  %rshifttmp84 = ashr i32 %andtmp83, 8
  %rcode = alloca i32
  %126 = bitcast i32* %rcode to i8*
  store i8* %126, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 504), align 8
  store i32 %rshifttmp84, i32* %rcode, align 4
  %stack_ptr85 = load %CLVALUE**, %CLVALUE*** %stack_ptr4, align 8
  %derefference_value86 = load %CLVALUE*, %CLVALUE** %stack_ptr85, align 8
  %child_output87 = load %buffer*, %buffer** %child_output, align 8
  %127 = getelementptr inbounds %buffer, %buffer* %child_output87, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %child_output88 = load %buffer*, %buffer** %child_output, align 8
  %129 = getelementptr inbounds %buffer, %buffer* %child_output88, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %child_output_error89 = load %buffer*, %buffer** %child_output_error, align 8
  %131 = getelementptr inbounds %buffer, %buffer* %child_output_error89, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %child_output_error90 = load %buffer*, %buffer** %child_output_error, align 8
  %133 = getelementptr inbounds %buffer, %buffer* %child_output_error90, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %rcode91 = load i32, i32* %rcode, align 4
  %info92 = load %sVMInfo*, %sVMInfo** %info6, align 8
  %135 = call i32 @create_command_object(i8* %128, i32 %130, i8* %132, i32 %134, i32 %rcode91, i1 false, %sVMInfo* %info92)
  %136 = bitcast %CLVALUE* %derefference_value86 to i32*
  store i32 %135, i32* %136, align 4
  %stack_ptr93 = load %CLVALUE**, %CLVALUE*** %stack_ptr4, align 8
  %derefference_value94 = load %CLVALUE*, %CLVALUE** %stack_ptr93, align 8
  %137 = ptrtoint %CLVALUE* %derefference_value94 to i64
  %adddtmp = add nsw i64 %137, 4
  %138 = inttoptr i64 %adddtmp to %CLVALUE*
  store %CLVALUE* %138, %CLVALUE** %stack_ptr93, align 8
  %139 = bitcast [8192 x i8*]* %lvtable to i8*
  %140 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %139, i64 65536)
  %141 = load %buffer*, %buffer** %child_output, align 8
  call void @buffer_finalize(%buffer* %141)
  %142 = ptrtoint %buffer* %141 to i64
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %cond_then_block95, label %cond_end96

cond_then_block70:                                ; preds = %cond_jump_then65
  br label %cond_end71

cond_end71:                                       ; preds = %cond_then_block70, %cond_jump_then65
  call void @xfree(i8* %119)
  %144 = load %buffer*, %buffer** %child_output, align 8
  call void @buffer_finalize(%buffer* %144)
  %145 = ptrtoint %buffer* %144 to i64
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %cond_then_block72, label %cond_end73

cond_then_block72:                                ; preds = %cond_end71
  br label %cond_end73

cond_end73:                                       ; preds = %cond_then_block72, %cond_end71
  %147 = bitcast %buffer* %144 to i8*
  call void @xfree(i8* %147)
  %148 = load %buffer*, %buffer** %child_output_error, align 8
  call void @buffer_finalize(%buffer* %148)
  %149 = ptrtoint %buffer* %148 to i64
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %cond_then_block74, label %cond_end75

cond_then_block74:                                ; preds = %cond_end73
  br label %cond_end75

cond_end75:                                       ; preds = %cond_then_block74, %cond_end73
  %151 = bitcast %buffer* %148 to i8*
  call void @xfree(i8* %151)
  ret i1 false

cond_then_block95:                                ; preds = %cond_end66
  br label %cond_end96

cond_end96:                                       ; preds = %cond_then_block95, %cond_end66
  %152 = bitcast %buffer* %141 to i8*
  call void @xfree(i8* %152)
  %153 = load %buffer*, %buffer** %child_output_error, align 8
  call void @buffer_finalize(%buffer* %153)
  %154 = ptrtoint %buffer* %153 to i64
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %cond_then_block97, label %cond_end98

cond_then_block97:                                ; preds = %cond_end96
  br label %cond_end98

cond_end98:                                       ; preds = %cond_then_block97, %cond_end96
  %156 = bitcast %buffer* %153 to i8*
  call void @xfree(i8* %156)
  ret i1 true
}

define void @jobs(%sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info1, align 8
  %2 = bitcast %sVMInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %gJobs = load %vector__int*, %vector__int** @gJobs, align 8
  call void @"vector_each_int5_src/vm"(%vector__int* %gJobs, void (i32, i32, i1*)* @vm_lambda0)
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void
}

define void @vm_lambda0(i32 %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i32
  store i32 %it, i32* %it1, align 4
  %2 = bitcast i32* %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %it4 = load i32, i32* %it1, align 4
  %5 = call %sCLHeapMem* @get_object_pointer(i32 %it4)
  %6 = bitcast %sCLHeapMem* %5 to %sCLJob*
  %job_data = alloca %sCLJob*
  %7 = bitcast %sCLJob** %job_data to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  store %sCLJob* %6, %sCLJob** %job_data, align 8
  %title = alloca [32 x i8]
  %8 = bitcast [32 x i8]* %title to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %job_data5 = load %sCLJob*, %sCLJob** %job_data, align 8
  %9 = getelementptr inbounds %sCLJob, %sCLJob* %job_data5, i32 0, i32 3
  %10 = bitcast [32 x i8]* %9 to i8*
  %11 = bitcast [32 x i8]* %title to i8*
  %12 = call i8* @xstrncpy(i8* %11, i8* %10, i32 32)
  %it26 = load i32, i32* %it22, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.89, i32 0, i32 0), i32 %it26, [32 x i8]* %title)
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret void
}

define void @"vector_each_int5_src/vm"(%vector__int* %self, void (i32, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %block_2 = alloca void (i32, i32, i1*)*
  store void (i32, i32, i1*)* %block_, void (i32, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i32, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %6 = bitcast i8* %5 to %vector__int**
  %self4 = load %vector__int*, %vector__int** %6, align 8
  %7 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %9 = bitcast i1* %end_flag_ to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  store i1 false, i1* %end_flag_, align 1
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %11 = bitcast i8* %10 to void (i32, i32, i1*)**
  %block_5 = load void (i32, i32, i1*)*, void (i32, i32, i1*)** %11, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %13 = bitcast i8* %12 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %13, align 8
  %14 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %i_7 = load i32, i32* %i_, align 4
  %element_address = getelementptr i32, i32* %15, i32 %i_7
  %element = load i32, i32* %element_address, align 4
  %i_8 = load i32, i32* %i_, align 4
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  call void %block_5(i32 %element, i32 %i_8, i1* %end_flag_)
  %end_flag_10 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_10, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %i_11 = load i32, i32* %i_, align 4
  %addtmp = add nsw i32 %i_11, 1
  store i32 %addtmp, i32* %i_, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define i1 @forgroud_job(i32 %job_num, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %job_num1 = alloca i32
  store i32 %job_num, i32* %job_num1, align 4
  %2 = bitcast i32* %job_num1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %gJobs = load %vector__int*, %vector__int** @gJobs, align 8
  %job_num3 = load i32, i32* %job_num1, align 4
  %4 = call i32 @"vector_item_int6_src/vm"(%vector__int* %gJobs, i32 %job_num3, i32 9999)
  %job_object = alloca i32
  %5 = bitcast i32* %job_object to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  store i32 %4, i32* %job_object, align 4
  %job_object4 = load i32, i32* %job_object, align 4
  %noteqtmp = icmp ne i32 %job_object4, 9999
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %7 = bitcast i8* %6 to i32*
  %job_object5 = load i32, i32* %7, align 4
  %8 = call %sCLHeapMem* @get_object_pointer(i32 %job_object5)
  %9 = bitcast %sCLHeapMem* %8 to %sCLJob*
  %job_data = alloca %sCLJob*
  %10 = bitcast %sCLJob** %job_data to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  store %sCLJob* %9, %sCLJob** %job_data, align 8
  %title = alloca [32 x i8]
  %11 = bitcast [32 x i8]* %title to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %job_data6 = load %sCLJob*, %sCLJob** %job_data, align 8
  %12 = getelementptr inbounds %sCLJob, %sCLJob* %job_data6, i32 0, i32 3
  %13 = bitcast [32 x i8]* %12 to i8*
  %14 = bitcast [32 x i8]* %title to i8*
  %15 = call i8* @xstrncpy(i8* %14, i8* %13, i32 32)
  %job_data7 = load %sCLJob*, %sCLJob** %job_data, align 8
  %16 = getelementptr inbounds %sCLJob, %sCLJob* %job_data7, i32 0, i32 4
  %17 = load %termios, %termios* %16, align 8
  %tinfo = alloca %termios
  %18 = bitcast %termios* %tinfo to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store %termios %17, %termios* %tinfo, align 8
  %job_data8 = load %sCLJob*, %sCLJob** %job_data, align 8
  %19 = getelementptr inbounds %sCLJob, %sCLJob* %job_data8, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %pgrp = alloca i32
  %21 = bitcast i32* %pgrp to i8*
  store i8* %21, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 %20, i32* %pgrp, align 4
  %tinfo2 = alloca %termios
  %22 = bitcast %termios* %tinfo2 to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %tinfo29 = load %termios, %termios* %tinfo2, align 8
  %23 = call i32 @tcgetattr(i32 0, %termios* %tinfo2)
  %letmp = icmp slt i32 %23, 0
  br i1 %letmp, label %cond_jump_then10, label %cond_end11

cond_end:                                         ; preds = %cond_end19, %entry
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  ret i1 true

cond_jump_then10:                                 ; preds = %cond_jump_then
  %26 = bitcast [8192 x i8*]* %lvtable to i8*
  %27 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %26, i64 65536)
  ret i1 false

cond_end11:                                       ; preds = %cond_jump_then
  %tinfo12 = load %termios, %termios* %tinfo, align 8
  %28 = call i32 @tcsetattr(i32 0, i32 0, %termios* %tinfo)
  %pgrp13 = load i32, i32* %pgrp, align 4
  %29 = call i32 @tcsetpgrp(i32 0, i32 %pgrp13)
  %pgrp14 = load i32, i32* %pgrp, align 4
  %30 = call i32 @kill(i32 %pgrp14, i32 18)
  %status = alloca i32
  %31 = bitcast i32* %status to i8*
  store i8* %31, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  store i32 0, i32* %status, align 4
  %pgrp15 = load i32, i32* %pgrp, align 4
  %status16 = load i32, i32* %status, align 4
  %32 = call i32 @waitpid(i32 %pgrp15, i32* %status, i32 2)
  %pid2 = alloca i32
  %33 = bitcast i32* %pid2 to i8*
  store i8* %33, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  store i32 %32, i32* %pid2, align 4
  %status17 = load i32, i32* %status, align 4
  %andtmp = and i32 %status17, 255
  %eqtmpX = icmp eq i32 %andtmp, 127
  br i1 %eqtmpX, label %cond_jump_then18, label %"cond_jump_elif0\0A"

cond_jump_then18:                                 ; preds = %cond_end11
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %35 = bitcast i8* %34 to %termios*
  %tinfo220 = load %termios, %termios* %35, align 8
  %36 = call i32 @tcsetattr(i32 0, i32 0, %termios* %35)
  %37 = call i32 @getpid()
  %38 = call i32 @tcsetpgrp(i32 0, i32 %37)
  br label %cond_end19

"cond_jump_elif0\0A":                             ; preds = %cond_end11
  %status21 = load i32, i32* %status, align 4
  %andtmp22 = and i32 %status21, 127
  %addtmp = add nsw i32 %andtmp22, 1
  %39 = trunc i32 %addtmp to i8
  %rshifttmp = ashr i8 %39, 1
  %gttmp = icmp sgt i8 %rshifttmp, 0
  br i1 %gttmp, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %gJobs23 = load %vector__int*, %vector__int** @gJobs, align 8
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %41 = bitcast i8* %40 to i32*
  %job_num24 = load i32, i32* %41, align 4
  %42 = call i1 @"vector_replace_int7_src/vm"(%vector__int* %gJobs23, i32 %job_num24, i32 9999)
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %44 = bitcast i8* %43 to [32 x i8]*
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.90, i32 0, i32 0), [32 x i8]* %44)
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %47 = bitcast i8* %46 to %termios*
  %tinfo225 = load %termios, %termios* %47, align 8
  %48 = call i32 @tcsetattr(i32 0, i32 0, %termios* %47)
  %49 = call i32 @getpid()
  %50 = call i32 @tcsetpgrp(i32 0, i32 %49)
  br label %cond_end19

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %gJobs26 = load %vector__int*, %vector__int** @gJobs, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %52 = bitcast i8* %51 to i32*
  %job_num27 = load i32, i32* %52, align 4
  %53 = call i1 @"vector_replace_int8_src/vm"(%vector__int* %gJobs26, i32 %job_num27, i32 9999)
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  %55 = bitcast i8* %54 to %termios*
  %tinfo228 = load %termios, %termios* %55, align 8
  %56 = call i32 @tcsetattr(i32 0, i32 0, %termios* %55)
  %57 = call i32 @getpid()
  %58 = call i32 @tcsetpgrp(i32 0, i32 %57)
  br label %cond_end19

cond_end19:                                       ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then18
  br label %cond_end
}

define i32 @"vector_item_int6_src/vm"(%vector__int* %self, i32 %index, i32 %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %default_value3 = alloca i32
  store i32 %default_value, i32* %default_value3, align 4
  %4 = bitcast i32* %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %8 = bitcast i8* %7 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %8, align 8
  %9 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 1
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
  %self11 = load %vector__int*, %vector__int** %self1, align 8
  %17 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %20 = bitcast i8* %19 to %vector__int**
  %self15 = load %vector__int*, %vector__int** %20, align 8
  %21 = getelementptr inbounds %vector__int, %vector__int* %self15, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr i32, i32* %22, i32 %index16
  %element = load i32, i32* %element_address, align 4
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i32 %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load i32, i32* %default_value3, align 4
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret i32 %default_value17
}

define i1 @"vector_replace_int7_src/vm"(%vector__int* %self, i32 %index, i32 %value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %value3 = alloca i32
  store i32 %value, i32* %value3, align 4
  %4 = bitcast i32* %value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %8 = bitcast i8* %7 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %8, align 8
  %9 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 1
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
  %self11 = load %vector__int*, %vector__int** %self1, align 8
  %17 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  br i1 false, label %cond_jump_then15, label %cond_end16

cond_end14:                                       ; preds = %cond_jump_end
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret i1 false

cond_jump_then15:                                 ; preds = %cond_jump_then13
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %22 = bitcast i8* %21 to %vector__int**
  %self17 = load %vector__int*, %vector__int** %22, align 8
  %23 = getelementptr inbounds %vector__int, %vector__int* %self17, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %26 = bitcast i8* %25 to i32*
  %index18 = load i32, i32* %26, align 4
  %element_address = getelementptr i32, i32* %24, i32 %index18
  %element = load i32, i32* %element_address, align 4
  %27 = load i32, i32* %element_address, align 8
  br label %cond_end16

cond_end16:                                       ; preds = %cond_jump_then15, %cond_jump_then13
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %29 = bitcast i8* %28 to %vector__int**
  %self19 = load %vector__int*, %vector__int** %29, align 8
  %30 = getelementptr inbounds %vector__int, %vector__int* %self19, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %33 = bitcast i8* %32 to i32*
  %index20 = load i32, i32* %33, align 4
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %35 = bitcast i8* %34 to i32*
  %value21 = load i32, i32* %35, align 4
  %element_address22 = getelementptr i32, i32* %31, i32 %index20
  store i32 %value21, i32* %element_address22, align 4
  %36 = bitcast [8192 x i8*]* %lvtable to i8*
  %37 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %36, i64 65536)
  ret i1 true
}

define i1 @"vector_replace_int8_src/vm"(%vector__int* %self, i32 %index, i32 %value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %value3 = alloca i32
  store i32 %value, i32* %value3, align 4
  %4 = bitcast i32* %value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %8 = bitcast i8* %7 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %8, align 8
  %9 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 1
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
  %self11 = load %vector__int*, %vector__int** %self1, align 8
  %17 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  br i1 false, label %cond_jump_then15, label %cond_end16

cond_end14:                                       ; preds = %cond_jump_end
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret i1 false

cond_jump_then15:                                 ; preds = %cond_jump_then13
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %22 = bitcast i8* %21 to %vector__int**
  %self17 = load %vector__int*, %vector__int** %22, align 8
  %23 = getelementptr inbounds %vector__int, %vector__int* %self17, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %26 = bitcast i8* %25 to i32*
  %index18 = load i32, i32* %26, align 4
  %element_address = getelementptr i32, i32* %24, i32 %index18
  %element = load i32, i32* %element_address, align 4
  %27 = load i32, i32* %element_address, align 8
  br label %cond_end16

cond_end16:                                       ; preds = %cond_jump_then15, %cond_jump_then13
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  %29 = bitcast i8* %28 to %vector__int**
  %self19 = load %vector__int*, %vector__int** %29, align 8
  %30 = getelementptr inbounds %vector__int, %vector__int* %self19, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 495), align 8
  %33 = bitcast i8* %32 to i32*
  %index20 = load i32, i32* %33, align 4
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %35 = bitcast i8* %34 to i32*
  %value21 = load i32, i32* %35, align 4
  %element_address22 = getelementptr i32, i32* %31, i32 %index20
  store i32 %value21, i32* %element_address22, align 4
  %36 = bitcast [8192 x i8*]* %lvtable to i8*
  %37 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %36, i64 65536)
  ret i1 true
}

define i1 @param_check(%sCLParam* %method_params, i32 %num_params, %CLVALUE* %stack_ptr, %sCLType* %generics_types, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %method_params1 = alloca %sCLParam*
  store %sCLParam* %method_params, %sCLParam** %method_params1, align 8
  %2 = bitcast %sCLParam** %method_params1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %num_params2 = alloca i32
  store i32 %num_params, i32* %num_params2, align 4
  %3 = bitcast i32* %num_params2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %stack_ptr3 = alloca %CLVALUE*
  store %CLVALUE* %stack_ptr, %CLVALUE** %stack_ptr3, align 8
  %4 = bitcast %CLVALUE** %stack_ptr3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %generics_types4 = alloca %sCLType*
  store %sCLType* %generics_types, %sCLType** %generics_types4, align 8
  %5 = bitcast %sCLType** %generics_types4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %info5 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info5, align 8
  %6 = bitcast %sVMInfo** %info5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %i = alloca i32
  %7 = bitcast i32* %i to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i6 = load i32, i32* %i, align 4
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %9 = bitcast i8* %8 to i32*
  %num_params7 = load i32, i32* %9, align 4
  %letmp = icmp slt i32 %i6, %num_params7
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %11 = bitcast i8* %10 to %CLVALUE**
  %stack_ptr8 = load %CLVALUE*, %CLVALUE** %11, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %13 = bitcast i8* %12 to i32*
  %num_params9 = load i32, i32* %13, align 4
  %14 = ptrtoint %CLVALUE* %stack_ptr8 to i64
  %sext2 = sext i32 %num_params9 to i64
  %multtmp = mul nsw i64 %sext2, 4
  %subtmp = sub nsw i64 %14, %multtmp
  %15 = inttoptr i64 %subtmp to %CLVALUE*
  %i10 = load i32, i32* %i, align 4
  %16 = ptrtoint %CLVALUE* %15 to i64
  %sext1 = sext i32 %i10 to i64
  %multtmp11 = mul nsw i64 %sext1, 4
  %addtmp = add nsw i64 %16, %multtmp11
  %17 = inttoptr i64 %addtmp to %CLVALUE*
  %18 = bitcast %CLVALUE* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %obj = alloca i32
  %20 = bitcast i32* %obj to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 490), align 8
  store i32 %19, i32* %obj, align 4
  %obj12 = load i32, i32* %obj, align 4
  %21 = call %sCLHeapMem* @get_object_pointer(i32 %obj12)
  %22 = bitcast %sCLHeapMem* %21 to %sCLObject*
  %object_data = alloca %sCLObject*
  %23 = bitcast %sCLObject** %object_data to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 491), align 8
  store %sCLObject* %22, %sCLObject** %object_data, align 8
  %object_data13 = load %sCLObject*, %sCLObject** %object_data, align 8
  %24 = getelementptr inbounds %sCLObject, %sCLObject* %object_data13, i32 0, i32 0
  %25 = load %sCLType*, %sCLType** %24, align 8
  %stack_param = alloca %sCLType*
  %26 = bitcast %sCLType** %stack_param to i8*
  store i8* %26, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 492), align 8
  store %sCLType* %25, %sCLType** %stack_param, align 8
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %28 = bitcast i8* %27 to %sCLParam**
  %method_params14 = load %sCLParam*, %sCLParam** %28, align 8
  %i15 = load i32, i32* %i, align 4
  %29 = ptrtoint %sCLParam* %method_params14 to i64
  %sext116 = sext i32 %i15 to i64
  %multtmp17 = mul nsw i64 %sext116, 136
  %addtmp18 = add nsw i64 %29, %multtmp17
  %30 = inttoptr i64 %addtmp18 to %sCLParam*
  %param = alloca %sCLParam*
  %31 = bitcast %sCLParam** %param to i8*
  store i8* %31, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 493), align 8
  store %sCLParam* %30, %sCLParam** %param, align 8
  %param19 = load %sCLParam*, %sCLParam** %param, align 8
  %32 = getelementptr inbounds %sCLParam, %sCLParam* %param19, i32 0, i32 1
  %33 = load %sCLType*, %sCLType** %32, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %35 = bitcast i8* %34 to %sCLType**
  %generics_types20 = load %sCLType*, %sCLType** %35, align 8
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %37 = bitcast i8* %36 to %sVMInfo**
  %info21 = load %sVMInfo*, %sVMInfo** %37, align 8
  %38 = getelementptr inbounds %sVMInfo, %sVMInfo* %info21, i32 0, i32 3
  %39 = load %sCompileInfo*, %sCompileInfo** %38, align 8
  %40 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %39, i32 0, i32 4
  %41 = load %sParserInfo*, %sParserInfo** %40, align 8
  %42 = call %sCLType* @solve_generics(%sCLType* %33, %sCLType* %generics_types20, %sParserInfo* %41)
  %type = alloca %sCLType*
  %43 = bitcast %sCLType** %type to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 494), align 8
  store %sCLType* %42, %sCLType** %type, align 8
  %type22 = load %sCLType*, %sCLType** %type, align 8
  %stack_param23 = load %sCLType*, %sCLType** %stack_param, align 8
  %44 = call i1 @substitution_posibility(%sCLType* %type22, %sCLType* %stack_param23)
  %LOGICAL_DIANEAL = icmp eq i1 %44, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %45 = bitcast [8192 x i8*]* %lvtable to i8*
  %46 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %45, i64 65536)
  ret i1 true

cond_jump_then:                                   ; preds = %cond_then_block
  %47 = bitcast [8192 x i8*]* %lvtable to i8*
  %48 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %47, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %cond_then_block
  %i24 = load i32, i32* %i, align 4
  %addtmp25 = add nsw i32 %i24, 1
  store i32 %addtmp25, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp25, 1
  br label %loop_top_block
}

define void @ready_for_vm_stack(%CLVALUE* %stack, %CLVALUE* %parent_stack_ptr, i32 %num_params, i32 %var_num, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %stack1 = alloca %CLVALUE*
  store %CLVALUE* %stack, %CLVALUE** %stack1, align 8
  %2 = bitcast %CLVALUE** %stack1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %parent_stack_ptr2 = alloca %CLVALUE*
  store %CLVALUE* %parent_stack_ptr, %CLVALUE** %parent_stack_ptr2, align 8
  %3 = bitcast %CLVALUE** %parent_stack_ptr2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %num_params3 = alloca i32
  store i32 %num_params, i32* %num_params3, align 4
  %4 = bitcast i32* %num_params3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %var_num4 = alloca i32
  store i32 %var_num, i32* %var_num4, align 4
  %5 = bitcast i32* %var_num4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 487), align 8
  %info5 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info5, align 8
  %6 = bitcast %sVMInfo** %info5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 488), align 8
  %num_params6 = load i32, i32* %num_params3, align 4
  %gttmp = icmp sgt i32 %num_params6, 0
  br i1 %gttmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %i = alloca i32
  %7 = bitcast i32* %i to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 489), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %entry
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %i7 = load i32, i32* %i, align 4
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %11 = bitcast i8* %10 to i32*
  %num_params8 = load i32, i32* %11, align 4
  %letmp = icmp slt i32 %i7, %num_params8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 484), align 8
  %13 = bitcast i8* %12 to %CLVALUE**
  %stack9 = load %CLVALUE*, %CLVALUE** %13, align 8
  %i10 = load i32, i32* %i, align 4
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 485), align 8
  %15 = bitcast i8* %14 to %CLVALUE**
  %parent_stack_ptr11 = load %CLVALUE*, %CLVALUE** %15, align 8
  %i12 = load i32, i32* %i, align 4
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 486), align 8
  %17 = bitcast i8* %16 to i32*
  %num_params13 = load i32, i32* %17, align 4
  %subttmp = sub nsw i32 %i12, %num_params13
  %element_address = getelementptr %CLVALUE, %CLVALUE* %parent_stack_ptr11, i32 %subttmp
  %element = load %CLVALUE, %CLVALUE* %element_address, align 8
  %element_address14 = getelementptr %CLVALUE, %CLVALUE* %stack9, i32 %i10
  store %CLVALUE %element, %CLVALUE* %element_address14, align 8
  %i15 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i15, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp16 = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end
}

define i32 @"vector_length_sCLStackFrame9_src/vm"(%vector__sCLStackFrame* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %self2 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %3 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define void @"vector_push_back_sCLStackFrame10_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %item2 = alloca %sCLStackFrame
  store %sCLStackFrame %item, %sCLStackFrame* %item2, align 8
  %3 = bitcast %sCLStackFrame* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %9 = bitcast i8* %8 to %vector__sCLStackFrame**
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %9, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %14 = bitcast i8* %13 to %vector__sCLStackFrame**
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %14, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 0
  %16 = load %sCLStackFrame*, %sCLStackFrame** %15, align 8
  %items = alloca %sCLStackFrame*
  %17 = bitcast %sCLStackFrame** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLStackFrame* %16, %sCLStackFrame** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %19 = bitcast i8* %18 to %vector__sCLStackFrame**
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = zext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.91, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.92, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.93, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_string.94, i32 0, i32 0))
  %21 = bitcast i8* %20 to %sCLStackFrame*
  %22 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 0
  store %sCLStackFrame* %21, %sCLStackFrame** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end21, %entry
  %self22 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %26 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self22, i32 0, i32 0
  %27 = load %sCLStackFrame*, %sCLStackFrame** %26, align 8
  %self23 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %28 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self23, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item24 = load %sCLStackFrame, %sCLStackFrame* %item2, align 8
  %element_address25 = getelementptr %sCLStackFrame, %sCLStackFrame* %27, i32 %29
  store %sCLStackFrame %item24, %sCLStackFrame* %element_address25, align 8
  %self26 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self27 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %30 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self27, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp28 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self26, i32 0, i32 1
  store i32 %addtmp28, i32* %32, align 4
  %subttmp29 = sub nsw i32 %addtmp28, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %38 = bitcast i8* %37 to %vector__sCLStackFrame**
  %self10 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %38, align 8
  %39 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %42 = bitcast i8* %41 to %vector__sCLStackFrame**
  %self11 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %42, align 8
  %43 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self11, i32 0, i32 0
  %44 = load %sCLStackFrame*, %sCLStackFrame** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %48 = bitcast i8* %47 to %sCLStackFrame**
  %items13 = load %sCLStackFrame*, %sCLStackFrame** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %items13, i32 %i14
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %element_address15 = getelementptr %sCLStackFrame, %sCLStackFrame* %44, i32 %i12
  store %sCLStackFrame %element, %sCLStackFrame* %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %56 = bitcast i8* %55 to %vector__sCLStackFrame**
  %self17 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %sCLStackFrame*, %sCLStackFrame** %items, align 8
  %58 = load %sCLStackFrame*, %sCLStackFrame** %items, align 8
  %59 = ptrtoint %sCLStackFrame* %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %cond_then_block20, label %cond_end21

cond_then_block20:                                ; preds = %cond_end_block
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_end_block
  %61 = bitcast %sCLStackFrame* %58 to i8*
  call void @xfree(i8* %61)
  br label %cond_end
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame11_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 501), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 502), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 503), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame12_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame13_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 514), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 515), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 515), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 516), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame14_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame15_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame16_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame17_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame18_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLMethod* @"map_at_charp_sCLMethodp19_src/vm"(%map__charp_sCLMethodp* %self, i8* %key, %sCLMethod* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLMethodp*
  store %map__charp_sCLMethodp* %self, %map__charp_sCLMethodp** %self1, align 8
  %2 = bitcast %map__charp_sCLMethodp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %default_value3 = alloca %sCLMethod*
  store %sCLMethod* %default_value, %sCLMethod** %default_value3, align 8
  %4 = bitcast %sCLMethod** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLMethodp**
  %self7 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sCLMethod*, %sCLMethod** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sCLMethod* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLMethodp**
  %self9 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %28 = bitcast i8* %27 to %sCLMethod**
  %default_value28 = load %sCLMethod*, %sCLMethod** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLMethod* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLMethodp**
  %self16 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self16, i32 0, i32 2
  %34 = load %sCLMethod**, %sCLMethod*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLMethod*, %sCLMethod** %34, i32 %it17
  %element19 = load %sCLMethod*, %sCLMethod** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLMethod* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLMethodp**
  %self22 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %56 = bitcast i8* %55 to %sCLMethod**
  %default_value27 = load %sCLMethod*, %sCLMethod** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLMethod* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame20_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame21_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 509), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame22_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 511), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame23_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 512), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 513), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 513), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 514), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame24_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 506), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 507), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 508), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame25_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 500), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define i32 @"vector_length_sCLStackFrame26_src/vm"(%vector__sCLStackFrame* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 510), align 8
  %self2 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %3 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"vector_length_sCLStackFrame27_src/vm"(%vector__sCLStackFrame* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 516), align 8
  %self2 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %3 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame28_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 516), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 517), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 517), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 518), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame29_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame30_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 499), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

define %sCLStackFrame @"vector_pop_back_sCLStackFrame31_src/vm"(%vector__sCLStackFrame* %self, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 496), align 8
  %default_value2 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value2, align 8
  %3 = bitcast %sCLStackFrame* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %self3 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 497), align 8
  %7 = bitcast i8* %6 to %sCLStackFrame*
  %default_value4 = load %sCLStackFrame, %sCLStackFrame* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLStackFrame %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %10 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self5, i32 0, i32 0
  %11 = load %sCLStackFrame*, %sCLStackFrame** %10, align 8
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %12 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %11, i32 %subttmp
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %result = alloca %sCLStackFrame
  %14 = bitcast %sCLStackFrame* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 498), align 8
  store %sCLStackFrame %element, %sCLStackFrame* %result, align 8
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %self8 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sCLStackFrame, %sCLStackFrame* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLStackFrame %result10
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/vm.nc", directory: "/home/ab25cq/repo/neo-c/sevenstar")
!2 = !{}
