; ModuleID = 'Module node'
source_filename = "Module node"

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
%anon83 = type { %sCLNodeBlock*, %sCLNodeBlock* }
%anon82 = type { %sCLNode*, %sCLNodeBlock*, [128 x i32], i32 }
%anon79 = type { %sCLNode*, %sCLNodeBlock*, i32, [64 x i8*], [64 x i8*], %sCLNodeBlock* }
%anon81 = type { i32, [32 x %sCLNode*], i1 }
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
@global_string = private constant [11 x i8] c"%s %d: %s\0A\00", align 1
@global_string.1 = private constant [4 x i8] c"int\00", align 1
@global_string.2 = private constant [9 x i8] c"sCLNode%\00", align 1
@global_string.3 = private constant [12 x i8] c"src/node.nc\00", align 1
@global_string.4 = private constant [11 x i8] c"alloc_node\00", align 1
@global_string.5 = private constant [11 x i8] c"alloc_node\00", align 1
@global_string.6 = private constant [10 x i8] c"sCLNode*%\00", align 1
@global_string.7 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.8 = private constant [29 x i8] c"push_back_sCLNodep0_src/node\00", align 1
@global_string.9 = private constant [36 x i8] c"vector_push_back_sCLNodep0_src/node\00", align 1
@global_string.10 = private constant [4 x i8] c"int\00", align 1
@global_string.11 = private constant [7 x i8] c"string\00", align 1
@global_string.12 = private constant [15 x i8] c"num_params > 0\00", align 1
@global_string.13 = private constant [12 x i8] c"src/node.nc\00", align 1
@global_string.14 = private constant [14 x i8] c"invoke_method\00", align 1
@global_string.15 = private constant [4 x i8] c"any\00", align 1
@global_string.16 = private constant [4 x i8] c"any\00", align 1
@global_string.17 = private constant [72 x i8] c"invalid method prametor number.  invalid %d number instead of %d(%s.%s)\00", align 1
@global_string.18 = private constant [26 x i8] c"method not found. (%s.%s)\00", align 1
@global_string.19 = private constant [72 x i8] c"invalid method prametor number.  invalid %d number instead of %d(%s.%s)\00", align 1
@global_string.20 = private constant [34 x i8] c"method param error #%d. (%s.%s) 1\00", align 1
@global_string.21 = private constant [5 x i8] c"plus\00", align 1
@global_string.22 = private constant [65 x i8] c"The different type between left type and rigt type at + operator\00", align 1
@global_string.23 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.24 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.25 = private constant [4 x i8] c"int\00", align 1
@global_string.26 = private constant [4 x i8] c"int\00", align 1
@global_string.27 = private constant [37 x i8] c"This type is invalid for operator + \00", align 1
@global_string.28 = private constant [6 x i8] c"minus\00", align 1
@global_string.29 = private constant [65 x i8] c"The different type between left type and rigt type at - operator\00", align 1
@global_string.30 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.31 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.32 = private constant [4 x i8] c"int\00", align 1
@global_string.33 = private constant [4 x i8] c"int\00", align 1
@global_string.34 = private constant [37 x i8] c"This type is invalid for operator - \00", align 1
@global_string.35 = private constant [66 x i8] c"The different type between left type and rigt type at && operator\00", align 1
@global_string.36 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.37 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.38 = private constant [5 x i8] c"bool\00", align 1
@global_string.39 = private constant [5 x i8] c"bool\00", align 1
@global_string.40 = private constant [38 x i8] c"This type is invalid for operator && \00", align 1
@global_string.41 = private constant [66 x i8] c"The different type between left type and rigt type at || operator\00", align 1
@global_string.42 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.43 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.44 = private constant [5 x i8] c"bool\00", align 1
@global_string.45 = private constant [5 x i8] c"bool\00", align 1
@global_string.46 = private constant [38 x i8] c"This type is invalid for operator || \00", align 1
@global_string.47 = private constant [37 x i8] c"The variable named %s is not defined\00", align 1
@global_string.48 = private constant [40 x i8] c"Type error on the asignment a variabe..\00", align 1
@global_string.49 = private constant [37 x i8] c"The variable named %s is not defined\00", align 1
@global_string.50 = private constant [4 x i8] c"int\00", align 1
@global_string.51 = private constant [5 x i8] c"bool\00", align 1
@global_string.52 = private constant [5 x i8] c"bool\00", align 1
@global_string.53 = private constant [5 x i8] c"bool\00", align 1
@global_string.54 = private constant [4 x i8] c"int\00", align 1
@global_string.55 = private constant [5 x i8] c"bool\00", align 1
@global_string.56 = private constant [5 x i8] c"bool\00", align 1
@global_string.57 = private constant [5 x i8] c"bool\00", align 1
@global_string.58 = private constant [65 x i8] c"The different type between left type and rigt type at + operator\00", align 1
@global_string.59 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.60 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.61 = private constant [4 x i8] c"int\00", align 1
@global_string.62 = private constant [5 x i8] c"bool\00", align 1
@global_string.63 = private constant [37 x i8] c"This type is invalid for operator + \00", align 1
@global_string.64 = private constant [5 x i8] c"bool\00", align 1
@global_string.65 = private constant [65 x i8] c"The different type between left type and rigt type at + operator\00", align 1
@global_string.66 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.67 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.68 = private constant [4 x i8] c"int\00", align 1
@global_string.69 = private constant [37 x i8] c"This type is invalid for operator + \00", align 1
@global_string.70 = private constant [5 x i8] c"bool\00", align 1
@global_string.71 = private constant [65 x i8] c"The different type between left type and rigt type at + operator\00", align 1
@global_string.72 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.73 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.74 = private constant [4 x i8] c"int\00", align 1
@global_string.75 = private constant [5 x i8] c"bool\00", align 1
@global_string.76 = private constant [37 x i8] c"This type is invalid for operator + \00", align 1
@global_string.77 = private constant [5 x i8] c"bool\00", align 1
@global_string.78 = private constant [65 x i8] c"The different type between left type and rigt type at + operator\00", align 1
@global_string.79 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.80 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.81 = private constant [4 x i8] c"int\00", align 1
@global_string.82 = private constant [5 x i8] c"bool\00", align 1
@global_string.83 = private constant [37 x i8] c"This type is invalid for operator + \00", align 1
@global_string.84 = private constant [5 x i8] c"bool\00", align 1
@global_string.85 = private constant [6 x i8] c"equal\00", align 1
@global_string.86 = private constant [10 x i8] c"not_equal\00", align 1
@global_string.87 = private constant [8 x i8] c"greater\00", align 1
@global_string.88 = private constant [7 x i8] c"lesser\00", align 1
@global_string.89 = private constant [13 x i8] c"lesser_equal\00", align 1
@global_string.90 = private constant [14 x i8] c"greater_equal\00", align 1
@global_string.91 = private constant [5 x i8] c"bool\00", align 1
@global_string.92 = private constant [5 x i8] c"bool\00", align 1
@global_string.93 = private constant [5 x i8] c"void\00", align 1
@global_string.94 = private constant [8 x i8] c"command\00", align 1
@global_string.95 = private constant [5 x i8] c"bool\00", align 1
@global_string.96 = private constant [50 x i8] c"The condition expression of if requires bool type\00", align 1
@global_string.97 = private constant [5 x i8] c"bool\00", align 1
@global_string.98 = private constant [52 x i8] c"The condition expression of elif requires bool type\00", align 1
@global_string.99 = private constant [5 x i8] c"void\00", align 1
@global_string.100 = private constant [5 x i8] c"bool\00", align 1
@global_string.101 = private constant [53 x i8] c"The condition expression of while requires bool type\00", align 1
@global_string.102 = private constant [5 x i8] c"void\00", align 1
@global_string.103 = private constant [38 x i8] c"Invalid break. Not in the while loop.\00", align 1
@global_string.104 = private constant [23 x i8] c"overflow break number.\00", align 1
@global_string.105 = private constant [5 x i8] c"void\00", align 1
@global_string.106 = private constant [5 x i8] c"void\00", align 1
@global_string.107 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.108 = private constant [12 x i8] c"src/node.nc\00", align 1
@global_string.109 = private constant [15 x i8] c"compile_lambda\00", align 1
@global_string.110 = private constant [15 x i8] c"compile_lambda\00", align 1
@global_string.111 = private constant [19 x i8] c"block result error\00", align 1
@global_string.112 = private constant [7 x i8] c"lambda\00", align 1
@global_string.113 = private constant [4 x i8] c"any\00", align 1
@global_string.114 = private constant [15 x i8] c"num_params > 0\00", align 1
@global_string.115 = private constant [12 x i8] c"src/node.nc\00", align 1
@global_string.116 = private constant [20 x i8] c"compile_method_call\00", align 1
@global_string.117 = private constant [4 x i8] c"any\00", align 1
@global_string.118 = private constant [8 x i8] c"command\00", align 1
@global_string.119 = private constant [96 x i8] c"can't get method block for any or generics type. because of no determining to invoke method(%s)\00", align 1
@global_string.120 = private constant [26 x i8] c"method not found. (%s.%s)\00", align 1
@global_string.121 = private constant [72 x i8] c"invalid method prametor number.  invalid %d number instead of %d(%s.%s)\00", align 1
@global_string.122 = private constant [21 x i8] c"vector%<sVarTable*%>\00", align 1
@global_string.123 = private constant [12 x i8] c"src/node.nc\00", align 1
@global_string.124 = private constant [20 x i8] c"compile_method_call\00", align 1
@global_string.125 = private constant [20 x i8] c"compile_method_call\00", align 1
@global_string.126 = private constant [12 x i8] c"sVarTable*%\00", align 1
@global_string.127 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.128 = private constant [32 x i8] c"initialize_sVarTablep4_src/node\00", align 1
@global_string.129 = private constant [39 x i8] c"vector_initialize_sVarTablep4_src/node\00", align 1
@global_string.130 = private constant [34 x i8] c"method param error #%d. (%s.%s) 2\00", align 1
@global_string.131 = private constant [34 x i8] c"method param error #%d. (%s.%s) 3\00", align 1
@global_string.132 = private constant [7 x i8] c"lambda\00", align 1
@global_string.133 = private constant [31 x i8] c"Invalid block call. Type error\00", align 1
@global_string.134 = private constant [62 x i8] c"invalid block param parametor number. valid is %d. This is %d\00", align 1
@global_string.135 = private constant [23 x i8] c"block param error #%d.\00", align 1
@global_string.136 = private constant [5 x i8] c"void\00", align 1
@global_string.137 = private constant [5 x i8] c"void\00", align 1
@global_string.138 = private constant [4 x i8] c"int\00", align 1
@global_string.139 = private constant [28 x i8] c"Invalid exit parametor type\00", align 1
@global_string.140 = private constant [5 x i8] c"void\00", align 1
@global_string.141 = private constant [5 x i8] c"void\00", align 1
@global_string.142 = private constant [5 x i8] c"void\00", align 1
@global_string.143 = private constant [39 x i8] c"There is no field named %s in class %s\00", align 1
@global_string.144 = private constant [30 x i8] c"Invalid type storing field %s\00", align 1
@global_string.145 = private constant [39 x i8] c"There is no field named %s in class %s\00", align 1
@global_string.146 = private constant [39 x i8] c"There is no field named %s in class %s\00", align 1
@global_string.147 = private constant [5 x i8] c"void\00", align 1
@global_string.148 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.149 = private constant [12 x i8] c"src/node.nc\00", align 1
@global_string.150 = private constant [23 x i8] c"compile_try_expression\00", align 1
@global_string.151 = private constant [23 x i8] c"compile_try_expression\00", align 1
@global_string.152 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.153 = private constant [12 x i8] c"src/node.nc\00", align 1
@global_string.154 = private constant [23 x i8] c"compile_try_expression\00", align 1
@global_string.155 = private constant [23 x i8] c"compile_try_expression\00", align 1
@global_string.156 = private constant [5 x i8] c"void\00", align 1
@global_string.157 = private constant [5 x i8] c"bool\00", align 1
@global_string.158 = private constant [37 x i8] c"Require bool type for logical denial\00", align 1
@global_string.159 = private constant [5 x i8] c"bool\00", align 1
@global_string.160 = private constant [4 x i8] c"any\00", align 1
@global_string.161 = private constant [5 x i8] c"void\00", align 1
@global_string.162 = private constant [29 x i8] c"unexpected node type. No. %d\00", align 1

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

define i1 @compile(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %eqtmpX = icmp eq %sCLNode* %node3, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret i1 true

cond_end:                                         ; preds = %entry
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %eqtmpY = icmp eq i32 %7, 0
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block415, %cond_end419, %cond_end412, %cond_end403, %cond_end394, %cond_end385, %cond_end376, %cond_end367, %cond_end358, %cond_end349, %cond_end340, %cond_end331, %cond_end322, %cond_end313, %cond_end304, %cond_end295, %cond_end286, %cond_end277, %cond_end268, %cond_end259, %cond_end250, %cond_end241, %cond_end232, %cond_end223, %cond_end214, %cond_end205, %cond_end196, %cond_end187, %cond_end178, %cond_end169, %cond_end160, %cond_end151, %cond_end142, %cond_end133, %cond_end124, %cond_end115, %cond_end106, %cond_end97, %cond_end88, %cond_end79, %cond_end70, %cond_end61, %cond_end52, %cond_end43, %cond_end34, %cond_end25, %cond_end16, %cond_end8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 true

cond_then_block:                                  ; preds = %cond_end
  %node5 = load %sCLNode*, %sCLNode** %node1, align 8
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = call i1 @compile_int_value(%sCLNode* %node5, %sCompileInfo* %info6)
  %LOGICAL_DIANEAL = icmp eq i1 %10, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then7, label %cond_end8

cond_else_block:                                  ; preds = %after_break, %cond_end
  %eqtmpY11 = icmp eq i32 %7, 2
  br i1 %eqtmpY11, label %cond_then_block9, label %cond_else_block10

cond_jump_then7:                                  ; preds = %cond_then_block
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret i1 false

cond_end8:                                        ; preds = %cond_then_block
  br label %end_block

after_break:                                      ; No predecessors!
  br label %cond_else_block

cond_then_block9:                                 ; preds = %cond_else_block
  %node12 = load %sCLNode*, %sCLNode** %node1, align 8
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %13 = call i1 @compile_plus(%sCLNode* %node12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_else_block10:                                ; preds = %after_break17, %cond_else_block
  %eqtmpY20 = icmp eq i32 %7, 3
  br i1 %eqtmpY20, label %cond_then_block18, label %cond_else_block19

cond_jump_then15:                                 ; preds = %cond_then_block9
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end16:                                       ; preds = %cond_then_block9
  br label %end_block

after_break17:                                    ; No predecessors!
  br label %cond_else_block10

cond_then_block18:                                ; preds = %cond_else_block10
  %node21 = load %sCLNode*, %sCLNode** %node1, align 8
  %info22 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %16 = call i1 @compile_primitive_plus(%sCLNode* %node21, %sCompileInfo* %info22)
  %LOGICAL_DIANEAL23 = icmp eq i1 %16, false
  br i1 %LOGICAL_DIANEAL23, label %cond_jump_then24, label %cond_end25

cond_else_block19:                                ; preds = %after_break26, %cond_else_block10
  %eqtmpY29 = icmp eq i32 %7, 4
  br i1 %eqtmpY29, label %cond_then_block27, label %cond_else_block28

cond_jump_then24:                                 ; preds = %cond_then_block18
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 false

cond_end25:                                       ; preds = %cond_then_block18
  br label %end_block

after_break26:                                    ; No predecessors!
  br label %cond_else_block19

cond_then_block27:                                ; preds = %cond_else_block19
  %node30 = load %sCLNode*, %sCLNode** %node1, align 8
  %info31 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %19 = call i1 @compile_minus(%sCLNode* %node30, %sCompileInfo* %info31)
  %LOGICAL_DIANEAL32 = icmp eq i1 %19, false
  br i1 %LOGICAL_DIANEAL32, label %cond_jump_then33, label %cond_end34

cond_else_block28:                                ; preds = %after_break35, %cond_else_block19
  %eqtmpY38 = icmp eq i32 %7, 5
  br i1 %eqtmpY38, label %cond_then_block36, label %cond_else_block37

cond_jump_then33:                                 ; preds = %cond_then_block27
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret i1 false

cond_end34:                                       ; preds = %cond_then_block27
  br label %end_block

after_break35:                                    ; No predecessors!
  br label %cond_else_block28

cond_then_block36:                                ; preds = %cond_else_block28
  %node39 = load %sCLNode*, %sCLNode** %node1, align 8
  %info40 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %22 = call i1 @compile_primitive_minus(%sCLNode* %node39, %sCompileInfo* %info40)
  %LOGICAL_DIANEAL41 = icmp eq i1 %22, false
  br i1 %LOGICAL_DIANEAL41, label %cond_jump_then42, label %cond_end43

cond_else_block37:                                ; preds = %after_break44, %cond_else_block28
  %eqtmpY47 = icmp eq i32 %7, 6
  br i1 %eqtmpY47, label %cond_then_block45, label %cond_else_block46

cond_jump_then42:                                 ; preds = %cond_then_block36
  %23 = bitcast [8192 x i8*]* %lvtable to i8*
  %24 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %23, i64 65536)
  ret i1 false

cond_end43:                                       ; preds = %cond_then_block36
  br label %end_block

after_break44:                                    ; No predecessors!
  br label %cond_else_block37

cond_then_block45:                                ; preds = %cond_else_block37
  %node48 = load %sCLNode*, %sCLNode** %node1, align 8
  %info49 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %25 = call i1 @compile_store_variable(%sCLNode* %node48, %sCompileInfo* %info49)
  %LOGICAL_DIANEAL50 = icmp eq i1 %25, false
  br i1 %LOGICAL_DIANEAL50, label %cond_jump_then51, label %cond_end52

cond_else_block46:                                ; preds = %after_break53, %cond_else_block37
  %eqtmpY56 = icmp eq i32 %7, 7
  br i1 %eqtmpY56, label %cond_then_block54, label %cond_else_block55

cond_jump_then51:                                 ; preds = %cond_then_block45
  %26 = bitcast [8192 x i8*]* %lvtable to i8*
  %27 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %26, i64 65536)
  ret i1 false

cond_end52:                                       ; preds = %cond_then_block45
  br label %end_block

after_break53:                                    ; No predecessors!
  br label %cond_else_block46

cond_then_block54:                                ; preds = %cond_else_block46
  %node57 = load %sCLNode*, %sCLNode** %node1, align 8
  %info58 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %28 = call i1 @compile_load_variable(%sCLNode* %node57, %sCompileInfo* %info58)
  %LOGICAL_DIANEAL59 = icmp eq i1 %28, false
  br i1 %LOGICAL_DIANEAL59, label %cond_jump_then60, label %cond_end61

cond_else_block55:                                ; preds = %after_break62, %cond_else_block46
  %eqtmpY65 = icmp eq i32 %7, 8
  br i1 %eqtmpY65, label %cond_then_block63, label %cond_else_block64

cond_jump_then60:                                 ; preds = %cond_then_block54
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 false

cond_end61:                                       ; preds = %cond_then_block54
  br label %end_block

after_break62:                                    ; No predecessors!
  br label %cond_else_block55

cond_then_block63:                                ; preds = %cond_else_block55
  %node66 = load %sCLNode*, %sCLNode** %node1, align 8
  %info67 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = call i1 @compile_equal(%sCLNode* %node66, %sCompileInfo* %info67)
  %LOGICAL_DIANEAL68 = icmp eq i1 %31, false
  br i1 %LOGICAL_DIANEAL68, label %cond_jump_then69, label %cond_end70

cond_else_block64:                                ; preds = %after_break71, %cond_else_block55
  %eqtmpY74 = icmp eq i32 %7, 10
  br i1 %eqtmpY74, label %cond_then_block72, label %cond_else_block73

cond_jump_then69:                                 ; preds = %cond_then_block63
  %32 = bitcast [8192 x i8*]* %lvtable to i8*
  %33 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %32, i64 65536)
  ret i1 false

cond_end70:                                       ; preds = %cond_then_block63
  br label %end_block

after_break71:                                    ; No predecessors!
  br label %cond_else_block64

cond_then_block72:                                ; preds = %cond_else_block64
  %node75 = load %sCLNode*, %sCLNode** %node1, align 8
  %info76 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %34 = call i1 @compile_not_equal(%sCLNode* %node75, %sCompileInfo* %info76)
  %LOGICAL_DIANEAL77 = icmp eq i1 %34, false
  br i1 %LOGICAL_DIANEAL77, label %cond_jump_then78, label %cond_end79

cond_else_block73:                                ; preds = %after_break80, %cond_else_block64
  %eqtmpY83 = icmp eq i32 %7, 27
  br i1 %eqtmpY83, label %cond_then_block81, label %cond_else_block82

cond_jump_then78:                                 ; preds = %cond_then_block72
  %35 = bitcast [8192 x i8*]* %lvtable to i8*
  %36 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %35, i64 65536)
  ret i1 false

cond_end79:                                       ; preds = %cond_then_block72
  br label %end_block

after_break80:                                    ; No predecessors!
  br label %cond_else_block73

cond_then_block81:                                ; preds = %cond_else_block73
  %node84 = load %sCLNode*, %sCLNode** %node1, align 8
  %info85 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %37 = call i1 @compile_greater(%sCLNode* %node84, %sCompileInfo* %info85)
  %LOGICAL_DIANEAL86 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL86, label %cond_jump_then87, label %cond_end88

cond_else_block82:                                ; preds = %after_break89, %cond_else_block73
  %eqtmpY92 = icmp eq i32 %7, 33
  br i1 %eqtmpY92, label %cond_then_block90, label %cond_else_block91

cond_jump_then87:                                 ; preds = %cond_then_block81
  %38 = bitcast [8192 x i8*]* %lvtable to i8*
  %39 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %38, i64 65536)
  ret i1 false

cond_end88:                                       ; preds = %cond_then_block81
  br label %end_block

after_break89:                                    ; No predecessors!
  br label %cond_else_block82

cond_then_block90:                                ; preds = %cond_else_block82
  %node93 = load %sCLNode*, %sCLNode** %node1, align 8
  %info94 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %40 = call i1 @compile_greater_equal(%sCLNode* %node93, %sCompileInfo* %info94)
  %LOGICAL_DIANEAL95 = icmp eq i1 %40, false
  br i1 %LOGICAL_DIANEAL95, label %cond_jump_then96, label %cond_end97

cond_else_block91:                                ; preds = %after_break98, %cond_else_block82
  %eqtmpY101 = icmp eq i32 %7, 31
  br i1 %eqtmpY101, label %cond_then_block99, label %cond_else_block100

cond_jump_then96:                                 ; preds = %cond_then_block90
  %41 = bitcast [8192 x i8*]* %lvtable to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret i1 false

cond_end97:                                       ; preds = %cond_then_block90
  br label %end_block

after_break98:                                    ; No predecessors!
  br label %cond_else_block91

cond_then_block99:                                ; preds = %cond_else_block91
  %node102 = load %sCLNode*, %sCLNode** %node1, align 8
  %info103 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %43 = call i1 @compile_lesser(%sCLNode* %node102, %sCompileInfo* %info103)
  %LOGICAL_DIANEAL104 = icmp eq i1 %43, false
  br i1 %LOGICAL_DIANEAL104, label %cond_jump_then105, label %cond_end106

cond_else_block100:                               ; preds = %after_break107, %cond_else_block91
  %eqtmpY110 = icmp eq i32 %7, 35
  br i1 %eqtmpY110, label %cond_then_block108, label %cond_else_block109

cond_jump_then105:                                ; preds = %cond_then_block99
  %44 = bitcast [8192 x i8*]* %lvtable to i8*
  %45 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %44, i64 65536)
  ret i1 false

cond_end106:                                      ; preds = %cond_then_block99
  br label %end_block

after_break107:                                   ; No predecessors!
  br label %cond_else_block100

cond_then_block108:                               ; preds = %cond_else_block100
  %node111 = load %sCLNode*, %sCLNode** %node1, align 8
  %info112 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %46 = call i1 @compile_lesser_equal(%sCLNode* %node111, %sCompileInfo* %info112)
  %LOGICAL_DIANEAL113 = icmp eq i1 %46, false
  br i1 %LOGICAL_DIANEAL113, label %cond_jump_then114, label %cond_end115

cond_else_block109:                               ; preds = %after_break116, %cond_else_block100
  %eqtmpY119 = icmp eq i32 %7, 9
  br i1 %eqtmpY119, label %cond_then_block117, label %cond_else_block118

cond_jump_then114:                                ; preds = %cond_then_block108
  %47 = bitcast [8192 x i8*]* %lvtable to i8*
  %48 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %47, i64 65536)
  ret i1 false

cond_end115:                                      ; preds = %cond_then_block108
  br label %end_block

after_break116:                                   ; No predecessors!
  br label %cond_else_block109

cond_then_block117:                               ; preds = %cond_else_block109
  %node120 = load %sCLNode*, %sCLNode** %node1, align 8
  %info121 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %49 = call i1 @compile_primitive_equal(%sCLNode* %node120, %sCompileInfo* %info121)
  %LOGICAL_DIANEAL122 = icmp eq i1 %49, false
  br i1 %LOGICAL_DIANEAL122, label %cond_jump_then123, label %cond_end124

cond_else_block118:                               ; preds = %after_break125, %cond_else_block109
  %eqtmpY128 = icmp eq i32 %7, 11
  br i1 %eqtmpY128, label %cond_then_block126, label %cond_else_block127

cond_jump_then123:                                ; preds = %cond_then_block117
  %50 = bitcast [8192 x i8*]* %lvtable to i8*
  %51 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %50, i64 65536)
  ret i1 false

cond_end124:                                      ; preds = %cond_then_block117
  br label %end_block

after_break125:                                   ; No predecessors!
  br label %cond_else_block118

cond_then_block126:                               ; preds = %cond_else_block118
  %node129 = load %sCLNode*, %sCLNode** %node1, align 8
  %info130 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %52 = call i1 @compile_primitive_not_equal(%sCLNode* %node129, %sCompileInfo* %info130)
  %LOGICAL_DIANEAL131 = icmp eq i1 %52, false
  br i1 %LOGICAL_DIANEAL131, label %cond_jump_then132, label %cond_end133

cond_else_block127:                               ; preds = %after_break134, %cond_else_block118
  %eqtmpY137 = icmp eq i32 %7, 32
  br i1 %eqtmpY137, label %cond_then_block135, label %cond_else_block136

cond_jump_then132:                                ; preds = %cond_then_block126
  %53 = bitcast [8192 x i8*]* %lvtable to i8*
  %54 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %53, i64 65536)
  ret i1 false

cond_end133:                                      ; preds = %cond_then_block126
  br label %end_block

after_break134:                                   ; No predecessors!
  br label %cond_else_block127

cond_then_block135:                               ; preds = %cond_else_block127
  %node138 = load %sCLNode*, %sCLNode** %node1, align 8
  %info139 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %55 = call i1 @compile_primitive_lesser(%sCLNode* %node138, %sCompileInfo* %info139)
  %LOGICAL_DIANEAL140 = icmp eq i1 %55, false
  br i1 %LOGICAL_DIANEAL140, label %cond_jump_then141, label %cond_end142

cond_else_block136:                               ; preds = %after_break143, %cond_else_block127
  %eqtmpY146 = icmp eq i32 %7, 36
  br i1 %eqtmpY146, label %cond_then_block144, label %cond_else_block145

cond_jump_then141:                                ; preds = %cond_then_block135
  %56 = bitcast [8192 x i8*]* %lvtable to i8*
  %57 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %56, i64 65536)
  ret i1 false

cond_end142:                                      ; preds = %cond_then_block135
  br label %end_block

after_break143:                                   ; No predecessors!
  br label %cond_else_block136

cond_then_block144:                               ; preds = %cond_else_block136
  %node147 = load %sCLNode*, %sCLNode** %node1, align 8
  %info148 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %58 = call i1 @compile_primitive_lesser_equal(%sCLNode* %node147, %sCompileInfo* %info148)
  %LOGICAL_DIANEAL149 = icmp eq i1 %58, false
  br i1 %LOGICAL_DIANEAL149, label %cond_jump_then150, label %cond_end151

cond_else_block145:                               ; preds = %after_break152, %cond_else_block136
  %eqtmpY155 = icmp eq i32 %7, 30
  br i1 %eqtmpY155, label %cond_then_block153, label %cond_else_block154

cond_jump_then150:                                ; preds = %cond_then_block144
  %59 = bitcast [8192 x i8*]* %lvtable to i8*
  %60 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %59, i64 65536)
  ret i1 false

cond_end151:                                      ; preds = %cond_then_block144
  br label %end_block

after_break152:                                   ; No predecessors!
  br label %cond_else_block145

cond_then_block153:                               ; preds = %cond_else_block145
  %node156 = load %sCLNode*, %sCLNode** %node1, align 8
  %info157 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %61 = call i1 @compile_primitive_greater(%sCLNode* %node156, %sCompileInfo* %info157)
  %LOGICAL_DIANEAL158 = icmp eq i1 %61, false
  br i1 %LOGICAL_DIANEAL158, label %cond_jump_then159, label %cond_end160

cond_else_block154:                               ; preds = %after_break161, %cond_else_block145
  %eqtmpY164 = icmp eq i32 %7, 34
  br i1 %eqtmpY164, label %cond_then_block162, label %cond_else_block163

cond_jump_then159:                                ; preds = %cond_then_block153
  %62 = bitcast [8192 x i8*]* %lvtable to i8*
  %63 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %62, i64 65536)
  ret i1 false

cond_end160:                                      ; preds = %cond_then_block153
  br label %end_block

after_break161:                                   ; No predecessors!
  br label %cond_else_block154

cond_then_block162:                               ; preds = %cond_else_block154
  %node165 = load %sCLNode*, %sCLNode** %node1, align 8
  %info166 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %64 = call i1 @compile_primitive_greater_equal(%sCLNode* %node165, %sCompileInfo* %info166)
  %LOGICAL_DIANEAL167 = icmp eq i1 %64, false
  br i1 %LOGICAL_DIANEAL167, label %cond_jump_then168, label %cond_end169

cond_else_block163:                               ; preds = %after_break170, %cond_else_block154
  %eqtmpY173 = icmp eq i32 %7, 1
  br i1 %eqtmpY173, label %cond_then_block171, label %cond_else_block172

cond_jump_then168:                                ; preds = %cond_then_block162
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret i1 false

cond_end169:                                      ; preds = %cond_then_block162
  br label %end_block

after_break170:                                   ; No predecessors!
  br label %cond_else_block163

cond_then_block171:                               ; preds = %cond_else_block163
  %node174 = load %sCLNode*, %sCLNode** %node1, align 8
  %info175 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %67 = call i1 @compile_strig_value(%sCLNode* %node174, %sCompileInfo* %info175)
  %LOGICAL_DIANEAL176 = icmp eq i1 %67, false
  br i1 %LOGICAL_DIANEAL176, label %cond_jump_then177, label %cond_end178

cond_else_block172:                               ; preds = %after_break179, %cond_else_block163
  %eqtmpY182 = icmp eq i32 %7, 12
  br i1 %eqtmpY182, label %cond_then_block180, label %cond_else_block181

cond_jump_then177:                                ; preds = %cond_then_block171
  %68 = bitcast [8192 x i8*]* %lvtable to i8*
  %69 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %68, i64 65536)
  ret i1 false

cond_end178:                                      ; preds = %cond_then_block171
  br label %end_block

after_break179:                                   ; No predecessors!
  br label %cond_else_block172

cond_then_block180:                               ; preds = %cond_else_block172
  %node183 = load %sCLNode*, %sCLNode** %node1, align 8
  %info184 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %70 = call i1 @compile_true_value(%sCLNode* %node183, %sCompileInfo* %info184)
  %LOGICAL_DIANEAL185 = icmp eq i1 %70, false
  br i1 %LOGICAL_DIANEAL185, label %cond_jump_then186, label %cond_end187

cond_else_block181:                               ; preds = %after_break188, %cond_else_block172
  %eqtmpY191 = icmp eq i32 %7, 13
  br i1 %eqtmpY191, label %cond_then_block189, label %cond_else_block190

cond_jump_then186:                                ; preds = %cond_then_block180
  %71 = bitcast [8192 x i8*]* %lvtable to i8*
  %72 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %71, i64 65536)
  ret i1 false

cond_end187:                                      ; preds = %cond_then_block180
  br label %end_block

after_break188:                                   ; No predecessors!
  br label %cond_else_block181

cond_then_block189:                               ; preds = %cond_else_block181
  %node192 = load %sCLNode*, %sCLNode** %node1, align 8
  %info193 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %73 = call i1 @compile_false_value(%sCLNode* %node192, %sCompileInfo* %info193)
  %LOGICAL_DIANEAL194 = icmp eq i1 %73, false
  br i1 %LOGICAL_DIANEAL194, label %cond_jump_then195, label %cond_end196

cond_else_block190:                               ; preds = %after_break197, %cond_else_block181
  %eqtmpY200 = icmp eq i32 %7, 42
  br i1 %eqtmpY200, label %cond_then_block198, label %cond_else_block199

cond_jump_then195:                                ; preds = %cond_then_block189
  %74 = bitcast [8192 x i8*]* %lvtable to i8*
  %75 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %74, i64 65536)
  ret i1 false

cond_end196:                                      ; preds = %cond_then_block189
  br label %end_block

after_break197:                                   ; No predecessors!
  br label %cond_else_block190

cond_then_block198:                               ; preds = %cond_else_block190
  %node201 = load %sCLNode*, %sCLNode** %node1, align 8
  %info202 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %76 = call i1 @compile_null_value(%sCLNode* %node201, %sCompileInfo* %info202)
  %LOGICAL_DIANEAL203 = icmp eq i1 %76, false
  br i1 %LOGICAL_DIANEAL203, label %cond_jump_then204, label %cond_end205

cond_else_block199:                               ; preds = %after_break206, %cond_else_block190
  %eqtmpY209 = icmp eq i32 %7, 14
  br i1 %eqtmpY209, label %cond_then_block207, label %cond_else_block208

cond_jump_then204:                                ; preds = %cond_then_block198
  %77 = bitcast [8192 x i8*]* %lvtable to i8*
  %78 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %77, i64 65536)
  ret i1 false

cond_end205:                                      ; preds = %cond_then_block198
  br label %end_block

after_break206:                                   ; No predecessors!
  br label %cond_else_block199

cond_then_block207:                               ; preds = %cond_else_block199
  %node210 = load %sCLNode*, %sCLNode** %node1, align 8
  %info211 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %79 = call i1 @compile_if_expression(%sCLNode* %node210, %sCompileInfo* %info211)
  %LOGICAL_DIANEAL212 = icmp eq i1 %79, false
  br i1 %LOGICAL_DIANEAL212, label %cond_jump_then213, label %cond_end214

cond_else_block208:                               ; preds = %after_break215, %cond_else_block199
  %eqtmpY218 = icmp eq i32 %7, 37
  br i1 %eqtmpY218, label %cond_then_block216, label %cond_else_block217

cond_jump_then213:                                ; preds = %cond_then_block207
  %80 = bitcast [8192 x i8*]* %lvtable to i8*
  %81 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %80, i64 65536)
  ret i1 false

cond_end214:                                      ; preds = %cond_then_block207
  br label %end_block

after_break215:                                   ; No predecessors!
  br label %cond_else_block208

cond_then_block216:                               ; preds = %cond_else_block208
  %node219 = load %sCLNode*, %sCLNode** %node1, align 8
  %info220 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %82 = call i1 @compile_while_expression(%sCLNode* %node219, %sCompileInfo* %info220)
  %LOGICAL_DIANEAL221 = icmp eq i1 %82, false
  br i1 %LOGICAL_DIANEAL221, label %cond_jump_then222, label %cond_end223

cond_else_block217:                               ; preds = %after_break224, %cond_else_block208
  %eqtmpY227 = icmp eq i32 %7, 15
  br i1 %eqtmpY227, label %cond_then_block225, label %cond_else_block226

cond_jump_then222:                                ; preds = %cond_then_block216
  %83 = bitcast [8192 x i8*]* %lvtable to i8*
  %84 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %83, i64 65536)
  ret i1 false

cond_end223:                                      ; preds = %cond_then_block216
  br label %end_block

after_break224:                                   ; No predecessors!
  br label %cond_else_block217

cond_then_block225:                               ; preds = %cond_else_block217
  %node228 = load %sCLNode*, %sCLNode** %node1, align 8
  %info229 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %85 = call i1 @compile_lambda(%sCLNode* %node228, %sCompileInfo* %info229)
  %LOGICAL_DIANEAL230 = icmp eq i1 %85, false
  br i1 %LOGICAL_DIANEAL230, label %cond_jump_then231, label %cond_end232

cond_else_block226:                               ; preds = %after_break233, %cond_else_block217
  %eqtmpY236 = icmp eq i32 %7, 21
  br i1 %eqtmpY236, label %cond_then_block234, label %cond_else_block235

cond_jump_then231:                                ; preds = %cond_then_block225
  %86 = bitcast [8192 x i8*]* %lvtable to i8*
  %87 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %86, i64 65536)
  ret i1 false

cond_end232:                                      ; preds = %cond_then_block225
  br label %end_block

after_break233:                                   ; No predecessors!
  br label %cond_else_block226

cond_then_block234:                               ; preds = %cond_else_block226
  %node237 = load %sCLNode*, %sCLNode** %node1, align 8
  %info238 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %88 = call i1 @compile_lambda(%sCLNode* %node237, %sCompileInfo* %info238)
  %LOGICAL_DIANEAL239 = icmp eq i1 %88, false
  br i1 %LOGICAL_DIANEAL239, label %cond_jump_then240, label %cond_end241

cond_else_block235:                               ; preds = %after_break242, %cond_else_block226
  %eqtmpY245 = icmp eq i32 %7, 16
  br i1 %eqtmpY245, label %cond_then_block243, label %cond_else_block244

cond_jump_then240:                                ; preds = %cond_then_block234
  %89 = bitcast [8192 x i8*]* %lvtable to i8*
  %90 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %89, i64 65536)
  ret i1 false

cond_end241:                                      ; preds = %cond_then_block234
  br label %end_block

after_break242:                                   ; No predecessors!
  br label %cond_else_block235

cond_then_block243:                               ; preds = %cond_else_block235
  %node246 = load %sCLNode*, %sCLNode** %node1, align 8
  %info247 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %91 = call i1 @compile_class(%sCLNode* %node246, %sCompileInfo* %info247)
  %LOGICAL_DIANEAL248 = icmp eq i1 %91, false
  br i1 %LOGICAL_DIANEAL248, label %cond_jump_then249, label %cond_end250

cond_else_block244:                               ; preds = %after_break251, %cond_else_block235
  %eqtmpY254 = icmp eq i32 %7, 17
  br i1 %eqtmpY254, label %cond_then_block252, label %cond_else_block253

cond_jump_then249:                                ; preds = %cond_then_block243
  %92 = bitcast [8192 x i8*]* %lvtable to i8*
  %93 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %92, i64 65536)
  ret i1 false

cond_end250:                                      ; preds = %cond_then_block243
  br label %end_block

after_break251:                                   ; No predecessors!
  br label %cond_else_block244

cond_then_block252:                               ; preds = %cond_else_block244
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %95 = bitcast i8* %94 to %sCLNode**
  %node255 = load %sCLNode*, %sCLNode** %95, align 8
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %97 = bitcast i8* %96 to %sCompileInfo**
  %info256 = load %sCompileInfo*, %sCompileInfo** %97, align 8
  %98 = call i1 @compile_create_object(%sCLNode* %node255, %sCompileInfo* %info256)
  %LOGICAL_DIANEAL257 = icmp eq i1 %98, false
  br i1 %LOGICAL_DIANEAL257, label %cond_jump_then258, label %cond_end259

cond_else_block253:                               ; preds = %after_break260, %cond_else_block244
  %eqtmpY263 = icmp eq i32 %7, 18
  br i1 %eqtmpY263, label %cond_then_block261, label %cond_else_block262

cond_jump_then258:                                ; preds = %cond_then_block252
  %99 = bitcast [8192 x i8*]* %lvtable to i8*
  %100 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %99, i64 65536)
  ret i1 false

cond_end259:                                      ; preds = %cond_then_block252
  br label %end_block

after_break260:                                   ; No predecessors!
  br label %cond_else_block253

cond_then_block261:                               ; preds = %cond_else_block253
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %102 = bitcast i8* %101 to %sCLNode**
  %node264 = load %sCLNode*, %sCLNode** %102, align 8
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %104 = bitcast i8* %103 to %sCompileInfo**
  %info265 = load %sCompileInfo*, %sCompileInfo** %104, align 8
  %105 = call i1 @compile_method_call(%sCLNode* %node264, %sCompileInfo* %info265)
  %LOGICAL_DIANEAL266 = icmp eq i1 %105, false
  br i1 %LOGICAL_DIANEAL266, label %cond_jump_then267, label %cond_end268

cond_else_block262:                               ; preds = %after_break269, %cond_else_block253
  %eqtmpY272 = icmp eq i32 %7, 20
  br i1 %eqtmpY272, label %cond_then_block270, label %cond_else_block271

cond_jump_then267:                                ; preds = %cond_then_block261
  %106 = bitcast [8192 x i8*]* %lvtable to i8*
  %107 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %106, i64 65536)
  ret i1 false

cond_end268:                                      ; preds = %cond_then_block261
  br label %end_block

after_break269:                                   ; No predecessors!
  br label %cond_else_block262

cond_then_block270:                               ; preds = %cond_else_block262
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %109 = bitcast i8* %108 to %sCLNode**
  %node273 = load %sCLNode*, %sCLNode** %109, align 8
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %111 = bitcast i8* %110 to %sCompileInfo**
  %info274 = load %sCompileInfo*, %sCompileInfo** %111, align 8
  %112 = call i1 @compile_block_object_call(%sCLNode* %node273, %sCompileInfo* %info274)
  %LOGICAL_DIANEAL275 = icmp eq i1 %112, false
  br i1 %LOGICAL_DIANEAL275, label %cond_jump_then276, label %cond_end277

cond_else_block271:                               ; preds = %after_break278, %cond_else_block262
  %eqtmpY281 = icmp eq i32 %7, 22
  br i1 %eqtmpY281, label %cond_then_block279, label %cond_else_block280

cond_jump_then276:                                ; preds = %cond_then_block270
  %113 = bitcast [8192 x i8*]* %lvtable to i8*
  %114 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %113, i64 65536)
  ret i1 false

cond_end277:                                      ; preds = %cond_then_block270
  br label %end_block

after_break278:                                   ; No predecessors!
  br label %cond_else_block271

cond_then_block279:                               ; preds = %cond_else_block271
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %116 = bitcast i8* %115 to %sCLNode**
  %node282 = load %sCLNode*, %sCLNode** %116, align 8
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %118 = bitcast i8* %117 to %sCompileInfo**
  %info283 = load %sCompileInfo*, %sCompileInfo** %118, align 8
  %119 = call i1 @compile_jobs(%sCLNode* %node282, %sCompileInfo* %info283)
  %LOGICAL_DIANEAL284 = icmp eq i1 %119, false
  br i1 %LOGICAL_DIANEAL284, label %cond_jump_then285, label %cond_end286

cond_else_block280:                               ; preds = %after_break287, %cond_else_block271
  %eqtmpY290 = icmp eq i32 %7, 23
  br i1 %eqtmpY290, label %cond_then_block288, label %cond_else_block289

cond_jump_then285:                                ; preds = %cond_then_block279
  %120 = bitcast [8192 x i8*]* %lvtable to i8*
  %121 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %120, i64 65536)
  ret i1 false

cond_end286:                                      ; preds = %cond_then_block279
  br label %end_block

after_break287:                                   ; No predecessors!
  br label %cond_else_block280

cond_then_block288:                               ; preds = %cond_else_block280
  %node291 = load %sCLNode*, %sCLNode** %node1, align 8
  %info292 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %122 = call i1 @compile_fg(%sCLNode* %node291, %sCompileInfo* %info292)
  %LOGICAL_DIANEAL293 = icmp eq i1 %122, false
  br i1 %LOGICAL_DIANEAL293, label %cond_jump_then294, label %cond_end295

cond_else_block289:                               ; preds = %after_break296, %cond_else_block280
  %eqtmpY299 = icmp eq i32 %7, 25
  br i1 %eqtmpY299, label %cond_then_block297, label %cond_else_block298

cond_jump_then294:                                ; preds = %cond_then_block288
  %123 = bitcast [8192 x i8*]* %lvtable to i8*
  %124 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %123, i64 65536)
  ret i1 false

cond_end295:                                      ; preds = %cond_then_block288
  br label %end_block

after_break296:                                   ; No predecessors!
  br label %cond_else_block289

cond_then_block297:                               ; preds = %cond_else_block289
  %node300 = load %sCLNode*, %sCLNode** %node1, align 8
  %info301 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %125 = call i1 @compile_load_field(%sCLNode* %node300, %sCompileInfo* %info301)
  %LOGICAL_DIANEAL302 = icmp eq i1 %125, false
  br i1 %LOGICAL_DIANEAL302, label %cond_jump_then303, label %cond_end304

cond_else_block298:                               ; preds = %after_break305, %cond_else_block289
  %eqtmpY308 = icmp eq i32 %7, 24
  br i1 %eqtmpY308, label %cond_then_block306, label %cond_else_block307

cond_jump_then303:                                ; preds = %cond_then_block297
  %126 = bitcast [8192 x i8*]* %lvtable to i8*
  %127 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %126, i64 65536)
  ret i1 false

cond_end304:                                      ; preds = %cond_then_block297
  br label %end_block

after_break305:                                   ; No predecessors!
  br label %cond_else_block298

cond_then_block306:                               ; preds = %cond_else_block298
  %node309 = load %sCLNode*, %sCLNode** %node1, align 8
  %info310 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %128 = call i1 @compile_store_field(%sCLNode* %node309, %sCompileInfo* %info310)
  %LOGICAL_DIANEAL311 = icmp eq i1 %128, false
  br i1 %LOGICAL_DIANEAL311, label %cond_jump_then312, label %cond_end313

cond_else_block307:                               ; preds = %after_break314, %cond_else_block298
  %eqtmpY317 = icmp eq i32 %7, 26
  br i1 %eqtmpY317, label %cond_then_block315, label %cond_else_block316

cond_jump_then312:                                ; preds = %cond_then_block306
  %129 = bitcast [8192 x i8*]* %lvtable to i8*
  %130 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %129, i64 65536)
  ret i1 false

cond_end313:                                      ; preds = %cond_then_block306
  br label %end_block

after_break314:                                   ; No predecessors!
  br label %cond_else_block307

cond_then_block315:                               ; preds = %cond_else_block307
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %132 = bitcast i8* %131 to %sCLNode**
  %node318 = load %sCLNode*, %sCLNode** %132, align 8
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %134 = bitcast i8* %133 to %sCompileInfo**
  %info319 = load %sCompileInfo*, %sCompileInfo** %134, align 8
  %135 = call i1 @compile_throw_exception(%sCLNode* %node318, %sCompileInfo* %info319)
  %LOGICAL_DIANEAL320 = icmp eq i1 %135, false
  br i1 %LOGICAL_DIANEAL320, label %cond_jump_then321, label %cond_end322

cond_else_block316:                               ; preds = %after_break323, %cond_else_block307
  %eqtmpY326 = icmp eq i32 %7, 38
  br i1 %eqtmpY326, label %cond_then_block324, label %cond_else_block325

cond_jump_then321:                                ; preds = %cond_then_block315
  %136 = bitcast [8192 x i8*]* %lvtable to i8*
  %137 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %136, i64 65536)
  ret i1 false

cond_end322:                                      ; preds = %cond_then_block315
  br label %end_block

after_break323:                                   ; No predecessors!
  br label %cond_else_block316

cond_then_block324:                               ; preds = %cond_else_block316
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %139 = bitcast i8* %138 to %sCLNode**
  %node327 = load %sCLNode*, %sCLNode** %139, align 8
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %141 = bitcast i8* %140 to %sCompileInfo**
  %info328 = load %sCompileInfo*, %sCompileInfo** %141, align 8
  %142 = call i1 @compile_break(%sCLNode* %node327, %sCompileInfo* %info328)
  %LOGICAL_DIANEAL329 = icmp eq i1 %142, false
  br i1 %LOGICAL_DIANEAL329, label %cond_jump_then330, label %cond_end331

cond_else_block325:                               ; preds = %after_break332, %cond_else_block316
  %eqtmpY335 = icmp eq i32 %7, 39
  br i1 %eqtmpY335, label %cond_then_block333, label %cond_else_block334

cond_jump_then330:                                ; preds = %cond_then_block324
  %143 = bitcast [8192 x i8*]* %lvtable to i8*
  %144 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %143, i64 65536)
  ret i1 false

cond_end331:                                      ; preds = %cond_then_block324
  br label %end_block

after_break332:                                   ; No predecessors!
  br label %cond_else_block325

cond_then_block333:                               ; preds = %cond_else_block325
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %146 = bitcast i8* %145 to %sCLNode**
  %node336 = load %sCLNode*, %sCLNode** %146, align 8
  %147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %148 = bitcast i8* %147 to %sCompileInfo**
  %info337 = load %sCompileInfo*, %sCompileInfo** %148, align 8
  %149 = call i1 @compile_exit(%sCLNode* %node336, %sCompileInfo* %info337)
  %LOGICAL_DIANEAL338 = icmp eq i1 %149, false
  br i1 %LOGICAL_DIANEAL338, label %cond_jump_then339, label %cond_end340

cond_else_block334:                               ; preds = %after_break341, %cond_else_block325
  %eqtmpY344 = icmp eq i32 %7, 40
  br i1 %eqtmpY344, label %cond_then_block342, label %cond_else_block343

cond_jump_then339:                                ; preds = %cond_then_block333
  %150 = bitcast [8192 x i8*]* %lvtable to i8*
  %151 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %150, i64 65536)
  ret i1 false

cond_end340:                                      ; preds = %cond_then_block333
  br label %end_block

after_break341:                                   ; No predecessors!
  br label %cond_else_block334

cond_then_block342:                               ; preds = %cond_else_block334
  %node345 = load %sCLNode*, %sCLNode** %node1, align 8
  %info346 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %152 = call i1 @compile_try_expression(%sCLNode* %node345, %sCompileInfo* %info346)
  %LOGICAL_DIANEAL347 = icmp eq i1 %152, false
  br i1 %LOGICAL_DIANEAL347, label %cond_jump_then348, label %cond_end349

cond_else_block343:                               ; preds = %after_break350, %cond_else_block334
  %eqtmpY353 = icmp eq i32 %7, 41
  br i1 %eqtmpY353, label %cond_then_block351, label %cond_else_block352

cond_jump_then348:                                ; preds = %cond_then_block342
  %153 = bitcast [8192 x i8*]* %lvtable to i8*
  %154 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %153, i64 65536)
  ret i1 false

cond_end349:                                      ; preds = %cond_then_block342
  br label %end_block

after_break350:                                   ; No predecessors!
  br label %cond_else_block343

cond_then_block351:                               ; preds = %cond_else_block343
  %node354 = load %sCLNode*, %sCLNode** %node1, align 8
  %info355 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %155 = call i1 @compile_return(%sCLNode* %node354, %sCompileInfo* %info355)
  %LOGICAL_DIANEAL356 = icmp eq i1 %155, false
  br i1 %LOGICAL_DIANEAL356, label %cond_jump_then357, label %cond_end358

cond_else_block352:                               ; preds = %after_break359, %cond_else_block343
  %eqtmpY362 = icmp eq i32 %7, 28
  br i1 %eqtmpY362, label %cond_then_block360, label %cond_else_block361

cond_jump_then357:                                ; preds = %cond_then_block351
  %156 = bitcast [8192 x i8*]* %lvtable to i8*
  %157 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %156, i64 65536)
  ret i1 false

cond_end358:                                      ; preds = %cond_then_block351
  br label %end_block

after_break359:                                   ; No predecessors!
  br label %cond_else_block352

cond_then_block360:                               ; preds = %cond_else_block352
  %node363 = load %sCLNode*, %sCLNode** %node1, align 8
  %info364 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %158 = call i1 @compile_and_and(%sCLNode* %node363, %sCompileInfo* %info364)
  %LOGICAL_DIANEAL365 = icmp eq i1 %158, false
  br i1 %LOGICAL_DIANEAL365, label %cond_jump_then366, label %cond_end367

cond_else_block361:                               ; preds = %after_break368, %cond_else_block352
  %eqtmpY371 = icmp eq i32 %7, 29
  br i1 %eqtmpY371, label %cond_then_block369, label %cond_else_block370

cond_jump_then366:                                ; preds = %cond_then_block360
  %159 = bitcast [8192 x i8*]* %lvtable to i8*
  %160 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %159, i64 65536)
  ret i1 false

cond_end367:                                      ; preds = %cond_then_block360
  br label %end_block

after_break368:                                   ; No predecessors!
  br label %cond_else_block361

cond_then_block369:                               ; preds = %cond_else_block361
  %node372 = load %sCLNode*, %sCLNode** %node1, align 8
  %info373 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %161 = call i1 @compile_or_or(%sCLNode* %node372, %sCompileInfo* %info373)
  %LOGICAL_DIANEAL374 = icmp eq i1 %161, false
  br i1 %LOGICAL_DIANEAL374, label %cond_jump_then375, label %cond_end376

cond_else_block370:                               ; preds = %after_break377, %cond_else_block361
  %eqtmpY380 = icmp eq i32 %7, 43
  br i1 %eqtmpY380, label %cond_then_block378, label %cond_else_block379

cond_jump_then375:                                ; preds = %cond_then_block369
  %162 = bitcast [8192 x i8*]* %lvtable to i8*
  %163 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %162, i64 65536)
  ret i1 false

cond_end376:                                      ; preds = %cond_then_block369
  br label %end_block

after_break377:                                   ; No predecessors!
  br label %cond_else_block370

cond_then_block378:                               ; preds = %cond_else_block370
  %node381 = load %sCLNode*, %sCLNode** %node1, align 8
  %info382 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %164 = call i1 @compile_logical_denial(%sCLNode* %node381, %sCompileInfo* %info382)
  %LOGICAL_DIANEAL383 = icmp eq i1 %164, false
  br i1 %LOGICAL_DIANEAL383, label %cond_jump_then384, label %cond_end385

cond_else_block379:                               ; preds = %after_break386, %cond_else_block370
  %eqtmpY389 = icmp eq i32 %7, 44
  br i1 %eqtmpY389, label %cond_then_block387, label %cond_else_block388

cond_jump_then384:                                ; preds = %cond_then_block378
  %165 = bitcast [8192 x i8*]* %lvtable to i8*
  %166 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %165, i64 65536)
  ret i1 false

cond_end385:                                      ; preds = %cond_then_block378
  br label %end_block

after_break386:                                   ; No predecessors!
  br label %cond_else_block379

cond_then_block387:                               ; preds = %cond_else_block379
  %node390 = load %sCLNode*, %sCLNode** %node1, align 8
  %info391 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %167 = call i1 @compile_normal_block(%sCLNode* %node390, %sCompileInfo* %info391)
  %LOGICAL_DIANEAL392 = icmp eq i1 %167, false
  br i1 %LOGICAL_DIANEAL392, label %cond_jump_then393, label %cond_end394

cond_else_block388:                               ; preds = %after_break395, %cond_else_block379
  %eqtmpY398 = icmp eq i32 %7, 45
  br i1 %eqtmpY398, label %cond_then_block396, label %cond_else_block397

cond_jump_then393:                                ; preds = %cond_then_block387
  %168 = bitcast [8192 x i8*]* %lvtable to i8*
  %169 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %168, i64 65536)
  ret i1 false

cond_end394:                                      ; preds = %cond_then_block387
  br label %end_block

after_break395:                                   ; No predecessors!
  br label %cond_else_block388

cond_then_block396:                               ; preds = %cond_else_block388
  %node399 = load %sCLNode*, %sCLNode** %node1, align 8
  %info400 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %170 = call i1 @compile_macro(%sCLNode* %node399, %sCompileInfo* %info400)
  %LOGICAL_DIANEAL401 = icmp eq i1 %170, false
  br i1 %LOGICAL_DIANEAL401, label %cond_jump_then402, label %cond_end403

cond_else_block397:                               ; preds = %after_break404, %cond_else_block388
  %eqtmpY407 = icmp eq i32 %7, 46
  br i1 %eqtmpY407, label %cond_then_block405, label %cond_else_block406

cond_jump_then402:                                ; preds = %cond_then_block396
  %171 = bitcast [8192 x i8*]* %lvtable to i8*
  %172 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %171, i64 65536)
  ret i1 false

cond_end403:                                      ; preds = %cond_then_block396
  br label %end_block

after_break404:                                   ; No predecessors!
  br label %cond_else_block397

cond_then_block405:                               ; preds = %cond_else_block397
  %node408 = load %sCLNode*, %sCLNode** %node1, align 8
  %info409 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %173 = call i1 @compile_command(%sCLNode* %node408, %sCompileInfo* %info409)
  %LOGICAL_DIANEAL410 = icmp eq i1 %173, false
  br i1 %LOGICAL_DIANEAL410, label %cond_jump_then411, label %cond_end412

cond_else_block406:                               ; preds = %after_break413, %cond_else_block397
  br label %cond_then_block414

cond_jump_then411:                                ; preds = %cond_then_block405
  %174 = bitcast [8192 x i8*]* %lvtable to i8*
  %175 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %174, i64 65536)
  ret i1 false

cond_end412:                                      ; preds = %cond_then_block405
  br label %end_block

after_break413:                                   ; No predecessors!
  br label %cond_else_block406

cond_then_block414:                               ; preds = %cond_else_block406
  %info416 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %node417 = load %sCLNode*, %sCLNode** %node1, align 8
  %176 = getelementptr inbounds %sCLNode, %sCLNode* %node417, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.162, i32 0, i32 0), i32 %177)
  call void @compile_err_msg(%sCompileInfo* %info416, i8* %178)
  %179 = bitcast [8192 x i8*]* %lvtable to i8*
  %180 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %179, i64 65536)
  %181 = ptrtoint i8* %178 to i64
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %cond_then_block418, label %cond_end419

cond_else_block415:                               ; preds = %after_break420
  br label %end_block

cond_then_block418:                               ; preds = %cond_then_block414
  br label %cond_end419

cond_end419:                                      ; preds = %cond_then_block418, %cond_then_block414
  call void @xfree(i8* %178)
  ret i1 false
  br label %end_block

after_break420:                                   ; No predecessors!
  br label %cond_else_block415
}

define void @compile_err_msg(%sCompileInfo* %info, i8* %msg) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info1, align 8
  %2 = bitcast %sCompileInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %msg2 = alloca i8*
  store i8* %msg, i8** %msg2, align 8
  %3 = bitcast i8** %msg2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 0
  %5 = bitcast [4096 x i8]* %4 to i8*
  %info4 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %6 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %msg5 = load i8*, i8** %msg2, align 8
  %8 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string, i32 0, i32 0), i8* %5, i32 %7, i8* %msg5)
  %info6 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %10, 1
  %11 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 2
  store i32 %addtmp, i32* %11, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %info8 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %12 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 4
  %13 = load %sParserInfo*, %sParserInfo** %12, align 8
  %14 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.1, i32 0, i32 0), %sParserInfo* %13)
  %15 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 6
  store %sCLType* %14, %sCLType** %15, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void
}

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

define %sCLNode* @sNodeTree_create_break(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = call %sCLNode* @alloc_node(%sParserInfo* %info2)
  %result = alloca %sCLNode*
  %4 = bitcast %sCLNode** %result to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLNode* %3, %sCLNode** %result, align 8
  %result3 = load %sCLNode*, %sCLNode** %result, align 8
  %5 = getelementptr inbounds %sCLNode, %sCLNode* %result3, i32 0, i32 0
  store i32 38, i32* %5, align 4
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 1
  %7 = bitcast [4096 x i8]* %6 to i8*
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 0
  %9 = bitcast [4096 x i8]* %8 to i8*
  %10 = call i8* @xstrncpy(i8* %7, i8* %9, i32 4096)
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %14, align 8
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %15, align 8
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %sCLNode* %result11
}

define %sCLNode* @sNodeTree_create_normal_block(%sCLNodeBlock* %node_block, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node_block1 = alloca %sCLNodeBlock*
  store %sCLNodeBlock* %node_block, %sCLNodeBlock** %node_block1, align 8
  %2 = bitcast %sCLNodeBlock** %node_block1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.160, i32 0, i32 0), %sParserInfo* %info3)
  %block_type = alloca %sCLType*
  %5 = bitcast %sCLType** %block_type to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %4, %sCLType** %block_type, align 8
  %node_block4 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block1, align 8
  %block_type5 = load %sCLType*, %sCLType** %block_type, align 8
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %6 = call %sCLNode* @sNodeTree_create_lambda(i32 0, %sCLParam* null, %sCLNodeBlock* %node_block4, %sCLType* %block_type5, %sParserInfo* %info6)
  %left_node = alloca %sCLNode*
  %7 = bitcast %sCLNode** %left_node to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %6, %sCLNode** %left_node, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %8 = call %sCLNode* @alloc_node(%sParserInfo* %info7)
  %result = alloca %sCLNode*
  %9 = bitcast %sCLNode** %result to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %8, %sCLNode** %result, align 8
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %10 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 0
  store i32 44, i32* %10, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %11 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 1
  %12 = bitcast [4096 x i8]* %11 to i8*
  %info10 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 0
  %14 = bitcast [4096 x i8]* %13 to i8*
  %15 = call i8* @xstrncpy(i8* %12, i8* %14, i32 4096)
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %info12 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %16 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %left_node14 = load %sCLNode*, %sCLNode** %left_node, align 8
  %19 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 9
  store %sCLNode* %left_node14, %sCLNode** %19, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %20, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %result16, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %21, align 8
  %result17 = load %sCLNode*, %sCLNode** %result, align 8
  %22 = bitcast [8192 x i8*]* %lvtable to i8*
  %23 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %22, i64 65536)
  ret %sCLNode* %result17
}

define %sCLNode* @sNodeTree_create_minus(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 4, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_primitive_minus(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 5, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_logical_denial(%sCLNode* %exp, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %exp1 = alloca %sCLNode*
  store %sCLNode* %exp, %sCLNode** %exp1, align 8
  %2 = bitcast %sCLNode** %exp1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 43, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %exp10 = load %sCLNode*, %sCLNode** %exp1, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 9
  store %sCLNode* %exp10, %sCLNode** %15, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %17, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLNode* %result13
}

define %sCLNode* @sNodeTree_create_return(%sCLNode* %obj, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca %sCLNode*
  store %sCLNode* %obj, %sCLNode** %obj1, align 8
  %2 = bitcast %sCLNode** %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 41, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %obj10 = load %sCLNode*, %sCLNode** %obj1, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 9
  store %sCLNode* %obj10, %sCLNode** %15, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %17, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLNode* %result13
}

define %sCLNode* @sNodeTree_create_try(%sCLNodeBlock* %node_block, %sCLNodeBlock* %node_block2, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node_block1 = alloca %sCLNodeBlock*
  store %sCLNodeBlock* %node_block, %sCLNodeBlock** %node_block1, align 8
  %2 = bitcast %sCLNodeBlock** %node_block1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %node_block22 = alloca %sCLNodeBlock*
  store %sCLNodeBlock* %node_block2, %sCLNodeBlock** %node_block22, align 8
  %3 = bitcast %sCLNodeBlock** %node_block22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 40, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 3
  %17 = load %anon78, %anon78* %16, align 8
  %18 = bitcast %anon78* %16 to %anon83*
  %19 = load %anon83, %anon83* %18, align 8
  %node_block11 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block1, align 8
  %20 = getelementptr inbounds %anon83, %anon83* %18, i32 0, i32 0
  store %sCLNodeBlock* %node_block11, %sCLNodeBlock** %20, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 3
  %22 = load %anon78, %anon78* %21, align 8
  %23 = bitcast %anon78* %21 to %anon83*
  %24 = load %anon83, %anon83* %23, align 8
  %node_block213 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block22, align 8
  %25 = getelementptr inbounds %anon83, %anon83* %23, i32 0, i32 1
  store %sCLNodeBlock* %node_block213, %sCLNodeBlock** %25, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %26 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %26, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %27 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %27, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %28 = getelementptr inbounds %sCLNode, %sCLNode* %result16, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %28, align 8
  %result17 = load %sCLNode*, %sCLNode** %result, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLNode* %result17
}

define %sCLNode* @sNodeTree_create_exit(%sCLNode* %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 39, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %node10 = load %sCLNode*, %sCLNode** %node1, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 9
  store %sCLNode* %node10, %sCLNode** %15, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %17, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLNode* %result13
}

define %sCLNode* @sNodeTree_create_primitive_plus(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 3, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_while_expression(%sCLNode* %expression, %sCLNodeBlock* %node_block, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %expression1 = alloca %sCLNode*
  store %sCLNode* %expression, %sCLNode** %expression1, align 8
  %2 = bitcast %sCLNode** %expression1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %node_block2 = alloca %sCLNodeBlock*
  store %sCLNodeBlock* %node_block, %sCLNodeBlock** %node_block2, align 8
  %3 = bitcast %sCLNodeBlock** %node_block2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 37, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 3
  %17 = load %anon78, %anon78* %16, align 8
  %18 = bitcast %anon78* %16 to %anon82*
  %19 = load %anon82, %anon82* %18, align 8
  %expression11 = load %sCLNode*, %sCLNode** %expression1, align 8
  %20 = getelementptr inbounds %anon82, %anon82* %18, i32 0, i32 0
  store %sCLNode* %expression11, %sCLNode** %20, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 3
  %22 = load %anon78, %anon78* %21, align 8
  %23 = bitcast %anon78* %21 to %anon82*
  %24 = load %anon82, %anon82* %23, align 8
  %node_block13 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block2, align 8
  %25 = getelementptr inbounds %anon82, %anon82* %23, i32 0, i32 1
  store %sCLNodeBlock* %node_block13, %sCLNodeBlock** %25, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %26 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %26, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %27 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %27, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %28 = getelementptr inbounds %sCLNode, %sCLNode* %result16, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %28, align 8
  %result17 = load %sCLNode*, %sCLNode** %result, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLNode* %result17
}

define %sCLNode* @sNodeTree_create_plus(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 2, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_primitive_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 9, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_primitive_not_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 11, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_primitive_greater(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 30, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_primitive_lesser(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 32, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_primitive_lesser_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 36, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_primitive_greater_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 34, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_int_value(i32 %value, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %value1 = alloca i32
  store i32 %value, i32* %value1, align 4
  %2 = bitcast i32* %value1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 3
  %16 = load %anon78, %anon78* %15, align 8
  %value10 = load i32, i32* %value1, align 4
  %17 = bitcast %anon78* %15 to i32*
  store i32 %value10, i32* %17, align 4
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %18, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %19, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %20, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret %sCLNode* %result14
}

define %sCLNode* @sNodeTree_create_store_variable(i8* %var_name, %sCLNode* %exp, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %var_name1 = alloca i8*
  store i8* %var_name, i8** %var_name1, align 8
  %2 = bitcast i8** %var_name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %exp2 = alloca %sCLNode*
  store %sCLNode* %exp, %sCLNode** %exp2, align 8
  %3 = bitcast %sCLNode** %exp2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 6, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %var_name11 = load i8*, i8** %var_name1, align 8
  %16 = call i8* @string(i8* %var_name11)
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %18)
  store i8* %16, i8** %17, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %exp13 = load %sCLNode*, %sCLNode** %exp2, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 9
  store %sCLNode* %exp13, %sCLNode** %21, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %22 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %22, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %23 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %23, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  ret %sCLNode* %result16
}

define %sCLNode* @sNodeTree_create_load_variable(i8* %var_name, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %var_name1 = alloca i8*
  store i8* %var_name, i8** %var_name1, align 8
  %2 = bitcast i8** %var_name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 7, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %var_name10 = load i8*, i8** %var_name1, align 8
  %15 = call i8* @string(i8* %var_name10)
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %17)
  store i8* %15, i8** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %20, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %21, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %22 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %22, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %23 = bitcast [8192 x i8*]* %lvtable to i8*
  %24 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %23, i64 65536)
  ret %sCLNode* %result14
}

define %sCLNode* @sNodeTree_create_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_not_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 10, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_greater(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 27, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_lesser(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 31, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_lesser_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 35, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_greater_equal(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 33, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_and_and(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 28, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_or_or(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 29, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 9
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result15
}

define %sCLNode* @sNodeTree_create_string_value(i8* %value, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %value1 = alloca i8*
  store i8* %value, i8** %value1, align 8
  %2 = bitcast i8** %value1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %value10 = load i8*, i8** %value1, align 8
  %15 = call i8* @string(i8* %value10)
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %17)
  store i8* %15, i8** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %20, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %21, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %22 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %22, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %23 = bitcast [8192 x i8*]* %lvtable to i8*
  %24 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %23, i64 65536)
  ret %sCLNode* %result14
}

define %sCLNode* @sNodeTree_create_true_value(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = call %sCLNode* @alloc_node(%sParserInfo* %info2)
  %result = alloca %sCLNode*
  %4 = bitcast %sCLNode** %result to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLNode* %3, %sCLNode** %result, align 8
  %result3 = load %sCLNode*, %sCLNode** %result, align 8
  %5 = getelementptr inbounds %sCLNode, %sCLNode* %result3, i32 0, i32 0
  store i32 12, i32* %5, align 4
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 1
  %7 = bitcast [4096 x i8]* %6 to i8*
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 0
  %9 = bitcast [4096 x i8]* %8 to i8*
  %10 = call i8* @xstrncpy(i8* %7, i8* %9, i32 4096)
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %14, align 8
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %15, align 8
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %sCLNode* %result11
}

define %sCLNode* @sNodeTree_create_false_value(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = call %sCLNode* @alloc_node(%sParserInfo* %info2)
  %result = alloca %sCLNode*
  %4 = bitcast %sCLNode** %result to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLNode* %3, %sCLNode** %result, align 8
  %result3 = load %sCLNode*, %sCLNode** %result, align 8
  %5 = getelementptr inbounds %sCLNode, %sCLNode* %result3, i32 0, i32 0
  store i32 13, i32* %5, align 4
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 1
  %7 = bitcast [4096 x i8]* %6 to i8*
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 0
  %9 = bitcast [4096 x i8]* %8 to i8*
  %10 = call i8* @xstrncpy(i8* %7, i8* %9, i32 4096)
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %14, align 8
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %15, align 8
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %sCLNode* %result11
}

define %sCLNode* @sNodeTree_create_null_value(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = call %sCLNode* @alloc_node(%sParserInfo* %info2)
  %result = alloca %sCLNode*
  %4 = bitcast %sCLNode** %result to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLNode* %3, %sCLNode** %result, align 8
  %result3 = load %sCLNode*, %sCLNode** %result, align 8
  %5 = getelementptr inbounds %sCLNode, %sCLNode* %result3, i32 0, i32 0
  store i32 42, i32* %5, align 4
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 1
  %7 = bitcast [4096 x i8]* %6 to i8*
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 0
  %9 = bitcast [4096 x i8]* %8 to i8*
  %10 = call i8* @xstrncpy(i8* %7, i8* %9, i32 4096)
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %14, align 8
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %15, align 8
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %sCLNode* %result11
}

define %sCLNode* @sNodeTree_create_command_value(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = call %sCLNode* @alloc_node(%sParserInfo* %info2)
  %result = alloca %sCLNode*
  %4 = bitcast %sCLNode** %result to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLNode* %3, %sCLNode** %result, align 8
  %result3 = load %sCLNode*, %sCLNode** %result, align 8
  %5 = getelementptr inbounds %sCLNode, %sCLNode* %result3, i32 0, i32 0
  store i32 46, i32* %5, align 4
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 1
  %7 = bitcast [4096 x i8]* %6 to i8*
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 0
  %9 = bitcast [4096 x i8]* %8 to i8*
  %10 = call i8* @xstrncpy(i8* %7, i8* %9, i32 4096)
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %14, align 8
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %15, align 8
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %sCLNode* %result11
}

define %sCLNode* @sNodeTree_create_if_expression(%sCLNode* %if_expression, %sCLNodeBlock* %if_node_block, i32 %num_elif, %sCLNode** %elif_expressions, %sCLNodeBlock** %elif_blocks, %sCLNodeBlock* %else_block, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %if_expression1 = alloca %sCLNode*
  store %sCLNode* %if_expression, %sCLNode** %if_expression1, align 8
  %2 = bitcast %sCLNode** %if_expression1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %if_node_block2 = alloca %sCLNodeBlock*
  store %sCLNodeBlock* %if_node_block, %sCLNodeBlock** %if_node_block2, align 8
  %3 = bitcast %sCLNodeBlock** %if_node_block2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %num_elif3 = alloca i32
  store i32 %num_elif, i32* %num_elif3, align 4
  %4 = bitcast i32* %num_elif3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %elif_expressions4 = alloca %sCLNode**
  store %sCLNode** %elif_expressions, %sCLNode*** %elif_expressions4, align 8
  %5 = bitcast %sCLNode*** %elif_expressions4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %elif_blocks5 = alloca %sCLNodeBlock**
  store %sCLNodeBlock** %elif_blocks, %sCLNodeBlock*** %elif_blocks5, align 8
  %6 = bitcast %sCLNodeBlock*** %elif_blocks5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %else_block6 = alloca %sCLNodeBlock*
  store %sCLNodeBlock* %else_block, %sCLNodeBlock** %else_block6, align 8
  %7 = bitcast %sCLNodeBlock** %else_block6 to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %info7 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info7, align 8
  %8 = bitcast %sParserInfo** %info7 to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info7, align 8
  %9 = call %sCLNode* @alloc_node(%sParserInfo* %info8)
  %result = alloca %sCLNode*
  %10 = bitcast %sCLNode** %result to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLNode* %9, %sCLNode** %result, align 8
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %11 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 0
  store i32 14, i32* %11, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 1
  %13 = bitcast [4096 x i8]* %12 to i8*
  %info11 = load %sParserInfo*, %sParserInfo** %info7, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 0
  %15 = bitcast [4096 x i8]* %14 to i8*
  %16 = call i8* @xstrncpy(i8* %13, i8* %15, i32 4096)
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %info13 = load %sParserInfo*, %sParserInfo** %info7, align 8
  %17 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 3
  %21 = load %anon78, %anon78* %20, align 8
  %22 = bitcast %anon78* %20 to %anon79*
  %23 = load %anon79, %anon79* %22, align 8
  %if_expression15 = load %sCLNode*, %sCLNode** %if_expression1, align 8
  %24 = getelementptr inbounds %anon79, %anon79* %22, i32 0, i32 0
  store %sCLNode* %if_expression15, %sCLNode** %24, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %25 = getelementptr inbounds %sCLNode, %sCLNode* %result16, i32 0, i32 3
  %26 = load %anon78, %anon78* %25, align 8
  %27 = bitcast %anon78* %25 to %anon79*
  %28 = load %anon79, %anon79* %27, align 8
  %if_node_block17 = load %sCLNodeBlock*, %sCLNodeBlock** %if_node_block2, align 8
  %29 = getelementptr inbounds %anon79, %anon79* %27, i32 0, i32 1
  store %sCLNodeBlock* %if_node_block17, %sCLNodeBlock** %29, align 8
  %result18 = load %sCLNode*, %sCLNode** %result, align 8
  %30 = getelementptr inbounds %sCLNode, %sCLNode* %result18, i32 0, i32 3
  %31 = load %anon78, %anon78* %30, align 8
  %32 = bitcast %anon78* %30 to %anon79*
  %33 = load %anon79, %anon79* %32, align 8
  %num_elif19 = load i32, i32* %num_elif3, align 4
  %34 = getelementptr inbounds %anon79, %anon79* %32, i32 0, i32 2
  store i32 %num_elif19, i32* %34, align 4
  %i = alloca i32
  %35 = bitcast i32* %i to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %i20 = load i32, i32* %i, align 4
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %37 = bitcast i8* %36 to i32*
  %num_elif21 = load i32, i32* %37, align 4
  %letmp = icmp slt i32 %i20, %num_elif21
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %39 = bitcast i8* %38 to %sCLNode**
  %result22 = load %sCLNode*, %sCLNode** %39, align 8
  %40 = getelementptr inbounds %sCLNode, %sCLNode* %result22, i32 0, i32 3
  %41 = load %anon78, %anon78* %40, align 8
  %42 = bitcast %anon78* %40 to %anon79*
  %43 = load %anon79, %anon79* %42, align 8
  %44 = getelementptr inbounds %anon79, %anon79* %42, i32 0, i32 3
  %45 = bitcast [64 x i8*]* %44 to i8**
  %i23 = load i32, i32* %i, align 4
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %47 = bitcast i8* %46 to %sCLNode***
  %elif_expressions24 = load %sCLNode**, %sCLNode*** %47, align 8
  %i25 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %elif_expressions24, i32 %i25
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %48 = bitcast %sCLNode* %element to i8*
  %element_address26 = getelementptr i8*, i8** %45, i32 %i23
  store i8* %48, i8** %element_address26, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %50 = bitcast i8* %49 to %sCLNode**
  %result27 = load %sCLNode*, %sCLNode** %50, align 8
  %51 = getelementptr inbounds %sCLNode, %sCLNode* %result27, i32 0, i32 3
  %52 = load %anon78, %anon78* %51, align 8
  %53 = bitcast %anon78* %51 to %anon79*
  %54 = load %anon79, %anon79* %53, align 8
  %55 = getelementptr inbounds %anon79, %anon79* %53, i32 0, i32 4
  %56 = bitcast [64 x i8*]* %55 to i8**
  %i28 = load i32, i32* %i, align 4
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %58 = bitcast i8* %57 to %sCLNodeBlock***
  %elif_blocks29 = load %sCLNodeBlock**, %sCLNodeBlock*** %58, align 8
  %i30 = load i32, i32* %i, align 4
  %element_address31 = getelementptr %sCLNodeBlock*, %sCLNodeBlock** %elif_blocks29, i32 %i30
  %element32 = load %sCLNodeBlock*, %sCLNodeBlock** %element_address31, align 8
  %59 = bitcast %sCLNodeBlock* %element32 to i8*
  %element_address33 = getelementptr i8*, i8** %56, i32 %i28
  store i8* %59, i8** %element_address33, align 8
  %i34 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i34, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %result35 = load %sCLNode*, %sCLNode** %result, align 8
  %60 = getelementptr inbounds %sCLNode, %sCLNode* %result35, i32 0, i32 3
  %61 = load %anon78, %anon78* %60, align 8
  %62 = bitcast %anon78* %60 to %anon79*
  %63 = load %anon79, %anon79* %62, align 8
  %else_block36 = load %sCLNodeBlock*, %sCLNodeBlock** %else_block6, align 8
  %64 = getelementptr inbounds %anon79, %anon79* %62, i32 0, i32 5
  store %sCLNodeBlock* %else_block36, %sCLNodeBlock** %64, align 8
  %result37 = load %sCLNode*, %sCLNode** %result, align 8
  %65 = getelementptr inbounds %sCLNode, %sCLNode* %result37, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %65, align 8
  %result38 = load %sCLNode*, %sCLNode** %result, align 8
  %66 = getelementptr inbounds %sCLNode, %sCLNode* %result38, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %66, align 8
  %result39 = load %sCLNode*, %sCLNode** %result, align 8
  %67 = getelementptr inbounds %sCLNode, %sCLNode* %result39, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %67, align 8
  %result40 = load %sCLNode*, %sCLNode** %result, align 8
  %68 = bitcast [8192 x i8*]* %lvtable to i8*
  %69 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %68, i64 65536)
  ret %sCLNode* %result40
}

define %sCLNode* @sNodeTree_create_lambda(i32 %num_params, %sCLParam* %params, %sCLNodeBlock* %node_block, %sCLType* %block_type, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %num_params1 = alloca i32
  store i32 %num_params, i32* %num_params1, align 4
  %2 = bitcast i32* %num_params1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %params2 = alloca %sCLParam*
  store %sCLParam* %params, %sCLParam** %params2, align 8
  %3 = bitcast %sCLParam** %params2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node_block3 = alloca %sCLNodeBlock*
  store %sCLNodeBlock* %node_block, %sCLNodeBlock** %node_block3, align 8
  %4 = bitcast %sCLNodeBlock** %node_block3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %block_type4 = alloca %sCLType*
  store %sCLType* %block_type, %sCLType** %block_type4, align 8
  %5 = bitcast %sCLType** %block_type4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %info5 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info5, align 8
  %6 = bitcast %sParserInfo** %info5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %info6 = load %sParserInfo*, %sParserInfo** %info5, align 8
  %7 = call %sCLNode* @alloc_node(%sParserInfo* %info6)
  %result = alloca %sCLNode*
  %8 = bitcast %sCLNode** %result to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode* %7, %sCLNode** %result, align 8
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 0
  store i32 15, i32* %9, align 4
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %10 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 1
  %11 = bitcast [4096 x i8]* %10 to i8*
  %info9 = load %sParserInfo*, %sParserInfo** %info5, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 0
  %13 = bitcast [4096 x i8]* %12 to i8*
  %14 = call i8* @xstrncpy(i8* %11, i8* %13, i32 4096)
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %info11 = load %sParserInfo*, %sParserInfo** %info5, align 8
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info11, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 3
  %19 = load %anon78, %anon78* %18, align 8
  %20 = bitcast %anon78* %18 to %anon80*
  %21 = load %anon80, %anon80* %20, align 8
  %num_params13 = load i32, i32* %num_params1, align 4
  %22 = getelementptr inbounds %anon80, %anon80* %20, i32 0, i32 2
  store i32 %num_params13, i32* %22, align 4
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %i14 = load i32, i32* %i, align 4
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %25 = bitcast i8* %24 to i32*
  %num_params15 = load i32, i32* %25, align 4
  %letmp = icmp slt i32 %i14, %num_params15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %27 = bitcast i8* %26 to %sCLNode**
  %result16 = load %sCLNode*, %sCLNode** %27, align 8
  %28 = getelementptr inbounds %sCLNode, %sCLNode* %result16, i32 0, i32 3
  %29 = load %anon78, %anon78* %28, align 8
  %30 = bitcast %anon78* %28 to %anon80*
  %31 = load %anon80, %anon80* %30, align 8
  %32 = getelementptr inbounds %anon80, %anon80* %30, i32 0, i32 1
  %33 = bitcast [32 x %sCLParam]* %32 to %sCLParam*
  %i17 = load i32, i32* %i, align 4
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCLParam**
  %params18 = load %sCLParam*, %sCLParam** %35, align 8
  %i19 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLParam, %sCLParam* %params18, i32 %i19
  %element = load %sCLParam, %sCLParam* %element_address, align 8
  %element_address20 = getelementptr %sCLParam, %sCLParam* %33, i32 %i17
  store %sCLParam %element, %sCLParam* %element_address20, align 8
  %i21 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i21, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %result22 = load %sCLNode*, %sCLNode** %result, align 8
  %36 = getelementptr inbounds %sCLNode, %sCLNode* %result22, i32 0, i32 3
  %37 = load %anon78, %anon78* %36, align 8
  %38 = bitcast %anon78* %36 to %anon80*
  %39 = load %anon80, %anon80* %38, align 8
  %node_block23 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block3, align 8
  %40 = getelementptr inbounds %anon80, %anon80* %38, i32 0, i32 0
  store %sCLNodeBlock* %node_block23, %sCLNodeBlock** %40, align 8
  %result24 = load %sCLNode*, %sCLNode** %result, align 8
  %41 = getelementptr inbounds %sCLNode, %sCLNode* %result24, i32 0, i32 3
  %42 = load %anon78, %anon78* %41, align 8
  %43 = bitcast %anon78* %41 to %anon80*
  %44 = load %anon80, %anon80* %43, align 8
  %block_type25 = load %sCLType*, %sCLType** %block_type4, align 8
  %45 = getelementptr inbounds %anon80, %anon80* %43, i32 0, i32 3
  store %sCLType* %block_type25, %sCLType** %45, align 8
  %result26 = load %sCLNode*, %sCLNode** %result, align 8
  %46 = getelementptr inbounds %sCLNode, %sCLNode* %result26, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %46, align 8
  %result27 = load %sCLNode*, %sCLNode** %result, align 8
  %47 = getelementptr inbounds %sCLNode, %sCLNode* %result27, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %47, align 8
  %result28 = load %sCLNode*, %sCLNode** %result, align 8
  %48 = getelementptr inbounds %sCLNode, %sCLNode* %result28, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %48, align 8
  %result29 = load %sCLNode*, %sCLNode** %result, align 8
  %49 = bitcast [8192 x i8*]* %lvtable to i8*
  %50 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %49, i64 65536)
  ret %sCLNode* %result29
}

define %sCLNode* @sNodeTree_create_method_block(i8* %sname, i32 %sline, %buffer* %block_text, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %sname1 = alloca i8*
  store i8* %sname, i8** %sname1, align 8
  %2 = bitcast i8** %sname1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %sline2 = alloca i32
  store i32 %sline, i32* %sline2, align 4
  %3 = bitcast i32* %sline2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %block_text3 = alloca %buffer*
  store %buffer* %block_text, %buffer** %block_text3, align 8
  %4 = bitcast %buffer** %block_text3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info4, align 8
  %5 = bitcast %sParserInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %6 = call %sCLNode* @alloc_node(%sParserInfo* %info5)
  %result = alloca %sCLNode*
  %7 = bitcast %sCLNode** %result to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %6, %sCLNode** %result, align 8
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 0
  store i32 21, i32* %8, align 4
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 1
  %10 = bitcast [4096 x i8]* %9 to i8*
  %sname8 = load i8*, i8** %sname1, align 8
  %11 = call i8* @xstrncpy(i8* %10, i8* %sname8, i32 4096)
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %sline10 = load i32, i32* %sline2, align 4
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 2
  store i32 %sline10, i32* %12, align 4
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %block_text12 = load %buffer*, %buffer** %block_text3, align 8
  %13 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 7
  %14 = load %buffer*, %buffer** %13, align 8
  call void @buffer_finalize(%buffer* %14)
  %15 = ptrtoint %buffer* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  %17 = bitcast %buffer* %14 to i8*
  call void @xfree(i8* %17)
  store %buffer* %block_text12, %buffer** %13, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 3
  %19 = load %anon78, %anon78* %18, align 8
  %20 = bitcast %anon78* %18 to %anon80*
  %21 = load %anon80, %anon80* %20, align 8
  %22 = getelementptr inbounds %anon80, %anon80* %20, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %23 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 3
  %24 = load %anon78, %anon78* %23, align 8
  %25 = bitcast %anon78* %23 to %anon80*
  %26 = load %anon80, %anon80* %25, align 8
  %27 = getelementptr inbounds %anon80, %anon80* %25, i32 0, i32 0
  store %sCLNodeBlock* null, %sCLNodeBlock** %27, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %28 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 3
  %29 = load %anon78, %anon78* %28, align 8
  %30 = bitcast %anon78* %28 to %anon80*
  %31 = load %anon80, %anon80* %30, align 8
  %32 = getelementptr inbounds %anon80, %anon80* %30, i32 0, i32 3
  store %sCLType* null, %sCLType** %32, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %33 = getelementptr inbounds %sCLNode, %sCLNode* %result16, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %33, align 8
  %result17 = load %sCLNode*, %sCLNode** %result, align 8
  %34 = getelementptr inbounds %sCLNode, %sCLNode* %result17, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %34, align 8
  %result18 = load %sCLNode*, %sCLNode** %result, align 8
  %35 = getelementptr inbounds %sCLNode, %sCLNode* %result18, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %35, align 8
  %result19 = load %sCLNode*, %sCLNode** %result, align 8
  %36 = bitcast [8192 x i8*]* %lvtable to i8*
  %37 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %36, i64 65536)
  ret %sCLNode* %result19
}

define %sCLNode* @sNodeTree_create_class(i8* %source, i8* %sname, i32 %sline, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %source1 = alloca i8*
  store i8* %source, i8** %source1, align 8
  %2 = bitcast i8** %source1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %sname2 = alloca i8*
  store i8* %sname, i8** %sname2, align 8
  %3 = bitcast i8** %sname2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %sline3 = alloca i32
  store i32 %sline, i32* %sline3, align 4
  %4 = bitcast i32* %sline3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info4, align 8
  %5 = bitcast %sParserInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %6 = call %sCLNode* @alloc_node(%sParserInfo* %info5)
  %result = alloca %sCLNode*
  %7 = bitcast %sCLNode** %result to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %6, %sCLNode** %result, align 8
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 0
  store i32 16, i32* %8, align 4
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 1
  %10 = bitcast [4096 x i8]* %9 to i8*
  %sname8 = load i8*, i8** %sname2, align 8
  %11 = call i8* @xstrncpy(i8* %10, i8* %sname8, i32 4096)
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %sline10 = load i32, i32* %sline3, align 4
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 2
  store i32 %sline10, i32* %12, align 4
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %source12 = load i8*, i8** %source1, align 8
  %13 = call i8* @string(i8* %source12)
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 5
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %15)
  store i8* %13, i8** %14, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %18, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %19, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %20, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret %sCLNode* %result16
}

define %sCLNode* @sNodeTree_create_object(%sCLType* %type, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %type1 = alloca %sCLType*
  store %sCLType* %type, %sCLType** %type1, align 8
  %2 = bitcast %sCLType** %type1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 17, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %type10 = load %sCLType*, %sCLType** %type1, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 8
  store %sCLType* %type10, %sCLType** %15, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %17, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %18, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %sCLNode* %result14
}

define %sCLNode* @sNodeTree_create_method_call(i8* %name, i32 %num_params, %sCLNode** %params, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %name1 = alloca i8*
  store i8* %name, i8** %name1, align 8
  %2 = bitcast i8** %name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %num_params2 = alloca i32
  store i32 %num_params, i32* %num_params2, align 4
  %3 = bitcast i32* %num_params2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params3 = alloca %sCLNode**
  store %sCLNode** %params, %sCLNode*** %params3, align 8
  %4 = bitcast %sCLNode*** %params3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info4, align 8
  %5 = bitcast %sParserInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %6 = call %sCLNode* @alloc_node(%sParserInfo* %info5)
  %result = alloca %sCLNode*
  %7 = bitcast %sCLNode** %result to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %6, %sCLNode** %result, align 8
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 0
  store i32 18, i32* %8, align 4
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 1
  %10 = bitcast [4096 x i8]* %9 to i8*
  %info8 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 0
  %12 = bitcast [4096 x i8]* %11 to i8*
  %13 = call i8* @xstrncpy(i8* %10, i8* %12, i32 4096)
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %info10 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %name12 = load i8*, i8** %name1, align 8
  %17 = call i8* @string(i8* %name12)
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %19)
  store i8* %17, i8** %18, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %22 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 3
  %23 = load %anon78, %anon78* %22, align 8
  %24 = bitcast %anon78* %22 to %anon81*
  %25 = load %anon81, %anon81* %24, align 8
  %num_params14 = load i32, i32* %num_params2, align 4
  %26 = getelementptr inbounds %anon81, %anon81* %24, i32 0, i32 0
  store i32 %num_params14, i32* %26, align 4
  %i = alloca i32
  %27 = bitcast i32* %i to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block17, %cond_end
  %i15 = load i32, i32* %i, align 4
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %29 = bitcast i8* %28 to i32*
  %num_params16 = load i32, i32* %29, align 4
  %letmp = icmp slt i32 %i15, %num_params16
  br i1 %letmp, label %cond_then_block17, label %cond_end_block

cond_then_block17:                                ; preds = %loop_top_block
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %31 = bitcast i8* %30 to %sCLNode**
  %result18 = load %sCLNode*, %sCLNode** %31, align 8
  %32 = getelementptr inbounds %sCLNode, %sCLNode* %result18, i32 0, i32 3
  %33 = load %anon78, %anon78* %32, align 8
  %34 = bitcast %anon78* %32 to %anon81*
  %35 = load %anon81, %anon81* %34, align 8
  %36 = getelementptr inbounds %anon81, %anon81* %34, i32 0, i32 1
  %37 = bitcast [32 x %sCLNode*]* %36 to %sCLNode**
  %i19 = load i32, i32* %i, align 4
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %39 = bitcast i8* %38 to %sCLNode***
  %params20 = load %sCLNode**, %sCLNode*** %39, align 8
  %i21 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %params20, i32 %i21
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %element_address22 = getelementptr %sCLNode*, %sCLNode** %37, i32 %i19
  store %sCLNode* %element, %sCLNode** %element_address22, align 8
  %i23 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i23, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %result24 = load %sCLNode*, %sCLNode** %result, align 8
  %40 = getelementptr inbounds %sCLNode, %sCLNode* %result24, i32 0, i32 3
  %41 = load %anon78, %anon78* %40, align 8
  %42 = bitcast %anon78* %40 to %anon81*
  %43 = load %anon81, %anon81* %42, align 8
  %44 = getelementptr inbounds %anon81, %anon81* %42, i32 0, i32 2
  store i1 true, i1* %44, align 1
  %andand_result_var = alloca i1
  %num_params25 = load i32, i32* %num_params2, align 4
  %gttmp = icmp sgt i32 %num_params25, 0
  store i1 %gttmp, i1* %andand_result_var, align 1
  br i1 %gttmp, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %cond_end_block
  %oror_result_var = alloca i1
  %params26 = load %sCLNode**, %sCLNode*** %params3, align 8
  %element_address27 = getelementptr %sCLNode*, %sCLNode** %params26, i32 0
  %element28 = load %sCLNode*, %sCLNode** %element_address27, align 8
  %45 = getelementptr inbounds %sCLNode, %sCLNode* %element28, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %eqtmpX = icmp eq i32 %46, 19
  store i1 %eqtmpX, i1* %oror_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_end30, label %cond_jump_then29

cond_jump_end:                                    ; preds = %cond_jump_end30, %cond_end_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then35, label %cond_end36

cond_jump_then29:                                 ; preds = %cond_jump_then
  %params31 = load %sCLNode**, %sCLNode*** %params3, align 8
  %element_address32 = getelementptr %sCLNode*, %sCLNode** %params31, i32 0
  %element33 = load %sCLNode*, %sCLNode** %element_address32, align 8
  %47 = getelementptr inbounds %sCLNode, %sCLNode* %element33, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %eqtmpX34 = icmp eq i32 %48, 18
  %oror = or i1 %eqtmpX, %eqtmpX34
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end30

cond_jump_end30:                                  ; preds = %cond_jump_then29, %cond_jump_then
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  %andand = and i1 %gttmp, %oror_result_value
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_then35:                                 ; preds = %cond_jump_end
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %50 = bitcast i8* %49 to %sCLNode***
  %params37 = load %sCLNode**, %sCLNode*** %50, align 8
  %element_address38 = getelementptr %sCLNode*, %sCLNode** %params37, i32 0
  %element39 = load %sCLNode*, %sCLNode** %element_address38, align 8
  %51 = getelementptr inbounds %sCLNode, %sCLNode* %element39, i32 0, i32 3
  %52 = load %anon78, %anon78* %51, align 8
  %53 = bitcast %anon78* %51 to %anon81*
  %54 = load %anon81, %anon81* %53, align 8
  %55 = getelementptr inbounds %anon81, %anon81* %53, i32 0, i32 2
  store i1 false, i1* %55, align 1
  br label %cond_end36

cond_end36:                                       ; preds = %cond_jump_then35, %cond_jump_end
  %result40 = load %sCLNode*, %sCLNode** %result, align 8
  %56 = getelementptr inbounds %sCLNode, %sCLNode* %result40, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %56, align 8
  %result41 = load %sCLNode*, %sCLNode** %result, align 8
  %57 = getelementptr inbounds %sCLNode, %sCLNode* %result41, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %57, align 8
  %result42 = load %sCLNode*, %sCLNode** %result, align 8
  %58 = getelementptr inbounds %sCLNode, %sCLNode* %result42, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %58, align 8
  %result43 = load %sCLNode*, %sCLNode** %result, align 8
  %59 = bitcast [8192 x i8*]* %lvtable to i8*
  %60 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %59, i64 65536)
  ret %sCLNode* %result43
}

declare %sCLNode* @sNodeTree_create_command_call(%sCLNode*, i8*, i32, %sCLNode**, %sParserInfo*)

define %sCLNode* @sNodeTree_create_block_object_call(i32 %num_params, %sCLNode** %params, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %num_params1 = alloca i32
  store i32 %num_params, i32* %num_params1, align 4
  %2 = bitcast i32* %num_params1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %params2 = alloca %sCLNode**
  store %sCLNode** %params, %sCLNode*** %params2, align 8
  %3 = bitcast %sCLNode*** %params2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 20, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 3
  %17 = load %anon78, %anon78* %16, align 8
  %18 = bitcast %anon78* %16 to %anon81*
  %19 = load %anon81, %anon81* %18, align 8
  %num_params11 = load i32, i32* %num_params1, align 4
  %20 = getelementptr inbounds %anon81, %anon81* %18, i32 0, i32 0
  store i32 %num_params11, i32* %20, align 4
  %i = alloca i32
  %21 = bitcast i32* %i to i8*
  store i8* %21, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %i12 = load i32, i32* %i, align 4
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %23 = bitcast i8* %22 to i32*
  %num_params13 = load i32, i32* %23, align 4
  %letmp = icmp slt i32 %i12, %num_params13
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %25 = bitcast i8* %24 to %sCLNode**
  %result14 = load %sCLNode*, %sCLNode** %25, align 8
  %26 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 3
  %27 = load %anon78, %anon78* %26, align 8
  %28 = bitcast %anon78* %26 to %anon81*
  %29 = load %anon81, %anon81* %28, align 8
  %30 = getelementptr inbounds %anon81, %anon81* %28, i32 0, i32 1
  %31 = bitcast [32 x %sCLNode*]* %30 to %sCLNode**
  %i15 = load i32, i32* %i, align 4
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %33 = bitcast i8* %32 to %sCLNode***
  %params16 = load %sCLNode**, %sCLNode*** %33, align 8
  %i17 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %params16, i32 %i17
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %element_address18 = getelementptr %sCLNode*, %sCLNode** %31, i32 %i15
  store %sCLNode* %element, %sCLNode** %element_address18, align 8
  %i19 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i19, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %result20 = load %sCLNode*, %sCLNode** %result, align 8
  %34 = getelementptr inbounds %sCLNode, %sCLNode* %result20, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %34, align 8
  %result21 = load %sCLNode*, %sCLNode** %result, align 8
  %35 = getelementptr inbounds %sCLNode, %sCLNode* %result21, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %35, align 8
  %result22 = load %sCLNode*, %sCLNode** %result, align 8
  %36 = getelementptr inbounds %sCLNode, %sCLNode* %result22, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %36, align 8
  %result23 = load %sCLNode*, %sCLNode** %result, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLNode* %result23
}

define %sCLNode* @sNodeTree_create_jobs(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = call %sCLNode* @alloc_node(%sParserInfo* %info2)
  %result = alloca %sCLNode*
  %4 = bitcast %sCLNode** %result to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLNode* %3, %sCLNode** %result, align 8
  %result3 = load %sCLNode*, %sCLNode** %result, align 8
  %5 = getelementptr inbounds %sCLNode, %sCLNode* %result3, i32 0, i32 0
  store i32 22, i32* %5, align 4
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 1
  %7 = bitcast [4096 x i8]* %6 to i8*
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 0
  %9 = bitcast [4096 x i8]* %8 to i8*
  %10 = call i8* @xstrncpy(i8* %7, i8* %9, i32 4096)
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %14, align 8
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %15, align 8
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %16, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %sCLNode* %result11
}

define %sCLNode* @sNodeTree_create_fg(i32 %job_num, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %job_num1 = alloca i32
  store i32 %job_num, i32* %job_num1, align 4
  %2 = bitcast i32* %job_num1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 23, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 3
  %16 = load %anon78, %anon78* %15, align 8
  %job_num10 = load i32, i32* %job_num1, align 4
  %17 = bitcast %anon78* %15 to i32*
  store i32 %job_num10, i32* %17, align 4
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %18, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %19, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %20, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret %sCLNode* %result14

entry15:                                          ; No predecessors!
  %lvtable16 = alloca [8192 x i8*]
  %23 = bitcast [8192 x i8*]* %lvtable16 to i8*
  %24 = call i8* @xmemcpy(i8* %23, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %job_num17 = alloca i32
  store i32 %job_num, i32* %job_num17, align 4
  %25 = bitcast i32* %job_num17 to i8*
  store i8* %25, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info18 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info18, align 8
  %26 = bitcast %sParserInfo** %info18 to i8*
  store i8* %26, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info19 = load %sParserInfo*, %sParserInfo** %info18, align 8
  %27 = call %sCLNode* @alloc_node(%sParserInfo* %info19)
  %result20 = alloca %sCLNode*
  %28 = bitcast %sCLNode** %result20 to i8*
  store i8* %28, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %27, %sCLNode** %result20, align 8
  %result21 = load %sCLNode*, %sCLNode** %result20, align 8
  %29 = getelementptr inbounds %sCLNode, %sCLNode* %result21, i32 0, i32 0
  store i32 23, i32* %29, align 4
  %result22 = load %sCLNode*, %sCLNode** %result20, align 8
  %30 = getelementptr inbounds %sCLNode, %sCLNode* %result22, i32 0, i32 1
  %31 = bitcast [4096 x i8]* %30 to i8*
  %info23 = load %sParserInfo*, %sParserInfo** %info18, align 8
  %32 = getelementptr inbounds %sParserInfo, %sParserInfo* %info23, i32 0, i32 0
  %33 = bitcast [4096 x i8]* %32 to i8*
  %34 = call i8* @xstrncpy(i8* %31, i8* %33, i32 4096)
  %result24 = load %sCLNode*, %sCLNode** %result20, align 8
  %info25 = load %sParserInfo*, %sParserInfo** %info18, align 8
  %35 = getelementptr inbounds %sParserInfo, %sParserInfo* %info25, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %sCLNode, %sCLNode* %result24, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %result26 = load %sCLNode*, %sCLNode** %result20, align 8
  %38 = getelementptr inbounds %sCLNode, %sCLNode* %result26, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %38, align 8
  %result27 = load %sCLNode*, %sCLNode** %result20, align 8
  %39 = getelementptr inbounds %sCLNode, %sCLNode* %result27, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %39, align 8
  %result28 = load %sCLNode*, %sCLNode** %result20, align 8
  %40 = getelementptr inbounds %sCLNode, %sCLNode* %result28, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %40, align 8
  %result29 = load %sCLNode*, %sCLNode** %result20, align 8
  %41 = bitcast [8192 x i8*]* %lvtable16 to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret %sCLNode* %result29
}

define %sCLNode* @sNodeTree_create_load_field(%sCLNode* %obj, i8* %name, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca %sCLNode*
  store %sCLNode* %obj, %sCLNode** %obj1, align 8
  %2 = bitcast %sCLNode** %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %name2 = alloca i8*
  store i8* %name, i8** %name2, align 8
  %3 = bitcast i8** %name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 25, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %name11 = load i8*, i8** %name2, align 8
  %16 = call i8* @string(i8* %name11)
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %18)
  store i8* %16, i8** %17, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %obj13 = load %sCLNode*, %sCLNode** %obj1, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 9
  store %sCLNode* %obj13, %sCLNode** %21, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %22 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %22, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %23 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %23, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  ret %sCLNode* %result16
}

declare %sCLNode* @NodeTree_create_store_field(%sCLNode*, i8*, %sCLNode*, %sParserInfo*)

define %sCLNode* @sNodeTree_create_store_field(%sCLNode* %obj, i8* %name, %sCLNode* %exp, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca %sCLNode*
  store %sCLNode* %obj, %sCLNode** %obj1, align 8
  %2 = bitcast %sCLNode** %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %name2 = alloca i8*
  store i8* %name, i8** %name2, align 8
  %3 = bitcast i8** %name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %exp3 = alloca %sCLNode*
  store %sCLNode* %exp, %sCLNode** %exp3, align 8
  %4 = bitcast %sCLNode** %exp3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info4, align 8
  %5 = bitcast %sParserInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %6 = call %sCLNode* @alloc_node(%sParserInfo* %info5)
  %result = alloca %sCLNode*
  %7 = bitcast %sCLNode** %result to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %6, %sCLNode** %result, align 8
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 0
  store i32 24, i32* %8, align 4
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 1
  %10 = bitcast [4096 x i8]* %9 to i8*
  %info8 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 0
  %12 = bitcast [4096 x i8]* %11 to i8*
  %13 = call i8* @xstrncpy(i8* %10, i8* %12, i32 4096)
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %info10 = load %sParserInfo*, %sParserInfo** %info4, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info10, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %name12 = load i8*, i8** %name2, align 8
  %17 = call i8* @string(i8* %name12)
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %19)
  store i8* %17, i8** %18, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %obj14 = load %sCLNode*, %sCLNode** %obj1, align 8
  %22 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 9
  store %sCLNode* %obj14, %sCLNode** %22, align 8
  %result15 = load %sCLNode*, %sCLNode** %result, align 8
  %exp16 = load %sCLNode*, %sCLNode** %exp3, align 8
  %23 = getelementptr inbounds %sCLNode, %sCLNode* %result15, i32 0, i32 11
  store %sCLNode* %exp16, %sCLNode** %23, align 8
  %result17 = load %sCLNode*, %sCLNode** %result, align 8
  %24 = getelementptr inbounds %sCLNode, %sCLNode* %result17, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %24, align 8
  %result18 = load %sCLNode*, %sCLNode** %result, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sCLNode* %result18
}

define %sCLNode* @sNodeTree_create_throw_exception(%sCLNode* %obj, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca %sCLNode*
  store %sCLNode* %obj, %sCLNode** %obj1, align 8
  %2 = bitcast %sCLNode** %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 26, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %8 = bitcast [4096 x i8]* %7 to i8*
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %9 to i8*
  %11 = call i8* @xstrncpy(i8* %8, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %obj10 = load %sCLNode*, %sCLNode** %obj1, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 9
  store %sCLNode* %obj10, %sCLNode** %15, align 8
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %17, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sCLNode* %result13
}

define %sCLNode* @sNodeTree_create_macro(i8* %name, i8* %block_text, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %name1 = alloca i8*
  store i8* %name, i8** %name1, align 8
  %2 = bitcast i8** %name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %block_text2 = alloca i8*
  store i8* %block_text, i8** %block_text2, align 8
  %3 = bitcast i8** %block_text2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 45, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %9 = bitcast [4096 x i8]* %8 to i8*
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %9, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %name11 = load i8*, i8** %name1, align 8
  %16 = call i8* @string(i8* %name11)
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %18)
  store i8* %16, i8** %17, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %block_text13 = load i8*, i8** %block_text2, align 8
  %21 = call i8* @string(i8* %block_text13)
  %22 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %cond_then_block14, label %cond_end15

cond_then_block14:                                ; preds = %cond_end
  br label %cond_end15

cond_end15:                                       ; preds = %cond_then_block14, %cond_end
  call void @xfree(i8* %23)
  store i8* %21, i8** %22, align 8
  %result16 = load %sCLNode*, %sCLNode** %result, align 8
  %26 = getelementptr inbounds %sCLNode, %sCLNode* %result16, i32 0, i32 9
  store %sCLNode* null, %sCLNode** %26, align 8
  %result17 = load %sCLNode*, %sCLNode** %result, align 8
  %27 = getelementptr inbounds %sCLNode, %sCLNode* %result17, i32 0, i32 11
  store %sCLNode* null, %sCLNode** %27, align 8
  %result18 = load %sCLNode*, %sCLNode** %result, align 8
  %28 = getelementptr inbounds %sCLNode, %sCLNode* %result18, i32 0, i32 10
  store %sCLNode* null, %sCLNode** %28, align 8
  %name19 = load i8*, i8** %name1, align 8
  %block_text20 = load i8*, i8** %block_text2, align 8
  call void @append_macro(i8* %name19, i8* %block_text20)
  %result21 = load %sCLNode*, %sCLNode** %result, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLNode* %result21
}

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

declare void @__assert_fail(i8*, i8*, i32, i8*)

declare void @__assert_perror_fail(i32, i8*, i32, i8*)

declare void @__assert(i8*, i8*, i32)

define %sCLNode* @alloc_node(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 8544, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.3, i32 0, i32 0), i32 15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.5, i32 0, i32 0))
  %4 = bitcast i8* %3 to %sCLNode*
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %6 = getelementptr inbounds %sParserInfo, %sParserInfo* %info2, i32 0, i32 6
  %7 = load %vector__sCLNodep*, %vector__sCLNodep** %6, align 8
  %result3 = load %sCLNode*, %sCLNode** %result, align 8
  call void @"vector_push_back_sCLNodep0_src/node"(%vector__sCLNodep* %7, %sCLNode* %result3)
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sCLNode* %result4
}

define void @"vector_push_back_sCLNodep0_src/node"(%vector__sCLNodep* %self, %sCLNode* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLNodep*
  store %vector__sCLNodep* %self, %vector__sCLNodep** %self1, align 8
  %2 = bitcast %vector__sCLNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %item2 = alloca %sCLNode*
  store %sCLNode* %item, %sCLNode** %item2, align 8
  %3 = bitcast %sCLNode** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self3 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %9 = bitcast i8* %8 to %vector__sCLNodep**
  %self5 = load %vector__sCLNodep*, %vector__sCLNodep** %9, align 8
  %10 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %14 = bitcast i8* %13 to %vector__sCLNodep**
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %14, align 8
  %15 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self6, i32 0, i32 0
  %16 = load %sCLNode**, %sCLNode*** %15, align 8
  %items = alloca %sCLNode**
  %17 = bitcast %sCLNode*** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode** %16, %sCLNode*** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %19 = bitcast i8* %18 to %vector__sCLNodep**
  %self7 = load %vector__sCLNodep*, %vector__sCLNodep** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = zext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.7, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.9, i32 0, i32 0))
  %21 = bitcast i8* %20 to %sCLNode**
  %22 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self7, i32 0, i32 0
  store %sCLNode** %21, %sCLNode*** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %entry
  %self20 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %26 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self20, i32 0, i32 0
  %27 = load %sCLNode**, %sCLNode*** %26, align 8
  %self21 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %28 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self21, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item22 = load %sCLNode*, %sCLNode** %item2, align 8
  %element_address23 = getelementptr %sCLNode*, %sCLNode** %27, i32 %29
  store %sCLNode* %item22, %sCLNode** %element_address23, align 8
  %self24 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %self25 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %30 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self25, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp26 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self24, i32 0, i32 1
  store i32 %addtmp26, i32* %32, align 4
  %subttmp27 = sub nsw i32 %addtmp26, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %38 = bitcast i8* %37 to %vector__sCLNodep**
  %self10 = load %vector__sCLNodep*, %vector__sCLNodep** %38, align 8
  %39 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %42 = bitcast i8* %41 to %vector__sCLNodep**
  %self11 = load %vector__sCLNodep*, %vector__sCLNodep** %42, align 8
  %43 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self11, i32 0, i32 0
  %44 = load %sCLNode**, %sCLNode*** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %48 = bitcast i8* %47 to %sCLNode***
  %items13 = load %sCLNode**, %sCLNode*** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %items13, i32 %i14
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %element_address15 = getelementptr %sCLNode*, %sCLNode** %44, i32 %i12
  store %sCLNode* %element, %sCLNode** %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %56 = bitcast i8* %55 to %vector__sCLNodep**
  %self17 = load %vector__sCLNodep*, %vector__sCLNodep** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %sCLNode**, %sCLNode*** %items, align 8
  %58 = load %sCLNode**, %sCLNode*** %items, align 8
  %59 = bitcast %sCLNode** %58 to i8*
  call void @xfree(i8* %59)
  br label %cond_end
}

define i1 @compile_int_value(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value10 = alloca i32
  %self9 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 7
  %5 = load i1, i1* %4, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %sCompileInfo**
  %info4 = load %sCompileInfo*, %sCompileInfo** %7, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 5
  %9 = load %buffer*, %buffer** %8, align 8
  store %buffer* %9, %buffer** %self, align 8
  store i32 1, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end12, %entry
  %info15 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info16 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 4
  %11 = load %sParserInfo*, %sParserInfo** %10, align 8
  %12 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.10, i32 0, i32 0), %sParserInfo* %11)
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info15, i32 0, i32 6
  store %sCLType* %12, %sCLType** %13, align 8
  %info17 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info18 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info18, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %addtmp = add nsw i32 %15, 1
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info17, i32 0, i32 3
  store i32 %addtmp, i32* %16, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %19 = bitcast %buffer** %self to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i32* %value to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self5 = load %buffer*, %buffer** %self, align 8
  %value6 = load i32, i32* %value, align 4
  %21 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self5, i8* %21, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %23 = bitcast i8* %22 to %sCompileInfo**
  %info7 = load %sCompileInfo*, %sCompileInfo** %23, align 8
  %24 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 5
  %25 = load %buffer*, %buffer** %24, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %27 = bitcast i8* %26 to %sCLNode**
  %node8 = load %sCLNode*, %sCLNode** %27, align 8
  %28 = getelementptr inbounds %sCLNode, %sCLNode* %node8, i32 0, i32 3
  %29 = load %anon78, %anon78* %28, align 8
  %30 = bitcast %anon78* %28 to i32*
  %31 = load i32, i32* %30, align 4
  store %buffer* %25, %buffer** %self9, align 8
  store i32 %31, i32* %value10, align 4
  br label %append_int11

append_int11:                                     ; preds = %inline_func_end
  %32 = bitcast %buffer** %self9 to i8*
  store i8* %32, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %33 = bitcast i32* %value10 to i8*
  store i8* %33, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self13 = load %buffer*, %buffer** %self9, align 8
  %value14 = load i32, i32* %value10, align 4
  %34 = bitcast i32* %value10 to i8*
  call void @buffer_append(%buffer* %self13, i8* %34, i64 4)
  br label %inline_func_end12

inline_func_end12:                                ; preds = %append_int11
  br label %cond_end
}

define i1 @compile_strig_value(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %self11 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 5
  %5 = load i8*, i8** %4, align 8
  %str_value = alloca i8*
  %6 = bitcast i8** %str_value to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %5, i8** %str_value, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 7
  %8 = load i1, i1* %7, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %8, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %10 = bitcast i8* %9 to %sCompileInfo**
  %info5 = load %sCompileInfo*, %sCompileInfo** %10, align 8
  %11 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 5
  %12 = load %buffer*, %buffer** %11, align 8
  store %buffer* %12, %buffer** %self, align 8
  store i32 2, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end12, %entry
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info22 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info22, i32 0, i32 4
  %14 = load %sParserInfo*, %sParserInfo** %13, align 8
  %15 = call %sCLType* @create_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.11, i32 0, i32 0), %sParserInfo* %14)
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 6
  store %sCLType* %15, %sCLType** %16, align 8
  %info23 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info24 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %addtmp25 = add nsw i32 %18, 1
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info23, i32 0, i32 3
  store i32 %addtmp25, i32* %19, align 4
  %subttmp26 = sub nsw i32 %addtmp25, 1
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %22 = bitcast %buffer** %self to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %23 = bitcast i32* %value to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self6 = load %buffer*, %buffer** %self, align 8
  %value7 = load i32, i32* %value, align 4
  %24 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self6, i8* %24, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %26 = bitcast i8* %25 to %sCompileInfo**
  %info8 = load %sCompileInfo*, %sCompileInfo** %26, align 8
  %27 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 5
  %28 = load %buffer*, %buffer** %27, align 8
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %30 = bitcast i8* %29 to i8**
  %str_value9 = load i8*, i8** %30, align 8
  call void @buffer_append_nullterminated_str(%buffer* %28, i8* %str_value9)
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %32 = bitcast i8* %31 to %sCompileInfo**
  %info10 = load %sCompileInfo*, %sCompileInfo** %32, align 8
  %33 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 5
  %34 = load %buffer*, %buffer** %33, align 8
  store %buffer* %34, %buffer** %self11, align 8
  br label %alignment

alignment:                                        ; preds = %inline_func_end
  %35 = bitcast %buffer** %self11 to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self13 = load %buffer*, %buffer** %self11, align 8
  %36 = getelementptr inbounds %buffer, %buffer* %self13, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %len = alloca i32
  %38 = bitcast i32* %len to i8*
  store i8* %38, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %37, i32* %len, align 4
  %len14 = load i32, i32* %len, align 4
  %addtmp = add nsw i32 %len14, 3
  %andtmp = and i32 %addtmp, -4
  store i32 %andtmp, i32* %len, align 4
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %40 = bitcast i8* %39 to %buffer**
  %self15 = load %buffer*, %buffer** %40, align 8
  %41 = getelementptr inbounds %buffer, %buffer* %self15, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %i = alloca i32
  %43 = bitcast i32* %i to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %42, i32* %i, align 4
  br label %loop_top_block

inline_func_end12:                                ; preds = %cond_end_block
  br label %cond_end

loop_top_block:                                   ; preds = %cond_then_block, %alignment
  %i16 = load i32, i32* %i, align 4
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %45 = bitcast i8* %44 to i32*
  %len17 = load i32, i32* %45, align 4
  %letmp = icmp slt i32 %i16, %len17
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %47 = bitcast i8* %46 to %buffer**
  %self18 = load %buffer*, %buffer** %47, align 8
  call void @buffer_append_char(%buffer* %self18, i8 0)
  %i19 = load i32, i32* %i, align 4
  %addtmp20 = add nsw i32 %i19, 1
  store i32 %addtmp20, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp20, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %inline_func_end12
}

define i1 @invoke_method(i8* %method_name, i32 %num_params, %sCLNode** %params, %sCompileInfo* %info) {
entry:
  %value200 = alloca i32
  %self199 = alloca %buffer*
  %value192 = alloca i32
  %self191 = alloca %buffer*
  %self172 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %method_name1 = alloca i8*
  store i8* %method_name, i8** %method_name1, align 8
  %2 = bitcast i8** %method_name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %num_params2 = alloca i32
  store i32 %num_params, i32* %num_params2, align 4
  %3 = bitcast i32* %num_params2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params3 = alloca %sCLNode**
  store %sCLNode** %params, %sCLNode*** %params3, align 8
  %4 = bitcast %sCLNode*** %params3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info4, align 8
  %5 = bitcast %sCompileInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to i32*
  %num_params5 = load i32, i32* %7, align 4
  %gttmp = icmp sgt i32 %num_params5, 0
  br i1 %gttmp, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.13, i32 0, i32 0), i32 90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.14, i32 0, i32 0))
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %params6 = load %sCLNode**, %sCLNode*** %params3, align 8
  %element_address = getelementptr %sCLNode*, %sCLNode** %params6, i32 0
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %first_node = alloca %sCLNode*
  %8 = bitcast %sCLNode** %first_node to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %element, %sCLNode** %first_node, align 8
  %first_node7 = load %sCLNode*, %sCLNode** %first_node, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %9 = call i1 @compile(%sCLNode* %first_node7, %sCompileInfo* %info8)
  %LOGICAL_DIANEAL = icmp eq i1 %9, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %12 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %13 = load %sCLType*, %sCLType** %12, align 8
  %generics_types = alloca %sCLType*
  %14 = bitcast %sCLType** %generics_types to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLType* %13, %sCLType** %generics_types, align 8
  %oror_result_var = alloca i1
  %info12 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %15 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info12, i32 0, i32 6
  %16 = load %sCLType*, %sCLType** %15, align 8
  %info13 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info13, i32 0, i32 4
  %18 = load %sParserInfo*, %sParserInfo** %17, align 8
  %19 = call i1 @type_identify_with_class_name(%sCLType* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.15, i32 0, i32 0), %sParserInfo* %18)
  store i1 %19, i1* %oror_result_var, align 1
  br i1 %19, label %cond_jump_end, label %cond_jump_then14

cond_jump_then14:                                 ; preds = %cond_end10
  %info15 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %20 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info15, i32 0, i32 6
  %21 = load %sCLType*, %sCLType** %20, align 8
  %22 = call i1 @is_generics_type(%sCLType* %21)
  %oror = or i1 %19, %22
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then14, %cond_end10
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_then16, label %cond_else_block17

cond_jump_then16:                                 ; preds = %cond_jump_end
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %24 = bitcast i8* %23 to %sCompileInfo**
  %info19 = load %sCompileInfo*, %sCompileInfo** %24, align 8
  %25 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info19, i32 0, i32 6
  %26 = load %sCLType*, %sCLType** %25, align 8
  %27 = getelementptr inbounds %sCLType, %sCLType* %26, i32 0, i32 1
  %28 = load %sCLClass*, %sCLClass** %27, align 8
  %klass = alloca %sCLClass*
  %29 = bitcast %sCLClass** %klass to i8*
  store i8* %29, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLClass* %28, %sCLClass** %klass, align 8
  %klass20 = load %sCLClass*, %sCLClass** %klass, align 8
  %30 = getelementptr inbounds %sCLClass, %sCLClass* %klass20, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %klass_name = alloca i8*
  %32 = bitcast i8** %klass_name to i8*
  store i8* %32, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i8* %31, i8** %klass_name, align 8
  %method = alloca %sCLMethod*
  %33 = bitcast %sCLMethod** %method to i8*
  store i8* %33, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store %sCLMethod* null, %sCLMethod** %method, align 8
  br label %loop_top_block

cond_else_block17:                                ; preds = %cond_jump_end
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info79 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info79, i32 0, i32 6
  %37 = load %sCLType*, %sCLType** %36, align 8
  %38 = getelementptr inbounds %sCLType, %sCLType* %37, i32 0, i32 1
  %39 = load %sCLClass*, %sCLClass** %38, align 8
  %klass80 = alloca %sCLClass*
  %40 = bitcast %sCLClass** %klass80 to i8*
  store i8* %40, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLClass* %39, %sCLClass** %klass80, align 8
  %klass81 = load %sCLClass*, %sCLClass** %klass80, align 8
  %41 = getelementptr inbounds %sCLClass, %sCLClass* %klass81, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %klass_name82 = alloca i8*
  %43 = bitcast i8** %klass_name82 to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i8* %42, i8** %klass_name82, align 8
  %method83 = alloca %sCLMethod*
  %44 = bitcast %sCLMethod** %method83 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store %sCLMethod* null, %sCLMethod** %method83, align 8
  br label %loop_top_block84

cond_end18:                                       ; preds = %cond_end_block122, %cond_end31
  %info162 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %45 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info162, i32 0, i32 7
  %46 = load i1, i1* %45, align 1
  %LOGICAL_DIANEAL163 = icmp eq i1 %46, false
  br i1 %LOGICAL_DIANEAL163, label %cond_jump_then164, label %cond_end165

loop_top_block:                                   ; preds = %cond_end26, %cond_jump_then16
  %klass21 = load %sCLClass*, %sCLClass** %klass, align 8
  %47 = ptrtoint %sCLClass* %klass21 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %50 = bitcast i8* %49 to %sCLClass**
  %klass22 = load %sCLClass*, %sCLClass** %50, align 8
  %51 = getelementptr inbounds %sCLClass, %sCLClass* %klass22, i32 0, i32 1
  %52 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %51, align 8
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %54 = bitcast i8* %53 to i8**
  %method_name23 = load i8*, i8** %54, align 8
  %55 = call %sCLMethod* @"map_at_charp_sCLMethodp1_src/node"(%map__charp_sCLMethodp* %52, i8* %method_name23, %sCLMethod* null)
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %57 = bitcast i8* %56 to %sCLMethod**
  store %sCLMethod* %55, %sCLMethod** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %59 = bitcast i8* %58 to %sCLMethod**
  %method24 = load %sCLMethod*, %sCLMethod** %59, align 8
  %60 = ptrtoint %sCLMethod* %method24 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %cond_jump_then25, label %cond_end26

cond_end_block:                                   ; preds = %cond_jump_then25, %loop_top_block
  %method28 = load %sCLMethod*, %sCLMethod** %method, align 8
  %eqtmpX = icmp eq %sCLMethod* %method28, null
  br i1 %eqtmpX, label %cond_jump_then29, label %cond_else_block30

cond_jump_then25:                                 ; preds = %cond_then_block
  br label %cond_end_block

cond_end26:                                       ; preds = %after_break, %cond_then_block
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %63 = bitcast i8* %62 to %sCLClass**
  %klass27 = load %sCLClass*, %sCLClass** %63, align 8
  %64 = getelementptr inbounds %sCLClass, %sCLClass* %klass27, i32 0, i32 4
  %65 = load %sCLClass*, %sCLClass** %64, align 8
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %67 = bitcast i8* %66 to %sCLClass**
  store %sCLClass* %65, %sCLClass** %67, align 8
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end26

cond_jump_then29:                                 ; preds = %cond_end_block
  %i = alloca i32
  %68 = bitcast i32* %i to i8*
  store i8* %68, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 1, i32* %i, align 4
  br label %loop_top_block32

cond_else_block30:                                ; preds = %cond_end_block
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %70 = bitcast i8* %69 to %sCLMethod**
  %method48 = load %sCLMethod*, %sCLMethod** %70, align 8
  %71 = getelementptr inbounds %sCLMethod, %sCLMethod* %method48, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %74 = bitcast i8* %73 to i32*
  %num_params49 = load i32, i32* %74, align 4
  %noteqtmp = icmp ne i32 %72, %num_params49
  br i1 %noteqtmp, label %cond_jump_then50, label %cond_end51

cond_end31:                                       ; preds = %cond_end_block65, %cond_end_block36
  br label %cond_end18

loop_top_block32:                                 ; preds = %cond_end44, %cond_jump_then29
  %i33 = load i32, i32* %i, align 4
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %76 = bitcast i8* %75 to i32*
  %num_params34 = load i32, i32* %76, align 4
  %letmp = icmp slt i32 %i33, %num_params34
  br i1 %letmp, label %cond_then_block35, label %cond_end_block36

cond_then_block35:                                ; preds = %loop_top_block32
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %78 = bitcast i8* %77 to %sCLNode***
  %params37 = load %sCLNode**, %sCLNode*** %78, align 8
  %i38 = load i32, i32* %i, align 4
  %element_address39 = getelementptr %sCLNode*, %sCLNode** %params37, i32 %i38
  %element40 = load %sCLNode*, %sCLNode** %element_address39, align 8
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %80 = bitcast i8* %79 to %sCompileInfo**
  %info41 = load %sCompileInfo*, %sCompileInfo** %80, align 8
  %81 = call i1 @compile(%sCLNode* %element40, %sCompileInfo* %info41)
  %LOGICAL_DIANEAL42 = icmp eq i1 %81, false
  br i1 %LOGICAL_DIANEAL42, label %cond_jump_then43, label %cond_end44

cond_end_block36:                                 ; preds = %loop_top_block32
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %83 = bitcast i8* %82 to %sCompileInfo**
  %info46 = load %sCompileInfo*, %sCompileInfo** %83, align 8
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %85 = bitcast i8* %84 to %sCompileInfo**
  %info47 = load %sCompileInfo*, %sCompileInfo** %85, align 8
  %86 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info47, i32 0, i32 4
  %87 = load %sParserInfo*, %sParserInfo** %86, align 8
  %88 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.16, i32 0, i32 0), %sParserInfo* %87)
  %89 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info46, i32 0, i32 6
  store %sCLType* %88, %sCLType** %89, align 8
  br label %cond_end31

cond_jump_then43:                                 ; preds = %cond_then_block35
  %90 = bitcast [8192 x i8*]* %lvtable to i8*
  %91 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %90, i64 65536)
  ret i1 false

cond_end44:                                       ; preds = %cond_then_block35
  %i45 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i45, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block32

cond_jump_then50:                                 ; preds = %cond_else_block30
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %93 = bitcast i8* %92 to %sCompileInfo**
  %info52 = load %sCompileInfo*, %sCompileInfo** %93, align 8
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %95 = bitcast i8* %94 to i32*
  %num_params53 = load i32, i32* %95, align 4
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %97 = bitcast i8* %96 to %sCLMethod**
  %method54 = load %sCLMethod*, %sCLMethod** %97, align 8
  %98 = getelementptr inbounds %sCLMethod, %sCLMethod* %method54, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %101 = bitcast i8* %100 to %sCLClass**
  %klass55 = load %sCLClass*, %sCLClass** %101, align 8
  %102 = getelementptr inbounds %sCLClass, %sCLClass* %klass55, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %105 = bitcast i8* %104 to i8**
  %method_name56 = load i8*, i8** %105, align 8
  %106 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @global_string.17, i32 0, i32 0), i32 %num_params53, i32 %99, i8* %103, i8* %method_name56)
  call void @compile_err_msg(%sCompileInfo* %info52, i8* %106)
  %107 = bitcast [8192 x i8*]* %lvtable to i8*
  %108 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %107, i64 65536)
  %109 = ptrtoint i8* %106 to i64
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %cond_then_block57, label %cond_end58

cond_end51:                                       ; preds = %cond_else_block30
  %i59 = alloca i32
  %111 = bitcast i32* %i59 to i8*
  store i8* %111, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 1, i32* %i59, align 4
  br label %loop_top_block60

cond_then_block57:                                ; preds = %cond_jump_then50
  br label %cond_end58

cond_end58:                                       ; preds = %cond_then_block57, %cond_jump_then50
  call void @xfree(i8* %106)
  ret i1 true

loop_top_block60:                                 ; preds = %cond_end73, %cond_end51
  %i61 = load i32, i32* %i59, align 4
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %113 = bitcast i8* %112 to i32*
  %num_params62 = load i32, i32* %113, align 4
  %letmp63 = icmp slt i32 %i61, %num_params62
  br i1 %letmp63, label %cond_then_block64, label %cond_end_block65

cond_then_block64:                                ; preds = %loop_top_block60
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %115 = bitcast i8* %114 to %sCLNode***
  %params66 = load %sCLNode**, %sCLNode*** %115, align 8
  %i67 = load i32, i32* %i59, align 4
  %element_address68 = getelementptr %sCLNode*, %sCLNode** %params66, i32 %i67
  %element69 = load %sCLNode*, %sCLNode** %element_address68, align 8
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %117 = bitcast i8* %116 to %sCompileInfo**
  %info70 = load %sCompileInfo*, %sCompileInfo** %117, align 8
  %118 = call i1 @compile(%sCLNode* %element69, %sCompileInfo* %info70)
  %LOGICAL_DIANEAL71 = icmp eq i1 %118, false
  br i1 %LOGICAL_DIANEAL71, label %cond_jump_then72, label %cond_end73

cond_end_block65:                                 ; preds = %loop_top_block60
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %120 = bitcast i8* %119 to %sCompileInfo**
  %info77 = load %sCompileInfo*, %sCompileInfo** %120, align 8
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %122 = bitcast i8* %121 to %sCLMethod**
  %method78 = load %sCLMethod*, %sCLMethod** %122, align 8
  %123 = getelementptr inbounds %sCLMethod, %sCLMethod* %method78, i32 0, i32 3
  %124 = load %sCLType*, %sCLType** %123, align 8
  %125 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info77, i32 0, i32 6
  store %sCLType* %124, %sCLType** %125, align 8
  br label %cond_end31

cond_jump_then72:                                 ; preds = %cond_then_block64
  %126 = bitcast [8192 x i8*]* %lvtable to i8*
  %127 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %126, i64 65536)
  ret i1 false

cond_end73:                                       ; preds = %cond_then_block64
  %i74 = load i32, i32* %i59, align 4
  %addtmp75 = add nsw i32 %i74, 1
  store i32 %addtmp75, i32* %i59, align 4
  %subttmp76 = sub nsw i32 %addtmp75, 1
  br label %loop_top_block60

loop_top_block84:                                 ; preds = %cond_end92, %cond_else_block17
  %klass85 = load %sCLClass*, %sCLClass** %klass80, align 8
  %128 = ptrtoint %sCLClass* %klass85 to i64
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %cond_then_block86, label %cond_end_block87

cond_then_block86:                                ; preds = %loop_top_block84
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %131 = bitcast i8* %130 to %sCLClass**
  %klass88 = load %sCLClass*, %sCLClass** %131, align 8
  %132 = getelementptr inbounds %sCLClass, %sCLClass* %klass88, i32 0, i32 1
  %133 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %132, align 8
  %134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %135 = bitcast i8* %134 to i8**
  %method_name89 = load i8*, i8** %135, align 8
  %136 = call %sCLMethod* @"map_at_charp_sCLMethodp2_src/node"(%map__charp_sCLMethodp* %133, i8* %method_name89, %sCLMethod* null)
  %137 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %138 = bitcast i8* %137 to %sCLMethod**
  store %sCLMethod* %136, %sCLMethod** %138, align 8
  %139 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %140 = bitcast i8* %139 to %sCLMethod**
  %method90 = load %sCLMethod*, %sCLMethod** %140, align 8
  %141 = ptrtoint %sCLMethod* %method90 to i64
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %cond_jump_then91, label %cond_end92

cond_end_block87:                                 ; preds = %cond_jump_then91, %loop_top_block84
  %method95 = load %sCLMethod*, %sCLMethod** %method83, align 8
  %eqtmpX96 = icmp eq %sCLMethod* %method95, null
  br i1 %eqtmpX96, label %cond_jump_then97, label %cond_end98

cond_jump_then91:                                 ; preds = %cond_then_block86
  br label %cond_end_block87

cond_end92:                                       ; preds = %after_break93, %cond_then_block86
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %144 = bitcast i8* %143 to %sCLClass**
  %klass94 = load %sCLClass*, %sCLClass** %144, align 8
  %145 = getelementptr inbounds %sCLClass, %sCLClass* %klass94, i32 0, i32 4
  %146 = load %sCLClass*, %sCLClass** %145, align 8
  %147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %148 = bitcast i8* %147 to %sCLClass**
  store %sCLClass* %146, %sCLClass** %148, align 8
  br label %loop_top_block84

after_break93:                                    ; No predecessors!
  br label %cond_end92

cond_jump_then97:                                 ; preds = %cond_end_block87
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %150 = bitcast i8* %149 to %sCompileInfo**
  %info99 = load %sCompileInfo*, %sCompileInfo** %150, align 8
  %151 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %152 = bitcast i8* %151 to i8**
  %klass_name100 = load i8*, i8** %152, align 8
  %153 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %154 = bitcast i8* %153 to i8**
  %method_name101 = load i8*, i8** %154, align 8
  %155 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.18, i32 0, i32 0), i8* %klass_name100, i8* %method_name101)
  call void @compile_err_msg(%sCompileInfo* %info99, i8* %155)
  %156 = bitcast [8192 x i8*]* %lvtable to i8*
  %157 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %156, i64 65536)
  %158 = ptrtoint i8* %155 to i64
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %cond_then_block102, label %cond_end103

cond_end98:                                       ; preds = %cond_end_block87
  %method104 = load %sCLMethod*, %sCLMethod** %method83, align 8
  %160 = getelementptr inbounds %sCLMethod, %sCLMethod* %method104, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %163 = bitcast i8* %162 to i32*
  %num_params105 = load i32, i32* %163, align 4
  %noteqtmp106 = icmp ne i32 %161, %num_params105
  br i1 %noteqtmp106, label %cond_jump_then107, label %cond_end108

cond_then_block102:                               ; preds = %cond_jump_then97
  br label %cond_end103

cond_end103:                                      ; preds = %cond_then_block102, %cond_jump_then97
  call void @xfree(i8* %155)
  ret i1 true

cond_jump_then107:                                ; preds = %cond_end98
  %164 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %165 = bitcast i8* %164 to %sCompileInfo**
  %info109 = load %sCompileInfo*, %sCompileInfo** %165, align 8
  %166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %167 = bitcast i8* %166 to i32*
  %num_params110 = load i32, i32* %167, align 4
  %168 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %169 = bitcast i8* %168 to %sCLMethod**
  %method111 = load %sCLMethod*, %sCLMethod** %169, align 8
  %170 = getelementptr inbounds %sCLMethod, %sCLMethod* %method111, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %173 = bitcast i8* %172 to %sCLClass**
  %klass112 = load %sCLClass*, %sCLClass** %173, align 8
  %174 = getelementptr inbounds %sCLClass, %sCLClass* %klass112, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %177 = bitcast i8* %176 to i8**
  %method_name113 = load i8*, i8** %177, align 8
  %178 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @global_string.19, i32 0, i32 0), i32 %num_params110, i32 %171, i8* %175, i8* %method_name113)
  call void @compile_err_msg(%sCompileInfo* %info109, i8* %178)
  %179 = bitcast [8192 x i8*]* %lvtable to i8*
  %180 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %179, i64 65536)
  %181 = ptrtoint i8* %178 to i64
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %cond_then_block114, label %cond_end115

cond_end108:                                      ; preds = %cond_end98
  %param_types = alloca [32 x %sCLType*]
  %183 = bitcast [32 x %sCLType*]* %param_types to i8*
  store i8* %183, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %i116 = alloca i32
  %184 = bitcast i32* %i116 to i8*
  store i8* %184, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 1, i32* %i116, align 4
  br label %loop_top_block117

cond_then_block114:                               ; preds = %cond_jump_then107
  br label %cond_end115

cond_end115:                                      ; preds = %cond_then_block114, %cond_jump_then107
  call void @xfree(i8* %178)
  ret i1 true

loop_top_block117:                                ; preds = %cond_end146, %cond_end108
  %i118 = load i32, i32* %i116, align 4
  %185 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %186 = bitcast i8* %185 to i32*
  %num_params119 = load i32, i32* %186, align 4
  %letmp120 = icmp slt i32 %i118, %num_params119
  br i1 %letmp120, label %cond_then_block121, label %cond_end_block122

cond_then_block121:                               ; preds = %loop_top_block117
  %187 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %188 = bitcast i8* %187 to %sCLNode***
  %params123 = load %sCLNode**, %sCLNode*** %188, align 8
  %i124 = load i32, i32* %i116, align 4
  %element_address125 = getelementptr %sCLNode*, %sCLNode** %params123, i32 %i124
  %element126 = load %sCLNode*, %sCLNode** %element_address125, align 8
  %189 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %190 = bitcast i8* %189 to %sCompileInfo**
  %info127 = load %sCompileInfo*, %sCompileInfo** %190, align 8
  %191 = call i1 @compile(%sCLNode* %element126, %sCompileInfo* %info127)
  %LOGICAL_DIANEAL128 = icmp eq i1 %191, false
  br i1 %LOGICAL_DIANEAL128, label %cond_jump_then129, label %cond_end130

cond_end_block122:                                ; preds = %loop_top_block117
  %192 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %193 = bitcast i8* %192 to %sCompileInfo**
  %info160 = load %sCompileInfo*, %sCompileInfo** %193, align 8
  %method161 = load %sCLMethod*, %sCLMethod** %method83, align 8
  %194 = getelementptr inbounds %sCLMethod, %sCLMethod* %method161, i32 0, i32 3
  %195 = load %sCLType*, %sCLType** %194, align 8
  %196 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info160, i32 0, i32 6
  store %sCLType* %195, %sCLType** %196, align 8
  br label %cond_end18

cond_jump_then129:                                ; preds = %cond_then_block121
  %197 = bitcast [8192 x i8*]* %lvtable to i8*
  %198 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %197, i64 65536)
  ret i1 false

cond_end130:                                      ; preds = %cond_then_block121
  %199 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %200 = bitcast i8* %199 to [32 x %sCLType*]*
  %i131 = load i32, i32* %i116, align 4
  %201 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %202 = bitcast i8* %201 to %sCompileInfo**
  %info132 = load %sCompileInfo*, %sCompileInfo** %202, align 8
  %203 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info132, i32 0, i32 6
  %204 = load %sCLType*, %sCLType** %203, align 8
  %205 = bitcast [32 x %sCLType*]* %200 to %sCLType**
  %element_address133 = getelementptr %sCLType*, %sCLType** %205, i32 %i131
  store %sCLType* %204, %sCLType** %element_address133, align 8
  %206 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %207 = bitcast i8* %206 to %sCLMethod**
  %method134 = load %sCLMethod*, %sCLMethod** %207, align 8
  %208 = getelementptr inbounds %sCLMethod, %sCLMethod* %method134, i32 0, i32 1
  %209 = bitcast [32 x %sCLParam]* %208 to %sCLParam*
  %i135 = load i32, i32* %i116, align 4
  %element_address136 = getelementptr %sCLParam, %sCLParam* %209, i32 %i135
  %element137 = load %sCLParam, %sCLParam* %element_address136, align 8
  %210 = getelementptr inbounds %sCLParam, %sCLParam* %element_address136, i32 0, i32 1
  %211 = load %sCLType*, %sCLType** %210, align 8
  %212 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %213 = bitcast i8* %212 to %sCLType**
  %generics_types138 = load %sCLType*, %sCLType** %213, align 8
  %214 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %215 = bitcast i8* %214 to %sCompileInfo**
  %info139 = load %sCompileInfo*, %sCompileInfo** %215, align 8
  %216 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info139, i32 0, i32 4
  %217 = load %sParserInfo*, %sParserInfo** %216, align 8
  %218 = call %sCLType* @solve_generics(%sCLType* %211, %sCLType* %generics_types138, %sParserInfo* %217)
  %type = alloca %sCLType*
  %219 = bitcast %sCLType** %type to i8*
  store i8* %219, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store %sCLType* %218, %sCLType** %type, align 8
  %type140 = load %sCLType*, %sCLType** %type, align 8
  %220 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %221 = bitcast i8* %220 to [32 x %sCLType*]*
  %i141 = load i32, i32* %i116, align 4
  %222 = bitcast [32 x %sCLType*]* %221 to %sCLType**
  %element_address142 = getelementptr %sCLType*, %sCLType** %222, i32 %i141
  %element143 = load %sCLType*, %sCLType** %element_address142, align 8
  %223 = call i1 @substitution_posibility(%sCLType* %type140, %sCLType* %element143)
  %LOGICAL_DIANEAL144 = icmp eq i1 %223, false
  br i1 %LOGICAL_DIANEAL144, label %cond_jump_then145, label %cond_end146

cond_jump_then145:                                ; preds = %cond_end130
  %224 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %225 = bitcast i8* %224 to %sCompileInfo**
  %info147 = load %sCompileInfo*, %sCompileInfo** %225, align 8
  %226 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %227 = bitcast i8* %226 to i32*
  %i148 = load i32, i32* %227, align 4
  %228 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %229 = bitcast i8* %228 to %sCLClass**
  %klass149 = load %sCLClass*, %sCLClass** %229, align 8
  %230 = getelementptr inbounds %sCLClass, %sCLClass* %klass149, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %233 = bitcast i8* %232 to i8**
  %method_name150 = load i8*, i8** %233, align 8
  %234 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.20, i32 0, i32 0), i32 %i148, i8* %231, i8* %method_name150)
  call void @compile_err_msg(%sCompileInfo* %info147, i8* %234)
  %235 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %236 = bitcast i8* %235 to %sCLType**
  %type151 = load %sCLType*, %sCLType** %236, align 8
  call void @show_type(%sCLType* %type151)
  %237 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %238 = bitcast i8* %237 to [32 x %sCLType*]*
  %239 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %240 = bitcast i8* %239 to i32*
  %i152 = load i32, i32* %240, align 4
  %241 = bitcast [32 x %sCLType*]* %238 to %sCLType**
  %element_address153 = getelementptr %sCLType*, %sCLType** %241, i32 %i152
  %element154 = load %sCLType*, %sCLType** %element_address153, align 8
  call void @show_type(%sCLType* %element154)
  %242 = bitcast [8192 x i8*]* %lvtable to i8*
  %243 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %242, i64 65536)
  %244 = ptrtoint i8* %234 to i64
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %cond_then_block155, label %cond_end156

cond_end146:                                      ; preds = %cond_end130
  %i157 = load i32, i32* %i116, align 4
  %addtmp158 = add nsw i32 %i157, 1
  store i32 %addtmp158, i32* %i116, align 4
  %subttmp159 = sub nsw i32 %addtmp158, 1
  br label %loop_top_block117

cond_then_block155:                               ; preds = %cond_jump_then145
  br label %cond_end156

cond_end156:                                      ; preds = %cond_then_block155, %cond_jump_then145
  call void @xfree(i8* %234)
  ret i1 true

cond_jump_then164:                                ; preds = %cond_end18
  %246 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %247 = bitcast i8* %246 to %sCompileInfo**
  %info166 = load %sCompileInfo*, %sCompileInfo** %247, align 8
  %248 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info166, i32 0, i32 5
  %249 = load %buffer*, %buffer** %248, align 8
  store %buffer* %249, %buffer** %self, align 8
  store i32 17, i32* %value, align 4
  br label %append_int

cond_end165:                                      ; preds = %inline_func_end202, %cond_end18
  %info205 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %info206 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %250 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info206, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %num_params207 = load i32, i32* %num_params2, align 4
  %subttmp208 = sub nsw i32 %251, %num_params207
  %252 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info205, i32 0, i32 3
  store i32 %subttmp208, i32* %252, align 4
  %num_params209 = load i32, i32* %num_params2, align 4
  %addtmp210 = add nsw i32 %subttmp208, %num_params209
  %info211 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %info212 = load %sCompileInfo*, %sCompileInfo** %info4, align 8
  %253 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info212, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %addtmp213 = add nsw i32 %254, 1
  %255 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info211, i32 0, i32 3
  store i32 %addtmp213, i32* %255, align 4
  %subttmp214 = sub nsw i32 %addtmp213, 1
  %256 = bitcast [8192 x i8*]* %lvtable to i8*
  %257 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %256, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then164
  %258 = bitcast %buffer** %self to i8*
  store i8* %258, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %259 = bitcast i32* %value to i8*
  store i8* %259, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self167 = load %buffer*, %buffer** %self, align 8
  %value168 = load i32, i32* %value, align 4
  %260 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self167, i8* %260, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %261 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %262 = bitcast i8* %261 to %sCompileInfo**
  %info169 = load %sCompileInfo*, %sCompileInfo** %262, align 8
  %263 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info169, i32 0, i32 5
  %264 = load %buffer*, %buffer** %263, align 8
  %265 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %266 = bitcast i8* %265 to i8**
  %method_name170 = load i8*, i8** %266, align 8
  call void @buffer_append_nullterminated_str(%buffer* %264, i8* %method_name170)
  %267 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %268 = bitcast i8* %267 to %sCompileInfo**
  %info171 = load %sCompileInfo*, %sCompileInfo** %268, align 8
  %269 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info171, i32 0, i32 5
  %270 = load %buffer*, %buffer** %269, align 8
  store %buffer* %270, %buffer** %self172, align 8
  br label %alignment

alignment:                                        ; preds = %inline_func_end
  %271 = bitcast %buffer** %self172 to i8*
  store i8* %271, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %self174 = load %buffer*, %buffer** %self172, align 8
  %272 = getelementptr inbounds %buffer, %buffer* %self174, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %len = alloca i32
  %274 = bitcast i32* %len to i8*
  store i8* %274, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %273, i32* %len, align 4
  %len175 = load i32, i32* %len, align 4
  %addtmp176 = add nsw i32 %len175, 3
  %andtmp = and i32 %addtmp176, -4
  store i32 %andtmp, i32* %len, align 4
  %275 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %276 = bitcast i8* %275 to %buffer**
  %self177 = load %buffer*, %buffer** %276, align 8
  %277 = getelementptr inbounds %buffer, %buffer* %self177, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %i178 = alloca i32
  %279 = bitcast i32* %i178 to i8*
  store i8* %279, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 %278, i32* %i178, align 4
  br label %loop_top_block179

inline_func_end173:                               ; preds = %cond_end_block184
  %280 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %281 = bitcast i8* %280 to %sCompileInfo**
  %info189 = load %sCompileInfo*, %sCompileInfo** %281, align 8
  %282 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info189, i32 0, i32 5
  %283 = load %buffer*, %buffer** %282, align 8
  %284 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %285 = bitcast i8* %284 to i32*
  %num_params190 = load i32, i32* %285, align 4
  store %buffer* %283, %buffer** %self191, align 8
  store i32 %num_params190, i32* %value192, align 4
  br label %append_int193

loop_top_block179:                                ; preds = %cond_then_block183, %alignment
  %i180 = load i32, i32* %i178, align 4
  %286 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %287 = bitcast i8* %286 to i32*
  %len181 = load i32, i32* %287, align 4
  %letmp182 = icmp slt i32 %i180, %len181
  br i1 %letmp182, label %cond_then_block183, label %cond_end_block184

cond_then_block183:                               ; preds = %loop_top_block179
  %288 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %289 = bitcast i8* %288 to %buffer**
  %self185 = load %buffer*, %buffer** %289, align 8
  call void @buffer_append_char(%buffer* %self185, i8 0)
  %i186 = load i32, i32* %i178, align 4
  %addtmp187 = add nsw i32 %i186, 1
  store i32 %addtmp187, i32* %i178, align 4
  %subttmp188 = sub nsw i32 %addtmp187, 1
  br label %loop_top_block179

cond_end_block184:                                ; preds = %loop_top_block179
  br label %inline_func_end173

append_int193:                                    ; preds = %inline_func_end173
  %290 = bitcast %buffer** %self191 to i8*
  store i8* %290, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %291 = bitcast i32* %value192 to i8*
  store i8* %291, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self195 = load %buffer*, %buffer** %self191, align 8
  %value196 = load i32, i32* %value192, align 4
  %292 = bitcast i32* %value192 to i8*
  call void @buffer_append(%buffer* %self195, i8* %292, i64 4)
  br label %inline_func_end194

inline_func_end194:                               ; preds = %append_int193
  %last_method_chain = alloca i1
  %293 = bitcast i1* %last_method_chain to i8*
  store i8* %293, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i1 true, i1* %last_method_chain, align 1
  %294 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %295 = bitcast i8* %294 to %sCompileInfo**
  %info197 = load %sCompileInfo*, %sCompileInfo** %295, align 8
  %296 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info197, i32 0, i32 5
  %297 = load %buffer*, %buffer** %296, align 8
  %last_method_chain198 = load i1, i1* %last_method_chain, align 1
  %sext13 = zext i1 %last_method_chain198 to i32
  store %buffer* %297, %buffer** %self199, align 8
  store i32 %sext13, i32* %value200, align 4
  br label %append_int201

append_int201:                                    ; preds = %inline_func_end194
  %298 = bitcast %buffer** %self199 to i8*
  store i8* %298, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %299 = bitcast i32* %value200 to i8*
  store i8* %299, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self203 = load %buffer*, %buffer** %self199, align 8
  %value204 = load i32, i32* %value200, align 4
  %300 = bitcast i32* %value200 to i8*
  call void @buffer_append(%buffer* %self203, i8* %300, i64 4)
  br label %inline_func_end202

inline_func_end202:                               ; preds = %append_int201
  br label %cond_end165
}

define %sCLMethod* @"map_at_charp_sCLMethodp1_src/node"(%map__charp_sCLMethodp* %self, i8* %key, %sCLMethod* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLMethodp*
  store %map__charp_sCLMethodp* %self, %map__charp_sCLMethodp** %self1, align 8
  %2 = bitcast %map__charp_sCLMethodp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %default_value3 = alloca %sCLMethod*
  store %sCLMethod* %default_value, %sCLMethod** %default_value3, align 8
  %4 = bitcast %sCLMethod** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLMethodp**
  %self7 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
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
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLMethodp**
  %self9 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %28 = bitcast i8* %27 to %sCLMethod**
  %default_value28 = load %sCLMethod*, %sCLMethod** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLMethod* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLMethodp**
  %self16 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self16, i32 0, i32 2
  %34 = load %sCLMethod**, %sCLMethod*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLMethod*, %sCLMethod** %34, i32 %it17
  %element19 = load %sCLMethod*, %sCLMethod** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLMethod* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLMethodp**
  %self22 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %56 = bitcast i8* %55 to %sCLMethod**
  %default_value27 = load %sCLMethod*, %sCLMethod** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLMethod* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define %sCLMethod* @"map_at_charp_sCLMethodp2_src/node"(%map__charp_sCLMethodp* %self, i8* %key, %sCLMethod* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLMethodp*
  store %map__charp_sCLMethodp* %self, %map__charp_sCLMethodp** %self1, align 8
  %2 = bitcast %map__charp_sCLMethodp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %default_value3 = alloca %sCLMethod*
  store %sCLMethod* %default_value, %sCLMethod** %default_value3, align 8
  %4 = bitcast %sCLMethod** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLMethodp**
  %self7 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
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
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLMethodp**
  %self9 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %28 = bitcast i8* %27 to %sCLMethod**
  %default_value28 = load %sCLMethod*, %sCLMethod** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLMethod* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLMethodp**
  %self16 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self16, i32 0, i32 2
  %34 = load %sCLMethod**, %sCLMethod*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLMethod*, %sCLMethod** %34, i32 %it17
  %element19 = load %sCLMethod*, %sCLMethod** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLMethod* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLMethodp**
  %self22 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %56 = bitcast i8* %55 to %sCLMethod**
  %default_value27 = load %sCLMethod*, %sCLMethod** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLMethod* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define i1 @compile_plus(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.21, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_primitive_plus(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_string.22, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.23, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.24, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.25, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.27, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type34 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type34)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info37 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp39 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 3
  store i32 %addtmp39, i32* %49, align 4
  %subttmp40 = sub nsw i32 %addtmp39, 1
  %50 = bitcast [8192 x i8*]* %lvtable to i8*
  %51 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %50, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %53 = bitcast i8* %52 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %53, align 8
  %54 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %55 = load %buffer*, %buffer** %54, align 8
  store %buffer* %55, %buffer** %self, align 8
  store i32 3, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 4
  %61 = load %sParserInfo*, %sParserInfo** %60, align 8
  %62 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.26, i32 0, i32 0), %sParserInfo* %61)
  %63 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 6
  store %sCLType* %62, %sCLType** %63, align 8
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %64 = bitcast %buffer** %self to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %65 = bitcast i32* %value to i8*
  store i8* %65, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %66 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %66, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_minus(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.28, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_primitive_minus(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_string.29, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.30, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.31, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.32, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.34, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type34 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type34)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info37 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp39 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 3
  store i32 %addtmp39, i32* %49, align 4
  %subttmp40 = sub nsw i32 %addtmp39, 1
  %50 = bitcast [8192 x i8*]* %lvtable to i8*
  %51 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %50, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %53 = bitcast i8* %52 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %53, align 8
  %54 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %55 = load %buffer*, %buffer** %54, align 8
  store %buffer* %55, %buffer** %self, align 8
  store i32 4, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 4
  %61 = load %sParserInfo*, %sParserInfo** %60, align 8
  %62 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.33, i32 0, i32 0), %sParserInfo* %61)
  %63 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 6
  store %sCLType* %62, %sCLType** %63, align 8
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %64 = bitcast %buffer** %self to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %65 = bitcast i32* %value to i8*
  store i8* %65, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %66 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %66, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_and_and(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @global_string.35, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.36, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.37, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.38, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.40, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type34 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type34)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info37 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp39 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 3
  store i32 %addtmp39, i32* %49, align 4
  %subttmp40 = sub nsw i32 %addtmp39, 1
  %50 = bitcast [8192 x i8*]* %lvtable to i8*
  %51 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %50, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %53 = bitcast i8* %52 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %53, align 8
  %54 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %55 = load %buffer*, %buffer** %54, align 8
  store %buffer* %55, %buffer** %self, align 8
  store i32 34, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 4
  %61 = load %sParserInfo*, %sParserInfo** %60, align 8
  %62 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.39, i32 0, i32 0), %sParserInfo* %61)
  %63 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 6
  store %sCLType* %62, %sCLType** %63, align 8
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %64 = bitcast %buffer** %self to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %65 = bitcast i32* %value to i8*
  store i8* %65, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %66 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %66, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_or_or(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @global_string.41, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.42, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.43, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.44, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.46, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type34 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type34)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info37 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp39 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 3
  store i32 %addtmp39, i32* %49, align 4
  %subttmp40 = sub nsw i32 %addtmp39, 1
  %50 = bitcast [8192 x i8*]* %lvtable to i8*
  %51 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %50, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %53 = bitcast i8* %52 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %53, align 8
  %54 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %55 = load %buffer*, %buffer** %54, align 8
  store %buffer* %55, %buffer** %self, align 8
  store i32 35, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 4
  %61 = load %sParserInfo*, %sParserInfo** %60, align 8
  %62 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.45, i32 0, i32 0), %sParserInfo* %61)
  %63 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 6
  store %sCLType* %62, %sCLType** %63, align 8
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %64 = bitcast %buffer** %self to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %65 = bitcast i32* %value to i8*
  store i8* %65, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %66 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %66, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_store_variable(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value37 = alloca i32
  %self36 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %right_value_type = alloca %sCLType*
  %11 = bitcast %sCLType** %right_value_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %right_value_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 5
  %13 = load i8*, i8** %12, align 8
  %var_name = alloca i8*
  %14 = bitcast i8** %var_name to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %13, i8** %var_name, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %15 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 4
  %16 = load %sParserInfo*, %sParserInfo** %15, align 8
  %var_name8 = load i8*, i8** %var_name, align 8
  %17 = call %sVar* @get_variable_from_table(%sParserInfo* %16, i8* %var_name8)
  %v = alloca %sVar*
  %18 = bitcast %sVar** %v to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sVar* %17, %sVar** %v, align 8
  %v9 = load %sVar*, %sVar** %v, align 8
  %eqtmpX = icmp eq %sVar* %v9, null
  br i1 %eqtmpX, label %cond_jump_then10, label %cond_end11

cond_jump_then10:                                 ; preds = %cond_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %20 = bitcast i8* %19 to %sCompileInfo**
  %info12 = load %sCompileInfo*, %sCompileInfo** %20, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %22 = bitcast i8* %21 to i8**
  %var_name13 = load i8*, i8** %22, align 8
  %23 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.47, i32 0, i32 0), i8* %var_name13)
  call void @compile_err_msg(%sCompileInfo* %info12, i8* %23)
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  %26 = ptrtoint i8* %23 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block, label %cond_end14

cond_end11:                                       ; preds = %cond_end
  %v15 = load %sVar*, %sVar** %v, align 8
  %28 = getelementptr inbounds %sVar, %sVar* %v15, i32 0, i32 2
  %29 = load %sCLType*, %sCLType** %28, align 8
  %eqtmpX16 = icmp eq %sCLType* %29, null
  br i1 %eqtmpX16, label %cond_jump_then17, label %cond_else_block

cond_then_block:                                  ; preds = %cond_jump_then10
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block, %cond_jump_then10
  call void @xfree(i8* %23)
  ret i1 true

cond_jump_then17:                                 ; preds = %cond_end11
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %31 = bitcast i8* %30 to %sVar**
  %v19 = load %sVar*, %sVar** %31, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %33 = bitcast i8* %32 to %sCLType**
  %right_value_type20 = load %sCLType*, %sCLType** %33, align 8
  %34 = getelementptr inbounds %sVar, %sVar* %v19, i32 0, i32 2
  store %sCLType* %right_value_type20, %sCLType** %34, align 8
  br label %cond_end18

cond_else_block:                                  ; preds = %cond_end11
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %36 = bitcast i8* %35 to %sVar**
  %v21 = load %sVar*, %sVar** %36, align 8
  %37 = getelementptr inbounds %sVar, %sVar* %v21, i32 0, i32 2
  %38 = load %sCLType*, %sCLType** %37, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %40 = bitcast i8* %39 to %sCLType**
  %right_value_type22 = load %sCLType*, %sCLType** %40, align 8
  %41 = call i1 @substitution_posibility(%sCLType* %38, %sCLType* %right_value_type22)
  %LOGICAL_DIANEAL23 = icmp eq i1 %41, false
  br i1 %LOGICAL_DIANEAL23, label %cond_jump_then24, label %cond_end25

cond_end18:                                       ; preds = %cond_end25, %cond_jump_then17
  %info27 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %42 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info27, i32 0, i32 7
  %43 = load i1, i1* %42, align 1
  %LOGICAL_DIANEAL28 = icmp eq i1 %43, false
  br i1 %LOGICAL_DIANEAL28, label %cond_jump_then29, label %cond_end30

cond_jump_then24:                                 ; preds = %cond_else_block
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %45 = bitcast i8* %44 to %sCompileInfo**
  %info26 = load %sCompileInfo*, %sCompileInfo** %45, align 8
  call void @compile_err_msg(%sCompileInfo* %info26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_string.48, i32 0, i32 0))
  %46 = bitcast [8192 x i8*]* %lvtable to i8*
  %47 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %46, i64 65536)
  ret i1 true

cond_end25:                                       ; preds = %cond_else_block
  br label %cond_end18

cond_jump_then29:                                 ; preds = %cond_end18
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %49 = bitcast i8* %48 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %49, align 8
  %50 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 5
  %51 = load %buffer*, %buffer** %50, align 8
  store %buffer* %51, %buffer** %self, align 8
  store i32 5, i32* %value, align 4
  br label %append_int

cond_end30:                                       ; preds = %inline_func_end39, %cond_end18
  %52 = bitcast [8192 x i8*]* %lvtable to i8*
  %53 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %52, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then29
  %54 = bitcast %buffer** %self to i8*
  store i8* %54, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %55 = bitcast i32* %value to i8*
  store i8* %55, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %self32 = load %buffer*, %buffer** %self, align 8
  %value33 = load i32, i32* %value, align 4
  %56 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self32, i8* %56, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %58 = bitcast i8* %57 to %sCompileInfo**
  %info34 = load %sCompileInfo*, %sCompileInfo** %58, align 8
  %59 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info34, i32 0, i32 5
  %60 = load %buffer*, %buffer** %59, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %62 = bitcast i8* %61 to %sVar**
  %v35 = load %sVar*, %sVar** %62, align 8
  %63 = getelementptr inbounds %sVar, %sVar* %v35, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store %buffer* %60, %buffer** %self36, align 8
  store i32 %64, i32* %value37, align 4
  br label %append_int38

append_int38:                                     ; preds = %inline_func_end
  %65 = bitcast %buffer** %self36 to i8*
  store i8* %65, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %66 = bitcast i32* %value37 to i8*
  store i8* %66, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %self40 = load %buffer*, %buffer** %self36, align 8
  %value41 = load i32, i32* %value37, align 4
  %67 = bitcast i32* %value37 to i8*
  call void @buffer_append(%buffer* %self40, i8* %67, i64 4)
  br label %inline_func_end39

inline_func_end39:                                ; preds = %append_int38
  br label %cond_end30
}

define i1 @compile_load_variable(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value19 = alloca i32
  %self18 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 5
  %5 = load i8*, i8** %4, align 8
  %var_name = alloca i8*
  %6 = bitcast i8** %var_name to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %5, i8** %var_name, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 4
  %8 = load %sParserInfo*, %sParserInfo** %7, align 8
  %var_name5 = load i8*, i8** %var_name, align 8
  %9 = call %sVar* @get_variable_from_table(%sParserInfo* %8, i8* %var_name5)
  %v = alloca %sVar*
  %10 = bitcast %sVar** %v to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sVar* %9, %sVar** %v, align 8
  %v6 = load %sVar*, %sVar** %v, align 8
  %eqtmpX = icmp eq %sVar* %v6, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %12 = bitcast i8* %11 to %sCompileInfo**
  %info7 = load %sCompileInfo*, %sCompileInfo** %12, align 8
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %14 = bitcast i8* %13 to i8**
  %var_name8 = load i8*, i8** %14, align 8
  %15 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.49, i32 0, i32 0), i8* %var_name8)
  call void @compile_err_msg(%sCompileInfo* %info7, i8* %15)
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  %18 = ptrtoint i8* %15 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %cond_then_block, label %cond_end9

cond_end:                                         ; preds = %entry
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %20 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 7
  %21 = load i1, i1* %20, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %21, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then11, label %cond_end12

cond_then_block:                                  ; preds = %cond_jump_then
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block, %cond_jump_then
  call void @xfree(i8* %15)
  ret i1 true

cond_jump_then11:                                 ; preds = %cond_end
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %23 = bitcast i8* %22 to %sCompileInfo**
  %info13 = load %sCompileInfo*, %sCompileInfo** %23, align 8
  %24 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info13, i32 0, i32 5
  %25 = load %buffer*, %buffer** %24, align 8
  store %buffer* %25, %buffer** %self, align 8
  store i32 6, i32* %value, align 4
  br label %append_int

cond_end12:                                       ; preds = %inline_func_end21, %cond_end
  %info24 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info25 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %26 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %27, 1
  %28 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 3
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %info26 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %v27 = load %sVar*, %sVar** %v, align 8
  %29 = getelementptr inbounds %sVar, %sVar* %v27, i32 0, i32 2
  %30 = load %sCLType*, %sCLType** %29, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info26, i32 0, i32 6
  store %sCLType* %30, %sCLType** %31, align 8
  %32 = bitcast [8192 x i8*]* %lvtable to i8*
  %33 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %32, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then11
  %34 = bitcast %buffer** %self to i8*
  store i8* %34, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %35 = bitcast i32* %value to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self14 = load %buffer*, %buffer** %self, align 8
  %value15 = load i32, i32* %value, align 4
  %36 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self14, i8* %36, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %38 = bitcast i8* %37 to %sCompileInfo**
  %info16 = load %sCompileInfo*, %sCompileInfo** %38, align 8
  %39 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 5
  %40 = load %buffer*, %buffer** %39, align 8
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %42 = bitcast i8* %41 to %sVar**
  %v17 = load %sVar*, %sVar** %42, align 8
  %43 = getelementptr inbounds %sVar, %sVar* %v17, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store %buffer* %40, %buffer** %self18, align 8
  store i32 %44, i32* %value19, align 4
  br label %append_int20

append_int20:                                     ; preds = %inline_func_end
  %45 = bitcast %buffer** %self18 to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %46 = bitcast i32* %value19 to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self22 = load %buffer*, %buffer** %self18, align 8
  %value23 = load i32, i32* %value19, align 4
  %47 = bitcast i32* %value19 to i8*
  call void @buffer_append(%buffer* %self22, i8* %47, i64 4)
  br label %inline_func_end21

inline_func_end21:                                ; preds = %append_int20
  br label %cond_end12
}

define i1 @compile_primitive_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value31 = alloca i32
  %self30 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %20 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info13, i32 0, i32 4
  %21 = load %sParserInfo*, %sParserInfo** %20, align 8
  %22 = call i1 @type_identify_with_class_name(%sCLType* %left_type12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.50, i32 0, i32 0), %sParserInfo* %21)
  br i1 %22, label %cond_jump_then14, label %cond_else_block

cond_jump_then14:                                 ; preds = %cond_end10
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %24 = bitcast i8* %23 to %sCompileInfo**
  %info16 = load %sCompileInfo*, %sCompileInfo** %24, align 8
  %25 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 7
  %26 = load i1, i1* %25, align 1
  %LOGICAL_DIANEAL17 = icmp eq i1 %26, false
  br i1 %LOGICAL_DIANEAL17, label %cond_jump_then18, label %cond_end19

cond_else_block:                                  ; preds = %cond_end10
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %28 = bitcast i8* %27 to %sCompileInfo**
  %info25 = load %sCompileInfo*, %sCompileInfo** %28, align 8
  %29 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info25, i32 0, i32 7
  %30 = load i1, i1* %29, align 1
  %LOGICAL_DIANEAL26 = icmp eq i1 %30, false
  br i1 %LOGICAL_DIANEAL26, label %cond_jump_then27, label %cond_end28

cond_end15:                                       ; preds = %cond_end28, %cond_end19
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info39 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info39, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %subttmp = sub nsw i32 %32, 2
  %33 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  store i32 %subttmp, i32* %33, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info40 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info41 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %34 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %addtmp42 = add nsw i32 %35, 1
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info40, i32 0, i32 3
  store i32 %addtmp42, i32* %36, align 4
  %subttmp43 = sub nsw i32 %addtmp42, 1
  %info44 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info45 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %37 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info45, i32 0, i32 4
  %38 = load %sParserInfo*, %sParserInfo** %37, align 8
  %39 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.53, i32 0, i32 0), %sParserInfo* %38)
  %40 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info44, i32 0, i32 6
  store %sCLType* %39, %sCLType** %40, align 8
  %41 = bitcast [8192 x i8*]* %lvtable to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret i1 true

cond_jump_then18:                                 ; preds = %cond_jump_then14
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %44 = bitcast i8* %43 to %sCompileInfo**
  %info20 = load %sCompileInfo*, %sCompileInfo** %44, align 8
  %45 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info20, i32 0, i32 5
  %46 = load %buffer*, %buffer** %45, align 8
  store %buffer* %46, %buffer** %self, align 8
  store i32 7, i32* %value, align 4
  br label %append_int

cond_end19:                                       ; preds = %inline_func_end, %cond_jump_then14
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sCompileInfo**
  %info23 = load %sCompileInfo*, %sCompileInfo** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %50 = bitcast i8* %49 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %50, align 8
  %51 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 4
  %52 = load %sParserInfo*, %sParserInfo** %51, align 8
  %53 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.51, i32 0, i32 0), %sParserInfo* %52)
  %54 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info23, i32 0, i32 6
  store %sCLType* %53, %sCLType** %54, align 8
  br label %cond_end15

append_int:                                       ; preds = %cond_jump_then18
  %55 = bitcast %buffer** %self to i8*
  store i8* %55, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %56 = bitcast i32* %value to i8*
  store i8* %56, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self21 = load %buffer*, %buffer** %self, align 8
  %value22 = load i32, i32* %value, align 4
  %57 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self21, i8* %57, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end19

cond_jump_then27:                                 ; preds = %cond_else_block
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info29 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info29, i32 0, i32 5
  %61 = load %buffer*, %buffer** %60, align 8
  store %buffer* %61, %buffer** %self30, align 8
  store i32 32, i32* %value31, align 4
  br label %append_int32

cond_end28:                                       ; preds = %inline_func_end33, %cond_else_block
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sCompileInfo**
  %info36 = load %sCompileInfo*, %sCompileInfo** %63, align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %65 = bitcast i8* %64 to %sCompileInfo**
  %info37 = load %sCompileInfo*, %sCompileInfo** %65, align 8
  %66 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 4
  %67 = load %sParserInfo*, %sParserInfo** %66, align 8
  %68 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.52, i32 0, i32 0), %sParserInfo* %67)
  %69 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 6
  store %sCLType* %68, %sCLType** %69, align 8
  br label %cond_end15

append_int32:                                     ; preds = %cond_jump_then27
  %70 = bitcast %buffer** %self30 to i8*
  store i8* %70, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %71 = bitcast i32* %value31 to i8*
  store i8* %71, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self34 = load %buffer*, %buffer** %self30, align 8
  %value35 = load i32, i32* %value31, align 4
  %72 = bitcast i32* %value31 to i8*
  call void @buffer_append(%buffer* %self34, i8* %72, i64 4)
  br label %inline_func_end33

inline_func_end33:                                ; preds = %append_int32
  br label %cond_end28
}

define i1 @compile_primitive_not_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value31 = alloca i32
  %self30 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %20 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info13, i32 0, i32 4
  %21 = load %sParserInfo*, %sParserInfo** %20, align 8
  %22 = call i1 @type_identify_with_class_name(%sCLType* %left_type12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.54, i32 0, i32 0), %sParserInfo* %21)
  br i1 %22, label %cond_jump_then14, label %cond_else_block

cond_jump_then14:                                 ; preds = %cond_end10
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %24 = bitcast i8* %23 to %sCompileInfo**
  %info16 = load %sCompileInfo*, %sCompileInfo** %24, align 8
  %25 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 7
  %26 = load i1, i1* %25, align 1
  %LOGICAL_DIANEAL17 = icmp eq i1 %26, false
  br i1 %LOGICAL_DIANEAL17, label %cond_jump_then18, label %cond_end19

cond_else_block:                                  ; preds = %cond_end10
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %28 = bitcast i8* %27 to %sCompileInfo**
  %info25 = load %sCompileInfo*, %sCompileInfo** %28, align 8
  %29 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info25, i32 0, i32 7
  %30 = load i1, i1* %29, align 1
  %LOGICAL_DIANEAL26 = icmp eq i1 %30, false
  br i1 %LOGICAL_DIANEAL26, label %cond_jump_then27, label %cond_end28

cond_end15:                                       ; preds = %cond_end28, %cond_end19
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info39 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info39, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %subttmp = sub nsw i32 %32, 2
  %33 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  store i32 %subttmp, i32* %33, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info40 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info41 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %34 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %addtmp42 = add nsw i32 %35, 1
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info40, i32 0, i32 3
  store i32 %addtmp42, i32* %36, align 4
  %subttmp43 = sub nsw i32 %addtmp42, 1
  %info44 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info45 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %37 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info45, i32 0, i32 4
  %38 = load %sParserInfo*, %sParserInfo** %37, align 8
  %39 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.57, i32 0, i32 0), %sParserInfo* %38)
  %40 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info44, i32 0, i32 6
  store %sCLType* %39, %sCLType** %40, align 8
  %41 = bitcast [8192 x i8*]* %lvtable to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret i1 true

cond_jump_then18:                                 ; preds = %cond_jump_then14
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %44 = bitcast i8* %43 to %sCompileInfo**
  %info20 = load %sCompileInfo*, %sCompileInfo** %44, align 8
  %45 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info20, i32 0, i32 5
  %46 = load %buffer*, %buffer** %45, align 8
  store %buffer* %46, %buffer** %self, align 8
  store i32 8, i32* %value, align 4
  br label %append_int

cond_end19:                                       ; preds = %inline_func_end, %cond_jump_then14
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sCompileInfo**
  %info23 = load %sCompileInfo*, %sCompileInfo** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %50 = bitcast i8* %49 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %50, align 8
  %51 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 4
  %52 = load %sParserInfo*, %sParserInfo** %51, align 8
  %53 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.55, i32 0, i32 0), %sParserInfo* %52)
  %54 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info23, i32 0, i32 6
  store %sCLType* %53, %sCLType** %54, align 8
  br label %cond_end15

append_int:                                       ; preds = %cond_jump_then18
  %55 = bitcast %buffer** %self to i8*
  store i8* %55, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %56 = bitcast i32* %value to i8*
  store i8* %56, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self21 = load %buffer*, %buffer** %self, align 8
  %value22 = load i32, i32* %value, align 4
  %57 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self21, i8* %57, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end19

cond_jump_then27:                                 ; preds = %cond_else_block
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info29 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info29, i32 0, i32 5
  %61 = load %buffer*, %buffer** %60, align 8
  store %buffer* %61, %buffer** %self30, align 8
  store i32 33, i32* %value31, align 4
  br label %append_int32

cond_end28:                                       ; preds = %inline_func_end33, %cond_else_block
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sCompileInfo**
  %info36 = load %sCompileInfo*, %sCompileInfo** %63, align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %65 = bitcast i8* %64 to %sCompileInfo**
  %info37 = load %sCompileInfo*, %sCompileInfo** %65, align 8
  %66 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 4
  %67 = load %sParserInfo*, %sParserInfo** %66, align 8
  %68 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.56, i32 0, i32 0), %sParserInfo* %67)
  %69 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 6
  store %sCLType* %68, %sCLType** %69, align 8
  br label %cond_end15

append_int32:                                     ; preds = %cond_jump_then27
  %70 = bitcast %buffer** %self30 to i8*
  store i8* %70, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %71 = bitcast i32* %value31 to i8*
  store i8* %71, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self34 = load %buffer*, %buffer** %self30, align 8
  %value35 = load i32, i32* %value31, align 4
  %72 = bitcast i32* %value31 to i8*
  call void @buffer_append(%buffer* %self34, i8* %72, i64 4)
  br label %inline_func_end33

inline_func_end33:                                ; preds = %append_int32
  br label %cond_end28
}

define i1 @compile_primitive_greater(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_string.58, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.59, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.60, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.61, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.63, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type34 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type34)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info37 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp39 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 3
  store i32 %addtmp39, i32* %49, align 4
  %subttmp40 = sub nsw i32 %addtmp39, 1
  %info41 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info42 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %50 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info42, i32 0, i32 4
  %51 = load %sParserInfo*, %sParserInfo** %50, align 8
  %52 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.64, i32 0, i32 0), %sParserInfo* %51)
  %53 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 6
  store %sCLType* %52, %sCLType** %53, align 8
  %54 = bitcast [8192 x i8*]* %lvtable to i8*
  %55 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %54, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %59 = load %buffer*, %buffer** %58, align 8
  store %buffer* %59, %buffer** %self, align 8
  store i32 11, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %61 = bitcast i8* %60 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %61, align 8
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %63, align 8
  %64 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 4
  %65 = load %sParserInfo*, %sParserInfo** %64, align 8
  %66 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.62, i32 0, i32 0), %sParserInfo* %65)
  %67 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 6
  store %sCLType* %66, %sCLType** %67, align 8
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %68 = bitcast %buffer** %self to i8*
  store i8* %68, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %69 = bitcast i32* %value to i8*
  store i8* %69, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %70 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %70, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_primitive_lesser(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_string.65, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.66, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.67, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.68, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.69, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type32 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type32)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info33 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info34 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info34, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info33, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp37 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %addtmp37, i32* %49, align 4
  %subttmp38 = sub nsw i32 %addtmp37, 1
  %info39 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info40 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %50 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info40, i32 0, i32 4
  %51 = load %sParserInfo*, %sParserInfo** %50, align 8
  %52 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.70, i32 0, i32 0), %sParserInfo* %51)
  %53 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info39, i32 0, i32 6
  store %sCLType* %52, %sCLType** %53, align 8
  %54 = bitcast [8192 x i8*]* %lvtable to i8*
  %55 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %54, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %59 = load %buffer*, %buffer** %58, align 8
  store %buffer* %59, %buffer** %self, align 8
  store i32 9, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %60 = bitcast %buffer** %self to i8*
  store i8* %60, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %61 = bitcast i32* %value to i8*
  store i8* %61, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %62 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %62, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_primitive_lesser_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_string.71, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.72, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.73, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.74, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.76, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type34 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type34)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info37 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp39 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 3
  store i32 %addtmp39, i32* %49, align 4
  %subttmp40 = sub nsw i32 %addtmp39, 1
  %info41 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info42 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %50 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info42, i32 0, i32 4
  %51 = load %sParserInfo*, %sParserInfo** %50, align 8
  %52 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.77, i32 0, i32 0), %sParserInfo* %51)
  %53 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 6
  store %sCLType* %52, %sCLType** %53, align 8
  %54 = bitcast [8192 x i8*]* %lvtable to i8*
  %55 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %54, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %59 = load %buffer*, %buffer** %58, align 8
  store %buffer* %59, %buffer** %self, align 8
  store i32 10, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %61 = bitcast i8* %60 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %61, align 8
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %63, align 8
  %64 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 4
  %65 = load %sParserInfo*, %sParserInfo** %64, align 8
  %66 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.75, i32 0, i32 0), %sParserInfo* %65)
  %67 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 6
  store %sCLType* %66, %sCLType** %67, align 8
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %68 = bitcast %buffer** %self to i8*
  store i8* %68, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %69 = bitcast i32* %value to i8*
  store i8* %69, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %70 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %70, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_primitive_greater_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %6 = call i1 @compile(%sCLNode* %5, %sCompileInfo* %info4)
  %LOGICAL_DIANEAL = icmp eq i1 %6, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 6
  %10 = load %sCLType*, %sCLType** %9, align 8
  %left_type = alloca %sCLType*
  %11 = bitcast %sCLType** %left_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 11
  %13 = load %sCLNode*, %sCLNode** %12, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = call i1 @compile(%sCLNode* %13, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %18 = load %sCLType*, %sCLType** %17, align 8
  %right_type = alloca %sCLType*
  %19 = bitcast %sCLType** %right_type to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_string.78, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.79, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.80, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 4
  %32 = load %sParserInfo*, %sParserInfo** %31, align 8
  %33 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.81, i32 0, i32 0), %sParserInfo* %32)
  br i1 %33, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %35 = bitcast i8* %34 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %35, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL25 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL25, label %cond_jump_then26, label %cond_end27

cond_else_block:                                  ; preds = %cond_end16
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  call void @compile_err_msg(%sCompileInfo* %info33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.83, i32 0, i32 0))
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %41 = bitcast i8* %40 to %sCLType**
  %left_type34 = load %sCLType*, %sCLType** %41, align 8
  call void @show_type(%sCLType* %left_type34)
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %cond_end27
  %info35 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info36 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %subttmp = sub nsw i32 %45, 2
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 3
  store i32 %subttmp, i32* %46, align 4
  %addtmp = add nsw i32 %subttmp, 2
  %info37 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info38 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %addtmp39 = add nsw i32 %48, 1
  %49 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info37, i32 0, i32 3
  store i32 %addtmp39, i32* %49, align 4
  %subttmp40 = sub nsw i32 %addtmp39, 1
  %info41 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info42 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %50 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info42, i32 0, i32 4
  %51 = load %sParserInfo*, %sParserInfo** %50, align 8
  %52 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.84, i32 0, i32 0), %sParserInfo* %51)
  %53 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 6
  store %sCLType* %52, %sCLType** %53, align 8
  %54 = bitcast [8192 x i8*]* %lvtable to i8*
  %55 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %54, i64 65536)
  ret i1 true

cond_jump_then26:                                 ; preds = %cond_jump_then22
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  %58 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %59 = load %buffer*, %buffer** %58, align 8
  store %buffer* %59, %buffer** %self, align 8
  store i32 12, i32* %value, align 4
  br label %append_int

cond_end27:                                       ; preds = %inline_func_end, %cond_jump_then22
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %61 = bitcast i8* %60 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %61, align 8
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %63 = bitcast i8* %62 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %63, align 8
  %64 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 4
  %65 = load %sParserInfo*, %sParserInfo** %64, align 8
  %66 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.82, i32 0, i32 0), %sParserInfo* %65)
  %67 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info31, i32 0, i32 6
  store %sCLType* %66, %sCLType** %67, align 8
  br label %cond_end23

append_int:                                       ; preds = %cond_jump_then26
  %68 = bitcast %buffer** %self to i8*
  store i8* %68, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %69 = bitcast i32* %value to i8*
  store i8* %69, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self29 = load %buffer*, %buffer** %self, align 8
  %value30 = load i32, i32* %value, align 4
  %70 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self29, i8* %70, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end27
}

define i1 @compile_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.85, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_not_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.86, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_greater(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.87, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_lesser(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.88, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_lesser_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.89, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_greater_equal(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %params = alloca [32 x %sCLNode*]
  %4 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %num_params = alloca i32
  %5 = bitcast i32* %num_params to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %num_params, align 4
  %num_params3 = load i32, i32* %num_params, align 4
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 9
  %7 = load %sCLNode*, %sCLNode** %6, align 8
  %8 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address = getelementptr %sCLNode*, %sCLNode** %8, i32 %num_params3
  store %sCLNode* %7, %sCLNode** %element_address, align 8
  %num_params5 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %num_params5, 1
  store i32 %addtmp, i32* %num_params, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %num_params6 = load i32, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %9 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 11
  %10 = load %sCLNode*, %sCLNode** %9, align 8
  %11 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address8 = getelementptr %sCLNode*, %sCLNode** %11, i32 %num_params6
  store %sCLNode* %10, %sCLNode** %element_address8, align 8
  %num_params9 = load i32, i32* %num_params, align 4
  %addtmp10 = add nsw i32 %num_params9, 1
  store i32 %addtmp10, i32* %num_params, align 4
  %subttmp11 = sub nsw i32 %addtmp10, 1
  %num_params12 = load i32, i32* %num_params, align 4
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %13 = call i1 @invoke_method(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.90, i32 0, i32 0), i32 %num_params12, %sCLNode** %12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i1 true
}

define i1 @compile_true_value(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 7
  %5 = load i1, i1* %4, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %sCompileInfo**
  %info4 = load %sCompileInfo*, %sCompileInfo** %7, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 5
  %9 = load %buffer*, %buffer** %8, align 8
  store %buffer* %9, %buffer** %self, align 8
  store i32 27, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end, %entry
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 4
  %11 = load %sParserInfo*, %sParserInfo** %10, align 8
  %12 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.91, i32 0, i32 0), %sParserInfo* %11)
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 6
  store %sCLType* %12, %sCLType** %13, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %addtmp = add nsw i32 %15, 1
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 3
  store i32 %addtmp, i32* %16, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %19 = bitcast %buffer** %self to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i32* %value to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self5 = load %buffer*, %buffer** %self, align 8
  %value6 = load i32, i32* %value, align 4
  %21 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self5, i8* %21, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end
}

define i1 @compile_false_value(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 7
  %5 = load i1, i1* %4, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %sCompileInfo**
  %info4 = load %sCompileInfo*, %sCompileInfo** %7, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 5
  %9 = load %buffer*, %buffer** %8, align 8
  store %buffer* %9, %buffer** %self, align 8
  store i32 28, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end, %entry
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 4
  %11 = load %sParserInfo*, %sParserInfo** %10, align 8
  %12 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.92, i32 0, i32 0), %sParserInfo* %11)
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 6
  store %sCLType* %12, %sCLType** %13, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %addtmp = add nsw i32 %15, 1
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 3
  store i32 %addtmp, i32* %16, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %19 = bitcast %buffer** %self to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i32* %value to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self5 = load %buffer*, %buffer** %self, align 8
  %value6 = load i32, i32* %value, align 4
  %21 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self5, i8* %21, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end
}

define i1 @compile_null_value(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 7
  %5 = load i1, i1* %4, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %sCompileInfo**
  %info4 = load %sCompileInfo*, %sCompileInfo** %7, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 5
  %9 = load %buffer*, %buffer** %8, align 8
  store %buffer* %9, %buffer** %self, align 8
  store i32 31, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end, %entry
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 4
  %11 = load %sParserInfo*, %sParserInfo** %10, align 8
  %12 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.93, i32 0, i32 0), %sParserInfo* %11)
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 6
  store %sCLType* %12, %sCLType** %13, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %addtmp = add nsw i32 %15, 1
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 3
  store i32 %addtmp, i32* %16, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %19 = bitcast %buffer** %self to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i32* %value to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self5 = load %buffer*, %buffer** %self, align 8
  %value6 = load i32, i32* %value, align 4
  %21 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self5, i8* %21, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end
}

define i1 @compile_command(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 7
  %5 = load i1, i1* %4, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %sCompileInfo**
  %info4 = load %sCompileInfo*, %sCompileInfo** %7, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 5
  %9 = load %buffer*, %buffer** %8, align 8
  store %buffer* %9, %buffer** %self, align 8
  store i32 37, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end, %entry
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 4
  %11 = load %sParserInfo*, %sParserInfo** %10, align 8
  %12 = call %sCLType* @create_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.94, i32 0, i32 0), %sParserInfo* %11)
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 6
  store %sCLType* %12, %sCLType** %13, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %addtmp = add nsw i32 %15, 1
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 3
  store i32 %addtmp, i32* %16, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %19 = bitcast %buffer** %self to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i32* %value to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self5 = load %buffer*, %buffer** %self, align 8
  %value6 = load i32, i32* %value, align 4
  %21 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self5, i8* %21, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end
}

define i1 @compile_if_expression(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value176 = alloca i32
  %self175 = alloca %buffer*
  %value165 = alloca i32
  %self164 = alloca %buffer*
  %value133 = alloca i32
  %self132 = alloca %buffer*
  %value125 = alloca i32
  %self124 = alloca %buffer*
  %value118 = alloca i32
  %self117 = alloca %buffer*
  %value111 = alloca i32
  %self110 = alloca %buffer*
  %value68 = alloca i32
  %self67 = alloca %buffer*
  %value60 = alloca i32
  %self59 = alloca %buffer*
  %value42 = alloca i32
  %self41 = alloca %buffer*
  %value34 = alloca i32
  %self33 = alloca %buffer*
  %value27 = alloca i32
  %self26 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 3
  %5 = load %anon78, %anon78* %4, align 8
  %6 = bitcast %anon78* %4 to %anon79*
  %7 = load %anon79, %anon79* %6, align 8
  %8 = getelementptr inbounds %anon79, %anon79* %6, i32 0, i32 0
  %9 = load %sCLNode*, %sCLNode** %8, align 8
  %if_expression = alloca %sCLNode*
  %10 = bitcast %sCLNode** %if_expression to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %9, %sCLNode** %if_expression, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %11 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 3
  %12 = load %anon78, %anon78* %11, align 8
  %13 = bitcast %anon78* %11 to %anon79*
  %14 = load %anon79, %anon79* %13, align 8
  %15 = getelementptr inbounds %anon79, %anon79* %13, i32 0, i32 1
  %16 = load %sCLNodeBlock*, %sCLNodeBlock** %15, align 8
  %if_node_block = alloca %sCLNodeBlock*
  %17 = bitcast %sCLNodeBlock** %if_node_block to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNodeBlock* %16, %sCLNodeBlock** %if_node_block, align 8
  %node5 = load %sCLNode*, %sCLNode** %node1, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %node5, i32 0, i32 3
  %19 = load %anon78, %anon78* %18, align 8
  %20 = bitcast %anon78* %18 to %anon79*
  %21 = load %anon79, %anon79* %20, align 8
  %22 = getelementptr inbounds %anon79, %anon79* %20, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %num_elif = alloca i32
  %24 = bitcast i32* %num_elif to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %23, i32* %num_elif, align 4
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %25 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 3
  %26 = load %anon78, %anon78* %25, align 8
  %27 = bitcast %anon78* %25 to %anon79*
  %28 = load %anon79, %anon79* %27, align 8
  %29 = getelementptr inbounds %anon79, %anon79* %27, i32 0, i32 3
  %30 = bitcast [64 x i8*]* %29 to i8**
  %31 = bitcast i8** %30 to %sCLNode**
  %elif_expressions = alloca %sCLNode**
  %32 = bitcast %sCLNode*** %elif_expressions to i8*
  store i8* %32, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLNode** %31, %sCLNode*** %elif_expressions, align 8
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %33 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 3
  %34 = load %anon78, %anon78* %33, align 8
  %35 = bitcast %anon78* %33 to %anon79*
  %36 = load %anon79, %anon79* %35, align 8
  %37 = getelementptr inbounds %anon79, %anon79* %35, i32 0, i32 4
  %38 = bitcast [64 x i8*]* %37 to i8**
  %39 = bitcast i8** %38 to %sCLNodeBlock**
  %elif_blocks = alloca %sCLNodeBlock**
  %40 = bitcast %sCLNodeBlock*** %elif_blocks to i8*
  store i8* %40, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLNodeBlock** %39, %sCLNodeBlock*** %elif_blocks, align 8
  %node8 = load %sCLNode*, %sCLNode** %node1, align 8
  %41 = getelementptr inbounds %sCLNode, %sCLNode* %node8, i32 0, i32 3
  %42 = load %anon78, %anon78* %41, align 8
  %43 = bitcast %anon78* %41 to %anon79*
  %44 = load %anon79, %anon79* %43, align 8
  %45 = getelementptr inbounds %anon79, %anon79* %43, i32 0, i32 5
  %46 = load %sCLNodeBlock*, %sCLNodeBlock** %45, align 8
  %else_block = alloca %sCLNodeBlock*
  %47 = bitcast %sCLNodeBlock** %else_block to i8*
  store i8* %47, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLNodeBlock* %46, %sCLNodeBlock** %else_block, align 8
  %if_expression9 = load %sCLNode*, %sCLNode** %if_expression, align 8
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %48 = call i1 @compile(%sCLNode* %if_expression9, %sCompileInfo* %info10)
  %LOGICAL_DIANEAL = icmp eq i1 %48, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %49 = bitcast [8192 x i8*]* %lvtable to i8*
  %50 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %49, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %51 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 6
  %52 = load %sCLType*, %sCLType** %51, align 8
  %info12 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %53 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info12, i32 0, i32 4
  %54 = load %sParserInfo*, %sParserInfo** %53, align 8
  %55 = call i1 @type_identify_with_class_name(%sCLType* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.95, i32 0, i32 0), %sParserInfo* %54)
  %LOGICAL_DIANEAL13 = icmp eq i1 %55, false
  br i1 %LOGICAL_DIANEAL13, label %cond_jump_then14, label %cond_end15

cond_jump_then14:                                 ; preds = %cond_end
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %57 = bitcast i8* %56 to %sCompileInfo**
  %info16 = load %sCompileInfo*, %sCompileInfo** %57, align 8
  call void @compile_err_msg(%sCompileInfo* %info16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @global_string.96, i32 0, i32 0))
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info17, i32 0, i32 6
  %61 = load %sCLType*, %sCLType** %60, align 8
  call void @show_type(%sCLType* %61)
  %62 = bitcast [8192 x i8*]* %lvtable to i8*
  %63 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %62, i64 65536)
  ret i1 true

cond_end15:                                       ; preds = %cond_end
  %len = alloca i32
  %64 = bitcast i32* %len to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 0, i32* %len, align 4
  %info18 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %65 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info18, i32 0, i32 7
  %66 = load i1, i1* %65, align 1
  %LOGICAL_DIANEAL19 = icmp eq i1 %66, false
  br i1 %LOGICAL_DIANEAL19, label %cond_jump_then20, label %cond_end21

cond_jump_then20:                                 ; preds = %cond_end15
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %68 = bitcast i8* %67 to %sCompileInfo**
  %info22 = load %sCompileInfo*, %sCompileInfo** %68, align 8
  %69 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info22, i32 0, i32 5
  %70 = load %buffer*, %buffer** %69, align 8
  store %buffer* %70, %buffer** %self, align 8
  store i32 13, i32* %value, align 4
  br label %append_int

cond_end21:                                       ; preds = %inline_func_end44, %cond_end15
  %info47 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info48 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %71 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info48, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %subttmp = sub nsw i32 %72, 1
  %73 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info47, i32 0, i32 3
  store i32 %subttmp, i32* %73, align 4
  %addtmp = add nsw i32 %subttmp, 1
  %if_node_block49 = load %sCLNodeBlock*, %sCLNodeBlock** %if_node_block, align 8
  %info50 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %74 = call i1 @compile_block(%sCLNodeBlock* %if_node_block49, %sCompileInfo* %info50)
  %LOGICAL_DIANEAL51 = icmp eq i1 %74, false
  br i1 %LOGICAL_DIANEAL51, label %cond_jump_then52, label %cond_end53

append_int:                                       ; preds = %cond_jump_then20
  %75 = bitcast %buffer** %self to i8*
  store i8* %75, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %76 = bitcast i32* %value to i8*
  store i8* %76, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self23 = load %buffer*, %buffer** %self, align 8
  %value24 = load i32, i32* %value, align 4
  %77 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self23, i8* %77, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %79 = bitcast i8* %78 to %sCompileInfo**
  %info25 = load %sCompileInfo*, %sCompileInfo** %79, align 8
  %80 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info25, i32 0, i32 5
  %81 = load %buffer*, %buffer** %80, align 8
  store %buffer* %81, %buffer** %self26, align 8
  store i32 2, i32* %value27, align 4
  br label %append_int28

append_int28:                                     ; preds = %inline_func_end
  %82 = bitcast %buffer** %self26 to i8*
  store i8* %82, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %83 = bitcast i32* %value27 to i8*
  store i8* %83, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self30 = load %buffer*, %buffer** %self26, align 8
  %value31 = load i32, i32* %value27, align 4
  %84 = bitcast i32* %value27 to i8*
  call void @buffer_append(%buffer* %self30, i8* %84, i64 4)
  br label %inline_func_end29

inline_func_end29:                                ; preds = %append_int28
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %86 = bitcast i8* %85 to %sCompileInfo**
  %info32 = load %sCompileInfo*, %sCompileInfo** %86, align 8
  %87 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info32, i32 0, i32 5
  %88 = load %buffer*, %buffer** %87, align 8
  store %buffer* %88, %buffer** %self33, align 8
  store i32 15, i32* %value34, align 4
  br label %append_int35

append_int35:                                     ; preds = %inline_func_end29
  %89 = bitcast %buffer** %self33 to i8*
  store i8* %89, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %90 = bitcast i32* %value34 to i8*
  store i8* %90, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self37 = load %buffer*, %buffer** %self33, align 8
  %value38 = load i32, i32* %value34, align 4
  %91 = bitcast i32* %value34 to i8*
  call void @buffer_append(%buffer* %self37, i8* %91, i64 4)
  br label %inline_func_end36

inline_func_end36:                                ; preds = %append_int35
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %93 = bitcast i8* %92 to %sCompileInfo**
  %info39 = load %sCompileInfo*, %sCompileInfo** %93, align 8
  %94 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info39, i32 0, i32 5
  %95 = load %buffer*, %buffer** %94, align 8
  %96 = getelementptr inbounds %buffer, %buffer* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 4
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %101 = bitcast i8* %100 to %sCompileInfo**
  %info40 = load %sCompileInfo*, %sCompileInfo** %101, align 8
  %102 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info40, i32 0, i32 5
  %103 = load %buffer*, %buffer** %102, align 8
  store %buffer* %103, %buffer** %self41, align 8
  store i32 0, i32* %value42, align 4
  br label %append_int43

append_int43:                                     ; preds = %inline_func_end36
  %104 = bitcast %buffer** %self41 to i8*
  store i8* %104, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %105 = bitcast i32* %value42 to i8*
  store i8* %105, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self45 = load %buffer*, %buffer** %self41, align 8
  %value46 = load i32, i32* %value42, align 4
  %106 = bitcast i32* %value42 to i8*
  call void @buffer_append(%buffer* %self45, i8* %106, i64 4)
  br label %inline_func_end44

inline_func_end44:                                ; preds = %append_int43
  br label %cond_end21

cond_jump_then52:                                 ; preds = %cond_end21
  %107 = bitcast [8192 x i8*]* %lvtable to i8*
  %108 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %107, i64 65536)
  ret i1 false

cond_end53:                                       ; preds = %cond_end21
  %end_points = alloca [65 x i32]
  %109 = bitcast [65 x i32]* %end_points to i8*
  store i8* %109, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %110 = bitcast [65 x i32]* %end_points to i8*
  %111 = call i8* @memset(i8* %110, i32 0, i64 260)
  %info54 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %112 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info54, i32 0, i32 7
  %113 = load i1, i1* %112, align 1
  %LOGICAL_DIANEAL55 = icmp eq i1 %113, false
  br i1 %LOGICAL_DIANEAL55, label %cond_jump_then56, label %cond_end57

cond_jump_then56:                                 ; preds = %cond_end53
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %115 = bitcast i8* %114 to %sCompileInfo**
  %info58 = load %sCompileInfo*, %sCompileInfo** %115, align 8
  %116 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info58, i32 0, i32 5
  %117 = load %buffer*, %buffer** %116, align 8
  store %buffer* %117, %buffer** %self59, align 8
  store i32 15, i32* %value60, align 4
  br label %append_int61

cond_end57:                                       ; preds = %inline_func_end70, %cond_end53
  %num_elif73 = load i32, i32* %num_elif, align 4
  %gttmp = icmp sgt i32 %num_elif73, 0
  br i1 %gttmp, label %cond_jump_then74, label %cond_else_block

append_int61:                                     ; preds = %cond_jump_then56
  %118 = bitcast %buffer** %self59 to i8*
  store i8* %118, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %119 = bitcast i32* %value60 to i8*
  store i8* %119, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self63 = load %buffer*, %buffer** %self59, align 8
  %value64 = load i32, i32* %value60, align 4
  %120 = bitcast i32* %value60 to i8*
  call void @buffer_append(%buffer* %self63, i8* %120, i64 4)
  br label %inline_func_end62

inline_func_end62:                                ; preds = %append_int61
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %122 = bitcast i8* %121 to [65 x i32]*
  %123 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %124 = bitcast i8* %123 to %sCompileInfo**
  %info65 = load %sCompileInfo*, %sCompileInfo** %124, align 8
  %125 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info65, i32 0, i32 5
  %126 = load %buffer*, %buffer** %125, align 8
  %127 = getelementptr inbounds %buffer, %buffer* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = bitcast [65 x i32]* %122 to i32*
  %element_address = getelementptr i32, i32* %129, i32 0
  store i32 %128, i32* %element_address, align 4
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %131 = bitcast i8* %130 to %sCompileInfo**
  %info66 = load %sCompileInfo*, %sCompileInfo** %131, align 8
  %132 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info66, i32 0, i32 5
  %133 = load %buffer*, %buffer** %132, align 8
  store %buffer* %133, %buffer** %self67, align 8
  store i32 0, i32* %value68, align 4
  br label %append_int69

append_int69:                                     ; preds = %inline_func_end62
  %134 = bitcast %buffer** %self67 to i8*
  store i8* %134, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %135 = bitcast i32* %value68 to i8*
  store i8* %135, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self71 = load %buffer*, %buffer** %self67, align 8
  %value72 = load i32, i32* %value68, align 4
  %136 = bitcast i32* %value68 to i8*
  call void @buffer_append(%buffer* %self71, i8* %136, i64 4)
  br label %inline_func_end70

inline_func_end70:                                ; preds = %append_int69
  br label %cond_end57

cond_jump_then74:                                 ; preds = %cond_end57
  %i = alloca i32
  %137 = bitcast i32* %i to i8*
  store i8* %137, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_else_block:                                  ; preds = %cond_end57
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %139 = bitcast i8* %138 to %sCompileInfo**
  %info196 = load %sCompileInfo*, %sCompileInfo** %139, align 8
  %140 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info196, i32 0, i32 7
  %141 = load i1, i1* %140, align 1
  %LOGICAL_DIANEAL197 = icmp eq i1 %141, false
  br i1 %LOGICAL_DIANEAL197, label %cond_jump_then198, label %cond_end199

cond_end75:                                       ; preds = %cond_end199, %cond_end187
  %else_block208 = load %sCLNodeBlock*, %sCLNodeBlock** %else_block, align 8
  %142 = ptrtoint %sCLNodeBlock* %else_block208 to i64
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %cond_jump_then209, label %cond_end210

loop_top_block:                                   ; preds = %cond_end162, %cond_jump_then74
  %i76 = load i32, i32* %i, align 4
  %144 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %145 = bitcast i8* %144 to i32*
  %num_elif77 = load i32, i32* %145, align 4
  %letmp = icmp slt i32 %i76, %num_elif77
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %147 = bitcast i8* %146 to %sCompileInfo**
  %info78 = load %sCompileInfo*, %sCompileInfo** %147, align 8
  %148 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info78, i32 0, i32 7
  %149 = load i1, i1* %148, align 1
  %LOGICAL_DIANEAL79 = icmp eq i1 %149, false
  br i1 %LOGICAL_DIANEAL79, label %cond_jump_then80, label %cond_end81

cond_end_block:                                   ; preds = %loop_top_block
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %151 = bitcast i8* %150 to %sCompileInfo**
  %info184 = load %sCompileInfo*, %sCompileInfo** %151, align 8
  %152 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info184, i32 0, i32 7
  %153 = load i1, i1* %152, align 1
  %LOGICAL_DIANEAL185 = icmp eq i1 %153, false
  br i1 %LOGICAL_DIANEAL185, label %cond_jump_then186, label %cond_end187

cond_jump_then80:                                 ; preds = %cond_then_block
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %155 = bitcast i8* %154 to %sCompileInfo**
  %info82 = load %sCompileInfo*, %sCompileInfo** %155, align 8
  %156 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info82, i32 0, i32 5
  %157 = load %buffer*, %buffer** %156, align 8
  %158 = getelementptr inbounds %buffer, %buffer* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %161 = bitcast i8* %160 to i32*
  %len83 = load i32, i32* %161, align 4
  %162 = ptrtoint i8* %159 to i64
  %sext1 = sext i32 %len83 to i64
  %multtmp = mul nsw i64 %sext1, 1
  %addtmp84 = add nsw i64 %162, %multtmp
  %163 = inttoptr i64 %addtmp84 to i8*
  %164 = bitcast i8* %163 to i32*
  %p = alloca i32*
  %165 = bitcast i32** %p to i8*
  store i8* %165, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32* %164, i32** %p, align 8
  %p85 = load i32*, i32** %p, align 8
  %166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %167 = bitcast i8* %166 to %sCompileInfo**
  %info86 = load %sCompileInfo*, %sCompileInfo** %167, align 8
  %168 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info86, i32 0, i32 5
  %169 = load %buffer*, %buffer** %168, align 8
  %170 = getelementptr inbounds %buffer, %buffer* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %p85, align 4
  br label %cond_end81

cond_end81:                                       ; preds = %cond_jump_then80, %cond_then_block
  %172 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %173 = bitcast i8* %172 to %sCLNode***
  %elif_expressions87 = load %sCLNode**, %sCLNode*** %173, align 8
  %i88 = load i32, i32* %i, align 4
  %element_address89 = getelementptr %sCLNode*, %sCLNode** %elif_expressions87, i32 %i88
  %element = load %sCLNode*, %sCLNode** %element_address89, align 8
  %expression = alloca %sCLNode*
  %174 = bitcast %sCLNode** %expression to i8*
  store i8* %174, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store %sCLNode* %element, %sCLNode** %expression, align 8
  %175 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %176 = bitcast i8* %175 to %sCLNodeBlock***
  %elif_blocks90 = load %sCLNodeBlock**, %sCLNodeBlock*** %176, align 8
  %i91 = load i32, i32* %i, align 4
  %element_address92 = getelementptr %sCLNodeBlock*, %sCLNodeBlock** %elif_blocks90, i32 %i91
  %element93 = load %sCLNodeBlock*, %sCLNodeBlock** %element_address92, align 8
  %node_block = alloca %sCLNodeBlock*
  %177 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %177, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store %sCLNodeBlock* %element93, %sCLNodeBlock** %node_block, align 8
  %expression94 = load %sCLNode*, %sCLNode** %expression, align 8
  %178 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %179 = bitcast i8* %178 to %sCompileInfo**
  %info95 = load %sCompileInfo*, %sCompileInfo** %179, align 8
  %180 = call i1 @compile(%sCLNode* %expression94, %sCompileInfo* %info95)
  %LOGICAL_DIANEAL96 = icmp eq i1 %180, false
  br i1 %LOGICAL_DIANEAL96, label %cond_jump_then97, label %cond_end98

cond_jump_then97:                                 ; preds = %cond_end81
  %181 = bitcast [8192 x i8*]* %lvtable to i8*
  %182 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %181, i64 65536)
  ret i1 false

cond_end98:                                       ; preds = %cond_end81
  %183 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %184 = bitcast i8* %183 to %sCompileInfo**
  %info99 = load %sCompileInfo*, %sCompileInfo** %184, align 8
  %185 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info99, i32 0, i32 6
  %186 = load %sCLType*, %sCLType** %185, align 8
  %187 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %188 = bitcast i8* %187 to %sCompileInfo**
  %info100 = load %sCompileInfo*, %sCompileInfo** %188, align 8
  %189 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info100, i32 0, i32 4
  %190 = load %sParserInfo*, %sParserInfo** %189, align 8
  %191 = call i1 @type_identify_with_class_name(%sCLType* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.97, i32 0, i32 0), %sParserInfo* %190)
  %LOGICAL_DIANEAL101 = icmp eq i1 %191, false
  br i1 %LOGICAL_DIANEAL101, label %cond_jump_then102, label %cond_end103

cond_jump_then102:                                ; preds = %cond_end98
  %192 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %193 = bitcast i8* %192 to %sCompileInfo**
  %info104 = load %sCompileInfo*, %sCompileInfo** %193, align 8
  call void @compile_err_msg(%sCompileInfo* %info104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @global_string.98, i32 0, i32 0))
  %194 = bitcast [8192 x i8*]* %lvtable to i8*
  %195 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %194, i64 65536)
  ret i1 true

cond_end103:                                      ; preds = %cond_end98
  %196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %197 = bitcast i8* %196 to %sCompileInfo**
  %info105 = load %sCompileInfo*, %sCompileInfo** %197, align 8
  %198 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info105, i32 0, i32 7
  %199 = load i1, i1* %198, align 1
  %LOGICAL_DIANEAL106 = icmp eq i1 %199, false
  br i1 %LOGICAL_DIANEAL106, label %cond_jump_then107, label %cond_end108

cond_jump_then107:                                ; preds = %cond_end103
  %200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %201 = bitcast i8* %200 to %sCompileInfo**
  %info109 = load %sCompileInfo*, %sCompileInfo** %201, align 8
  %202 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info109, i32 0, i32 5
  %203 = load %buffer*, %buffer** %202, align 8
  store %buffer* %203, %buffer** %self110, align 8
  store i32 13, i32* %value111, align 4
  br label %append_int112

cond_end108:                                      ; preds = %inline_func_end135, %cond_end103
  %204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %205 = bitcast i8* %204 to %sCompileInfo**
  %info138 = load %sCompileInfo*, %sCompileInfo** %205, align 8
  %206 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %207 = bitcast i8* %206 to %sCompileInfo**
  %info139 = load %sCompileInfo*, %sCompileInfo** %207, align 8
  %208 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info139, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %subttmp140 = sub nsw i32 %209, 1
  %210 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info138, i32 0, i32 3
  store i32 %subttmp140, i32* %210, align 4
  %addtmp141 = add nsw i32 %subttmp140, 1
  %node_block142 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %211 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %212 = bitcast i8* %211 to %sCompileInfo**
  %info143 = load %sCompileInfo*, %sCompileInfo** %212, align 8
  %213 = call i1 @compile_block(%sCLNodeBlock* %node_block142, %sCompileInfo* %info143)
  %LOGICAL_DIANEAL144 = icmp eq i1 %213, false
  br i1 %LOGICAL_DIANEAL144, label %cond_jump_then145, label %cond_end146

append_int112:                                    ; preds = %cond_jump_then107
  %214 = bitcast %buffer** %self110 to i8*
  store i8* %214, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %215 = bitcast i32* %value111 to i8*
  store i8* %215, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self114 = load %buffer*, %buffer** %self110, align 8
  %value115 = load i32, i32* %value111, align 4
  %216 = bitcast i32* %value111 to i8*
  call void @buffer_append(%buffer* %self114, i8* %216, i64 4)
  br label %inline_func_end113

inline_func_end113:                               ; preds = %append_int112
  %217 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %218 = bitcast i8* %217 to %sCompileInfo**
  %info116 = load %sCompileInfo*, %sCompileInfo** %218, align 8
  %219 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info116, i32 0, i32 5
  %220 = load %buffer*, %buffer** %219, align 8
  store %buffer* %220, %buffer** %self117, align 8
  store i32 2, i32* %value118, align 4
  br label %append_int119

append_int119:                                    ; preds = %inline_func_end113
  %221 = bitcast %buffer** %self117 to i8*
  store i8* %221, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %222 = bitcast i32* %value118 to i8*
  store i8* %222, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self121 = load %buffer*, %buffer** %self117, align 8
  %value122 = load i32, i32* %value118, align 4
  %223 = bitcast i32* %value118 to i8*
  call void @buffer_append(%buffer* %self121, i8* %223, i64 4)
  br label %inline_func_end120

inline_func_end120:                               ; preds = %append_int119
  %224 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %225 = bitcast i8* %224 to %sCompileInfo**
  %info123 = load %sCompileInfo*, %sCompileInfo** %225, align 8
  %226 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info123, i32 0, i32 5
  %227 = load %buffer*, %buffer** %226, align 8
  store %buffer* %227, %buffer** %self124, align 8
  store i32 15, i32* %value125, align 4
  br label %append_int126

append_int126:                                    ; preds = %inline_func_end120
  %228 = bitcast %buffer** %self124 to i8*
  store i8* %228, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %229 = bitcast i32* %value125 to i8*
  store i8* %229, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self128 = load %buffer*, %buffer** %self124, align 8
  %value129 = load i32, i32* %value125, align 4
  %230 = bitcast i32* %value125 to i8*
  call void @buffer_append(%buffer* %self128, i8* %230, i64 4)
  br label %inline_func_end127

inline_func_end127:                               ; preds = %append_int126
  %231 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %232 = bitcast i8* %231 to %sCompileInfo**
  %info130 = load %sCompileInfo*, %sCompileInfo** %232, align 8
  %233 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info130, i32 0, i32 5
  %234 = load %buffer*, %buffer** %233, align 8
  %235 = getelementptr inbounds %buffer, %buffer* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %238 = bitcast i8* %237 to i32*
  store i32 %236, i32* %238, align 4
  %239 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %240 = bitcast i8* %239 to %sCompileInfo**
  %info131 = load %sCompileInfo*, %sCompileInfo** %240, align 8
  %241 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info131, i32 0, i32 5
  %242 = load %buffer*, %buffer** %241, align 8
  store %buffer* %242, %buffer** %self132, align 8
  store i32 0, i32* %value133, align 4
  br label %append_int134

append_int134:                                    ; preds = %inline_func_end127
  %243 = bitcast %buffer** %self132 to i8*
  store i8* %243, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %244 = bitcast i32* %value133 to i8*
  store i8* %244, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self136 = load %buffer*, %buffer** %self132, align 8
  %value137 = load i32, i32* %value133, align 4
  %245 = bitcast i32* %value133 to i8*
  call void @buffer_append(%buffer* %self136, i8* %245, i64 4)
  br label %inline_func_end135

inline_func_end135:                               ; preds = %append_int134
  br label %cond_end108

cond_jump_then145:                                ; preds = %cond_end108
  %246 = bitcast [8192 x i8*]* %lvtable to i8*
  %247 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %246, i64 65536)
  ret i1 false

cond_end146:                                      ; preds = %cond_end108
  %248 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %249 = bitcast i8* %248 to %sCompileInfo**
  %info147 = load %sCompileInfo*, %sCompileInfo** %249, align 8
  %250 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info147, i32 0, i32 7
  %251 = load i1, i1* %250, align 1
  %LOGICAL_DIANEAL148 = icmp eq i1 %251, false
  br i1 %LOGICAL_DIANEAL148, label %cond_jump_then149, label %cond_end150

cond_jump_then149:                                ; preds = %cond_end146
  %252 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %253 = bitcast i8* %252 to %sCompileInfo**
  %info151 = load %sCompileInfo*, %sCompileInfo** %253, align 8
  %254 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info151, i32 0, i32 5
  %255 = load %buffer*, %buffer** %254, align 8
  %256 = getelementptr inbounds %buffer, %buffer* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %259 = bitcast i8* %258 to i32*
  %len152 = load i32, i32* %259, align 4
  %260 = ptrtoint i8* %257 to i64
  %sext1153 = sext i32 %len152 to i64
  %multtmp154 = mul nsw i64 %sext1153, 1
  %addtmp155 = add nsw i64 %260, %multtmp154
  %261 = inttoptr i64 %addtmp155 to i8*
  %262 = bitcast i8* %261 to i32*
  %p156 = alloca i32*
  %263 = bitcast i32** %p156 to i8*
  store i8* %263, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32* %262, i32** %p156, align 8
  %p157 = load i32*, i32** %p156, align 8
  %264 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %265 = bitcast i8* %264 to %sCompileInfo**
  %info158 = load %sCompileInfo*, %sCompileInfo** %265, align 8
  %266 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info158, i32 0, i32 5
  %267 = load %buffer*, %buffer** %266, align 8
  %268 = getelementptr inbounds %buffer, %buffer* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %p157, align 4
  br label %cond_end150

cond_end150:                                      ; preds = %cond_jump_then149, %cond_end146
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %271 = bitcast i8* %270 to %sCompileInfo**
  %info159 = load %sCompileInfo*, %sCompileInfo** %271, align 8
  %272 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info159, i32 0, i32 7
  %273 = load i1, i1* %272, align 1
  %LOGICAL_DIANEAL160 = icmp eq i1 %273, false
  br i1 %LOGICAL_DIANEAL160, label %cond_jump_then161, label %cond_end162

cond_jump_then161:                                ; preds = %cond_end150
  %274 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %275 = bitcast i8* %274 to %sCompileInfo**
  %info163 = load %sCompileInfo*, %sCompileInfo** %275, align 8
  %276 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info163, i32 0, i32 5
  %277 = load %buffer*, %buffer** %276, align 8
  store %buffer* %277, %buffer** %self164, align 8
  store i32 15, i32* %value165, align 4
  br label %append_int166

cond_end162:                                      ; preds = %inline_func_end178, %cond_end150
  %i181 = load i32, i32* %i, align 4
  %addtmp182 = add nsw i32 %i181, 1
  store i32 %addtmp182, i32* %i, align 4
  %subttmp183 = sub nsw i32 %addtmp182, 1
  br label %loop_top_block

append_int166:                                    ; preds = %cond_jump_then161
  %278 = bitcast %buffer** %self164 to i8*
  store i8* %278, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %279 = bitcast i32* %value165 to i8*
  store i8* %279, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self168 = load %buffer*, %buffer** %self164, align 8
  %value169 = load i32, i32* %value165, align 4
  %280 = bitcast i32* %value165 to i8*
  call void @buffer_append(%buffer* %self168, i8* %280, i64 4)
  br label %inline_func_end167

inline_func_end167:                               ; preds = %append_int166
  %281 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %282 = bitcast i8* %281 to [65 x i32]*
  %283 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %284 = bitcast i8* %283 to i32*
  %i170 = load i32, i32* %284, align 4
  %addtmp171 = add nsw i32 1, %i170
  %285 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %286 = bitcast i8* %285 to %sCompileInfo**
  %info172 = load %sCompileInfo*, %sCompileInfo** %286, align 8
  %287 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info172, i32 0, i32 5
  %288 = load %buffer*, %buffer** %287, align 8
  %289 = getelementptr inbounds %buffer, %buffer* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = bitcast [65 x i32]* %282 to i32*
  %element_address173 = getelementptr i32, i32* %291, i32 %addtmp171
  store i32 %290, i32* %element_address173, align 4
  %292 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %293 = bitcast i8* %292 to %sCompileInfo**
  %info174 = load %sCompileInfo*, %sCompileInfo** %293, align 8
  %294 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info174, i32 0, i32 5
  %295 = load %buffer*, %buffer** %294, align 8
  store %buffer* %295, %buffer** %self175, align 8
  store i32 0, i32* %value176, align 4
  br label %append_int177

append_int177:                                    ; preds = %inline_func_end167
  %296 = bitcast %buffer** %self175 to i8*
  store i8* %296, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %297 = bitcast i32* %value176 to i8*
  store i8* %297, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self179 = load %buffer*, %buffer** %self175, align 8
  %value180 = load i32, i32* %value176, align 4
  %298 = bitcast i32* %value176 to i8*
  call void @buffer_append(%buffer* %self179, i8* %298, i64 4)
  br label %inline_func_end178

inline_func_end178:                               ; preds = %append_int177
  br label %cond_end162

cond_jump_then186:                                ; preds = %cond_end_block
  %299 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %300 = bitcast i8* %299 to %sCompileInfo**
  %info188 = load %sCompileInfo*, %sCompileInfo** %300, align 8
  %301 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info188, i32 0, i32 5
  %302 = load %buffer*, %buffer** %301, align 8
  %303 = getelementptr inbounds %buffer, %buffer* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %306 = bitcast i8* %305 to i32*
  %len189 = load i32, i32* %306, align 4
  %307 = ptrtoint i8* %304 to i64
  %sext1190 = sext i32 %len189 to i64
  %multtmp191 = mul nsw i64 %sext1190, 1
  %addtmp192 = add nsw i64 %307, %multtmp191
  %308 = inttoptr i64 %addtmp192 to i8*
  %309 = bitcast i8* %308 to i32*
  %p193 = alloca i32*
  %310 = bitcast i32** %p193 to i8*
  store i8* %310, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32* %309, i32** %p193, align 8
  %p194 = load i32*, i32** %p193, align 8
  %311 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %312 = bitcast i8* %311 to %sCompileInfo**
  %info195 = load %sCompileInfo*, %sCompileInfo** %312, align 8
  %313 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info195, i32 0, i32 5
  %314 = load %buffer*, %buffer** %313, align 8
  %315 = getelementptr inbounds %buffer, %buffer* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %p194, align 4
  br label %cond_end187

cond_end187:                                      ; preds = %cond_jump_then186, %cond_end_block
  br label %cond_end75

cond_jump_then198:                                ; preds = %cond_else_block
  %317 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %318 = bitcast i8* %317 to %sCompileInfo**
  %info200 = load %sCompileInfo*, %sCompileInfo** %318, align 8
  %319 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info200, i32 0, i32 5
  %320 = load %buffer*, %buffer** %319, align 8
  %321 = getelementptr inbounds %buffer, %buffer* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %324 = bitcast i8* %323 to i32*
  %len201 = load i32, i32* %324, align 4
  %325 = ptrtoint i8* %322 to i64
  %sext1202 = sext i32 %len201 to i64
  %multtmp203 = mul nsw i64 %sext1202, 1
  %addtmp204 = add nsw i64 %325, %multtmp203
  %326 = inttoptr i64 %addtmp204 to i8*
  %327 = bitcast i8* %326 to i32*
  %p205 = alloca i32*
  %328 = bitcast i32** %p205 to i8*
  store i8* %328, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32* %327, i32** %p205, align 8
  %p206 = load i32*, i32** %p205, align 8
  %329 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %330 = bitcast i8* %329 to %sCompileInfo**
  %info207 = load %sCompileInfo*, %sCompileInfo** %330, align 8
  %331 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info207, i32 0, i32 5
  %332 = load %buffer*, %buffer** %331, align 8
  %333 = getelementptr inbounds %buffer, %buffer* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %p206, align 4
  br label %cond_end199

cond_end199:                                      ; preds = %cond_jump_then198, %cond_else_block
  br label %cond_end75

cond_jump_then209:                                ; preds = %cond_end75
  %335 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %336 = bitcast i8* %335 to %sCLNodeBlock**
  %else_block211 = load %sCLNodeBlock*, %sCLNodeBlock** %336, align 8
  %337 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %338 = bitcast i8* %337 to %sCompileInfo**
  %info212 = load %sCompileInfo*, %sCompileInfo** %338, align 8
  %339 = call i1 @compile_block(%sCLNodeBlock* %else_block211, %sCompileInfo* %info212)
  %LOGICAL_DIANEAL213 = icmp eq i1 %339, false
  br i1 %LOGICAL_DIANEAL213, label %cond_jump_then214, label %cond_end215

cond_end210:                                      ; preds = %cond_end215, %cond_end75
  %i216 = alloca i32
  %340 = bitcast i32* %i216 to i8*
  store i8* %340, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 0, i32* %i216, align 4
  br label %loop_top_block217

cond_jump_then214:                                ; preds = %cond_jump_then209
  %341 = bitcast [8192 x i8*]* %lvtable to i8*
  %342 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %341, i64 65536)
  ret i1 false

cond_end215:                                      ; preds = %cond_jump_then209
  br label %cond_end210

loop_top_block217:                                ; preds = %cond_then_block222, %cond_end210
  %i218 = load i32, i32* %i216, align 4
  %343 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %344 = bitcast i8* %343 to i32*
  %num_elif219 = load i32, i32* %344, align 4
  %addtmp220 = add nsw i32 %num_elif219, 1
  %letmp221 = icmp slt i32 %i218, %addtmp220
  br i1 %letmp221, label %cond_then_block222, label %cond_end_block223

cond_then_block222:                               ; preds = %loop_top_block217
  %345 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %346 = bitcast i8* %345 to %sCompileInfo**
  %info224 = load %sCompileInfo*, %sCompileInfo** %346, align 8
  %347 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info224, i32 0, i32 5
  %348 = load %buffer*, %buffer** %347, align 8
  %349 = getelementptr inbounds %buffer, %buffer* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %352 = bitcast i8* %351 to [65 x i32]*
  %i225 = load i32, i32* %i216, align 4
  %353 = bitcast [65 x i32]* %352 to i32*
  %element_address226 = getelementptr i32, i32* %353, i32 %i225
  %element227 = load i32, i32* %element_address226, align 4
  %354 = ptrtoint i8* %350 to i64
  %sext1228 = sext i32 %element227 to i64
  %multtmp229 = mul nsw i64 %sext1228, 1
  %addtmp230 = add nsw i64 %354, %multtmp229
  %355 = inttoptr i64 %addtmp230 to i8*
  %356 = bitcast i8* %355 to i32*
  %p231 = alloca i32*
  %357 = bitcast i32** %p231 to i8*
  store i8* %357, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32* %356, i32** %p231, align 8
  %p232 = load i32*, i32** %p231, align 8
  %358 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %359 = bitcast i8* %358 to %sCompileInfo**
  %info233 = load %sCompileInfo*, %sCompileInfo** %359, align 8
  %360 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info233, i32 0, i32 5
  %361 = load %buffer*, %buffer** %360, align 8
  %362 = getelementptr inbounds %buffer, %buffer* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %p232, align 4
  %i234 = load i32, i32* %i216, align 4
  %addtmp235 = add nsw i32 %i234, 1
  store i32 %addtmp235, i32* %i216, align 4
  %subttmp236 = sub nsw i32 %addtmp235, 1
  br label %loop_top_block217

cond_end_block223:                                ; preds = %loop_top_block217
  %info237 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info238 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %364 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info238, i32 0, i32 4
  %365 = load %sParserInfo*, %sParserInfo** %364, align 8
  %366 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.99, i32 0, i32 0), %sParserInfo* %365)
  %367 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info237, i32 0, i32 6
  store %sCLType* %366, %sCLType** %367, align 8
  %368 = bitcast [8192 x i8*]* %lvtable to i8*
  %369 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %368, i64 65536)
  ret i1 true
}

define i1 @compile_while_expression(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value72 = alloca i32
  %self71 = alloca %buffer*
  %value64 = alloca i32
  %self63 = alloca %buffer*
  %value38 = alloca i32
  %self37 = alloca %buffer*
  %value30 = alloca i32
  %self29 = alloca %buffer*
  %value23 = alloca i32
  %self22 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 3
  %5 = load %anon78, %anon78* %4, align 8
  %6 = bitcast %anon78* %4 to %anon82*
  %7 = load %anon82, %anon82* %6, align 8
  %8 = getelementptr inbounds %anon82, %anon82* %6, i32 0, i32 0
  %9 = load %sCLNode*, %sCLNode** %8, align 8
  %expression = alloca %sCLNode*
  %10 = bitcast %sCLNode** %expression to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %9, %sCLNode** %expression, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %11 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 3
  %12 = load %anon78, %anon78* %11, align 8
  %13 = bitcast %anon78* %11 to %anon82*
  %14 = load %anon82, %anon82* %13, align 8
  %15 = getelementptr inbounds %anon82, %anon82* %13, i32 0, i32 1
  %16 = load %sCLNodeBlock*, %sCLNodeBlock** %15, align 8
  %node_block = alloca %sCLNodeBlock*
  %17 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNodeBlock* %16, %sCLNodeBlock** %node_block, align 8
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %18 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 5
  %19 = load %buffer*, %buffer** %18, align 8
  %20 = getelementptr inbounds %buffer, %buffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %head_while = alloca i32
  %22 = bitcast i32* %head_while to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %21, i32* %head_while, align 4
  %expression6 = load %sCLNode*, %sCLNode** %expression, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %23 = call i1 @compile(%sCLNode* %expression6, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL = icmp eq i1 %23, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %26 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 6
  %27 = load %sCLType*, %sCLType** %26, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %28 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 4
  %29 = load %sParserInfo*, %sParserInfo** %28, align 8
  %30 = call i1 @type_identify_with_class_name(%sCLType* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.100, i32 0, i32 0), %sParserInfo* %29)
  %LOGICAL_DIANEAL10 = icmp eq i1 %30, false
  br i1 %LOGICAL_DIANEAL10, label %cond_jump_then11, label %cond_end12

cond_jump_then11:                                 ; preds = %cond_end
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %32 = bitcast i8* %31 to %sCompileInfo**
  %info13 = load %sCompileInfo*, %sCompileInfo** %32, align 8
  call void @compile_err_msg(%sCompileInfo* %info13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @global_string.101, i32 0, i32 0))
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret i1 true

cond_end12:                                       ; preds = %cond_end
  %len = alloca i32
  %35 = bitcast i32* %len to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 0, i32* %len, align 4
  %info14 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %36 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info14, i32 0, i32 7
  %37 = load i1, i1* %36, align 1
  %LOGICAL_DIANEAL15 = icmp eq i1 %37, false
  br i1 %LOGICAL_DIANEAL15, label %cond_jump_then16, label %cond_end17

cond_jump_then16:                                 ; preds = %cond_end12
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %39 = bitcast i8* %38 to %sCompileInfo**
  %info18 = load %sCompileInfo*, %sCompileInfo** %39, align 8
  %40 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info18, i32 0, i32 5
  %41 = load %buffer*, %buffer** %40, align 8
  store %buffer* %41, %buffer** %self, align 8
  store i32 13, i32* %value, align 4
  br label %append_int

cond_end17:                                       ; preds = %inline_func_end40, %cond_end12
  %info43 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info44 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %42 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info44, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %subttmp = sub nsw i32 %43, 1
  %44 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info43, i32 0, i32 3
  store i32 %subttmp, i32* %44, align 4
  %addtmp = add nsw i32 %subttmp, 1
  %info45 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %45 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info45, i32 0, i32 8
  %46 = load %sCLNode*, %sCLNode** %45, align 8
  %while_node_beore = alloca %sCLNode*
  %47 = bitcast %sCLNode** %while_node_beore to i8*
  store i8* %47, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLNode* %46, %sCLNode** %while_node_beore, align 8
  %info46 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %node47 = load %sCLNode*, %sCLNode** %node1, align 8
  %48 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info46, i32 0, i32 8
  store %sCLNode* %node47, %sCLNode** %48, align 8
  %node48 = load %sCLNode*, %sCLNode** %node1, align 8
  %49 = getelementptr inbounds %sCLNode, %sCLNode* %node48, i32 0, i32 3
  %50 = load %anon78, %anon78* %49, align 8
  %51 = bitcast %anon78* %49 to %anon82*
  %52 = load %anon82, %anon82* %51, align 8
  %53 = getelementptr inbounds %anon82, %anon82* %51, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %node_block49 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %info50 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %54 = call i1 @compile_block(%sCLNodeBlock* %node_block49, %sCompileInfo* %info50)
  %LOGICAL_DIANEAL51 = icmp eq i1 %54, false
  br i1 %LOGICAL_DIANEAL51, label %cond_jump_then52, label %cond_end53

append_int:                                       ; preds = %cond_jump_then16
  %55 = bitcast %buffer** %self to i8*
  store i8* %55, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %56 = bitcast i32* %value to i8*
  store i8* %56, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self19 = load %buffer*, %buffer** %self, align 8
  %value20 = load i32, i32* %value, align 4
  %57 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self19, i8* %57, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %59 = bitcast i8* %58 to %sCompileInfo**
  %info21 = load %sCompileInfo*, %sCompileInfo** %59, align 8
  %60 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 5
  %61 = load %buffer*, %buffer** %60, align 8
  store %buffer* %61, %buffer** %self22, align 8
  store i32 2, i32* %value23, align 4
  br label %append_int24

append_int24:                                     ; preds = %inline_func_end
  %62 = bitcast %buffer** %self22 to i8*
  store i8* %62, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %63 = bitcast i32* %value23 to i8*
  store i8* %63, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self26 = load %buffer*, %buffer** %self22, align 8
  %value27 = load i32, i32* %value23, align 4
  %64 = bitcast i32* %value23 to i8*
  call void @buffer_append(%buffer* %self26, i8* %64, i64 4)
  br label %inline_func_end25

inline_func_end25:                                ; preds = %append_int24
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %66 = bitcast i8* %65 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %66, align 8
  %67 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info28, i32 0, i32 5
  %68 = load %buffer*, %buffer** %67, align 8
  store %buffer* %68, %buffer** %self29, align 8
  store i32 15, i32* %value30, align 4
  br label %append_int31

append_int31:                                     ; preds = %inline_func_end25
  %69 = bitcast %buffer** %self29 to i8*
  store i8* %69, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %70 = bitcast i32* %value30 to i8*
  store i8* %70, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self33 = load %buffer*, %buffer** %self29, align 8
  %value34 = load i32, i32* %value30, align 4
  %71 = bitcast i32* %value30 to i8*
  call void @buffer_append(%buffer* %self33, i8* %71, i64 4)
  br label %inline_func_end32

inline_func_end32:                                ; preds = %append_int31
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %73 = bitcast i8* %72 to %sCompileInfo**
  %info35 = load %sCompileInfo*, %sCompileInfo** %73, align 8
  %74 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info35, i32 0, i32 5
  %75 = load %buffer*, %buffer** %74, align 8
  %76 = getelementptr inbounds %buffer, %buffer* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %79 = bitcast i8* %78 to i32*
  store i32 %77, i32* %79, align 4
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %81 = bitcast i8* %80 to %sCompileInfo**
  %info36 = load %sCompileInfo*, %sCompileInfo** %81, align 8
  %82 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info36, i32 0, i32 5
  %83 = load %buffer*, %buffer** %82, align 8
  store %buffer* %83, %buffer** %self37, align 8
  store i32 0, i32* %value38, align 4
  br label %append_int39

append_int39:                                     ; preds = %inline_func_end32
  %84 = bitcast %buffer** %self37 to i8*
  store i8* %84, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %85 = bitcast i32* %value38 to i8*
  store i8* %85, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self41 = load %buffer*, %buffer** %self37, align 8
  %value42 = load i32, i32* %value38, align 4
  %86 = bitcast i32* %value38 to i8*
  call void @buffer_append(%buffer* %self41, i8* %86, i64 4)
  br label %inline_func_end40

inline_func_end40:                                ; preds = %append_int39
  br label %cond_end17

cond_jump_then52:                                 ; preds = %cond_end17
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %88 = bitcast i8* %87 to %sCompileInfo**
  %info54 = load %sCompileInfo*, %sCompileInfo** %88, align 8
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %90 = bitcast i8* %89 to %sCLNode**
  %while_node_beore55 = load %sCLNode*, %sCLNode** %90, align 8
  %91 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info54, i32 0, i32 8
  store %sCLNode* %while_node_beore55, %sCLNode** %91, align 8
  %92 = bitcast [8192 x i8*]* %lvtable to i8*
  %93 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %92, i64 65536)
  ret i1 false

cond_end53:                                       ; preds = %cond_end17
  %info56 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %while_node_beore57 = load %sCLNode*, %sCLNode** %while_node_beore, align 8
  %94 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info56, i32 0, i32 8
  store %sCLNode* %while_node_beore57, %sCLNode** %94, align 8
  %info58 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %95 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info58, i32 0, i32 7
  %96 = load i1, i1* %95, align 1
  %LOGICAL_DIANEAL59 = icmp eq i1 %96, false
  br i1 %LOGICAL_DIANEAL59, label %cond_jump_then60, label %cond_end61

cond_jump_then60:                                 ; preds = %cond_end53
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %98 = bitcast i8* %97 to %sCompileInfo**
  %info62 = load %sCompileInfo*, %sCompileInfo** %98, align 8
  %99 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info62, i32 0, i32 5
  %100 = load %buffer*, %buffer** %99, align 8
  store %buffer* %100, %buffer** %self63, align 8
  store i32 15, i32* %value64, align 4
  br label %append_int65

cond_end61:                                       ; preds = %cond_end_block, %cond_end53
  %info98 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info99 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %101 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info99, i32 0, i32 4
  %102 = load %sParserInfo*, %sParserInfo** %101, align 8
  %103 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.102, i32 0, i32 0), %sParserInfo* %102)
  %104 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info98, i32 0, i32 6
  store %sCLType* %103, %sCLType** %104, align 8
  %105 = bitcast [8192 x i8*]* %lvtable to i8*
  %106 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %105, i64 65536)
  ret i1 true

append_int65:                                     ; preds = %cond_jump_then60
  %107 = bitcast %buffer** %self63 to i8*
  store i8* %107, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %108 = bitcast i32* %value64 to i8*
  store i8* %108, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %self67 = load %buffer*, %buffer** %self63, align 8
  %value68 = load i32, i32* %value64, align 4
  %109 = bitcast i32* %value64 to i8*
  call void @buffer_append(%buffer* %self67, i8* %109, i64 4)
  br label %inline_func_end66

inline_func_end66:                                ; preds = %append_int65
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %111 = bitcast i8* %110 to %sCompileInfo**
  %info69 = load %sCompileInfo*, %sCompileInfo** %111, align 8
  %112 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info69, i32 0, i32 5
  %113 = load %buffer*, %buffer** %112, align 8
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %115 = bitcast i8* %114 to i32*
  %head_while70 = load i32, i32* %115, align 4
  store %buffer* %113, %buffer** %self71, align 8
  store i32 %head_while70, i32* %value72, align 4
  br label %append_int73

append_int73:                                     ; preds = %inline_func_end66
  %116 = bitcast %buffer** %self71 to i8*
  store i8* %116, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %117 = bitcast i32* %value72 to i8*
  store i8* %117, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %self75 = load %buffer*, %buffer** %self71, align 8
  %value76 = load i32, i32* %value72, align 4
  %118 = bitcast i32* %value72 to i8*
  call void @buffer_append(%buffer* %self75, i8* %118, i64 4)
  br label %inline_func_end74

inline_func_end74:                                ; preds = %append_int73
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %120 = bitcast i8* %119 to %sCompileInfo**
  %info77 = load %sCompileInfo*, %sCompileInfo** %120, align 8
  %121 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info77, i32 0, i32 5
  %122 = load %buffer*, %buffer** %121, align 8
  %123 = getelementptr inbounds %buffer, %buffer* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %126 = bitcast i8* %125 to i32*
  %len78 = load i32, i32* %126, align 4
  %127 = ptrtoint i8* %124 to i64
  %sext1 = sext i32 %len78 to i64
  %multtmp = mul nsw i64 %sext1, 1
  %addtmp79 = add nsw i64 %127, %multtmp
  %128 = inttoptr i64 %addtmp79 to i8*
  %129 = bitcast i8* %128 to i32*
  %p = alloca i32*
  %130 = bitcast i32** %p to i8*
  store i8* %130, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32* %129, i32** %p, align 8
  %p80 = load i32*, i32** %p, align 8
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %132 = bitcast i8* %131 to %sCompileInfo**
  %info81 = load %sCompileInfo*, %sCompileInfo** %132, align 8
  %133 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info81, i32 0, i32 5
  %134 = load %buffer*, %buffer** %133, align 8
  %135 = getelementptr inbounds %buffer, %buffer* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %p80, align 4
  %i = alloca i32
  %137 = bitcast i32* %i to i8*
  store i8* %137, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %inline_func_end74
  %i82 = load i32, i32* %i, align 4
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %139 = bitcast i8* %138 to %sCLNode**
  %node83 = load %sCLNode*, %sCLNode** %139, align 8
  %140 = getelementptr inbounds %sCLNode, %sCLNode* %node83, i32 0, i32 3
  %141 = load %anon78, %anon78* %140, align 8
  %142 = bitcast %anon78* %140 to %anon82*
  %143 = load %anon82, %anon82* %142, align 8
  %144 = getelementptr inbounds %anon82, %anon82* %142, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %letmp = icmp slt i32 %i82, %145
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %147 = bitcast i8* %146 to %sCLNode**
  %node84 = load %sCLNode*, %sCLNode** %147, align 8
  %148 = getelementptr inbounds %sCLNode, %sCLNode* %node84, i32 0, i32 3
  %149 = load %anon78, %anon78* %148, align 8
  %150 = bitcast %anon78* %148 to %anon82*
  %151 = load %anon82, %anon82* %150, align 8
  %152 = getelementptr inbounds %anon82, %anon82* %150, i32 0, i32 2
  %153 = bitcast [128 x i32]* %152 to i32*
  %i85 = load i32, i32* %i, align 4
  %element_address = getelementptr i32, i32* %153, i32 %i85
  %element = load i32, i32* %element_address, align 4
  %len86 = alloca i32
  %154 = bitcast i32* %len86 to i8*
  store i8* %154, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 %element, i32* %len86, align 4
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %156 = bitcast i8* %155 to %sCompileInfo**
  %info87 = load %sCompileInfo*, %sCompileInfo** %156, align 8
  %157 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info87, i32 0, i32 5
  %158 = load %buffer*, %buffer** %157, align 8
  %159 = getelementptr inbounds %buffer, %buffer* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %len88 = load i32, i32* %len86, align 4
  %161 = ptrtoint i8* %160 to i64
  %sext189 = sext i32 %len88 to i64
  %multtmp90 = mul nsw i64 %sext189, 1
  %addtmp91 = add nsw i64 %161, %multtmp90
  %162 = inttoptr i64 %addtmp91 to i8*
  %163 = bitcast i8* %162 to i32*
  %p92 = alloca i32*
  %164 = bitcast i32** %p92 to i8*
  store i8* %164, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32* %163, i32** %p92, align 8
  %p93 = load i32*, i32** %p92, align 8
  %165 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %166 = bitcast i8* %165 to %sCompileInfo**
  %info94 = load %sCompileInfo*, %sCompileInfo** %166, align 8
  %167 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info94, i32 0, i32 5
  %168 = load %buffer*, %buffer** %167, align 8
  %169 = getelementptr inbounds %buffer, %buffer* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %p93, align 4
  %i95 = load i32, i32* %i, align 4
  %addtmp96 = add nsw i32 %i95, 1
  store i32 %addtmp96, i32* %i, align 4
  %subttmp97 = sub nsw i32 %addtmp96, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end61
}

define i1 @compile_break(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value11 = alloca i32
  %self10 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 8
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %eqtmpX = icmp eq %sCLNode* %5, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %sCompileInfo**
  %info4 = load %sCompileInfo*, %sCompileInfo** %7, align 8
  call void @compile_err_msg(%sCompileInfo* %info4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.103, i32 0, i32 0))
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 true

cond_end:                                         ; preds = %entry
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 5
  %11 = load %buffer*, %buffer** %10, align 8
  store %buffer* %11, %buffer** %self, align 8
  store i32 15, i32* %value, align 4
  br label %append_int

append_int:                                       ; preds = %cond_end
  %12 = bitcast %buffer** %self to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %13 = bitcast i32* %value to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self6 = load %buffer*, %buffer** %self, align 8
  %value7 = load i32, i32* %value, align 4
  %14 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self6, i8* %14, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %15 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 5
  %16 = load %buffer*, %buffer** %15, align 8
  %17 = getelementptr inbounds %buffer, %buffer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %len = alloca i32
  %19 = bitcast i32* %len to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 %18, i32* %len, align 4
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %20 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 5
  %21 = load %buffer*, %buffer** %20, align 8
  store %buffer* %21, %buffer** %self10, align 8
  store i32 0, i32* %value11, align 4
  br label %append_int12

append_int12:                                     ; preds = %inline_func_end
  %22 = bitcast %buffer** %self10 to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %23 = bitcast i32* %value11 to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self14 = load %buffer*, %buffer** %self10, align 8
  %value15 = load i32, i32* %value11, align 4
  %24 = bitcast i32* %value11 to i8*
  call void @buffer_append(%buffer* %self14, i8* %24, i64 4)
  br label %inline_func_end13

inline_func_end13:                                ; preds = %append_int12
  %info16 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %25 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 8
  %26 = load %sCLNode*, %sCLNode** %25, align 8
  %27 = getelementptr inbounds %sCLNode, %sCLNode* %26, i32 0, i32 3
  %28 = load %anon78, %anon78* %27, align 8
  %29 = bitcast %anon78* %27 to %anon82*
  %30 = load %anon82, %anon82* %29, align 8
  %31 = getelementptr inbounds %anon82, %anon82* %29, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %n = alloca i32
  %33 = bitcast i32* %n to i8*
  store i8* %33, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 %32, i32* %n, align 4
  %info17 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %34 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info17, i32 0, i32 8
  %35 = load %sCLNode*, %sCLNode** %34, align 8
  %36 = getelementptr inbounds %sCLNode, %sCLNode* %35, i32 0, i32 3
  %37 = load %anon78, %anon78* %36, align 8
  %38 = bitcast %anon78* %36 to %anon82*
  %39 = load %anon82, %anon82* %38, align 8
  %40 = getelementptr inbounds %anon82, %anon82* %38, i32 0, i32 2
  %41 = bitcast [128 x i32]* %40 to i32*
  %n18 = load i32, i32* %n, align 4
  %len19 = load i32, i32* %len, align 4
  %element_address = getelementptr i32, i32* %41, i32 %n18
  store i32 %len19, i32* %element_address, align 4
  %info20 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %42 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info20, i32 0, i32 8
  %43 = load %sCLNode*, %sCLNode** %42, align 8
  %44 = getelementptr inbounds %sCLNode, %sCLNode* %43, i32 0, i32 3
  %45 = load %anon78, %anon78* %44, align 8
  %46 = bitcast %anon78* %44 to %anon82*
  %47 = load %anon82, %anon82* %46, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %48 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 8
  %49 = load %sCLNode*, %sCLNode** %48, align 8
  %50 = getelementptr inbounds %sCLNode, %sCLNode* %49, i32 0, i32 3
  %51 = load %anon78, %anon78* %50, align 8
  %52 = bitcast %anon78* %50 to %anon82*
  %53 = load %anon82, %anon82* %52, align 8
  %54 = getelementptr inbounds %anon82, %anon82* %52, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %addtmp = add nsw i32 %55, 1
  %56 = getelementptr inbounds %anon82, %anon82* %46, i32 0, i32 3
  store i32 %addtmp, i32* %56, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %info22 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %57 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info22, i32 0, i32 8
  %58 = load %sCLNode*, %sCLNode** %57, align 8
  %59 = getelementptr inbounds %sCLNode, %sCLNode* %58, i32 0, i32 3
  %60 = load %anon78, %anon78* %59, align 8
  %61 = bitcast %anon78* %59 to %anon82*
  %62 = load %anon82, %anon82* %61, align 8
  %63 = getelementptr inbounds %anon82, %anon82* %61, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %getmp = icmp sge i32 %64, 128
  br i1 %getmp, label %cond_jump_then23, label %cond_end24

cond_jump_then23:                                 ; preds = %inline_func_end13
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %65 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.104, i32 0, i32 0))
  call void @exit(i32 2)
  br label %cond_end24

cond_end24:                                       ; preds = %cond_jump_then23, %inline_func_end13
  %info25 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info26 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %66 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info26, i32 0, i32 4
  %67 = load %sParserInfo*, %sParserInfo** %66, align 8
  %68 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.105, i32 0, i32 0), %sParserInfo* %67)
  %69 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info25, i32 0, i32 6
  store %sCLType* %68, %sCLType** %69, align 8
  %70 = bitcast [8192 x i8*]* %lvtable to i8*
  %71 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %70, i64 65536)
  ret i1 true
}

define i1 @compile_class(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 1
  %5 = bitcast [4096 x i8]* %4 to i8*
  %sname = alloca i8*
  %6 = bitcast i8** %sname to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %5, i8** %sname, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %sline = alloca i32
  %9 = bitcast i32* %sline to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 %8, i32* %sline, align 4
  %node5 = load %sCLNode*, %sCLNode** %node1, align 8
  %10 = getelementptr inbounds %sCLNode, %sCLNode* %node5, i32 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %source = alloca i8*
  %12 = bitcast i8** %source to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i8* %11, i8** %source, align 8
  %source6 = load i8*, i8** %source, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %sname8 = load i8*, i8** %sname, align 8
  %sline9 = load i32, i32* %sline, align 4
  %13 = call i1 @eval_class(i8* %source6, %sCompileInfo* %info7, i8* %sname8, i32 %sline9)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info11 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 4
  %17 = load %sParserInfo*, %sParserInfo** %16, align 8
  %18 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.106, i32 0, i32 0), %sParserInfo* %17)
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 6
  store %sCLType* %18, %sCLType** %19, align 8
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret i1 true
}

define i1 @compile_lambda(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value95 = alloca i32
  %self94 = alloca %buffer*
  %self75 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 1
  %5 = bitcast [4096 x i8]* %4 to i8*
  %sname = alloca i8*
  %6 = bitcast i8** %sname to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %5, i8** %sname, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %sline = alloca i32
  %9 = bitcast i32* %sline to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 %8, i32* %sline, align 4
  %node5 = load %sCLNode*, %sCLNode** %node1, align 8
  %10 = getelementptr inbounds %sCLNode, %sCLNode* %node5, i32 0, i32 3
  %11 = load %anon78, %anon78* %10, align 8
  %12 = bitcast %anon78* %10 to %anon80*
  %13 = load %anon80, %anon80* %12, align 8
  %14 = getelementptr inbounds %anon80, %anon80* %12, i32 0, i32 0
  %15 = load %sCLNodeBlock*, %sCLNodeBlock** %14, align 8
  %node_block = alloca %sCLNodeBlock*
  %16 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNodeBlock* %15, %sCLNodeBlock** %node_block, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 3
  %18 = load %anon78, %anon78* %17, align 8
  %19 = bitcast %anon78* %17 to %anon80*
  %20 = load %anon80, %anon80* %19, align 8
  %21 = getelementptr inbounds %anon80, %anon80* %19, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %num_params = alloca i32
  %23 = bitcast i32* %num_params to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %22, i32* %num_params, align 4
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %24 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 3
  %25 = load %anon78, %anon78* %24, align 8
  %26 = bitcast %anon78* %24 to %anon80*
  %27 = load %anon80, %anon80* %26, align 8
  %28 = getelementptr inbounds %anon80, %anon80* %26, i32 0, i32 1
  %29 = bitcast [32 x %sCLParam]* %28 to %sCLParam*
  %params = alloca %sCLParam*
  %30 = bitcast %sCLParam** %params to i8*
  store i8* %30, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLParam* %29, %sCLParam** %params, align 8
  %node8 = load %sCLNode*, %sCLNode** %node1, align 8
  %31 = getelementptr inbounds %sCLNode, %sCLNode* %node8, i32 0, i32 3
  %32 = load %anon78, %anon78* %31, align 8
  %33 = bitcast %anon78* %31 to %anon80*
  %34 = load %anon80, %anon80* %33, align 8
  %35 = getelementptr inbounds %anon80, %anon80* %33, i32 0, i32 3
  %36 = load %sCLType*, %sCLType** %35, align 8
  %result_type = alloca %sCLType*
  %37 = bitcast %sCLType** %result_type to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLType* %36, %sCLType** %result_type, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %derefference_value = load %sCompileInfo, %sCompileInfo* %info9, align 8
  %cinfo2 = alloca %sCompileInfo
  %38 = bitcast %sCompileInfo* %cinfo2 to i8*
  store i8* %38, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store %sCompileInfo %derefference_value, %sCompileInfo* %cinfo2, align 8
  %cinfo210 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %39 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 0
  %40 = bitcast [4096 x i8]* %39 to i8*
  %sname11 = load i8*, i8** %sname, align 8
  %41 = call i8* @xstrncpy(i8* %40, i8* %sname11, i32 4096)
  %cinfo212 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %sline13 = load i32, i32* %sline, align 4
  %42 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 1
  store i32 %sline13, i32* %42, align 4
  %cinfo214 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %43 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.107, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.108, i32 0, i32 0), i32 1611, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.109, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.110, i32 0, i32 0))
  %44 = bitcast i8* %43 to %buffer*
  %45 = call %buffer* @buffer_initialize(%buffer* %44)
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 5
  store %buffer* %45, %buffer** %46, align 8
  %cinfo215 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %47 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 6
  store %sCLType* null, %sCLType** %47, align 8
  %cinfo216 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %48 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 7
  store i1 false, i1* %48, align 1
  %node_block17 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %cinfo218 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %49 = call i1 @compile_block(%sCLNodeBlock* %node_block17, %sCompileInfo* %cinfo2)
  %LOGICAL_DIANEAL = icmp eq i1 %49, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %51 = bitcast i8* %50 to %sCompileInfo*
  %cinfo219 = load %sCompileInfo, %sCompileInfo* %51, align 8
  %52 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %51, i32 0, i32 5
  %53 = load %buffer*, %buffer** %52, align 8
  %54 = load %buffer*, %buffer** %52, align 8
  call void @buffer_finalize(%buffer* %54)
  %55 = ptrtoint %buffer* %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %cond_then_block, label %cond_end20

cond_end:                                         ; preds = %entry
  %cinfo221 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %57 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %gttmp = icmp sgt i32 %58, 0
  br i1 %gttmp, label %cond_jump_then22, label %cond_end23

cond_then_block:                                  ; preds = %cond_jump_then
  br label %cond_end20

cond_end20:                                       ; preds = %cond_then_block, %cond_jump_then
  %59 = bitcast %buffer* %54 to i8*
  call void @xfree(i8* %59)
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  ret i1 false

cond_jump_then22:                                 ; preds = %cond_end
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %63 = bitcast i8* %62 to %sCompileInfo*
  %cinfo224 = load %sCompileInfo, %sCompileInfo* %63, align 8
  %64 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %63, i32 0, i32 5
  %65 = load %buffer*, %buffer** %64, align 8
  %66 = load %buffer*, %buffer** %64, align 8
  call void @buffer_finalize(%buffer* %66)
  %67 = ptrtoint %buffer* %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %cond_then_block25, label %cond_end26

cond_end23:                                       ; preds = %cond_end
  %result_type27 = load %sCLType*, %sCLType** %result_type, align 8
  %cinfo228 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %69 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 6
  %70 = load %sCLType*, %sCLType** %69, align 8
  %71 = call i1 @substitution_posibility(%sCLType* %result_type27, %sCLType* %70)
  %LOGICAL_DIANEAL29 = icmp eq i1 %71, false
  br i1 %LOGICAL_DIANEAL29, label %cond_jump_then30, label %cond_end31

cond_then_block25:                                ; preds = %cond_jump_then22
  br label %cond_end26

cond_end26:                                       ; preds = %cond_then_block25, %cond_jump_then22
  %72 = bitcast %buffer* %66 to i8*
  call void @xfree(i8* %72)
  %73 = bitcast [8192 x i8*]* %lvtable to i8*
  %74 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %73, i64 65536)
  ret i1 false

cond_jump_then30:                                 ; preds = %cond_end23
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %76 = bitcast i8* %75 to %sCompileInfo*
  %cinfo232 = load %sCompileInfo, %sCompileInfo* %76, align 8
  call void @compile_err_msg(%sCompileInfo* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.111, i32 0, i32 0))
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %78 = bitcast i8* %77 to %sCompileInfo*
  %cinfo233 = load %sCompileInfo, %sCompileInfo* %78, align 8
  %79 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %78, i32 0, i32 5
  %80 = load %buffer*, %buffer** %79, align 8
  %81 = load %buffer*, %buffer** %79, align 8
  call void @buffer_finalize(%buffer* %81)
  %82 = ptrtoint %buffer* %81 to i64
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %cond_then_block34, label %cond_end35

cond_end31:                                       ; preds = %cond_end23
  %node_block36 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %cinfo237 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %84 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 5
  %85 = load %buffer*, %buffer** %84, align 8
  %86 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block36, i32 0, i32 7
  store %buffer* %85, %buffer** %86, align 8
  %node_block38 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %result_type39 = load %sCLType*, %sCLType** %result_type, align 8
  %87 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block38, i32 0, i32 5
  store %sCLType* %result_type39, %sCLType** %87, align 8
  %info40 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info41 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %88 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 4
  %89 = load %sParserInfo*, %sParserInfo** %88, align 8
  %90 = call %sCLType* @create_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.112, i32 0, i32 0), %sParserInfo* %89)
  %91 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info40, i32 0, i32 6
  store %sCLType* %90, %sCLType** %91, align 8
  %result_type42 = load %sCLType*, %sCLType** %result_type, align 8
  %info43 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %92 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info43, i32 0, i32 4
  %93 = load %sParserInfo*, %sParserInfo** %92, align 8
  %94 = call i1 @type_identify_with_class_name(%sCLType* %result_type42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.113, i32 0, i32 0), %sParserInfo* %93)
  %LOGICAL_DIANEAL44 = icmp eq i1 %94, false
  br i1 %LOGICAL_DIANEAL44, label %cond_jump_then45, label %cond_else_block

cond_then_block34:                                ; preds = %cond_jump_then30
  br label %cond_end35

cond_end35:                                       ; preds = %cond_then_block34, %cond_jump_then30
  %95 = bitcast %buffer* %81 to i8*
  call void @xfree(i8* %95)
  %96 = bitcast [8192 x i8*]* %lvtable to i8*
  %97 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %96, i64 65536)
  ret i1 true

cond_jump_then45:                                 ; preds = %cond_end31
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %99 = bitcast i8* %98 to %sCompileInfo**
  %info47 = load %sCompileInfo*, %sCompileInfo** %99, align 8
  %100 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info47, i32 0, i32 6
  %101 = load %sCLType*, %sCLType** %100, align 8
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %103 = bitcast i8* %102 to %sCLType**
  %result_type48 = load %sCLType*, %sCLType** %103, align 8
  %104 = getelementptr inbounds %sCLType, %sCLType* %101, i32 0, i32 7
  store %sCLType* %result_type48, %sCLType** %104, align 8
  br label %cond_end46

cond_else_block:                                  ; preds = %cond_end31
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %106 = bitcast i8* %105 to %sCompileInfo**
  %info49 = load %sCompileInfo*, %sCompileInfo** %106, align 8
  %107 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info49, i32 0, i32 6
  %108 = load %sCLType*, %sCLType** %107, align 8
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %110 = bitcast i8* %109 to %sCompileInfo*
  %cinfo250 = load %sCompileInfo, %sCompileInfo* %110, align 8
  %111 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %110, i32 0, i32 6
  %112 = load %sCLType*, %sCLType** %111, align 8
  %113 = getelementptr inbounds %sCLType, %sCLType* %108, i32 0, i32 7
  store %sCLType* %112, %sCLType** %113, align 8
  br label %cond_end46

cond_end46:                                       ; preds = %cond_else_block, %cond_jump_then45
  %info51 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %114 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info51, i32 0, i32 6
  %115 = load %sCLType*, %sCLType** %114, align 8
  %node_block52 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %116 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block52, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %sCLType, %sCLType* %115, i32 0, i32 6
  store i32 %117, i32* %118, align 4
  %i = alloca i32
  %119 = bitcast i32* %i to i8*
  store i8* %119, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block55, %cond_end46
  %i53 = load i32, i32* %i, align 4
  %120 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %121 = bitcast i8* %120 to %sCLNodeBlock**
  %node_block54 = load %sCLNodeBlock*, %sCLNodeBlock** %121, align 8
  %122 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block54, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %letmp = icmp slt i32 %i53, %123
  br i1 %letmp, label %cond_then_block55, label %cond_end_block

cond_then_block55:                                ; preds = %loop_top_block
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %125 = bitcast i8* %124 to %sCompileInfo**
  %info56 = load %sCompileInfo*, %sCompileInfo** %125, align 8
  %126 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info56, i32 0, i32 6
  %127 = load %sCLType*, %sCLType** %126, align 8
  %128 = getelementptr inbounds %sCLType, %sCLType* %127, i32 0, i32 5
  %129 = bitcast [32 x %sCLParam]* %128 to %sCLParam*
  %i57 = load i32, i32* %i, align 4
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %131 = bitcast i8* %130 to %sCLNodeBlock**
  %node_block58 = load %sCLNodeBlock*, %sCLNodeBlock** %131, align 8
  %132 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block58, i32 0, i32 4
  %133 = bitcast [32 x %sCLParam]* %132 to %sCLParam*
  %i59 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLParam, %sCLParam* %133, i32 %i59
  %element = load %sCLParam, %sCLParam* %element_address, align 8
  %element_address60 = getelementptr %sCLParam, %sCLParam* %129, i32 %i57
  store %sCLParam %element, %sCLParam* %element_address60, align 8
  %i61 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i61, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %info62 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %134 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info62, i32 0, i32 6
  %135 = load %sCLType*, %sCLType** %134, align 8
  %node_block63 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %136 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block63, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %sCLType, %sCLType* %135, i32 0, i32 8
  store i32 %137, i32* %138, align 4
  %info64 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %139 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info64, i32 0, i32 7
  %140 = load i1, i1* %139, align 1
  %LOGICAL_DIANEAL65 = icmp eq i1 %140, false
  br i1 %LOGICAL_DIANEAL65, label %cond_jump_then66, label %cond_end67

cond_jump_then66:                                 ; preds = %cond_end_block
  %141 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %142 = bitcast i8* %141 to %sCompileInfo**
  %info68 = load %sCompileInfo*, %sCompileInfo** %142, align 8
  %143 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info68, i32 0, i32 5
  %144 = load %buffer*, %buffer** %143, align 8
  store %buffer* %144, %buffer** %self, align 8
  store i32 18, i32* %value, align 4
  br label %append_int

cond_end67:                                       ; preds = %cond_end104, %cond_end_block
  %info105 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info106 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %145 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info106, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %addtmp107 = add nsw i32 %146, 1
  %147 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info105, i32 0, i32 3
  store i32 %addtmp107, i32* %147, align 4
  %subttmp108 = sub nsw i32 %addtmp107, 1
  %148 = bitcast [8192 x i8*]* %lvtable to i8*
  %149 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %148, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then66
  %150 = bitcast %buffer** %self to i8*
  store i8* %150, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %151 = bitcast i32* %value to i8*
  store i8* %151, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self69 = load %buffer*, %buffer** %self, align 8
  %value70 = load i32, i32* %value, align 4
  %152 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self69, i8* %152, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %153 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %154 = bitcast i8* %153 to %sCompileInfo**
  %info71 = load %sCompileInfo*, %sCompileInfo** %154, align 8
  %155 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info71, i32 0, i32 6
  %156 = load %sCLType*, %sCLType** %155, align 8
  %157 = call i8* @create_type_name(%sCLType* %156)
  %block_type_name = alloca i8*
  %158 = bitcast i8** %block_type_name to i8*
  store i8* %158, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i8* %157, i8** %block_type_name, align 8
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %160 = bitcast i8* %159 to %sCompileInfo**
  %info72 = load %sCompileInfo*, %sCompileInfo** %160, align 8
  %161 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info72, i32 0, i32 5
  %162 = load %buffer*, %buffer** %161, align 8
  %block_type_name73 = load i8*, i8** %block_type_name, align 8
  call void @buffer_append_nullterminated_str(%buffer* %162, i8* %block_type_name73)
  %163 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %164 = bitcast i8* %163 to %sCompileInfo**
  %info74 = load %sCompileInfo*, %sCompileInfo** %164, align 8
  %165 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info74, i32 0, i32 5
  %166 = load %buffer*, %buffer** %165, align 8
  store %buffer* %166, %buffer** %self75, align 8
  br label %alignment

alignment:                                        ; preds = %inline_func_end
  %167 = bitcast %buffer** %self75 to i8*
  store i8* %167, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %self77 = load %buffer*, %buffer** %self75, align 8
  %168 = getelementptr inbounds %buffer, %buffer* %self77, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %len = alloca i32
  %170 = bitcast i32* %len to i8*
  store i8* %170, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 %169, i32* %len, align 4
  %len78 = load i32, i32* %len, align 4
  %addtmp79 = add nsw i32 %len78, 3
  %andtmp = and i32 %addtmp79, -4
  store i32 %andtmp, i32* %len, align 4
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %172 = bitcast i8* %171 to %buffer**
  %self80 = load %buffer*, %buffer** %172, align 8
  %173 = getelementptr inbounds %buffer, %buffer* %self80, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %i81 = alloca i32
  %175 = bitcast i32* %i81 to i8*
  store i8* %175, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store i32 %174, i32* %i81, align 4
  br label %loop_top_block82

inline_func_end76:                                ; preds = %cond_end_block87
  %176 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %177 = bitcast i8* %176 to %sCompileInfo**
  %info92 = load %sCompileInfo*, %sCompileInfo** %177, align 8
  %178 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info92, i32 0, i32 5
  %179 = load %buffer*, %buffer** %178, align 8
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %181 = bitcast i8* %180 to %sCLNodeBlock**
  %node_block93 = load %sCLNodeBlock*, %sCLNodeBlock** %181, align 8
  %182 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block93, i32 0, i32 7
  %183 = load %buffer*, %buffer** %182, align 8
  %184 = getelementptr inbounds %buffer, %buffer* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store %buffer* %179, %buffer** %self94, align 8
  store i32 %185, i32* %value95, align 4
  br label %append_int96

loop_top_block82:                                 ; preds = %cond_then_block86, %alignment
  %i83 = load i32, i32* %i81, align 4
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %187 = bitcast i8* %186 to i32*
  %len84 = load i32, i32* %187, align 4
  %letmp85 = icmp slt i32 %i83, %len84
  br i1 %letmp85, label %cond_then_block86, label %cond_end_block87

cond_then_block86:                                ; preds = %loop_top_block82
  %188 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %189 = bitcast i8* %188 to %buffer**
  %self88 = load %buffer*, %buffer** %189, align 8
  call void @buffer_append_char(%buffer* %self88, i8 0)
  %i89 = load i32, i32* %i81, align 4
  %addtmp90 = add nsw i32 %i89, 1
  store i32 %addtmp90, i32* %i81, align 4
  %subttmp91 = sub nsw i32 %addtmp90, 1
  br label %loop_top_block82

cond_end_block87:                                 ; preds = %loop_top_block82
  br label %inline_func_end76

append_int96:                                     ; preds = %inline_func_end76
  %190 = bitcast %buffer** %self94 to i8*
  store i8* %190, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %191 = bitcast i32* %value95 to i8*
  store i8* %191, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self98 = load %buffer*, %buffer** %self94, align 8
  %value99 = load i32, i32* %value95, align 4
  %192 = bitcast i32* %value95 to i8*
  call void @buffer_append(%buffer* %self98, i8* %192, i64 4)
  br label %inline_func_end97

inline_func_end97:                                ; preds = %append_int96
  %193 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %194 = bitcast i8* %193 to %sCompileInfo**
  %info100 = load %sCompileInfo*, %sCompileInfo** %194, align 8
  %195 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info100, i32 0, i32 5
  %196 = load %buffer*, %buffer** %195, align 8
  %197 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %198 = bitcast i8* %197 to %sCLNodeBlock**
  %node_block101 = load %sCLNodeBlock*, %sCLNodeBlock** %198, align 8
  %199 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block101, i32 0, i32 7
  %200 = load %buffer*, %buffer** %199, align 8
  %201 = getelementptr inbounds %buffer, %buffer* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %204 = bitcast i8* %203 to %sCLNodeBlock**
  %node_block102 = load %sCLNodeBlock*, %sCLNodeBlock** %204, align 8
  %205 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block102, i32 0, i32 7
  %206 = load %buffer*, %buffer** %205, align 8
  %207 = getelementptr inbounds %buffer, %buffer* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %sext14 = zext i32 %208 to i64
  call void @buffer_append(%buffer* %196, i8* %202, i64 %sext14)
  %209 = load i8*, i8** %block_type_name, align 8
  %210 = ptrtoint i8* %209 to i64
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %cond_then_block103, label %cond_end104

cond_then_block103:                               ; preds = %inline_func_end97
  br label %cond_end104

cond_end104:                                      ; preds = %cond_then_block103, %inline_func_end97
  call void @xfree(i8* %209)
  br label %cond_end67
}

define i1 @compile_create_object(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %self12 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 8
  %5 = load %sCLType*, %sCLType** %4, align 8
  %type = alloca %sCLType*
  %6 = bitcast %sCLType** %type to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %5, %sCLType** %type, align 8
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 7
  %8 = load i1, i1* %7, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %8, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %10 = bitcast i8* %9 to %sCompileInfo**
  %info5 = load %sCompileInfo*, %sCompileInfo** %10, align 8
  %11 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 5
  %12 = load %buffer*, %buffer** %11, align 8
  store %buffer* %12, %buffer** %self, align 8
  store i32 16, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %cond_end23, %entry
  %info24 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %type25 = load %sCLType*, %sCLType** %type, align 8
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 6
  store %sCLType* %type25, %sCLType** %13, align 8
  %info26 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info27 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %14 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info27, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %addtmp28 = add nsw i32 %15, 1
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info26, i32 0, i32 3
  store i32 %addtmp28, i32* %16, align 4
  %subttmp29 = sub nsw i32 %addtmp28, 1
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %19 = bitcast %buffer** %self to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %20 = bitcast i32* %value to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self6 = load %buffer*, %buffer** %self, align 8
  %value7 = load i32, i32* %value, align 4
  %21 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self6, i8* %21, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %23 = bitcast i8* %22 to %sCLType**
  %type8 = load %sCLType*, %sCLType** %23, align 8
  %24 = call i8* @create_type_name(%sCLType* %type8)
  %type_name = alloca i8*
  %25 = bitcast i8** %type_name to i8*
  store i8* %25, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %24, i8** %type_name, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %27 = bitcast i8* %26 to %sCompileInfo**
  %info9 = load %sCompileInfo*, %sCompileInfo** %27, align 8
  %28 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 5
  %29 = load %buffer*, %buffer** %28, align 8
  %type_name10 = load i8*, i8** %type_name, align 8
  call void @buffer_append_nullterminated_str(%buffer* %29, i8* %type_name10)
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %31 = bitcast i8* %30 to %sCompileInfo**
  %info11 = load %sCompileInfo*, %sCompileInfo** %31, align 8
  %32 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 5
  %33 = load %buffer*, %buffer** %32, align 8
  store %buffer* %33, %buffer** %self12, align 8
  br label %alignment

alignment:                                        ; preds = %inline_func_end
  %34 = bitcast %buffer** %self12 to i8*
  store i8* %34, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self14 = load %buffer*, %buffer** %self12, align 8
  %35 = getelementptr inbounds %buffer, %buffer* %self14, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %len = alloca i32
  %37 = bitcast i32* %len to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %36, i32* %len, align 4
  %len15 = load i32, i32* %len, align 4
  %addtmp = add nsw i32 %len15, 3
  %andtmp = and i32 %addtmp, -4
  store i32 %andtmp, i32* %len, align 4
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %39 = bitcast i8* %38 to %buffer**
  %self16 = load %buffer*, %buffer** %39, align 8
  %40 = getelementptr inbounds %buffer, %buffer* %self16, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %i = alloca i32
  %42 = bitcast i32* %i to i8*
  store i8* %42, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 %41, i32* %i, align 4
  br label %loop_top_block

inline_func_end13:                                ; preds = %cond_end_block
  %43 = load i8*, i8** %type_name, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %cond_then_block22, label %cond_end23

loop_top_block:                                   ; preds = %cond_then_block, %alignment
  %i17 = load i32, i32* %i, align 4
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %47 = bitcast i8* %46 to i32*
  %len18 = load i32, i32* %47, align 4
  %letmp = icmp slt i32 %i17, %len18
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %49 = bitcast i8* %48 to %buffer**
  %self19 = load %buffer*, %buffer** %49, align 8
  call void @buffer_append_char(%buffer* %self19, i8 0)
  %i20 = load i32, i32* %i, align 4
  %addtmp21 = add nsw i32 %i20, 1
  store i32 %addtmp21, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp21, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %inline_func_end13

cond_then_block22:                                ; preds = %inline_func_end13
  br label %cond_end23

cond_end23:                                       ; preds = %cond_then_block22, %inline_func_end13
  call void @xfree(i8* %43)
  br label %cond_end
}

define i1 @compile_method_call(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value310 = alloca i32
  %self309 = alloca %buffer*
  %value302 = alloca i32
  %self301 = alloca %buffer*
  %self282 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 5
  %5 = load i8*, i8** %4, align 8
  %method_name = alloca i8*
  %6 = bitcast i8** %method_name to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i8* %5, i8** %method_name, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 3
  %8 = load %anon78, %anon78* %7, align 8
  %9 = bitcast %anon78* %7 to %anon81*
  %10 = load %anon81, %anon81* %9, align 8
  %11 = getelementptr inbounds %anon81, %anon81* %9, i32 0, i32 2
  %12 = load i1, i1* %11, align 1
  %sext13 = zext i1 %12 to i32
  %last_method_chain = alloca i32
  %13 = bitcast i32* %last_method_chain to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 %sext13, i32* %last_method_chain, align 4
  %node5 = load %sCLNode*, %sCLNode** %node1, align 8
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %node5, i32 0, i32 3
  %15 = load %anon78, %anon78* %14, align 8
  %16 = bitcast %anon78* %14 to %anon81*
  %17 = load %anon81, %anon81* %16, align 8
  %18 = getelementptr inbounds %anon81, %anon81* %16, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %num_params = alloca i32
  %20 = bitcast i32* %num_params to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %19, i32* %num_params, align 4
  %params = alloca [32 x %sCLNode*]
  %21 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %21, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %i = alloca i32
  %22 = bitcast i32* %i to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %i6 = load i32, i32* %i, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %24 = bitcast i8* %23 to i32*
  %num_params7 = load i32, i32* %24, align 4
  %letmp = icmp slt i32 %i6, %num_params7
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %26 = bitcast i8* %25 to [32 x %sCLNode*]*
  %i8 = load i32, i32* %i, align 4
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %28 = bitcast i8* %27 to %sCLNode**
  %node9 = load %sCLNode*, %sCLNode** %28, align 8
  %29 = getelementptr inbounds %sCLNode, %sCLNode* %node9, i32 0, i32 3
  %30 = load %anon78, %anon78* %29, align 8
  %31 = bitcast %anon78* %29 to %anon81*
  %32 = load %anon81, %anon81* %31, align 8
  %33 = getelementptr inbounds %anon81, %anon81* %31, i32 0, i32 1
  %34 = bitcast [32 x %sCLNode*]* %33 to %sCLNode**
  %i10 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %34, i32 %i10
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %35 = bitcast [32 x %sCLNode*]* %26 to %sCLNode**
  %element_address11 = getelementptr %sCLNode*, %sCLNode** %35, i32 %i8
  store %sCLNode* %element, %sCLNode** %element_address11, align 8
  %i12 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i12, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %37 = bitcast i8* %36 to i32*
  %num_params13 = load i32, i32* %37, align 4
  %gttmp = icmp sgt i32 %num_params13, 0
  br i1 %gttmp, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %cond_end_block
  br label %cond_end

cond_else_block:                                  ; preds = %cond_end_block
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.114, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.115, i32 0, i32 0), i32 1767, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_string.116, i32 0, i32 0))
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %38 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address14 = getelementptr %sCLNode*, %sCLNode** %38, i32 0
  %element15 = load %sCLNode*, %sCLNode** %element_address14, align 8
  %first_node = alloca %sCLNode*
  %39 = bitcast %sCLNode** %first_node to i8*
  store i8* %39, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLNode* %element15, %sCLNode** %first_node, align 8
  %first_node16 = load %sCLNode*, %sCLNode** %first_node, align 8
  %info17 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %40 = call i1 @compile(%sCLNode* %first_node16, %sCompileInfo* %info17)
  %LOGICAL_DIANEAL = icmp eq i1 %40, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then18, label %cond_end19

cond_jump_then18:                                 ; preds = %cond_end
  %41 = bitcast [8192 x i8*]* %lvtable to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret i1 false

cond_end19:                                       ; preds = %cond_end
  %info20 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %43 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info20, i32 0, i32 6
  %44 = load %sCLType*, %sCLType** %43, align 8
  %generics_types = alloca %sCLType*
  %45 = bitcast %sCLType** %generics_types to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLType* %44, %sCLType** %generics_types, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %46 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 6
  %47 = load %sCLType*, %sCLType** %46, align 8
  %48 = getelementptr inbounds %sCLType, %sCLType* %47, i32 0, i32 1
  %49 = load %sCLClass*, %sCLClass** %48, align 8
  %klass = alloca %sCLClass*
  %50 = bitcast %sCLClass** %klass to i8*
  store i8* %50, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store %sCLClass* %49, %sCLClass** %klass, align 8
  %klass22 = load %sCLClass*, %sCLClass** %klass, align 8
  %51 = getelementptr inbounds %sCLClass, %sCLClass* %klass22, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %klass_name = alloca i8*
  %53 = bitcast i8** %klass_name to i8*
  store i8* %53, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i8* %52, i8** %klass_name, align 8
  %method = alloca %sCLMethod*
  %54 = bitcast %sCLMethod** %method to i8*
  store i8* %54, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store %sCLMethod* null, %sCLMethod** %method, align 8
  br label %loop_top_block23

loop_top_block23:                                 ; preds = %cond_end31, %cond_end19
  %klass24 = load %sCLClass*, %sCLClass** %klass, align 8
  %55 = ptrtoint %sCLClass* %klass24 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %cond_then_block25, label %cond_end_block26

cond_then_block25:                                ; preds = %loop_top_block23
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %58 = bitcast i8* %57 to %sCLClass**
  %klass27 = load %sCLClass*, %sCLClass** %58, align 8
  %59 = getelementptr inbounds %sCLClass, %sCLClass* %klass27, i32 0, i32 1
  %60 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %59, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %62 = bitcast i8* %61 to i8**
  %method_name28 = load i8*, i8** %62, align 8
  %63 = call %sCLMethod* @"map_at_charp_sCLMethodp3_src/node"(%map__charp_sCLMethodp* %60, i8* %method_name28, %sCLMethod* null)
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %65 = bitcast i8* %64 to %sCLMethod**
  store %sCLMethod* %63, %sCLMethod** %65, align 8
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %67 = bitcast i8* %66 to %sCLMethod**
  %method29 = load %sCLMethod*, %sCLMethod** %67, align 8
  %68 = ptrtoint %sCLMethod* %method29 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %cond_jump_then30, label %cond_end31

cond_end_block26:                                 ; preds = %cond_jump_then30, %loop_top_block23
  %method33 = load %sCLMethod*, %sCLMethod** %method, align 8
  %eqtmpX = icmp eq %sCLMethod* %method33, null
  br i1 %eqtmpX, label %cond_jump_then34, label %cond_else_block35

cond_jump_then30:                                 ; preds = %cond_then_block25
  br label %cond_end_block26

cond_end31:                                       ; preds = %after_break, %cond_then_block25
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %71 = bitcast i8* %70 to %sCLClass**
  %klass32 = load %sCLClass*, %sCLClass** %71, align 8
  %72 = getelementptr inbounds %sCLClass, %sCLClass* %klass32, i32 0, i32 4
  %73 = load %sCLClass*, %sCLClass** %72, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %75 = bitcast i8* %74 to %sCLClass**
  store %sCLClass* %73, %sCLClass** %75, align 8
  br label %loop_top_block23

after_break:                                      ; No predecessors!
  br label %cond_end31

cond_jump_then34:                                 ; preds = %cond_end_block26
  %oror_result_var = alloca i1
  %oror_result_var37 = alloca i1
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %77 = bitcast i8* %76 to %sCompileInfo**
  %info38 = load %sCompileInfo*, %sCompileInfo** %77, align 8
  %78 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info38, i32 0, i32 6
  %79 = load %sCLType*, %sCLType** %78, align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %81 = bitcast i8* %80 to %sCompileInfo**
  %info39 = load %sCompileInfo*, %sCompileInfo** %81, align 8
  %82 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info39, i32 0, i32 4
  %83 = load %sParserInfo*, %sParserInfo** %82, align 8
  %84 = call i1 @type_identify_with_class_name(%sCLType* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.117, i32 0, i32 0), %sParserInfo* %83)
  store i1 %84, i1* %oror_result_var37, align 1
  br i1 %84, label %cond_jump_end, label %cond_jump_then40

cond_else_block35:                                ; preds = %cond_end_block26
  %var_num = alloca i32
  %85 = bitcast i32* %var_num to i8*
  store i8* %85, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %87 = bitcast i8* %86 to %sCLMethod**
  %method87 = load %sCLMethod*, %sCLMethod** %87, align 8
  %88 = getelementptr inbounds %sCLMethod, %sCLMethod* %method87, i32 0, i32 6
  %89 = load %sCLNodeBlock*, %sCLNodeBlock** %88, align 8
  %90 = ptrtoint %sCLNodeBlock* %89 to i64
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %cond_jump_then88, label %cond_else_block89

cond_end36:                                       ; preds = %cond_end_block110, %cond_end50
  %info272 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %92 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info272, i32 0, i32 7
  %93 = load i1, i1* %92, align 1
  %LOGICAL_DIANEAL273 = icmp eq i1 %93, false
  br i1 %LOGICAL_DIANEAL273, label %cond_jump_then274, label %cond_end275

cond_jump_then40:                                 ; preds = %cond_jump_then34
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %95 = bitcast i8* %94 to %sCompileInfo**
  %info41 = load %sCompileInfo*, %sCompileInfo** %95, align 8
  %96 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 6
  %97 = load %sCLType*, %sCLType** %96, align 8
  %98 = call i1 @is_generics_type(%sCLType* %97)
  %oror = or i1 %84, %98
  store i1 %oror, i1* %oror_result_var37, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then40, %cond_jump_then34
  %oror_result_value = load i1, i1* %oror_result_var37, align 1
  store i1 %oror_result_value, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_end43, label %cond_jump_then42

cond_jump_then42:                                 ; preds = %cond_jump_end
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %100 = bitcast i8* %99 to %sCompileInfo**
  %info44 = load %sCompileInfo*, %sCompileInfo** %100, align 8
  %101 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info44, i32 0, i32 6
  %102 = load %sCLType*, %sCLType** %101, align 8
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %104 = bitcast i8* %103 to %sCompileInfo**
  %info45 = load %sCompileInfo*, %sCompileInfo** %104, align 8
  %105 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info45, i32 0, i32 4
  %106 = load %sParserInfo*, %sParserInfo** %105, align 8
  %107 = call i1 @type_identify_with_class_name(%sCLType* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.118, i32 0, i32 0), %sParserInfo* %106)
  %oror46 = or i1 %oror_result_value, %107
  store i1 %oror46, i1* %oror_result_var, align 1
  br label %cond_jump_end43

cond_jump_end43:                                  ; preds = %cond_jump_then42, %cond_jump_end
  %oror_result_value47 = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value47, label %cond_jump_then48, label %cond_else_block49

cond_jump_then48:                                 ; preds = %cond_jump_end43
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %109 = bitcast i8* %108 to %sCompileInfo**
  %info51 = load %sCompileInfo*, %sCompileInfo** %109, align 8
  %110 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info51, i32 0, i32 6
  %111 = load %sCLType*, %sCLType** %110, align 8
  %obj_type = alloca %sCLType*
  %112 = bitcast %sCLType** %obj_type to i8*
  store i8* %112, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store %sCLType* %111, %sCLType** %obj_type, align 8
  %i52 = alloca i32
  %113 = bitcast i32* %i52 to i8*
  store i8* %113, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store i32 1, i32* %i52, align 4
  br label %loop_top_block53

cond_else_block49:                                ; preds = %cond_jump_end43
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %115 = bitcast i8* %114 to %sCompileInfo**
  %info82 = load %sCompileInfo*, %sCompileInfo** %115, align 8
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %117 = bitcast i8* %116 to i8**
  %klass_name83 = load i8*, i8** %117, align 8
  %118 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %119 = bitcast i8* %118 to i8**
  %method_name84 = load i8*, i8** %119, align 8
  %120 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.120, i32 0, i32 0), i8* %klass_name83, i8* %method_name84)
  call void @compile_err_msg(%sCompileInfo* %info82, i8* %120)
  %121 = bitcast [8192 x i8*]* %lvtable to i8*
  %122 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %121, i64 65536)
  %123 = ptrtoint i8* %120 to i64
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %cond_then_block85, label %cond_end86

cond_end50:                                       ; preds = %cond_end_block58
  br label %cond_end36

loop_top_block53:                                 ; preds = %cond_end65, %cond_jump_then48
  %i54 = load i32, i32* %i52, align 4
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %126 = bitcast i8* %125 to i32*
  %num_params55 = load i32, i32* %126, align 4
  %letmp56 = icmp slt i32 %i54, %num_params55
  br i1 %letmp56, label %cond_then_block57, label %cond_end_block58

cond_then_block57:                                ; preds = %loop_top_block53
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %128 = bitcast i8* %127 to [32 x %sCLNode*]*
  %i59 = load i32, i32* %i52, align 4
  %129 = bitcast [32 x %sCLNode*]* %128 to %sCLNode**
  %element_address60 = getelementptr %sCLNode*, %sCLNode** %129, i32 %i59
  %element61 = load %sCLNode*, %sCLNode** %element_address60, align 8
  %130 = getelementptr inbounds %sCLNode, %sCLNode* %element61, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %eqtmpX62 = icmp eq i32 %131, 21
  br i1 %eqtmpX62, label %cond_jump_then63, label %cond_else_block64

cond_end_block58:                                 ; preds = %loop_top_block53
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %133 = bitcast i8* %132 to %sCompileInfo**
  %info80 = load %sCompileInfo*, %sCompileInfo** %133, align 8
  %obj_type81 = load %sCLType*, %sCLType** %obj_type, align 8
  %134 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info80, i32 0, i32 6
  store %sCLType* %obj_type81, %sCLType** %134, align 8
  br label %cond_end50

cond_jump_then63:                                 ; preds = %cond_then_block57
  %135 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %136 = bitcast i8* %135 to %sCompileInfo**
  %info66 = load %sCompileInfo*, %sCompileInfo** %136, align 8
  %137 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %138 = bitcast i8* %137 to i8**
  %method_name67 = load i8*, i8** %138, align 8
  %139 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @global_string.119, i32 0, i32 0), i8* %method_name67)
  call void @compile_err_msg(%sCompileInfo* %info66, i8* %139)
  %140 = bitcast [8192 x i8*]* %lvtable to i8*
  %141 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %140, i64 65536)
  %142 = ptrtoint i8* %139 to i64
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %cond_then_block68, label %cond_end69

cond_else_block64:                                ; preds = %cond_then_block57
  %144 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %145 = bitcast i8* %144 to [32 x %sCLNode*]*
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %147 = bitcast i8* %146 to i32*
  %i70 = load i32, i32* %147, align 4
  %148 = bitcast [32 x %sCLNode*]* %145 to %sCLNode**
  %element_address71 = getelementptr %sCLNode*, %sCLNode** %148, i32 %i70
  %element72 = load %sCLNode*, %sCLNode** %element_address71, align 8
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %150 = bitcast i8* %149 to %sCompileInfo**
  %info73 = load %sCompileInfo*, %sCompileInfo** %150, align 8
  %151 = call i1 @compile(%sCLNode* %element72, %sCompileInfo* %info73)
  %LOGICAL_DIANEAL74 = icmp eq i1 %151, false
  br i1 %LOGICAL_DIANEAL74, label %cond_jump_then75, label %cond_end76

cond_end65:                                       ; preds = %cond_end76
  %i77 = load i32, i32* %i52, align 4
  %addtmp78 = add nsw i32 %i77, 1
  store i32 %addtmp78, i32* %i52, align 4
  %subttmp79 = sub nsw i32 %addtmp78, 1
  br label %loop_top_block53

cond_then_block68:                                ; preds = %cond_jump_then63
  br label %cond_end69

cond_end69:                                       ; preds = %cond_then_block68, %cond_jump_then63
  call void @xfree(i8* %139)
  ret i1 true

cond_jump_then75:                                 ; preds = %cond_else_block64
  %152 = bitcast [8192 x i8*]* %lvtable to i8*
  %153 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %152, i64 65536)
  ret i1 false

cond_end76:                                       ; preds = %cond_else_block64
  br label %cond_end65

cond_then_block85:                                ; preds = %cond_else_block49
  br label %cond_end86

cond_end86:                                       ; preds = %cond_then_block85, %cond_else_block49
  call void @xfree(i8* %120)
  ret i1 true

cond_jump_then88:                                 ; preds = %cond_else_block35
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %155 = bitcast i8* %154 to %sCLMethod**
  %method91 = load %sCLMethod*, %sCLMethod** %155, align 8
  %156 = getelementptr inbounds %sCLMethod, %sCLMethod* %method91, i32 0, i32 6
  %157 = load %sCLNodeBlock*, %sCLNodeBlock** %156, align 8
  %158 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %157, i32 0, i32 1
  %159 = load %vector__sVarTablep*, %vector__sVarTablep** %158, align 8
  %160 = call i32 @get_var_num(%vector__sVarTablep* %159)
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %162 = bitcast i8* %161 to i32*
  store i32 %160, i32* %162, align 4
  br label %cond_end90

cond_else_block89:                                ; preds = %cond_else_block35
  %163 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %164 = bitcast i8* %163 to i32*
  %num_params92 = load i32, i32* %164, align 4
  %165 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %166 = bitcast i8* %165 to i32*
  store i32 %num_params92, i32* %166, align 4
  br label %cond_end90

cond_end90:                                       ; preds = %cond_else_block89, %cond_jump_then88
  %167 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %168 = bitcast i8* %167 to %sCLMethod**
  %method93 = load %sCLMethod*, %sCLMethod** %168, align 8
  %169 = getelementptr inbounds %sCLMethod, %sCLMethod* %method93, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %172 = bitcast i8* %171 to i32*
  %num_params94 = load i32, i32* %172, align 4
  %noteqtmp = icmp ne i32 %170, %num_params94
  br i1 %noteqtmp, label %cond_jump_then95, label %cond_end96

cond_jump_then95:                                 ; preds = %cond_end90
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %174 = bitcast i8* %173 to %sCompileInfo**
  %info97 = load %sCompileInfo*, %sCompileInfo** %174, align 8
  %175 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %176 = bitcast i8* %175 to i32*
  %num_params98 = load i32, i32* %176, align 4
  %177 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %178 = bitcast i8* %177 to %sCLMethod**
  %method99 = load %sCLMethod*, %sCLMethod** %178, align 8
  %179 = getelementptr inbounds %sCLMethod, %sCLMethod* %method99, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %182 = bitcast i8* %181 to %sCLClass**
  %klass100 = load %sCLClass*, %sCLClass** %182, align 8
  %183 = getelementptr inbounds %sCLClass, %sCLClass* %klass100, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %186 = bitcast i8* %185 to i8**
  %method_name101 = load i8*, i8** %186, align 8
  %187 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @global_string.121, i32 0, i32 0), i32 %num_params98, i32 %180, i8* %184, i8* %method_name101)
  call void @compile_err_msg(%sCompileInfo* %info97, i8* %187)
  %188 = bitcast [8192 x i8*]* %lvtable to i8*
  %189 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %188, i64 65536)
  %190 = ptrtoint i8* %187 to i64
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %cond_then_block102, label %cond_end103

cond_end96:                                       ; preds = %cond_end90
  %param_types = alloca [32 x %sCLType*]
  %192 = bitcast [32 x %sCLType*]* %param_types to i8*
  store i8* %192, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %i104 = alloca i32
  %193 = bitcast i32* %i104 to i8*
  store i8* %193, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 1, i32* %i104, align 4
  br label %loop_top_block105

cond_then_block102:                               ; preds = %cond_jump_then95
  br label %cond_end103

cond_end103:                                      ; preds = %cond_then_block102, %cond_jump_then95
  call void @xfree(i8* %187)
  ret i1 true

loop_top_block105:                                ; preds = %cond_end117, %cond_end96
  %i106 = load i32, i32* %i104, align 4
  %194 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %195 = bitcast i8* %194 to i32*
  %num_params107 = load i32, i32* %195, align 4
  %letmp108 = icmp slt i32 %i106, %num_params107
  br i1 %letmp108, label %cond_then_block109, label %cond_end_block110

cond_then_block109:                               ; preds = %loop_top_block105
  %196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %197 = bitcast i8* %196 to [32 x %sCLNode*]*
  %i111 = load i32, i32* %i104, align 4
  %198 = bitcast [32 x %sCLNode*]* %197 to %sCLNode**
  %element_address112 = getelementptr %sCLNode*, %sCLNode** %198, i32 %i111
  %element113 = load %sCLNode*, %sCLNode** %element_address112, align 8
  %199 = getelementptr inbounds %sCLNode, %sCLNode* %element113, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %eqtmpX114 = icmp eq i32 %200, 21
  br i1 %eqtmpX114, label %cond_jump_then115, label %cond_else_block116

cond_end_block110:                                ; preds = %loop_top_block105
  %201 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %202 = bitcast i8* %201 to %sCompileInfo**
  %info268 = load %sCompileInfo*, %sCompileInfo** %202, align 8
  %203 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %204 = bitcast i8* %203 to %sCLMethod**
  %method269 = load %sCLMethod*, %sCLMethod** %204, align 8
  %205 = getelementptr inbounds %sCLMethod, %sCLMethod* %method269, i32 0, i32 3
  %206 = load %sCLType*, %sCLType** %205, align 8
  %207 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %208 = bitcast i8* %207 to %sCLType**
  %generics_types270 = load %sCLType*, %sCLType** %208, align 8
  %209 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %210 = bitcast i8* %209 to %sCompileInfo**
  %info271 = load %sCompileInfo*, %sCompileInfo** %210, align 8
  %211 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info271, i32 0, i32 4
  %212 = load %sParserInfo*, %sParserInfo** %211, align 8
  %213 = call %sCLType* @solve_generics(%sCLType* %206, %sCLType* %generics_types270, %sParserInfo* %212)
  %214 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info268, i32 0, i32 6
  store %sCLType* %213, %sCLType** %214, align 8
  br label %cond_end36

cond_jump_then115:                                ; preds = %cond_then_block109
  %215 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %216 = bitcast i8* %215 to [32 x %sCLNode*]*
  %217 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %218 = bitcast i8* %217 to i32*
  %i118 = load i32, i32* %218, align 4
  %219 = bitcast [32 x %sCLNode*]* %216 to %sCLNode**
  %element_address119 = getelementptr %sCLNode*, %sCLNode** %219, i32 %i118
  %element120 = load %sCLNode*, %sCLNode** %element_address119, align 8
  %node121 = alloca %sCLNode*
  %220 = bitcast %sCLNode** %node121 to i8*
  store i8* %220, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store %sCLNode* %element120, %sCLNode** %node121, align 8
  %221 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %222 = bitcast i8* %221 to %sCLMethod**
  %method122 = load %sCLMethod*, %sCLMethod** %222, align 8
  %223 = getelementptr inbounds %sCLMethod, %sCLMethod* %method122, i32 0, i32 1
  %224 = bitcast [32 x %sCLParam]* %223 to %sCLParam*
  %225 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %226 = bitcast i8* %225 to i32*
  %i123 = load i32, i32* %226, align 4
  %element_address124 = getelementptr %sCLParam, %sCLParam* %224, i32 %i123
  %element125 = load %sCLParam, %sCLParam* %element_address124, align 8
  %227 = getelementptr inbounds %sCLParam, %sCLParam* %element_address124, i32 0, i32 1
  %228 = load %sCLType*, %sCLType** %227, align 8
  %method_param_type = alloca %sCLType*
  %229 = bitcast %sCLType** %method_param_type to i8*
  store i8* %229, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store %sCLType* %228, %sCLType** %method_param_type, align 8
  %node126 = load %sCLNode*, %sCLNode** %node121, align 8
  %230 = getelementptr inbounds %sCLNode, %sCLNode* %node126, i32 0, i32 3
  %231 = load %anon78, %anon78* %230, align 8
  %232 = bitcast %anon78* %230 to %anon80*
  %233 = load %anon80, %anon80* %232, align 8
  %method_param_type127 = load %sCLType*, %sCLType** %method_param_type, align 8
  %234 = getelementptr inbounds %sCLType, %sCLType* %method_param_type127, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %anon80, %anon80* %232, i32 0, i32 2
  store i32 %235, i32* %236, align 4
  %j = alloca i32
  %237 = bitcast i32* %j to i8*
  store i8* %237, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  store i32 0, i32* %j, align 4
  br label %loop_top_block128

cond_else_block116:                               ; preds = %cond_then_block109
  %238 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %239 = bitcast i8* %238 to [32 x %sCLNode*]*
  %240 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %241 = bitcast i8* %240 to i32*
  %i231 = load i32, i32* %241, align 4
  %242 = bitcast [32 x %sCLNode*]* %239 to %sCLNode**
  %element_address232 = getelementptr %sCLNode*, %sCLNode** %242, i32 %i231
  %element233 = load %sCLNode*, %sCLNode** %element_address232, align 8
  %243 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %244 = bitcast i8* %243 to %sCompileInfo**
  %info234 = load %sCompileInfo*, %sCompileInfo** %244, align 8
  %245 = call i1 @compile(%sCLNode* %element233, %sCompileInfo* %info234)
  %LOGICAL_DIANEAL235 = icmp eq i1 %245, false
  br i1 %LOGICAL_DIANEAL235, label %cond_jump_then236, label %cond_end237

cond_end117:                                      ; preds = %cond_end254, %cond_end220
  %i265 = load i32, i32* %i104, align 4
  %addtmp266 = add nsw i32 %i265, 1
  store i32 %addtmp266, i32* %i104, align 4
  %subttmp267 = sub nsw i32 %addtmp266, 1
  br label %loop_top_block105

loop_top_block128:                                ; preds = %cond_then_block132, %cond_jump_then115
  %j129 = load i32, i32* %j, align 4
  %246 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %247 = bitcast i8* %246 to %sCLType**
  %method_param_type130 = load %sCLType*, %sCLType** %247, align 8
  %248 = getelementptr inbounds %sCLType, %sCLType* %method_param_type130, i32 0, i32 6
  %249 = load i32, i32* %248, align 4
  %letmp131 = icmp slt i32 %j129, %249
  br i1 %letmp131, label %cond_then_block132, label %cond_end_block133

cond_then_block132:                               ; preds = %loop_top_block128
  %250 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %251 = bitcast i8* %250 to %sCLNode**
  %node134 = load %sCLNode*, %sCLNode** %251, align 8
  %252 = getelementptr inbounds %sCLNode, %sCLNode* %node134, i32 0, i32 3
  %253 = load %anon78, %anon78* %252, align 8
  %254 = bitcast %anon78* %252 to %anon80*
  %255 = load %anon80, %anon80* %254, align 8
  %256 = getelementptr inbounds %anon80, %anon80* %254, i32 0, i32 1
  %257 = bitcast [32 x %sCLParam]* %256 to %sCLParam*
  %j135 = load i32, i32* %j, align 4
  %258 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %259 = bitcast i8* %258 to %sCLType**
  %method_param_type136 = load %sCLType*, %sCLType** %259, align 8
  %260 = getelementptr inbounds %sCLType, %sCLType* %method_param_type136, i32 0, i32 5
  %261 = bitcast [32 x %sCLParam]* %260 to %sCLParam*
  %j137 = load i32, i32* %j, align 4
  %element_address138 = getelementptr %sCLParam, %sCLParam* %261, i32 %j137
  %element139 = load %sCLParam, %sCLParam* %element_address138, align 8
  %element_address140 = getelementptr %sCLParam, %sCLParam* %257, i32 %j135
  store %sCLParam %element139, %sCLParam* %element_address140, align 8
  %262 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %263 = bitcast i8* %262 to %sCLNode**
  %node141 = load %sCLNode*, %sCLNode** %263, align 8
  %264 = getelementptr inbounds %sCLNode, %sCLNode* %node141, i32 0, i32 3
  %265 = load %anon78, %anon78* %264, align 8
  %266 = bitcast %anon78* %264 to %anon80*
  %267 = load %anon80, %anon80* %266, align 8
  %268 = getelementptr inbounds %anon80, %anon80* %266, i32 0, i32 1
  %269 = bitcast [32 x %sCLParam]* %268 to %sCLParam*
  %j142 = load i32, i32* %j, align 4
  %element_address143 = getelementptr %sCLParam, %sCLParam* %269, i32 %j142
  %element144 = load %sCLParam, %sCLParam* %element_address143, align 8
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %271 = bitcast i8* %270 to %sCLType**
  %method_param_type145 = load %sCLType*, %sCLType** %271, align 8
  %272 = getelementptr inbounds %sCLType, %sCLType* %method_param_type145, i32 0, i32 5
  %273 = bitcast [32 x %sCLParam]* %272 to %sCLParam*
  %j146 = load i32, i32* %j, align 4
  %element_address147 = getelementptr %sCLParam, %sCLParam* %273, i32 %j146
  %element148 = load %sCLParam, %sCLParam* %element_address147, align 8
  %274 = getelementptr inbounds %sCLParam, %sCLParam* %element_address147, i32 0, i32 1
  %275 = load %sCLType*, %sCLType** %274, align 8
  %276 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %277 = bitcast i8* %276 to %sCLType**
  %generics_types149 = load %sCLType*, %sCLType** %277, align 8
  %278 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %279 = bitcast i8* %278 to %sCompileInfo**
  %info150 = load %sCompileInfo*, %sCompileInfo** %279, align 8
  %280 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info150, i32 0, i32 4
  %281 = load %sParserInfo*, %sParserInfo** %280, align 8
  %282 = call %sCLType* @solve_generics(%sCLType* %275, %sCLType* %generics_types149, %sParserInfo* %281)
  %283 = getelementptr inbounds %sCLParam, %sCLParam* %element_address143, i32 0, i32 1
  store %sCLType* %282, %sCLType** %283, align 8
  %j151 = load i32, i32* %j, align 4
  %addtmp152 = add nsw i32 %j151, 1
  store i32 %addtmp152, i32* %j, align 4
  %subttmp153 = sub nsw i32 %addtmp152, 1
  br label %loop_top_block128

cond_end_block133:                                ; preds = %loop_top_block128
  %node154 = load %sCLNode*, %sCLNode** %node121, align 8
  %284 = getelementptr inbounds %sCLNode, %sCLNode* %node154, i32 0, i32 3
  %285 = load %anon78, %anon78* %284, align 8
  %286 = bitcast %anon78* %284 to %anon80*
  %287 = load %anon80, %anon80* %286, align 8
  %method_param_type155 = load %sCLType*, %sCLType** %method_param_type, align 8
  %288 = getelementptr inbounds %sCLType, %sCLType* %method_param_type155, i32 0, i32 7
  %289 = load %sCLType*, %sCLType** %288, align 8
  %290 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %291 = bitcast i8* %290 to %sCLType**
  %generics_types156 = load %sCLType*, %sCLType** %291, align 8
  %292 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %293 = bitcast i8* %292 to %sCompileInfo**
  %info157 = load %sCompileInfo*, %sCompileInfo** %293, align 8
  %294 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info157, i32 0, i32 4
  %295 = load %sParserInfo*, %sParserInfo** %294, align 8
  %296 = call %sCLType* @solve_generics(%sCLType* %289, %sCLType* %generics_types156, %sParserInfo* %295)
  %297 = getelementptr inbounds %anon80, %anon80* %286, i32 0, i32 3
  store %sCLType* %296, %sCLType** %297, align 8
  %298 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %299 = bitcast i8* %298 to %sCompileInfo**
  %info158 = load %sCompileInfo*, %sCompileInfo** %299, align 8
  %300 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info158, i32 0, i32 4
  %301 = load %sParserInfo*, %sParserInfo** %300, align 8
  %302 = getelementptr inbounds %sParserInfo, %sParserInfo* %301, i32 0, i32 4
  %303 = load i8*, i8** %302, align 8
  %p_before = alloca i8*
  %304 = bitcast i8** %p_before to i8*
  store i8* %304, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store i8* %303, i8** %p_before, align 8
  %305 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %306 = bitcast i8* %305 to %sCompileInfo**
  %info159 = load %sCompileInfo*, %sCompileInfo** %306, align 8
  %307 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info159, i32 0, i32 4
  %308 = load %sParserInfo*, %sParserInfo** %307, align 8
  %309 = getelementptr inbounds %sParserInfo, %sParserInfo* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %sline_before = alloca i32
  %311 = bitcast i32* %sline_before to i8*
  store i8* %311, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i32 %310, i32* %sline_before, align 4
  %312 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %313 = bitcast i8* %312 to %sCompileInfo**
  %info160 = load %sCompileInfo*, %sCompileInfo** %313, align 8
  %314 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info160, i32 0, i32 4
  %315 = load %sParserInfo*, %sParserInfo** %314, align 8
  %node161 = load %sCLNode*, %sCLNode** %node121, align 8
  %316 = getelementptr inbounds %sCLNode, %sCLNode* %node161, i32 0, i32 7
  %317 = load %buffer*, %buffer** %316, align 8
  %318 = getelementptr inbounds %buffer, %buffer* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds %sParserInfo, %sParserInfo* %315, i32 0, i32 4
  store i8* %319, i8** %320, align 8
  %321 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %322 = bitcast i8* %321 to %sCompileInfo**
  %info162 = load %sCompileInfo*, %sCompileInfo** %322, align 8
  %323 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info162, i32 0, i32 4
  %324 = load %sParserInfo*, %sParserInfo** %323, align 8
  %node163 = load %sCLNode*, %sCLNode** %node121, align 8
  %325 = getelementptr inbounds %sCLNode, %sCLNode* %node163, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = getelementptr inbounds %sParserInfo, %sParserInfo* %324, i32 0, i32 1
  store i32 %326, i32* %327, align 4
  %node_block = alloca %sCLNodeBlock*
  %328 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %328, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store %sCLNodeBlock* null, %sCLNodeBlock** %node_block, align 8
  %329 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %330 = bitcast i8* %329 to %sCompileInfo**
  %info164 = load %sCompileInfo*, %sCompileInfo** %330, align 8
  %331 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info164, i32 0, i32 4
  %332 = load %sParserInfo*, %sParserInfo** %331, align 8
  %333 = getelementptr inbounds %sParserInfo, %sParserInfo* %332, i32 0, i32 11
  %334 = load i32, i32* %333, align 4
  %max_var_num = alloca i32
  %335 = bitcast i32* %max_var_num to i8*
  store i8* %335, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store i32 %334, i32* %max_var_num, align 4
  %336 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %337 = bitcast i8* %336 to %sCompileInfo**
  %info165 = load %sCompileInfo*, %sCompileInfo** %337, align 8
  %338 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info165, i32 0, i32 4
  %339 = load %sParserInfo*, %sParserInfo** %338, align 8
  %340 = getelementptr inbounds %sParserInfo, %sParserInfo* %339, i32 0, i32 7
  %341 = load %vector__sVarTablep*, %vector__sVarTablep** %340, align 8
  %vtables_before = alloca %vector__sVarTablep*
  %342 = bitcast %vector__sVarTablep** %vtables_before to i8*
  store i8* %342, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store %vector__sVarTablep* %341, %vector__sVarTablep** %vtables_before, align 8
  %343 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %344 = bitcast i8* %343 to %sCompileInfo**
  %info166 = load %sCompileInfo*, %sCompileInfo** %344, align 8
  %345 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info166, i32 0, i32 4
  %346 = load %sParserInfo*, %sParserInfo** %345, align 8
  %347 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.122, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.123, i32 0, i32 0), i32 1857, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_string.124, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_string.125, i32 0, i32 0))
  %348 = bitcast i8* %347 to %vector__sVarTablep*
  %349 = call %vector__sVarTablep* @"vector_initialize_sVarTablep4_src/node"(%vector__sVarTablep* %348)
  %350 = getelementptr inbounds %sParserInfo, %sParserInfo* %346, i32 0, i32 7
  store %vector__sVarTablep* %349, %vector__sVarTablep** %350, align 8
  %node_block167 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %method_param_type168 = load %sCLType*, %sCLType** %method_param_type, align 8
  %351 = getelementptr inbounds %sCLType, %sCLType* %method_param_type168, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %node169 = load %sCLNode*, %sCLNode** %node121, align 8
  %353 = getelementptr inbounds %sCLNode, %sCLNode* %node169, i32 0, i32 3
  %354 = load %anon78, %anon78* %353, align 8
  %355 = bitcast %anon78* %353 to %anon80*
  %356 = load %anon80, %anon80* %355, align 8
  %357 = getelementptr inbounds %anon80, %anon80* %355, i32 0, i32 1
  %358 = bitcast [32 x %sCLParam]* %357 to %sCLParam*
  %359 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %360 = bitcast i8* %359 to %sCompileInfo**
  %info170 = load %sCompileInfo*, %sCompileInfo** %360, align 8
  %361 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info170, i32 0, i32 4
  %362 = load %sParserInfo*, %sParserInfo** %361, align 8
  %363 = call i1 @parse_block(%sCLNodeBlock** %node_block, i32 %352, %sCLParam* %358, %sParserInfo* %362)
  %LOGICAL_DIANEAL171 = icmp eq i1 %363, false
  br i1 %LOGICAL_DIANEAL171, label %cond_jump_then172, label %cond_end173

cond_jump_then172:                                ; preds = %cond_end_block133
  %364 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %365 = bitcast i8* %364 to %sCompileInfo**
  %info174 = load %sCompileInfo*, %sCompileInfo** %365, align 8
  %366 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info174, i32 0, i32 4
  %367 = load %sParserInfo*, %sParserInfo** %366, align 8
  %368 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %369 = bitcast i8* %368 to i32*
  %max_var_num175 = load i32, i32* %369, align 4
  %370 = getelementptr inbounds %sParserInfo, %sParserInfo* %367, i32 0, i32 11
  store i32 %max_var_num175, i32* %370, align 4
  %371 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %372 = bitcast i8* %371 to %sCompileInfo**
  %info176 = load %sCompileInfo*, %sCompileInfo** %372, align 8
  %373 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info176, i32 0, i32 4
  %374 = load %sParserInfo*, %sParserInfo** %373, align 8
  %375 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %376 = bitcast i8* %375 to i8**
  %p_before177 = load i8*, i8** %376, align 8
  %377 = getelementptr inbounds %sParserInfo, %sParserInfo* %374, i32 0, i32 4
  store i8* %p_before177, i8** %377, align 8
  %378 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %379 = bitcast i8* %378 to %sCompileInfo**
  %info178 = load %sCompileInfo*, %sCompileInfo** %379, align 8
  %380 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info178, i32 0, i32 4
  %381 = load %sParserInfo*, %sParserInfo** %380, align 8
  %382 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %383 = bitcast i8* %382 to i32*
  %sline_before179 = load i32, i32* %383, align 4
  %384 = getelementptr inbounds %sParserInfo, %sParserInfo* %381, i32 0, i32 1
  store i32 %sline_before179, i32* %384, align 4
  %385 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %386 = bitcast i8* %385 to %sCompileInfo**
  %info180 = load %sCompileInfo*, %sCompileInfo** %386, align 8
  %387 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info180, i32 0, i32 4
  %388 = load %sParserInfo*, %sParserInfo** %387, align 8
  %389 = getelementptr inbounds %sParserInfo, %sParserInfo* %388, i32 0, i32 7
  %390 = load %vector__sVarTablep*, %vector__sVarTablep** %389, align 8
  %391 = load %vector__sVarTablep*, %vector__sVarTablep** %389, align 8
  call void @"vector_finalize_sVarTablep5_src/node"(%vector__sVarTablep* %391)
  %392 = ptrtoint %vector__sVarTablep* %391 to i64
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %cond_then_block181, label %cond_end182

cond_end173:                                      ; preds = %cond_end_block133
  %394 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %395 = bitcast i8* %394 to %sCompileInfo**
  %info185 = load %sCompileInfo*, %sCompileInfo** %395, align 8
  %396 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info185, i32 0, i32 4
  %397 = load %sParserInfo*, %sParserInfo** %396, align 8
  %398 = getelementptr inbounds %sParserInfo, %sParserInfo* %397, i32 0, i32 7
  %399 = load %vector__sVarTablep*, %vector__sVarTablep** %398, align 8
  %400 = load %vector__sVarTablep*, %vector__sVarTablep** %398, align 8
  call void @"vector_finalize_sVarTablep7_src/node"(%vector__sVarTablep* %400)
  %401 = ptrtoint %vector__sVarTablep* %400 to i64
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %cond_then_block186, label %cond_end187

cond_then_block181:                               ; preds = %cond_jump_then172
  br label %cond_end182

cond_end182:                                      ; preds = %cond_then_block181, %cond_jump_then172
  %403 = bitcast %vector__sVarTablep* %391 to i8*
  call void @xfree(i8* %403)
  %404 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %405 = bitcast i8* %404 to %sCompileInfo**
  %info183 = load %sCompileInfo*, %sCompileInfo** %405, align 8
  %406 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info183, i32 0, i32 4
  %407 = load %sParserInfo*, %sParserInfo** %406, align 8
  %408 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %409 = bitcast i8* %408 to %vector__sVarTablep**
  %vtables_before184 = load %vector__sVarTablep*, %vector__sVarTablep** %409, align 8
  %410 = getelementptr inbounds %sParserInfo, %sParserInfo* %407, i32 0, i32 7
  store %vector__sVarTablep* %vtables_before184, %vector__sVarTablep** %410, align 8
  %411 = bitcast [8192 x i8*]* %lvtable to i8*
  %412 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %411, i64 65536)
  ret i1 false

cond_then_block186:                               ; preds = %cond_end173
  br label %cond_end187

cond_end187:                                      ; preds = %cond_then_block186, %cond_end173
  %413 = bitcast %vector__sVarTablep* %400 to i8*
  call void @xfree(i8* %413)
  %414 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %415 = bitcast i8* %414 to %sCompileInfo**
  %info188 = load %sCompileInfo*, %sCompileInfo** %415, align 8
  %416 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info188, i32 0, i32 4
  %417 = load %sParserInfo*, %sParserInfo** %416, align 8
  %vtables_before189 = load %vector__sVarTablep*, %vector__sVarTablep** %vtables_before, align 8
  %418 = getelementptr inbounds %sParserInfo, %sParserInfo* %417, i32 0, i32 7
  store %vector__sVarTablep* %vtables_before189, %vector__sVarTablep** %418, align 8
  %419 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %420 = bitcast i8* %419 to %sCompileInfo**
  %info190 = load %sCompileInfo*, %sCompileInfo** %420, align 8
  %421 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info190, i32 0, i32 4
  %422 = load %sParserInfo*, %sParserInfo** %421, align 8
  %max_var_num191 = load i32, i32* %max_var_num, align 4
  %423 = getelementptr inbounds %sParserInfo, %sParserInfo* %422, i32 0, i32 11
  store i32 %max_var_num191, i32* %423, align 4
  %424 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %425 = bitcast i8* %424 to %sCompileInfo**
  %info192 = load %sCompileInfo*, %sCompileInfo** %425, align 8
  %426 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info192, i32 0, i32 4
  %427 = load %sParserInfo*, %sParserInfo** %426, align 8
  %p_before193 = load i8*, i8** %p_before, align 8
  %428 = getelementptr inbounds %sParserInfo, %sParserInfo* %427, i32 0, i32 4
  store i8* %p_before193, i8** %428, align 8
  %429 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %430 = bitcast i8* %429 to %sCompileInfo**
  %info194 = load %sCompileInfo*, %sCompileInfo** %430, align 8
  %431 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info194, i32 0, i32 4
  %432 = load %sParserInfo*, %sParserInfo** %431, align 8
  %sline_before195 = load i32, i32* %sline_before, align 4
  %433 = getelementptr inbounds %sParserInfo, %sParserInfo* %432, i32 0, i32 1
  store i32 %sline_before195, i32* %433, align 4
  %node196 = load %sCLNode*, %sCLNode** %node121, align 8
  %434 = getelementptr inbounds %sCLNode, %sCLNode* %node196, i32 0, i32 3
  %435 = load %anon78, %anon78* %434, align 8
  %436 = bitcast %anon78* %434 to %anon80*
  %437 = load %anon80, %anon80* %436, align 8
  %node_block197 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %438 = getelementptr inbounds %anon80, %anon80* %436, i32 0, i32 0
  store %sCLNodeBlock* %node_block197, %sCLNodeBlock** %438, align 8
  %439 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %440 = bitcast i8* %439 to [32 x %sCLNode*]*
  %441 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %442 = bitcast i8* %441 to i32*
  %i198 = load i32, i32* %442, align 4
  %443 = bitcast [32 x %sCLNode*]* %440 to %sCLNode**
  %element_address199 = getelementptr %sCLNode*, %sCLNode** %443, i32 %i198
  %element200 = load %sCLNode*, %sCLNode** %element_address199, align 8
  %444 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %445 = bitcast i8* %444 to %sCompileInfo**
  %info201 = load %sCompileInfo*, %sCompileInfo** %445, align 8
  %446 = call i1 @compile(%sCLNode* %element200, %sCompileInfo* %info201)
  %LOGICAL_DIANEAL202 = icmp eq i1 %446, false
  br i1 %LOGICAL_DIANEAL202, label %cond_jump_then203, label %cond_end204

cond_jump_then203:                                ; preds = %cond_end187
  %447 = bitcast [8192 x i8*]* %lvtable to i8*
  %448 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %447, i64 65536)
  ret i1 false

cond_end204:                                      ; preds = %cond_end187
  %449 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %450 = bitcast i8* %449 to [32 x %sCLType*]*
  %451 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %452 = bitcast i8* %451 to i32*
  %i205 = load i32, i32* %452, align 4
  %453 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %454 = bitcast i8* %453 to %sCompileInfo**
  %info206 = load %sCompileInfo*, %sCompileInfo** %454, align 8
  %455 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info206, i32 0, i32 6
  %456 = load %sCLType*, %sCLType** %455, align 8
  %457 = bitcast [32 x %sCLType*]* %450 to %sCLType**
  %element_address207 = getelementptr %sCLType*, %sCLType** %457, i32 %i205
  store %sCLType* %456, %sCLType** %element_address207, align 8
  %458 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %459 = bitcast i8* %458 to %sCLMethod**
  %method208 = load %sCLMethod*, %sCLMethod** %459, align 8
  %460 = getelementptr inbounds %sCLMethod, %sCLMethod* %method208, i32 0, i32 1
  %461 = bitcast [32 x %sCLParam]* %460 to %sCLParam*
  %462 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %463 = bitcast i8* %462 to i32*
  %i209 = load i32, i32* %463, align 4
  %element_address210 = getelementptr %sCLParam, %sCLParam* %461, i32 %i209
  %element211 = load %sCLParam, %sCLParam* %element_address210, align 8
  %464 = getelementptr inbounds %sCLParam, %sCLParam* %element_address210, i32 0, i32 1
  %465 = load %sCLType*, %sCLType** %464, align 8
  %466 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %467 = bitcast i8* %466 to %sCLType**
  %generics_types212 = load %sCLType*, %sCLType** %467, align 8
  %468 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %469 = bitcast i8* %468 to %sCompileInfo**
  %info213 = load %sCompileInfo*, %sCompileInfo** %469, align 8
  %470 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info213, i32 0, i32 4
  %471 = load %sParserInfo*, %sParserInfo** %470, align 8
  %472 = call %sCLType* @solve_generics(%sCLType* %465, %sCLType* %generics_types212, %sParserInfo* %471)
  %type = alloca %sCLType*
  %473 = bitcast %sCLType** %type to i8*
  store i8* %473, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  store %sCLType* %472, %sCLType** %type, align 8
  %type214 = load %sCLType*, %sCLType** %type, align 8
  %474 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %475 = bitcast i8* %474 to [32 x %sCLType*]*
  %476 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %477 = bitcast i8* %476 to i32*
  %i215 = load i32, i32* %477, align 4
  %478 = bitcast [32 x %sCLType*]* %475 to %sCLType**
  %element_address216 = getelementptr %sCLType*, %sCLType** %478, i32 %i215
  %element217 = load %sCLType*, %sCLType** %element_address216, align 8
  %479 = call i1 @substitution_posibility(%sCLType* %type214, %sCLType* %element217)
  %LOGICAL_DIANEAL218 = icmp eq i1 %479, false
  br i1 %LOGICAL_DIANEAL218, label %cond_jump_then219, label %cond_end220

cond_jump_then219:                                ; preds = %cond_end204
  %480 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %481 = bitcast i8* %480 to %sCompileInfo**
  %info221 = load %sCompileInfo*, %sCompileInfo** %481, align 8
  %482 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %483 = bitcast i8* %482 to i32*
  %i222 = load i32, i32* %483, align 4
  %484 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %485 = bitcast i8* %484 to %sCLClass**
  %klass223 = load %sCLClass*, %sCLClass** %485, align 8
  %486 = getelementptr inbounds %sCLClass, %sCLClass* %klass223, i32 0, i32 0
  %487 = load i8*, i8** %486, align 8
  %488 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %489 = bitcast i8* %488 to i8**
  %method_name224 = load i8*, i8** %489, align 8
  %490 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.130, i32 0, i32 0), i32 %i222, i8* %487, i8* %method_name224)
  call void @compile_err_msg(%sCompileInfo* %info221, i8* %490)
  %491 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %492 = bitcast i8* %491 to %sCLType**
  %type225 = load %sCLType*, %sCLType** %492, align 8
  call void @show_type(%sCLType* %type225)
  %493 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %494 = bitcast i8* %493 to [32 x %sCLType*]*
  %495 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %496 = bitcast i8* %495 to i32*
  %i226 = load i32, i32* %496, align 4
  %497 = bitcast [32 x %sCLType*]* %494 to %sCLType**
  %element_address227 = getelementptr %sCLType*, %sCLType** %497, i32 %i226
  %element228 = load %sCLType*, %sCLType** %element_address227, align 8
  call void @show_type(%sCLType* %element228)
  %498 = bitcast [8192 x i8*]* %lvtable to i8*
  %499 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %498, i64 65536)
  %500 = ptrtoint i8* %490 to i64
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %cond_then_block229, label %cond_end230

cond_end220:                                      ; preds = %cond_end204
  br label %cond_end117

cond_then_block229:                               ; preds = %cond_jump_then219
  br label %cond_end230

cond_end230:                                      ; preds = %cond_then_block229, %cond_jump_then219
  call void @xfree(i8* %490)
  ret i1 true

cond_jump_then236:                                ; preds = %cond_else_block116
  %502 = bitcast [8192 x i8*]* %lvtable to i8*
  %503 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %502, i64 65536)
  ret i1 false

cond_end237:                                      ; preds = %cond_else_block116
  %504 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %505 = bitcast i8* %504 to [32 x %sCLType*]*
  %506 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %507 = bitcast i8* %506 to i32*
  %i238 = load i32, i32* %507, align 4
  %508 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %509 = bitcast i8* %508 to %sCompileInfo**
  %info239 = load %sCompileInfo*, %sCompileInfo** %509, align 8
  %510 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info239, i32 0, i32 6
  %511 = load %sCLType*, %sCLType** %510, align 8
  %512 = bitcast [32 x %sCLType*]* %505 to %sCLType**
  %element_address240 = getelementptr %sCLType*, %sCLType** %512, i32 %i238
  store %sCLType* %511, %sCLType** %element_address240, align 8
  %513 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %514 = bitcast i8* %513 to %sCLMethod**
  %method241 = load %sCLMethod*, %sCLMethod** %514, align 8
  %515 = getelementptr inbounds %sCLMethod, %sCLMethod* %method241, i32 0, i32 1
  %516 = bitcast [32 x %sCLParam]* %515 to %sCLParam*
  %517 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %518 = bitcast i8* %517 to i32*
  %i242 = load i32, i32* %518, align 4
  %element_address243 = getelementptr %sCLParam, %sCLParam* %516, i32 %i242
  %element244 = load %sCLParam, %sCLParam* %element_address243, align 8
  %519 = getelementptr inbounds %sCLParam, %sCLParam* %element_address243, i32 0, i32 1
  %520 = load %sCLType*, %sCLType** %519, align 8
  %521 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %522 = bitcast i8* %521 to %sCLType**
  %generics_types245 = load %sCLType*, %sCLType** %522, align 8
  %523 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %524 = bitcast i8* %523 to %sCompileInfo**
  %info246 = load %sCompileInfo*, %sCompileInfo** %524, align 8
  %525 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info246, i32 0, i32 4
  %526 = load %sParserInfo*, %sParserInfo** %525, align 8
  %527 = call %sCLType* @solve_generics(%sCLType* %520, %sCLType* %generics_types245, %sParserInfo* %526)
  %type247 = alloca %sCLType*
  %528 = bitcast %sCLType** %type247 to i8*
  store i8* %528, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store %sCLType* %527, %sCLType** %type247, align 8
  %type248 = load %sCLType*, %sCLType** %type247, align 8
  %529 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %530 = bitcast i8* %529 to [32 x %sCLType*]*
  %531 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %532 = bitcast i8* %531 to i32*
  %i249 = load i32, i32* %532, align 4
  %533 = bitcast [32 x %sCLType*]* %530 to %sCLType**
  %element_address250 = getelementptr %sCLType*, %sCLType** %533, i32 %i249
  %element251 = load %sCLType*, %sCLType** %element_address250, align 8
  %534 = call i1 @substitution_posibility(%sCLType* %type248, %sCLType* %element251)
  %LOGICAL_DIANEAL252 = icmp eq i1 %534, false
  br i1 %LOGICAL_DIANEAL252, label %cond_jump_then253, label %cond_end254

cond_jump_then253:                                ; preds = %cond_end237
  %535 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %536 = bitcast i8* %535 to %sCompileInfo**
  %info255 = load %sCompileInfo*, %sCompileInfo** %536, align 8
  %537 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %538 = bitcast i8* %537 to i32*
  %i256 = load i32, i32* %538, align 4
  %539 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %540 = bitcast i8* %539 to %sCLClass**
  %klass257 = load %sCLClass*, %sCLClass** %540, align 8
  %541 = getelementptr inbounds %sCLClass, %sCLClass* %klass257, i32 0, i32 0
  %542 = load i8*, i8** %541, align 8
  %543 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %544 = bitcast i8* %543 to i8**
  %method_name258 = load i8*, i8** %544, align 8
  %545 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.131, i32 0, i32 0), i32 %i256, i8* %542, i8* %method_name258)
  call void @compile_err_msg(%sCompileInfo* %info255, i8* %545)
  %546 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %547 = bitcast i8* %546 to %sCLType**
  %type259 = load %sCLType*, %sCLType** %547, align 8
  call void @show_type(%sCLType* %type259)
  %548 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %549 = bitcast i8* %548 to [32 x %sCLType*]*
  %550 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %551 = bitcast i8* %550 to i32*
  %i260 = load i32, i32* %551, align 4
  %552 = bitcast [32 x %sCLType*]* %549 to %sCLType**
  %element_address261 = getelementptr %sCLType*, %sCLType** %552, i32 %i260
  %element262 = load %sCLType*, %sCLType** %element_address261, align 8
  call void @show_type(%sCLType* %element262)
  %553 = bitcast [8192 x i8*]* %lvtable to i8*
  %554 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %553, i64 65536)
  %555 = ptrtoint i8* %545 to i64
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %cond_then_block263, label %cond_end264

cond_end254:                                      ; preds = %cond_end237
  br label %cond_end117

cond_then_block263:                               ; preds = %cond_jump_then253
  br label %cond_end264

cond_end264:                                      ; preds = %cond_then_block263, %cond_jump_then253
  call void @xfree(i8* %545)
  ret i1 true

cond_jump_then274:                                ; preds = %cond_end36
  %557 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %558 = bitcast i8* %557 to %sCompileInfo**
  %info276 = load %sCompileInfo*, %sCompileInfo** %558, align 8
  %559 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info276, i32 0, i32 5
  %560 = load %buffer*, %buffer** %559, align 8
  store %buffer* %560, %buffer** %self, align 8
  store i32 17, i32* %value, align 4
  br label %append_int

cond_end275:                                      ; preds = %inline_func_end312, %cond_end36
  %info315 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info316 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %561 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info316, i32 0, i32 3
  %562 = load i32, i32* %561, align 4
  %num_params317 = load i32, i32* %num_params, align 4
  %subttmp318 = sub nsw i32 %562, %num_params317
  %563 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info315, i32 0, i32 3
  store i32 %subttmp318, i32* %563, align 4
  %num_params319 = load i32, i32* %num_params, align 4
  %addtmp320 = add nsw i32 %subttmp318, %num_params319
  %info321 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info322 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %564 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info322, i32 0, i32 3
  %565 = load i32, i32* %564, align 4
  %addtmp323 = add nsw i32 %565, 1
  %566 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info321, i32 0, i32 3
  store i32 %addtmp323, i32* %566, align 4
  %subttmp324 = sub nsw i32 %addtmp323, 1
  %567 = bitcast [8192 x i8*]* %lvtable to i8*
  %568 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %567, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then274
  %569 = bitcast %buffer** %self to i8*
  store i8* %569, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %570 = bitcast i32* %value to i8*
  store i8* %570, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %self277 = load %buffer*, %buffer** %self, align 8
  %value278 = load i32, i32* %value, align 4
  %571 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self277, i8* %571, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %572 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %573 = bitcast i8* %572 to %sCompileInfo**
  %info279 = load %sCompileInfo*, %sCompileInfo** %573, align 8
  %574 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info279, i32 0, i32 5
  %575 = load %buffer*, %buffer** %574, align 8
  %576 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %577 = bitcast i8* %576 to i8**
  %method_name280 = load i8*, i8** %577, align 8
  call void @buffer_append_nullterminated_str(%buffer* %575, i8* %method_name280)
  %578 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %579 = bitcast i8* %578 to %sCompileInfo**
  %info281 = load %sCompileInfo*, %sCompileInfo** %579, align 8
  %580 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info281, i32 0, i32 5
  %581 = load %buffer*, %buffer** %580, align 8
  store %buffer* %581, %buffer** %self282, align 8
  br label %alignment

alignment:                                        ; preds = %inline_func_end
  %582 = bitcast %buffer** %self282 to i8*
  store i8* %582, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self284 = load %buffer*, %buffer** %self282, align 8
  %583 = getelementptr inbounds %buffer, %buffer* %self284, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %len = alloca i32
  %585 = bitcast i32* %len to i8*
  store i8* %585, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store i32 %584, i32* %len, align 4
  %len285 = load i32, i32* %len, align 4
  %addtmp286 = add nsw i32 %len285, 3
  %andtmp = and i32 %addtmp286, -4
  store i32 %andtmp, i32* %len, align 4
  %586 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %587 = bitcast i8* %586 to %buffer**
  %self287 = load %buffer*, %buffer** %587, align 8
  %588 = getelementptr inbounds %buffer, %buffer* %self287, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %i288 = alloca i32
  %590 = bitcast i32* %i288 to i8*
  store i8* %590, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %589, i32* %i288, align 4
  br label %loop_top_block289

inline_func_end283:                               ; preds = %cond_end_block294
  %591 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %592 = bitcast i8* %591 to %sCompileInfo**
  %info299 = load %sCompileInfo*, %sCompileInfo** %592, align 8
  %593 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info299, i32 0, i32 5
  %594 = load %buffer*, %buffer** %593, align 8
  %595 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %596 = bitcast i8* %595 to i32*
  %num_params300 = load i32, i32* %596, align 4
  store %buffer* %594, %buffer** %self301, align 8
  store i32 %num_params300, i32* %value302, align 4
  br label %append_int303

loop_top_block289:                                ; preds = %cond_then_block293, %alignment
  %i290 = load i32, i32* %i288, align 4
  %597 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %598 = bitcast i8* %597 to i32*
  %len291 = load i32, i32* %598, align 4
  %letmp292 = icmp slt i32 %i290, %len291
  br i1 %letmp292, label %cond_then_block293, label %cond_end_block294

cond_then_block293:                               ; preds = %loop_top_block289
  %599 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %600 = bitcast i8* %599 to %buffer**
  %self295 = load %buffer*, %buffer** %600, align 8
  call void @buffer_append_char(%buffer* %self295, i8 0)
  %i296 = load i32, i32* %i288, align 4
  %addtmp297 = add nsw i32 %i296, 1
  store i32 %addtmp297, i32* %i288, align 4
  %subttmp298 = sub nsw i32 %addtmp297, 1
  br label %loop_top_block289

cond_end_block294:                                ; preds = %loop_top_block289
  br label %inline_func_end283

append_int303:                                    ; preds = %inline_func_end283
  %601 = bitcast %buffer** %self301 to i8*
  store i8* %601, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %602 = bitcast i32* %value302 to i8*
  store i8* %602, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %self305 = load %buffer*, %buffer** %self301, align 8
  %value306 = load i32, i32* %value302, align 4
  %603 = bitcast i32* %value302 to i8*
  call void @buffer_append(%buffer* %self305, i8* %603, i64 4)
  br label %inline_func_end304

inline_func_end304:                               ; preds = %append_int303
  %604 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %605 = bitcast i8* %604 to %sCompileInfo**
  %info307 = load %sCompileInfo*, %sCompileInfo** %605, align 8
  %606 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info307, i32 0, i32 5
  %607 = load %buffer*, %buffer** %606, align 8
  %608 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %609 = bitcast i8* %608 to i32*
  %last_method_chain308 = load i32, i32* %609, align 4
  store %buffer* %607, %buffer** %self309, align 8
  store i32 %last_method_chain308, i32* %value310, align 4
  br label %append_int311

append_int311:                                    ; preds = %inline_func_end304
  %610 = bitcast %buffer** %self309 to i8*
  store i8* %610, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %611 = bitcast i32* %value310 to i8*
  store i8* %611, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %self313 = load %buffer*, %buffer** %self309, align 8
  %value314 = load i32, i32* %value310, align 4
  %612 = bitcast i32* %value310 to i8*
  call void @buffer_append(%buffer* %self313, i8* %612, i64 4)
  br label %inline_func_end312

inline_func_end312:                               ; preds = %append_int311
  br label %cond_end275
}

define %sCLMethod* @"map_at_charp_sCLMethodp3_src/node"(%map__charp_sCLMethodp* %self, i8* %key, %sCLMethod* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLMethodp*
  store %map__charp_sCLMethodp* %self, %map__charp_sCLMethodp** %self1, align 8
  %2 = bitcast %map__charp_sCLMethodp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %default_value3 = alloca %sCLMethod*
  store %sCLMethod* %default_value, %sCLMethod** %default_value3, align 8
  %4 = bitcast %sCLMethod** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLMethodp**
  %self7 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
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
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLMethodp**
  %self9 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %28 = bitcast i8* %27 to %sCLMethod**
  %default_value28 = load %sCLMethod*, %sCLMethod** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLMethod* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLMethodp**
  %self16 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self16, i32 0, i32 2
  %34 = load %sCLMethod**, %sCLMethod*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLMethod*, %sCLMethod** %34, i32 %it17
  %element19 = load %sCLMethod*, %sCLMethod** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLMethod* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLMethodp**
  %self22 = load %map__charp_sCLMethodp*, %map__charp_sCLMethodp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLMethodp, %map__charp_sCLMethodp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %56 = bitcast i8* %55 to %sCLMethod**
  %default_value27 = load %sCLMethod*, %sCLMethod** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLMethod* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define %vector__sVarTablep* @"vector_initialize_sVarTablep4_src/node"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
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
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.126, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.127, i32 0, i32 0), i32 452, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.128, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.129, i32 0, i32 0))
  %8 = bitcast i8* %7 to %sVarTable**
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self4, i32 0, i32 0
  store %sVarTable** %8, %sVarTable*** %9, align 8
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__sVarTablep* %self6
}

define void @"vector_finalize_sVarTablep5_src/node"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
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
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %13 = bitcast i8* %12 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %13, align 8
  %14 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
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
  call void @"map_finalize_charp_sVarp6_src/node"(%map__charp_sVarp* %24)
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

define void @"map_finalize_charp_sVarp6_src/node"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
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
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
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
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
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
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
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

define void @"vector_finalize_sVarTablep7_src/node"(%vector__sVarTablep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
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
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %13 = bitcast i8* %12 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %13, align 8
  %14 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
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
  call void @"map_finalize_charp_sVarp8_src/node"(%map__charp_sVarp* %24)
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

define void @"map_finalize_charp_sVarp8_src/node"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
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
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
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
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
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
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
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

define i1 @compile_block_object_call(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value97 = alloca i32
  %self96 = alloca %buffer*
  %value89 = alloca i32
  %self88 = alloca %buffer*
  %value80 = alloca i32
  %self79 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 3
  %5 = load %anon78, %anon78* %4, align 8
  %6 = bitcast %anon78* %4 to %anon81*
  %7 = load %anon81, %anon81* %6, align 8
  %8 = getelementptr inbounds %anon81, %anon81* %6, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %num_params = alloca i32
  %10 = bitcast i32* %num_params to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 %9, i32* %num_params, align 4
  %params = alloca [32 x %sCLNode*]
  %11 = bitcast [32 x %sCLNode*]* %params to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %i = alloca i32
  %12 = bitcast i32* %i to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %i4 = load i32, i32* %i, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %14 = bitcast i8* %13 to i32*
  %num_params5 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i4, %num_params5
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %16 = bitcast i8* %15 to [32 x %sCLNode*]*
  %i6 = load i32, i32* %i, align 4
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %18 = bitcast i8* %17 to %sCLNode**
  %node7 = load %sCLNode*, %sCLNode** %18, align 8
  %19 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 3
  %20 = load %anon78, %anon78* %19, align 8
  %21 = bitcast %anon78* %19 to %anon81*
  %22 = load %anon81, %anon81* %21, align 8
  %23 = getelementptr inbounds %anon81, %anon81* %21, i32 0, i32 1
  %24 = bitcast [32 x %sCLNode*]* %23 to %sCLNode**
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %24, i32 %i8
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %25 = bitcast [32 x %sCLNode*]* %16 to %sCLNode**
  %element_address9 = getelementptr %sCLNode*, %sCLNode** %25, i32 %i6
  store %sCLNode* %element, %sCLNode** %element_address9, align 8
  %i10 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i10, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %26 = bitcast [32 x %sCLNode*]* %params to %sCLNode**
  %element_address11 = getelementptr %sCLNode*, %sCLNode** %26, i32 0
  %element12 = load %sCLNode*, %sCLNode** %element_address11, align 8
  %info13 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %27 = call i1 @compile(%sCLNode* %element12, %sCompileInfo* %info13)
  %LOGICAL_DIANEAL = icmp eq i1 %27, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %cond_end_block
  %28 = bitcast [8192 x i8*]* %lvtable to i8*
  %29 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %28, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %cond_end_block
  %info14 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %30 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info14, i32 0, i32 6
  %31 = load %sCLType*, %sCLType** %30, align 8
  %info15 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %32 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info15, i32 0, i32 4
  %33 = load %sParserInfo*, %sParserInfo** %32, align 8
  %34 = call i1 @type_identify_with_class_name(%sCLType* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.132, i32 0, i32 0), %sParserInfo* %33)
  %LOGICAL_DIANEAL16 = icmp eq i1 %34, false
  br i1 %LOGICAL_DIANEAL16, label %cond_jump_then17, label %cond_end18

cond_jump_then17:                                 ; preds = %cond_end
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %36 = bitcast i8* %35 to %sCompileInfo**
  %info19 = load %sCompileInfo*, %sCompileInfo** %36, align 8
  call void @compile_err_msg(%sCompileInfo* %info19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_string.133, i32 0, i32 0))
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret i1 true

cond_end18:                                       ; preds = %cond_end
  %info20 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %39 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info20, i32 0, i32 6
  %40 = load %sCLType*, %sCLType** %39, align 8
  %block_type = alloca %sCLType*
  %41 = bitcast %sCLType** %block_type to i8*
  store i8* %41, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* %40, %sCLType** %block_type, align 8
  %block_type21 = load %sCLType*, %sCLType** %block_type, align 8
  %42 = getelementptr inbounds %sCLType, %sCLType* %block_type21, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %num_params22 = load i32, i32* %num_params, align 4
  %subttmp23 = sub nsw i32 %num_params22, 1
  %noteqtmp = icmp ne i32 %43, %subttmp23
  br i1 %noteqtmp, label %cond_jump_then24, label %cond_end25

cond_jump_then24:                                 ; preds = %cond_end18
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %45 = bitcast i8* %44 to %sCompileInfo**
  %info26 = load %sCompileInfo*, %sCompileInfo** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %47 = bitcast i8* %46 to %sCLType**
  %block_type27 = load %sCLType*, %sCLType** %47, align 8
  %48 = getelementptr inbounds %sCLType, %sCLType* %block_type27, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %51 = bitcast i8* %50 to i32*
  %num_params28 = load i32, i32* %51, align 4
  %subttmp29 = sub nsw i32 %num_params28, 1
  %52 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @global_string.134, i32 0, i32 0), i32 %49, i32 %subttmp29)
  call void @compile_err_msg(%sCompileInfo* %info26, i8* %52)
  %53 = bitcast [8192 x i8*]* %lvtable to i8*
  %54 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %53, i64 65536)
  %55 = ptrtoint i8* %52 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %cond_then_block30, label %cond_end31

cond_end25:                                       ; preds = %cond_end18
  %param_types = alloca [32 x %sCLType*]
  %57 = bitcast [32 x %sCLType*]* %param_types to i8*
  store i8* %57, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %i32 = alloca i32
  %58 = bitcast i32* %i32 to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 1, i32* %i32, align 4
  br label %loop_top_block33

cond_then_block30:                                ; preds = %cond_jump_then24
  br label %cond_end31

cond_end31:                                       ; preds = %cond_then_block30, %cond_jump_then24
  call void @xfree(i8* %52)
  ret i1 true

loop_top_block33:                                 ; preds = %cond_end59, %cond_end25
  %i34 = load i32, i32* %i32, align 4
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %60 = bitcast i8* %59 to i32*
  %num_params35 = load i32, i32* %60, align 4
  %letmp36 = icmp slt i32 %i34, %num_params35
  br i1 %letmp36, label %cond_then_block37, label %cond_end_block38

cond_then_block37:                                ; preds = %loop_top_block33
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %62 = bitcast i8* %61 to [32 x %sCLNode*]*
  %i39 = load i32, i32* %i32, align 4
  %63 = bitcast [32 x %sCLNode*]* %62 to %sCLNode**
  %element_address40 = getelementptr %sCLNode*, %sCLNode** %63, i32 %i39
  %element41 = load %sCLNode*, %sCLNode** %element_address40, align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %65 = bitcast i8* %64 to %sCompileInfo**
  %info42 = load %sCompileInfo*, %sCompileInfo** %65, align 8
  %66 = call i1 @compile(%sCLNode* %element41, %sCompileInfo* %info42)
  %LOGICAL_DIANEAL43 = icmp eq i1 %66, false
  br i1 %LOGICAL_DIANEAL43, label %cond_jump_then44, label %cond_end45

cond_end_block38:                                 ; preds = %loop_top_block33
  %block_type67 = load %sCLType*, %sCLType** %block_type, align 8
  %67 = getelementptr inbounds %sCLType, %sCLType* %block_type67, i32 0, i32 7
  %68 = load %sCLType*, %sCLType** %67, align 8
  %info68 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %69 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info68, i32 0, i32 4
  %70 = load %sParserInfo*, %sParserInfo** %69, align 8
  %71 = call i1 @type_identify_with_class_name(%sCLType* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.136, i32 0, i32 0), %sParserInfo* %70)
  %LOGICAL_DIANEAL69 = icmp eq i1 %71, false
  %result_existance = alloca i1
  %72 = bitcast i1* %result_existance to i8*
  store i8* %72, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i1 %LOGICAL_DIANEAL69, i1* %result_existance, align 1
  %info70 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %73 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info70, i32 0, i32 7
  %74 = load i1, i1* %73, align 1
  %LOGICAL_DIANEAL71 = icmp eq i1 %74, false
  br i1 %LOGICAL_DIANEAL71, label %cond_jump_then72, label %cond_end73

cond_jump_then44:                                 ; preds = %cond_then_block37
  %75 = bitcast [8192 x i8*]* %lvtable to i8*
  %76 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %75, i64 65536)
  ret i1 false

cond_end45:                                       ; preds = %cond_then_block37
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %78 = bitcast i8* %77 to [32 x %sCLType*]*
  %i46 = load i32, i32* %i32, align 4
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %80 = bitcast i8* %79 to %sCompileInfo**
  %info47 = load %sCompileInfo*, %sCompileInfo** %80, align 8
  %81 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info47, i32 0, i32 6
  %82 = load %sCLType*, %sCLType** %81, align 8
  %83 = bitcast [32 x %sCLType*]* %78 to %sCLType**
  %element_address48 = getelementptr %sCLType*, %sCLType** %83, i32 %i46
  store %sCLType* %82, %sCLType** %element_address48, align 8
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %85 = bitcast i8* %84 to %sCLType**
  %block_type49 = load %sCLType*, %sCLType** %85, align 8
  %86 = getelementptr inbounds %sCLType, %sCLType* %block_type49, i32 0, i32 5
  %87 = bitcast [32 x %sCLParam]* %86 to %sCLParam*
  %i50 = load i32, i32* %i32, align 4
  %subttmp51 = sub nsw i32 %i50, 1
  %element_address52 = getelementptr %sCLParam, %sCLParam* %87, i32 %subttmp51
  %element53 = load %sCLParam, %sCLParam* %element_address52, align 8
  %88 = getelementptr inbounds %sCLParam, %sCLParam* %element_address52, i32 0, i32 1
  %89 = load %sCLType*, %sCLType** %88, align 8
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %91 = bitcast i8* %90 to [32 x %sCLType*]*
  %i54 = load i32, i32* %i32, align 4
  %92 = bitcast [32 x %sCLType*]* %91 to %sCLType**
  %element_address55 = getelementptr %sCLType*, %sCLType** %92, i32 %i54
  %element56 = load %sCLType*, %sCLType** %element_address55, align 8
  %93 = call i1 @substitution_posibility(%sCLType* %89, %sCLType* %element56)
  %LOGICAL_DIANEAL57 = icmp eq i1 %93, false
  br i1 %LOGICAL_DIANEAL57, label %cond_jump_then58, label %cond_end59

cond_jump_then58:                                 ; preds = %cond_end45
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %95 = bitcast i8* %94 to %sCompileInfo**
  %info60 = load %sCompileInfo*, %sCompileInfo** %95, align 8
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %97 = bitcast i8* %96 to i32*
  %i61 = load i32, i32* %97, align 4
  %98 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.135, i32 0, i32 0), i32 %i61)
  call void @compile_err_msg(%sCompileInfo* %info60, i8* %98)
  %99 = bitcast [8192 x i8*]* %lvtable to i8*
  %100 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %99, i64 65536)
  %101 = ptrtoint i8* %98 to i64
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %cond_then_block62, label %cond_end63

cond_end59:                                       ; preds = %cond_end45
  %i64 = load i32, i32* %i32, align 4
  %addtmp65 = add nsw i32 %i64, 1
  store i32 %addtmp65, i32* %i32, align 4
  %subttmp66 = sub nsw i32 %addtmp65, 1
  br label %loop_top_block33

cond_then_block62:                                ; preds = %cond_jump_then58
  br label %cond_end63

cond_end63:                                       ; preds = %cond_then_block62, %cond_jump_then58
  call void @xfree(i8* %98)
  ret i1 true

cond_jump_then72:                                 ; preds = %cond_end_block38
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %104 = bitcast i8* %103 to %sCompileInfo**
  %info74 = load %sCompileInfo*, %sCompileInfo** %104, align 8
  %105 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info74, i32 0, i32 5
  %106 = load %buffer*, %buffer** %105, align 8
  store %buffer* %106, %buffer** %self, align 8
  store i32 19, i32* %value, align 4
  br label %append_int

cond_end73:                                       ; preds = %inline_func_end99, %cond_end_block38
  %info102 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info103 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %107 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info103, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %num_params104 = load i32, i32* %num_params, align 4
  %subttmp105 = sub nsw i32 %108, %num_params104
  %109 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info102, i32 0, i32 3
  store i32 %subttmp105, i32* %109, align 4
  %num_params106 = load i32, i32* %num_params, align 4
  %addtmp107 = add nsw i32 %subttmp105, %num_params106
  %info108 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info109 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %110 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %addtmp110 = add nsw i32 %111, 1
  %112 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info108, i32 0, i32 3
  store i32 %addtmp110, i32* %112, align 4
  %subttmp111 = sub nsw i32 %addtmp110, 1
  %info112 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %block_type113 = load %sCLType*, %sCLType** %block_type, align 8
  %113 = getelementptr inbounds %sCLType, %sCLType* %block_type113, i32 0, i32 7
  %114 = load %sCLType*, %sCLType** %113, align 8
  %115 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info112, i32 0, i32 6
  store %sCLType* %114, %sCLType** %115, align 8
  %116 = bitcast [8192 x i8*]* %lvtable to i8*
  %117 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %116, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then72
  %118 = bitcast %buffer** %self to i8*
  store i8* %118, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %119 = bitcast i32* %value to i8*
  store i8* %119, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self75 = load %buffer*, %buffer** %self, align 8
  %value76 = load i32, i32* %value, align 4
  %120 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self75, i8* %120, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %122 = bitcast i8* %121 to %sCompileInfo**
  %info77 = load %sCompileInfo*, %sCompileInfo** %122, align 8
  %123 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info77, i32 0, i32 5
  %124 = load %buffer*, %buffer** %123, align 8
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %126 = bitcast i8* %125 to %sCLType**
  %block_type78 = load %sCLType*, %sCLType** %126, align 8
  %127 = getelementptr inbounds %sCLType, %sCLType* %block_type78, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  store %buffer* %124, %buffer** %self79, align 8
  store i32 %128, i32* %value80, align 4
  br label %append_int81

append_int81:                                     ; preds = %inline_func_end
  %129 = bitcast %buffer** %self79 to i8*
  store i8* %129, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %130 = bitcast i32* %value80 to i8*
  store i8* %130, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self83 = load %buffer*, %buffer** %self79, align 8
  %value84 = load i32, i32* %value80, align 4
  %131 = bitcast i32* %value80 to i8*
  call void @buffer_append(%buffer* %self83, i8* %131, i64 4)
  br label %inline_func_end82

inline_func_end82:                                ; preds = %append_int81
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %133 = bitcast i8* %132 to %sCompileInfo**
  %info85 = load %sCompileInfo*, %sCompileInfo** %133, align 8
  %134 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info85, i32 0, i32 5
  %135 = load %buffer*, %buffer** %134, align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %137 = bitcast i8* %136 to i32*
  %num_params86 = load i32, i32* %137, align 4
  %subttmp87 = sub nsw i32 %num_params86, 1
  store %buffer* %135, %buffer** %self88, align 8
  store i32 %subttmp87, i32* %value89, align 4
  br label %append_int90

append_int90:                                     ; preds = %inline_func_end82
  %138 = bitcast %buffer** %self88 to i8*
  store i8* %138, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %139 = bitcast i32* %value89 to i8*
  store i8* %139, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self92 = load %buffer*, %buffer** %self88, align 8
  %value93 = load i32, i32* %value89, align 4
  %140 = bitcast i32* %value89 to i8*
  call void @buffer_append(%buffer* %self92, i8* %140, i64 4)
  br label %inline_func_end91

inline_func_end91:                                ; preds = %append_int90
  %141 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %142 = bitcast i8* %141 to %sCompileInfo**
  %info94 = load %sCompileInfo*, %sCompileInfo** %142, align 8
  %143 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info94, i32 0, i32 5
  %144 = load %buffer*, %buffer** %143, align 8
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %146 = bitcast i8* %145 to i1*
  %result_existance95 = load i1, i1* %146, align 1
  %sext13 = zext i1 %result_existance95 to i32
  store %buffer* %144, %buffer** %self96, align 8
  store i32 %sext13, i32* %value97, align 4
  br label %append_int98

append_int98:                                     ; preds = %inline_func_end91
  %147 = bitcast %buffer** %self96 to i8*
  store i8* %147, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %148 = bitcast i32* %value97 to i8*
  store i8* %148, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self100 = load %buffer*, %buffer** %self96, align 8
  %value101 = load i32, i32* %value97, align 4
  %149 = bitcast i32* %value97 to i8*
  call void @buffer_append(%buffer* %self100, i8* %149, i64 4)
  br label %inline_func_end99

inline_func_end99:                                ; preds = %append_int98
  br label %cond_end73
}

define i1 @compile_jobs(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 7
  %5 = load i1, i1* %4, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %5, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %sCompileInfo**
  %info4 = load %sCompileInfo*, %sCompileInfo** %7, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 5
  %9 = load %buffer*, %buffer** %8, align 8
  store %buffer* %9, %buffer** %self, align 8
  store i32 21, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end, %entry
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 4
  %11 = load %sParserInfo*, %sParserInfo** %10, align 8
  %12 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.137, i32 0, i32 0), %sParserInfo* %11)
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 6
  store %sCLType* %12, %sCLType** %13, align 8
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %16 = bitcast %buffer** %self to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %17 = bitcast i32* %value to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self5 = load %buffer*, %buffer** %self, align 8
  %value6 = load i32, i32* %value, align 4
  %18 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self5, i8* %18, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end
}

define i1 @compile_exit(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %left_node = alloca %sCLNode*
  %6 = bitcast %sCLNode** %left_node to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %5, %sCLNode** %left_node, align 8
  %left_node4 = load %sCLNode*, %sCLNode** %left_node, align 8
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = call i1 @compile(%sCLNode* %left_node4, %sCompileInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %7, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 6
  %11 = load %sCLType*, %sCLType** %10, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 4
  %13 = load %sParserInfo*, %sParserInfo** %12, align 8
  %14 = call i1 @type_identify_with_class_name(%sCLType* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.138, i32 0, i32 0), %sParserInfo* %13)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %16 = bitcast i8* %15 to %sCompileInfo**
  %info11 = load %sCompileInfo*, %sCompileInfo** %16, align 8
  call void @compile_err_msg(%sCompileInfo* %info11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.139, i32 0, i32 0))
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

cond_end10:                                       ; preds = %cond_end
  %info12 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info12, i32 0, i32 7
  %20 = load i1, i1* %19, align 1
  %LOGICAL_DIANEAL13 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL13, label %cond_jump_then14, label %cond_end15

cond_jump_then14:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info16 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  %23 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 5
  %24 = load %buffer*, %buffer** %23, align 8
  store %buffer* %24, %buffer** %self, align 8
  store i32 29, i32* %value, align 4
  br label %append_int

cond_end15:                                       ; preds = %inline_func_end, %cond_end10
  %info19 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info20 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %25 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info20, i32 0, i32 4
  %26 = load %sParserInfo*, %sParserInfo** %25, align 8
  %27 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.140, i32 0, i32 0), %sParserInfo* %26)
  %28 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info19, i32 0, i32 6
  store %sCLType* %27, %sCLType** %28, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info22 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %29 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info22, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %subttmp = sub nsw i32 %30, 1
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 3
  store i32 %subttmp, i32* %31, align 4
  %addtmp = add nsw i32 %subttmp, 1
  %32 = bitcast [8192 x i8*]* %lvtable to i8*
  %33 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %32, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then14
  %34 = bitcast %buffer** %self to i8*
  store i8* %34, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %35 = bitcast i32* %value to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self17 = load %buffer*, %buffer** %self, align 8
  %value18 = load i32, i32* %value, align 4
  %36 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self17, i8* %36, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end15
}

define i1 @compile_fg(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value11 = alloca i32
  %self10 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 3
  %5 = load %anon78, %anon78* %4, align 8
  %6 = bitcast %anon78* %4 to i32*
  %7 = load i32, i32* %6, align 4
  %job_num = alloca i32
  %8 = bitcast i32* %job_num to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 %7, i32* %job_num, align 4
  %info4 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 7
  %10 = load i1, i1* %9, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %10, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %12 = bitcast i8* %11 to %sCompileInfo**
  %info5 = load %sCompileInfo*, %sCompileInfo** %12, align 8
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info5, i32 0, i32 5
  %14 = load %buffer*, %buffer** %13, align 8
  store %buffer* %14, %buffer** %self, align 8
  store i32 22, i32* %value, align 4
  br label %append_int

cond_end:                                         ; preds = %inline_func_end13, %entry
  %info16 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info17 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %15 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info17, i32 0, i32 4
  %16 = load %sParserInfo*, %sParserInfo** %15, align 8
  %17 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.141, i32 0, i32 0), %sParserInfo* %16)
  %18 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 6
  store %sCLType* %17, %sCLType** %18, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then
  %21 = bitcast %buffer** %self to i8*
  store i8* %21, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %22 = bitcast i32* %value to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self6 = load %buffer*, %buffer** %self, align 8
  %value7 = load i32, i32* %value, align 4
  %23 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self6, i8* %23, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %25 = bitcast i8* %24 to %sCompileInfo**
  %info8 = load %sCompileInfo*, %sCompileInfo** %25, align 8
  %26 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 5
  %27 = load %buffer*, %buffer** %26, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %29 = bitcast i8* %28 to i32*
  %job_num9 = load i32, i32* %29, align 4
  store %buffer* %27, %buffer** %self10, align 8
  store i32 %job_num9, i32* %value11, align 4
  br label %append_int12

append_int12:                                     ; preds = %inline_func_end
  %30 = bitcast %buffer** %self10 to i8*
  store i8* %30, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %31 = bitcast i32* %value11 to i8*
  store i8* %31, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self14 = load %buffer*, %buffer** %self10, align 8
  %value15 = load i32, i32* %value11, align 4
  %32 = bitcast i32* %value11 to i8*
  call void @buffer_append(%buffer* %self14, i8* %32, i64 4)
  br label %inline_func_end13

inline_func_end13:                                ; preds = %append_int12
  br label %cond_end

entry18:                                          ; No predecessors!
  %lvtable19 = alloca [8192 x i8*]
  %33 = bitcast [8192 x i8*]* %lvtable19 to i8*
  %34 = call i8* @xmemcpy(i8* %33, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node20 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node20, align 8
  %35 = bitcast %sCLNode** %node20 to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info21 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info21, align 8
  %36 = bitcast %sCompileInfo** %info21 to i8*
  store i8* %36, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info22 = load %sCompileInfo*, %sCompileInfo** %info21, align 8
  %info23 = load %sCompileInfo*, %sCompileInfo** %info21, align 8
  %37 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info23, i32 0, i32 4
  %38 = load %sParserInfo*, %sParserInfo** %37, align 8
  %39 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.142, i32 0, i32 0), %sParserInfo* %38)
  %40 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info22, i32 0, i32 6
  store %sCLType* %39, %sCLType** %40, align 8
  %41 = bitcast [8192 x i8*]* %lvtable19 to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret i1 true
}

define i1 @compile_store_field(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value68 = alloca i32
  %self67 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %obj_node = alloca %sCLNode*
  %6 = bitcast %sCLNode** %obj_node to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %5, %sCLNode** %obj_node, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 5
  %8 = load i8*, i8** %7, align 8
  %name = alloca i8*
  %9 = bitcast i8** %name to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %8, i8** %name, align 8
  %node5 = load %sCLNode*, %sCLNode** %node1, align 8
  %10 = getelementptr inbounds %sCLNode, %sCLNode* %node5, i32 0, i32 11
  %11 = load %sCLNode*, %sCLNode** %10, align 8
  %exp_node = alloca %sCLNode*
  %12 = bitcast %sCLNode** %exp_node to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLNode* %11, %sCLNode** %exp_node, align 8
  %obj_node6 = load %sCLNode*, %sCLNode** %obj_node, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %13 = call i1 @compile(%sCLNode* %obj_node6, %sCompileInfo* %info7)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 6
  %17 = load %sCLType*, %sCLType** %16, align 8
  %obj_type = alloca %sCLType*
  %18 = bitcast %sCLType** %obj_type to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLType* %17, %sCLType** %obj_type, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info9, i32 0, i32 6
  %20 = load %sCLType*, %sCLType** %19, align 8
  %generics_types = alloca %sCLType*
  %21 = bitcast %sCLType** %generics_types to i8*
  store i8* %21, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLType* %20, %sCLType** %generics_types, align 8
  %obj_type10 = load %sCLType*, %sCLType** %obj_type, align 8
  %22 = getelementptr inbounds %sCLType, %sCLType* %obj_type10, i32 0, i32 1
  %23 = load %sCLClass*, %sCLClass** %22, align 8
  %klass = alloca %sCLClass*
  %24 = bitcast %sCLClass** %klass to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLClass* %23, %sCLClass** %klass, align 8
  %klass11 = load %sCLClass*, %sCLClass** %klass, align 8
  %25 = getelementptr inbounds %sCLClass, %sCLClass* %klass11, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %klass_name = alloca i8*
  %27 = bitcast i8** %klass_name to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i8* %26, i8** %klass_name, align 8
  %field = alloca %sCLField*
  %28 = bitcast %sCLField** %field to i8*
  store i8* %28, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store %sCLField* null, %sCLField** %field, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end17, %cond_end
  %klass12 = load %sCLClass*, %sCLClass** %klass, align 8
  %29 = ptrtoint %sCLClass* %klass12 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %32 = bitcast i8* %31 to %sCLClass**
  %klass13 = load %sCLClass*, %sCLClass** %32, align 8
  %33 = getelementptr inbounds %sCLClass, %sCLClass* %klass13, i32 0, i32 2
  %34 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %36 = bitcast i8* %35 to i8**
  %name14 = load i8*, i8** %36, align 8
  %37 = call %sCLField* @"map_at_charp_sCLFieldp9_src/node"(%map__charp_sCLFieldp* %34, i8* %name14, %sCLField* null)
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %39 = bitcast i8* %38 to %sCLField**
  store %sCLField* %37, %sCLField** %39, align 8
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %41 = bitcast i8* %40 to %sCLField**
  %field15 = load %sCLField*, %sCLField** %41, align 8
  %42 = ptrtoint %sCLField* %field15 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %cond_jump_then16, label %cond_end17

cond_end_block:                                   ; preds = %cond_jump_then16, %loop_top_block
  %sum = alloca i32
  %44 = bitcast i32* %sum to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 0, i32* %sum, align 4
  %klass19 = load %sCLClass*, %sCLClass** %klass, align 8
  %45 = getelementptr inbounds %sCLClass, %sCLClass* %klass19, i32 0, i32 4
  %46 = load %sCLClass*, %sCLClass** %45, align 8
  %it = alloca %sCLClass*
  %47 = bitcast %sCLClass** %it to i8*
  store i8* %47, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store %sCLClass* %46, %sCLClass** %it, align 8
  br label %loop_top_block20

cond_jump_then16:                                 ; preds = %cond_then_block
  br label %cond_end_block

cond_end17:                                       ; preds = %after_break, %cond_then_block
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %49 = bitcast i8* %48 to %sCLClass**
  %klass18 = load %sCLClass*, %sCLClass** %49, align 8
  %50 = getelementptr inbounds %sCLClass, %sCLClass* %klass18, i32 0, i32 4
  %51 = load %sCLClass*, %sCLClass** %50, align 8
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %53 = bitcast i8* %52 to %sCLClass**
  store %sCLClass* %51, %sCLClass** %53, align 8
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end17

loop_top_block20:                                 ; preds = %cond_then_block22, %cond_end_block
  %it21 = load %sCLClass*, %sCLClass** %it, align 8
  %54 = ptrtoint %sCLClass* %it21 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %cond_then_block22, label %cond_end_block23

cond_then_block22:                                ; preds = %loop_top_block20
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %57 = bitcast i8* %56 to i32*
  %sum24 = load i32, i32* %57, align 4
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %59 = bitcast i8* %58 to %sCLClass**
  %it25 = load %sCLClass*, %sCLClass** %59, align 8
  %60 = getelementptr inbounds %sCLClass, %sCLClass* %it25, i32 0, i32 2
  %61 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %60, align 8
  %62 = call i32 @"map_length_charp_sCLFieldp10_src/node"(%map__charp_sCLFieldp* %61)
  %addtmp = add nsw i32 %sum24, %62
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %64 = bitcast i8* %63 to i32*
  store i32 %addtmp, i32* %64, align 4
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %66 = bitcast i8* %65 to %sCLClass**
  %it26 = load %sCLClass*, %sCLClass** %66, align 8
  %67 = getelementptr inbounds %sCLClass, %sCLClass* %it26, i32 0, i32 2
  %68 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %67, align 8
  %69 = call i32 @"map_length_charp_sCLFieldp11_src/node"(%map__charp_sCLFieldp* %68)
  %subttmp = sub nsw i32 %addtmp, %69
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %71 = bitcast i8* %70 to %sCLClass**
  %it27 = load %sCLClass*, %sCLClass** %71, align 8
  %72 = getelementptr inbounds %sCLClass, %sCLClass* %it27, i32 0, i32 4
  %73 = load %sCLClass*, %sCLClass** %72, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %75 = bitcast i8* %74 to %sCLClass**
  store %sCLClass* %73, %sCLClass** %75, align 8
  br label %loop_top_block20

cond_end_block23:                                 ; preds = %loop_top_block20
  %field28 = load %sCLField*, %sCLField** %field, align 8
  %eqtmpX = icmp eq %sCLField* %field28, null
  br i1 %eqtmpX, label %cond_jump_then29, label %cond_end30

cond_jump_then29:                                 ; preds = %cond_end_block23
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %77 = bitcast i8* %76 to %sCompileInfo**
  %info31 = load %sCompileInfo*, %sCompileInfo** %77, align 8
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %79 = bitcast i8* %78 to i8**
  %name32 = load i8*, i8** %79, align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %81 = bitcast i8* %80 to i8**
  %klass_name33 = load i8*, i8** %81, align 8
  %82 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.143, i32 0, i32 0), i8* %name32, i8* %klass_name33)
  call void @compile_err_msg(%sCompileInfo* %info31, i8* %82)
  %83 = bitcast [8192 x i8*]* %lvtable to i8*
  %84 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %83, i64 65536)
  %85 = ptrtoint i8* %82 to i64
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %cond_then_block34, label %cond_end35

cond_end30:                                       ; preds = %cond_end_block23
  %field36 = load %sCLField*, %sCLField** %field, align 8
  %87 = getelementptr inbounds %sCLField, %sCLField* %field36, i32 0, i32 1
  %88 = load %sCLType*, %sCLType** %87, align 8
  %field_type = alloca %sCLType*
  %89 = bitcast %sCLType** %field_type to i8*
  store i8* %89, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store %sCLType* %88, %sCLType** %field_type, align 8
  %field_type37 = load %sCLType*, %sCLType** %field_type, align 8
  %generics_types38 = load %sCLType*, %sCLType** %generics_types, align 8
  %info39 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %90 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info39, i32 0, i32 4
  %91 = load %sParserInfo*, %sParserInfo** %90, align 8
  %92 = call %sCLType* @solve_generics(%sCLType* %field_type37, %sCLType* %generics_types38, %sParserInfo* %91)
  store %sCLType* %92, %sCLType** %field_type, align 8
  %sum40 = load i32, i32* %sum, align 4
  %field41 = load %sCLField*, %sCLField** %field, align 8
  %93 = getelementptr inbounds %sCLField, %sCLField* %field41, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %addtmp42 = add nsw i32 %sum40, %94
  %field_index = alloca i32
  %95 = bitcast i32* %field_index to i8*
  store i8* %95, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %addtmp42, i32* %field_index, align 4
  %exp_node43 = load %sCLNode*, %sCLNode** %exp_node, align 8
  %info44 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %96 = call i1 @compile(%sCLNode* %exp_node43, %sCompileInfo* %info44)
  %LOGICAL_DIANEAL45 = icmp eq i1 %96, false
  br i1 %LOGICAL_DIANEAL45, label %cond_jump_then46, label %cond_end47

cond_then_block34:                                ; preds = %cond_jump_then29
  br label %cond_end35

cond_end35:                                       ; preds = %cond_then_block34, %cond_jump_then29
  call void @xfree(i8* %82)
  ret i1 true

cond_jump_then46:                                 ; preds = %cond_end30
  %97 = bitcast [8192 x i8*]* %lvtable to i8*
  %98 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %97, i64 65536)
  ret i1 false

cond_end47:                                       ; preds = %cond_end30
  %info48 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %99 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info48, i32 0, i32 6
  %100 = load %sCLType*, %sCLType** %99, align 8
  %exp_type = alloca %sCLType*
  %101 = bitcast %sCLType** %exp_type to i8*
  store i8* %101, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store %sCLType* %100, %sCLType** %exp_type, align 8
  %field_type49 = load %sCLType*, %sCLType** %field_type, align 8
  %exp_type50 = load %sCLType*, %sCLType** %exp_type, align 8
  %102 = call i1 @substitution_posibility(%sCLType* %field_type49, %sCLType* %exp_type50)
  %LOGICAL_DIANEAL51 = icmp eq i1 %102, false
  br i1 %LOGICAL_DIANEAL51, label %cond_jump_then52, label %cond_end53

cond_jump_then52:                                 ; preds = %cond_end47
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %104 = bitcast i8* %103 to %sCompileInfo**
  %info54 = load %sCompileInfo*, %sCompileInfo** %104, align 8
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %106 = bitcast i8* %105 to i8**
  %name55 = load i8*, i8** %106, align 8
  %107 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.144, i32 0, i32 0), i8* %name55)
  call void @compile_err_msg(%sCompileInfo* %info54, i8* %107)
  %108 = bitcast [8192 x i8*]* %lvtable to i8*
  %109 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %108, i64 65536)
  %110 = ptrtoint i8* %107 to i64
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %cond_then_block56, label %cond_end57

cond_end53:                                       ; preds = %cond_end47
  %info58 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %112 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info58, i32 0, i32 7
  %113 = load i1, i1* %112, align 1
  %LOGICAL_DIANEAL59 = icmp eq i1 %113, false
  br i1 %LOGICAL_DIANEAL59, label %cond_jump_then60, label %cond_end61

cond_then_block56:                                ; preds = %cond_jump_then52
  br label %cond_end57

cond_end57:                                       ; preds = %cond_then_block56, %cond_jump_then52
  call void @xfree(i8* %107)
  ret i1 true

cond_jump_then60:                                 ; preds = %cond_end53
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %115 = bitcast i8* %114 to %sCompileInfo**
  %info62 = load %sCompileInfo*, %sCompileInfo** %115, align 8
  %116 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info62, i32 0, i32 5
  %117 = load %buffer*, %buffer** %116, align 8
  store %buffer* %117, %buffer** %self, align 8
  store i32 24, i32* %value, align 4
  br label %append_int

cond_end61:                                       ; preds = %inline_func_end70, %cond_end53
  %info73 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info74 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %118 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info74, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %subttmp75 = sub nsw i32 %119, 2
  %120 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info73, i32 0, i32 3
  store i32 %subttmp75, i32* %120, align 4
  %addtmp76 = add nsw i32 %subttmp75, 2
  %info77 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info78 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %121 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info78, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %addtmp79 = add nsw i32 %122, 1
  %123 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info77, i32 0, i32 3
  store i32 %addtmp79, i32* %123, align 4
  %subttmp80 = sub nsw i32 %addtmp79, 1
  %info81 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %field_type82 = load %sCLType*, %sCLType** %field_type, align 8
  %124 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info81, i32 0, i32 6
  store %sCLType* %field_type82, %sCLType** %124, align 8
  %125 = bitcast [8192 x i8*]* %lvtable to i8*
  %126 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %125, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then60
  %127 = bitcast %buffer** %self to i8*
  store i8* %127, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %128 = bitcast i32* %value to i8*
  store i8* %128, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %self63 = load %buffer*, %buffer** %self, align 8
  %value64 = load i32, i32* %value, align 4
  %129 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self63, i8* %129, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %131 = bitcast i8* %130 to %sCompileInfo**
  %info65 = load %sCompileInfo*, %sCompileInfo** %131, align 8
  %132 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info65, i32 0, i32 5
  %133 = load %buffer*, %buffer** %132, align 8
  %134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %135 = bitcast i8* %134 to i32*
  %field_index66 = load i32, i32* %135, align 4
  store %buffer* %133, %buffer** %self67, align 8
  store i32 %field_index66, i32* %value68, align 4
  br label %append_int69

append_int69:                                     ; preds = %inline_func_end
  %136 = bitcast %buffer** %self67 to i8*
  store i8* %136, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %137 = bitcast i32* %value68 to i8*
  store i8* %137, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %self71 = load %buffer*, %buffer** %self67, align 8
  %value72 = load i32, i32* %value68, align 4
  %138 = bitcast i32* %value68 to i8*
  call void @buffer_append(%buffer* %self71, i8* %138, i64 4)
  br label %inline_func_end70

inline_func_end70:                                ; preds = %append_int69
  br label %cond_end61
}

define %sCLField* @"map_at_charp_sCLFieldp9_src/node"(%map__charp_sCLFieldp* %self, i8* %key, %sCLField* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %default_value3 = alloca %sCLField*
  store %sCLField* %default_value, %sCLField** %default_value3, align 8
  %4 = bitcast %sCLField** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLFieldp**
  %self7 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sCLField*, %sCLField** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sCLField* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLFieldp**
  %self9 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %28 = bitcast i8* %27 to %sCLField**
  %default_value28 = load %sCLField*, %sCLField** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLField* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLFieldp**
  %self16 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self16, i32 0, i32 2
  %34 = load %sCLField**, %sCLField*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLField*, %sCLField** %34, i32 %it17
  %element19 = load %sCLField*, %sCLField** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLField* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLFieldp**
  %self22 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %56 = bitcast i8* %55 to %sCLField**
  %default_value27 = load %sCLField*, %sCLField** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLField* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define i32 @"map_length_charp_sCLFieldp10_src/node"(%map__charp_sCLFieldp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self2 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"map_length_charp_sCLFieldp11_src/node"(%map__charp_sCLFieldp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self2 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i1 @compile_load_field(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value61 = alloca i32
  %self60 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %obj_node = alloca %sCLNode*
  %6 = bitcast %sCLNode** %obj_node to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %5, %sCLNode** %obj_node, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 5
  %8 = load i8*, i8** %7, align 8
  %name = alloca i8*
  %9 = bitcast i8** %name to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i8* %8, i8** %name, align 8
  %obj_node5 = load %sCLNode*, %sCLNode** %obj_node, align 8
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = call i1 @compile(%sCLNode* %obj_node5, %sCompileInfo* %info6)
  %LOGICAL_DIANEAL = icmp eq i1 %10, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 6
  %14 = load %sCLType*, %sCLType** %13, align 8
  %obj_type = alloca %sCLType*
  %15 = bitcast %sCLType** %obj_type to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* %14, %sCLType** %obj_type, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 6
  %17 = load %sCLType*, %sCLType** %16, align 8
  %generics_types = alloca %sCLType*
  %18 = bitcast %sCLType** %generics_types to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLType* %17, %sCLType** %generics_types, align 8
  %obj_type9 = load %sCLType*, %sCLType** %obj_type, align 8
  %19 = getelementptr inbounds %sCLType, %sCLType* %obj_type9, i32 0, i32 1
  %20 = load %sCLClass*, %sCLClass** %19, align 8
  %klass = alloca %sCLClass*
  %21 = bitcast %sCLClass** %klass to i8*
  store i8* %21, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLClass* %20, %sCLClass** %klass, align 8
  %klass10 = load %sCLClass*, %sCLClass** %klass, align 8
  %22 = getelementptr inbounds %sCLClass, %sCLClass* %klass10, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %klass_name = alloca i8*
  %24 = bitcast i8** %klass_name to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i8* %23, i8** %klass_name, align 8
  %field = alloca %sCLField*
  %25 = bitcast %sCLField** %field to i8*
  store i8* %25, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store %sCLField* null, %sCLField** %field, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end16, %cond_end
  %klass11 = load %sCLClass*, %sCLClass** %klass, align 8
  %26 = ptrtoint %sCLClass* %klass11 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %29 = bitcast i8* %28 to %sCLClass**
  %klass12 = load %sCLClass*, %sCLClass** %29, align 8
  %30 = getelementptr inbounds %sCLClass, %sCLClass* %klass12, i32 0, i32 2
  %31 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %30, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %33 = bitcast i8* %32 to i8**
  %name13 = load i8*, i8** %33, align 8
  %34 = call %sCLField* @"map_at_charp_sCLFieldp12_src/node"(%map__charp_sCLFieldp* %31, i8* %name13, %sCLField* null)
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %36 = bitcast i8* %35 to %sCLField**
  store %sCLField* %34, %sCLField** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %38 = bitcast i8* %37 to %sCLField**
  %field14 = load %sCLField*, %sCLField** %38, align 8
  %39 = ptrtoint %sCLField* %field14 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %cond_jump_then15, label %cond_end16

cond_end_block:                                   ; preds = %cond_jump_then15, %loop_top_block
  %klass18 = load %sCLClass*, %sCLClass** %klass, align 8
  %eqtmpX = icmp eq %sCLClass* %klass18, null
  br i1 %eqtmpX, label %cond_jump_then19, label %cond_end20

cond_jump_then15:                                 ; preds = %cond_then_block
  br label %cond_end_block

cond_end16:                                       ; preds = %after_break, %cond_then_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %42 = bitcast i8* %41 to %sCLClass**
  %klass17 = load %sCLClass*, %sCLClass** %42, align 8
  %43 = getelementptr inbounds %sCLClass, %sCLClass* %klass17, i32 0, i32 4
  %44 = load %sCLClass*, %sCLClass** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %46 = bitcast i8* %45 to %sCLClass**
  store %sCLClass* %44, %sCLClass** %46, align 8
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end16

cond_jump_then19:                                 ; preds = %cond_end_block
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %48 = bitcast i8* %47 to %sCompileInfo**
  %info21 = load %sCompileInfo*, %sCompileInfo** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %50 = bitcast i8* %49 to i8**
  %name22 = load i8*, i8** %50, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %52 = bitcast i8* %51 to i8**
  %klass_name23 = load i8*, i8** %52, align 8
  %53 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.145, i32 0, i32 0), i8* %name22, i8* %klass_name23)
  call void @compile_err_msg(%sCompileInfo* %info21, i8* %53)
  %54 = bitcast [8192 x i8*]* %lvtable to i8*
  %55 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %54, i64 65536)
  %56 = ptrtoint i8* %53 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %cond_then_block24, label %cond_end25

cond_end20:                                       ; preds = %cond_end_block
  %sum = alloca i32
  %58 = bitcast i32* %sum to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %sum, align 4
  %klass26 = load %sCLClass*, %sCLClass** %klass, align 8
  %59 = getelementptr inbounds %sCLClass, %sCLClass* %klass26, i32 0, i32 4
  %60 = load %sCLClass*, %sCLClass** %59, align 8
  %it = alloca %sCLClass*
  %61 = bitcast %sCLClass** %it to i8*
  store i8* %61, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store %sCLClass* %60, %sCLClass** %it, align 8
  br label %loop_top_block27

cond_then_block24:                                ; preds = %cond_jump_then19
  br label %cond_end25

cond_end25:                                       ; preds = %cond_then_block24, %cond_jump_then19
  call void @xfree(i8* %53)
  ret i1 true

loop_top_block27:                                 ; preds = %cond_then_block29, %cond_end20
  %it28 = load %sCLClass*, %sCLClass** %it, align 8
  %62 = ptrtoint %sCLClass* %it28 to i64
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %cond_then_block29, label %cond_end_block30

cond_then_block29:                                ; preds = %loop_top_block27
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %65 = bitcast i8* %64 to i32*
  %sum31 = load i32, i32* %65, align 4
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %67 = bitcast i8* %66 to %sCLClass**
  %it32 = load %sCLClass*, %sCLClass** %67, align 8
  %68 = getelementptr inbounds %sCLClass, %sCLClass* %it32, i32 0, i32 2
  %69 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %68, align 8
  %70 = call i32 @"map_length_charp_sCLFieldp13_src/node"(%map__charp_sCLFieldp* %69)
  %addtmp = add nsw i32 %sum31, %70
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %72 = bitcast i8* %71 to i32*
  store i32 %addtmp, i32* %72, align 4
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %74 = bitcast i8* %73 to %sCLClass**
  %it33 = load %sCLClass*, %sCLClass** %74, align 8
  %75 = getelementptr inbounds %sCLClass, %sCLClass* %it33, i32 0, i32 2
  %76 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %75, align 8
  %77 = call i32 @"map_length_charp_sCLFieldp14_src/node"(%map__charp_sCLFieldp* %76)
  %subttmp = sub nsw i32 %addtmp, %77
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %79 = bitcast i8* %78 to %sCLClass**
  %it34 = load %sCLClass*, %sCLClass** %79, align 8
  %80 = getelementptr inbounds %sCLClass, %sCLClass* %it34, i32 0, i32 4
  %81 = load %sCLClass*, %sCLClass** %80, align 8
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %83 = bitcast i8* %82 to %sCLClass**
  store %sCLClass* %81, %sCLClass** %83, align 8
  br label %loop_top_block27

cond_end_block30:                                 ; preds = %loop_top_block27
  %field35 = load %sCLField*, %sCLField** %field, align 8
  %eqtmpX36 = icmp eq %sCLField* %field35, null
  br i1 %eqtmpX36, label %cond_jump_then37, label %cond_end38

cond_jump_then37:                                 ; preds = %cond_end_block30
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %85 = bitcast i8* %84 to %sCompileInfo**
  %info39 = load %sCompileInfo*, %sCompileInfo** %85, align 8
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %87 = bitcast i8* %86 to i8**
  %name40 = load i8*, i8** %87, align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %89 = bitcast i8* %88 to i8**
  %klass_name41 = load i8*, i8** %89, align 8
  %90 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.146, i32 0, i32 0), i8* %name40, i8* %klass_name41)
  call void @compile_err_msg(%sCompileInfo* %info39, i8* %90)
  %91 = bitcast [8192 x i8*]* %lvtable to i8*
  %92 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %91, i64 65536)
  %93 = ptrtoint i8* %90 to i64
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %cond_then_block42, label %cond_end43

cond_end38:                                       ; preds = %cond_end_block30
  %field44 = load %sCLField*, %sCLField** %field, align 8
  %95 = getelementptr inbounds %sCLField, %sCLField* %field44, i32 0, i32 1
  %96 = load %sCLType*, %sCLType** %95, align 8
  %field_type = alloca %sCLType*
  %97 = bitcast %sCLType** %field_type to i8*
  store i8* %97, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store %sCLType* %96, %sCLType** %field_type, align 8
  %field_type45 = load %sCLType*, %sCLType** %field_type, align 8
  %generics_types46 = load %sCLType*, %sCLType** %generics_types, align 8
  %info47 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %98 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info47, i32 0, i32 4
  %99 = load %sParserInfo*, %sParserInfo** %98, align 8
  %100 = call %sCLType* @solve_generics(%sCLType* %field_type45, %sCLType* %generics_types46, %sParserInfo* %99)
  %solved_field_type = alloca %sCLType*
  %101 = bitcast %sCLType** %solved_field_type to i8*
  store i8* %101, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store %sCLType* %100, %sCLType** %solved_field_type, align 8
  %sum48 = load i32, i32* %sum, align 4
  %field49 = load %sCLField*, %sCLField** %field, align 8
  %102 = getelementptr inbounds %sCLField, %sCLField* %field49, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %addtmp50 = add nsw i32 %sum48, %103
  %field_index = alloca i32
  %104 = bitcast i32* %field_index to i8*
  store i8* %104, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %addtmp50, i32* %field_index, align 4
  %info51 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %105 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info51, i32 0, i32 7
  %106 = load i1, i1* %105, align 1
  %LOGICAL_DIANEAL52 = icmp eq i1 %106, false
  br i1 %LOGICAL_DIANEAL52, label %cond_jump_then53, label %cond_end54

cond_then_block42:                                ; preds = %cond_jump_then37
  br label %cond_end43

cond_end43:                                       ; preds = %cond_then_block42, %cond_jump_then37
  call void @xfree(i8* %90)
  ret i1 true

cond_jump_then53:                                 ; preds = %cond_end38
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %108 = bitcast i8* %107 to %sCompileInfo**
  %info55 = load %sCompileInfo*, %sCompileInfo** %108, align 8
  %109 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info55, i32 0, i32 5
  %110 = load %buffer*, %buffer** %109, align 8
  store %buffer* %110, %buffer** %self, align 8
  store i32 23, i32* %value, align 4
  br label %append_int

cond_end54:                                       ; preds = %inline_func_end63, %cond_end38
  %info66 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %solved_field_type67 = load %sCLType*, %sCLType** %solved_field_type, align 8
  %111 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info66, i32 0, i32 6
  store %sCLType* %solved_field_type67, %sCLType** %111, align 8
  %112 = bitcast [8192 x i8*]* %lvtable to i8*
  %113 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %112, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then53
  %114 = bitcast %buffer** %self to i8*
  store i8* %114, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %115 = bitcast i32* %value to i8*
  store i8* %115, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self56 = load %buffer*, %buffer** %self, align 8
  %value57 = load i32, i32* %value, align 4
  %116 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self56, i8* %116, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %118 = bitcast i8* %117 to %sCompileInfo**
  %info58 = load %sCompileInfo*, %sCompileInfo** %118, align 8
  %119 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info58, i32 0, i32 5
  %120 = load %buffer*, %buffer** %119, align 8
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %122 = bitcast i8* %121 to i32*
  %field_index59 = load i32, i32* %122, align 4
  store %buffer* %120, %buffer** %self60, align 8
  store i32 %field_index59, i32* %value61, align 4
  br label %append_int62

append_int62:                                     ; preds = %inline_func_end
  %123 = bitcast %buffer** %self60 to i8*
  store i8* %123, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %124 = bitcast i32* %value61 to i8*
  store i8* %124, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self64 = load %buffer*, %buffer** %self60, align 8
  %value65 = load i32, i32* %value61, align 4
  %125 = bitcast i32* %value61 to i8*
  call void @buffer_append(%buffer* %self64, i8* %125, i64 4)
  br label %inline_func_end63

inline_func_end63:                                ; preds = %append_int62
  br label %cond_end54
}

define %sCLField* @"map_at_charp_sCLFieldp12_src/node"(%map__charp_sCLFieldp* %self, i8* %key, %sCLField* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %default_value3 = alloca %sCLField*
  store %sCLField* %default_value, %sCLField** %default_value3, align 8
  %4 = bitcast %sCLField** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %11 = bitcast i8* %10 to %map__charp_sCLFieldp**
  %self7 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sCLField*, %sCLField** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sCLField* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLFieldp**
  %self9 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %28 = bitcast i8* %27 to %sCLField**
  %default_value28 = load %sCLField*, %sCLField** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sCLField* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %32 = bitcast i8* %31 to %map__charp_sCLFieldp**
  %self16 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self16, i32 0, i32 2
  %34 = load %sCLField**, %sCLField*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sCLField*, %sCLField** %34, i32 %it17
  %element19 = load %sCLField*, %sCLField** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sCLField* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %46 = bitcast i8* %45 to %map__charp_sCLFieldp**
  %self22 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %56 = bitcast i8* %55 to %sCLField**
  %default_value27 = load %sCLField*, %sCLField** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sCLField* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define i32 @"map_length_charp_sCLFieldp13_src/node"(%map__charp_sCLFieldp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self2 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"map_length_charp_sCLFieldp14_src/node"(%map__charp_sCLFieldp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self2 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i1 @compile_throw_exception(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %obj_node = alloca %sCLNode*
  %6 = bitcast %sCLNode** %obj_node to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %5, %sCLNode** %obj_node, align 8
  %obj_node4 = load %sCLNode*, %sCLNode** %obj_node, align 8
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = call i1 @compile(%sCLNode* %obj_node4, %sCompileInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %7, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 6
  %11 = load %sCLType*, %sCLType** %10, align 8
  %obj_type = alloca %sCLType*
  %12 = bitcast %sCLType** %obj_type to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %11, %sCLType** %obj_type, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 7
  %14 = load i1, i1* %13, align 1
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %16 = bitcast i8* %15 to %sCompileInfo**
  %info11 = load %sCompileInfo*, %sCompileInfo** %16, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 5
  %18 = load %buffer*, %buffer** %17, align 8
  store %buffer* %18, %buffer** %self, align 8
  store i32 25, i32* %value, align 4
  br label %append_int

cond_end10:                                       ; preds = %inline_func_end, %cond_end
  %info14 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %obj_type15 = load %sCLType*, %sCLType** %obj_type, align 8
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info14, i32 0, i32 6
  store %sCLType* %obj_type15, %sCLType** %19, align 8
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then9
  %22 = bitcast %buffer** %self to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %23 = bitcast i32* %value to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self12 = load %buffer*, %buffer** %self, align 8
  %value13 = load i32, i32* %value, align 4
  %24 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self12, i8* %24, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end10
}

define i1 @compile_return(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %obj_node = alloca %sCLNode*
  %6 = bitcast %sCLNode** %obj_node to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %5, %sCLNode** %obj_node, align 8
  %obj_node4 = load %sCLNode*, %sCLNode** %obj_node, align 8
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = call i1 @compile(%sCLNode* %obj_node4, %sCompileInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %7, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 6
  %11 = load %sCLType*, %sCLType** %10, align 8
  %obj_type = alloca %sCLType*
  %12 = bitcast %sCLType** %obj_type to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %11, %sCLType** %obj_type, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %13 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 7
  %14 = load i1, i1* %13, align 1
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %16 = bitcast i8* %15 to %sCompileInfo**
  %info11 = load %sCompileInfo*, %sCompileInfo** %16, align 8
  %17 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info11, i32 0, i32 5
  %18 = load %buffer*, %buffer** %17, align 8
  store %buffer* %18, %buffer** %self, align 8
  store i32 26, i32* %value, align 4
  br label %append_int

cond_end10:                                       ; preds = %inline_func_end, %cond_end
  %info14 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info15 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info15, i32 0, i32 4
  %20 = load %sParserInfo*, %sParserInfo** %19, align 8
  %21 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.147, i32 0, i32 0), %sParserInfo* %20)
  %22 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info14, i32 0, i32 6
  store %sCLType* %21, %sCLType** %22, align 8
  %23 = bitcast [8192 x i8*]* %lvtable to i8*
  %24 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %23, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then9
  %25 = bitcast %buffer** %self to i8*
  store i8* %25, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %26 = bitcast i32* %value to i8*
  store i8* %26, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self12 = load %buffer*, %buffer** %self, align 8
  %value13 = load i32, i32* %value, align 4
  %27 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self12, i8* %27, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end10
}

define i1 @compile_try_expression(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value84 = alloca i32
  %self83 = alloca %buffer*
  %value72 = alloca i32
  %self71 = alloca %buffer*
  %value64 = alloca i32
  %self63 = alloca %buffer*
  %value53 = alloca i32
  %self52 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 3
  %5 = load %anon78, %anon78* %4, align 8
  %6 = bitcast %anon78* %4 to %anon83*
  %7 = load %anon83, %anon83* %6, align 8
  %8 = getelementptr inbounds %anon83, %anon83* %6, i32 0, i32 0
  %9 = load %sCLNodeBlock*, %sCLNodeBlock** %8, align 8
  %node_block = alloca %sCLNodeBlock*
  %10 = bitcast %sCLNodeBlock** %node_block to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNodeBlock* %9, %sCLNodeBlock** %node_block, align 8
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %11 = getelementptr inbounds %sCLNode, %sCLNode* %node4, i32 0, i32 3
  %12 = load %anon78, %anon78* %11, align 8
  %13 = bitcast %anon78* %11 to %anon83*
  %14 = load %anon83, %anon83* %13, align 8
  %15 = getelementptr inbounds %anon83, %anon83* %13, i32 0, i32 1
  %16 = load %sCLNodeBlock*, %sCLNodeBlock** %15, align 8
  %node_block2 = alloca %sCLNodeBlock*
  %17 = bitcast %sCLNodeBlock** %node_block2 to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLNodeBlock* %16, %sCLNodeBlock** %node_block2, align 8
  %node5 = load %sCLNode*, %sCLNode** %node1, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %node5, i32 0, i32 1
  %19 = bitcast [4096 x i8]* %18 to i8*
  %sname = alloca i8*
  %20 = bitcast i8** %sname to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i8* %19, i8** %sname, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %21 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %sline = alloca i32
  %23 = bitcast i32* %sline to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %22, i32* %sline, align 4
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %derefference_value = load %sCompileInfo, %sCompileInfo* %info7, align 8
  %cinfo2 = alloca %sCompileInfo
  %24 = bitcast %sCompileInfo* %cinfo2 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCompileInfo %derefference_value, %sCompileInfo* %cinfo2, align 8
  %cinfo28 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %25 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 0
  %26 = bitcast [4096 x i8]* %25 to i8*
  %sname9 = load i8*, i8** %sname, align 8
  %27 = call i8* @xstrncpy(i8* %26, i8* %sname9, i32 4096)
  %cinfo210 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %sline11 = load i32, i32* %sline, align 4
  %28 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 1
  store i32 %sline11, i32* %28, align 4
  %cinfo212 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %29 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.148, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.149, i32 0, i32 0), i32 2410, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.150, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.151, i32 0, i32 0))
  %30 = bitcast i8* %29 to %buffer*
  %31 = call %buffer* @buffer_initialize(%buffer* %30)
  %32 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 5
  store %buffer* %31, %buffer** %32, align 8
  %cinfo213 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %33 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 6
  store %sCLType* null, %sCLType** %33, align 8
  %cinfo214 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %34 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 7
  store i1 false, i1* %34, align 1
  %node_block15 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %cinfo216 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %35 = call i1 @compile_block(%sCLNodeBlock* %node_block15, %sCompileInfo* %cinfo2)
  %LOGICAL_DIANEAL = icmp eq i1 %35, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %37 = bitcast i8* %36 to %sCompileInfo*
  %cinfo217 = load %sCompileInfo, %sCompileInfo* %37, align 8
  %38 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %37, i32 0, i32 5
  %39 = load %buffer*, %buffer** %38, align 8
  %40 = load %buffer*, %buffer** %38, align 8
  call void @buffer_finalize(%buffer* %40)
  %41 = ptrtoint %buffer* %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %cond_then_block, label %cond_end18

cond_end:                                         ; preds = %entry
  %cinfo219 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %43 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %gttmp = icmp sgt i32 %44, 0
  br i1 %gttmp, label %cond_jump_then20, label %cond_end21

cond_then_block:                                  ; preds = %cond_jump_then
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block, %cond_jump_then
  %45 = bitcast %buffer* %40 to i8*
  call void @xfree(i8* %45)
  %46 = bitcast [8192 x i8*]* %lvtable to i8*
  %47 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %46, i64 65536)
  ret i1 false

cond_jump_then20:                                 ; preds = %cond_end
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %49 = bitcast i8* %48 to %sCompileInfo*
  %cinfo222 = load %sCompileInfo, %sCompileInfo* %49, align 8
  %50 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %49, i32 0, i32 5
  %51 = load %buffer*, %buffer** %50, align 8
  %52 = load %buffer*, %buffer** %50, align 8
  call void @buffer_finalize(%buffer* %52)
  %53 = ptrtoint %buffer* %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %cond_then_block23, label %cond_end24

cond_end21:                                       ; preds = %cond_end
  %node_block25 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block, align 8
  %cinfo226 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %55 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 5
  %56 = load %buffer*, %buffer** %55, align 8
  %57 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block25, i32 0, i32 7
  store %buffer* %56, %buffer** %57, align 8
  %info27 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %derefference_value28 = load %sCompileInfo, %sCompileInfo* %info27, align 8
  store %sCompileInfo %derefference_value28, %sCompileInfo* %cinfo2, align 8
  %cinfo229 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %58 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 0
  %59 = bitcast [4096 x i8]* %58 to i8*
  %sname30 = load i8*, i8** %sname, align 8
  %60 = call i8* @xstrncpy(i8* %59, i8* %sname30, i32 4096)
  %cinfo231 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %sline32 = load i32, i32* %sline, align 4
  %61 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 1
  store i32 %sline32, i32* %61, align 4
  %cinfo233 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %62 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.152, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.153, i32 0, i32 0), i32 2431, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.154, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.155, i32 0, i32 0))
  %63 = bitcast i8* %62 to %buffer*
  %64 = call %buffer* @buffer_initialize(%buffer* %63)
  %65 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 5
  store %buffer* %64, %buffer** %65, align 8
  %cinfo234 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %66 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 6
  store %sCLType* null, %sCLType** %66, align 8
  %cinfo235 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %67 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 7
  store i1 false, i1* %67, align 1
  %node_block236 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block2, align 8
  %cinfo237 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %68 = call i1 @compile_block(%sCLNodeBlock* %node_block236, %sCompileInfo* %cinfo2)
  %LOGICAL_DIANEAL38 = icmp eq i1 %68, false
  br i1 %LOGICAL_DIANEAL38, label %cond_jump_then39, label %cond_end40

cond_then_block23:                                ; preds = %cond_jump_then20
  br label %cond_end24

cond_end24:                                       ; preds = %cond_then_block23, %cond_jump_then20
  %69 = bitcast %buffer* %52 to i8*
  call void @xfree(i8* %69)
  %70 = bitcast [8192 x i8*]* %lvtable to i8*
  %71 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %70, i64 65536)
  ret i1 false

cond_jump_then39:                                 ; preds = %cond_end21
  %72 = bitcast [8192 x i8*]* %lvtable to i8*
  %73 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %72, i64 65536)
  ret i1 false

cond_end40:                                       ; preds = %cond_end21
  %node_block241 = load %sCLNodeBlock*, %sCLNodeBlock** %node_block2, align 8
  %cinfo242 = load %sCompileInfo, %sCompileInfo* %cinfo2, align 8
  %74 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo2, i32 0, i32 5
  %75 = load %buffer*, %buffer** %74, align 8
  %76 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block241, i32 0, i32 7
  store %buffer* %75, %buffer** %76, align 8
  %info43 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %77 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info43, i32 0, i32 7
  %78 = load i1, i1* %77, align 1
  %LOGICAL_DIANEAL44 = icmp eq i1 %78, false
  br i1 %LOGICAL_DIANEAL44, label %cond_jump_then45, label %cond_end46

cond_jump_then45:                                 ; preds = %cond_end40
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %80 = bitcast i8* %79 to %sCompileInfo**
  %info47 = load %sCompileInfo*, %sCompileInfo** %80, align 8
  %81 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info47, i32 0, i32 5
  %82 = load %buffer*, %buffer** %81, align 8
  store %buffer* %82, %buffer** %self, align 8
  store i32 30, i32* %value, align 4
  br label %append_int

cond_end46:                                       ; preds = %inline_func_end86, %cond_end40
  %info89 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info90 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %83 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info90, i32 0, i32 4
  %84 = load %sParserInfo*, %sParserInfo** %83, align 8
  %85 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.156, i32 0, i32 0), %sParserInfo* %84)
  %86 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info89, i32 0, i32 6
  store %sCLType* %85, %sCLType** %86, align 8
  %87 = bitcast [8192 x i8*]* %lvtable to i8*
  %88 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %87, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then45
  %89 = bitcast %buffer** %self to i8*
  store i8* %89, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %90 = bitcast i32* %value to i8*
  store i8* %90, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self48 = load %buffer*, %buffer** %self, align 8
  %value49 = load i32, i32* %value, align 4
  %91 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self48, i8* %91, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %93 = bitcast i8* %92 to %sCompileInfo**
  %info50 = load %sCompileInfo*, %sCompileInfo** %93, align 8
  %94 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info50, i32 0, i32 5
  %95 = load %buffer*, %buffer** %94, align 8
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %97 = bitcast i8* %96 to %sCLNodeBlock**
  %node_block51 = load %sCLNodeBlock*, %sCLNodeBlock** %97, align 8
  %98 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block51, i32 0, i32 7
  %99 = load %buffer*, %buffer** %98, align 8
  %100 = getelementptr inbounds %buffer, %buffer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store %buffer* %95, %buffer** %self52, align 8
  store i32 %101, i32* %value53, align 4
  br label %append_int54

append_int54:                                     ; preds = %inline_func_end
  %102 = bitcast %buffer** %self52 to i8*
  store i8* %102, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %103 = bitcast i32* %value53 to i8*
  store i8* %103, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self56 = load %buffer*, %buffer** %self52, align 8
  %value57 = load i32, i32* %value53, align 4
  %104 = bitcast i32* %value53 to i8*
  call void @buffer_append(%buffer* %self56, i8* %104, i64 4)
  br label %inline_func_end55

inline_func_end55:                                ; preds = %append_int54
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %106 = bitcast i8* %105 to %sCompileInfo**
  %info58 = load %sCompileInfo*, %sCompileInfo** %106, align 8
  %107 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info58, i32 0, i32 5
  %108 = load %buffer*, %buffer** %107, align 8
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %110 = bitcast i8* %109 to %sCLNodeBlock**
  %node_block59 = load %sCLNodeBlock*, %sCLNodeBlock** %110, align 8
  %111 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block59, i32 0, i32 7
  %112 = load %buffer*, %buffer** %111, align 8
  %113 = getelementptr inbounds %buffer, %buffer* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %116 = bitcast i8* %115 to %sCLNodeBlock**
  %node_block60 = load %sCLNodeBlock*, %sCLNodeBlock** %116, align 8
  %117 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block60, i32 0, i32 7
  %118 = load %buffer*, %buffer** %117, align 8
  %119 = getelementptr inbounds %buffer, %buffer* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %sext14 = zext i32 %120 to i64
  call void @buffer_append(%buffer* %108, i8* %114, i64 %sext14)
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %122 = bitcast i8* %121 to %sCompileInfo**
  %info61 = load %sCompileInfo*, %sCompileInfo** %122, align 8
  %123 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info61, i32 0, i32 5
  %124 = load %buffer*, %buffer** %123, align 8
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %126 = bitcast i8* %125 to %sCLNodeBlock**
  %node_block62 = load %sCLNodeBlock*, %sCLNodeBlock** %126, align 8
  %127 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block62, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  store %buffer* %124, %buffer** %self63, align 8
  store i32 %128, i32* %value64, align 4
  br label %append_int65

append_int65:                                     ; preds = %inline_func_end55
  %129 = bitcast %buffer** %self63 to i8*
  store i8* %129, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %130 = bitcast i32* %value64 to i8*
  store i8* %130, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self67 = load %buffer*, %buffer** %self63, align 8
  %value68 = load i32, i32* %value64, align 4
  %131 = bitcast i32* %value64 to i8*
  call void @buffer_append(%buffer* %self67, i8* %131, i64 4)
  br label %inline_func_end66

inline_func_end66:                                ; preds = %append_int65
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %133 = bitcast i8* %132 to %sCompileInfo**
  %info69 = load %sCompileInfo*, %sCompileInfo** %133, align 8
  %134 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info69, i32 0, i32 5
  %135 = load %buffer*, %buffer** %134, align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %137 = bitcast i8* %136 to %sCLNodeBlock**
  %node_block270 = load %sCLNodeBlock*, %sCLNodeBlock** %137, align 8
  %138 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block270, i32 0, i32 7
  %139 = load %buffer*, %buffer** %138, align 8
  %140 = getelementptr inbounds %buffer, %buffer* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store %buffer* %135, %buffer** %self71, align 8
  store i32 %141, i32* %value72, align 4
  br label %append_int73

append_int73:                                     ; preds = %inline_func_end66
  %142 = bitcast %buffer** %self71 to i8*
  store i8* %142, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %143 = bitcast i32* %value72 to i8*
  store i8* %143, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self75 = load %buffer*, %buffer** %self71, align 8
  %value76 = load i32, i32* %value72, align 4
  %144 = bitcast i32* %value72 to i8*
  call void @buffer_append(%buffer* %self75, i8* %144, i64 4)
  br label %inline_func_end74

inline_func_end74:                                ; preds = %append_int73
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %146 = bitcast i8* %145 to %sCompileInfo**
  %info77 = load %sCompileInfo*, %sCompileInfo** %146, align 8
  %147 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info77, i32 0, i32 5
  %148 = load %buffer*, %buffer** %147, align 8
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %150 = bitcast i8* %149 to %sCLNodeBlock**
  %node_block278 = load %sCLNodeBlock*, %sCLNodeBlock** %150, align 8
  %151 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block278, i32 0, i32 7
  %152 = load %buffer*, %buffer** %151, align 8
  %153 = getelementptr inbounds %buffer, %buffer* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %156 = bitcast i8* %155 to %sCLNodeBlock**
  %node_block279 = load %sCLNodeBlock*, %sCLNodeBlock** %156, align 8
  %157 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block279, i32 0, i32 7
  %158 = load %buffer*, %buffer** %157, align 8
  %159 = getelementptr inbounds %buffer, %buffer* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %sext1480 = zext i32 %160 to i64
  call void @buffer_append(%buffer* %148, i8* %154, i64 %sext1480)
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %162 = bitcast i8* %161 to %sCompileInfo**
  %info81 = load %sCompileInfo*, %sCompileInfo** %162, align 8
  %163 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info81, i32 0, i32 5
  %164 = load %buffer*, %buffer** %163, align 8
  %165 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %166 = bitcast i8* %165 to %sCLNodeBlock**
  %node_block282 = load %sCLNodeBlock*, %sCLNodeBlock** %166, align 8
  %167 = getelementptr inbounds %sCLNodeBlock, %sCLNodeBlock* %node_block282, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  store %buffer* %164, %buffer** %self83, align 8
  store i32 %168, i32* %value84, align 4
  br label %append_int85

append_int85:                                     ; preds = %inline_func_end74
  %169 = bitcast %buffer** %self83 to i8*
  store i8* %169, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %170 = bitcast i32* %value84 to i8*
  store i8* %170, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self87 = load %buffer*, %buffer** %self83, align 8
  %value88 = load i32, i32* %value84, align 4
  %171 = bitcast i32* %value84 to i8*
  call void @buffer_append(%buffer* %self87, i8* %171, i64 4)
  br label %inline_func_end86

inline_func_end86:                                ; preds = %append_int85
  br label %cond_end46
}

define i1 @compile_logical_denial(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %left_node = alloca %sCLNode*
  %6 = bitcast %sCLNode** %left_node to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %5, %sCLNode** %left_node, align 8
  %left_node4 = load %sCLNode*, %sCLNode** %left_node, align 8
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = call i1 @compile(%sCLNode* %left_node4, %sCompileInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %7, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 6
  %11 = load %sCLType*, %sCLType** %10, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %12 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 4
  %13 = load %sParserInfo*, %sParserInfo** %12, align 8
  %14 = call i1 @type_identify_with_class_name(%sCLType* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.157, i32 0, i32 0), %sParserInfo* %13)
  %LOGICAL_DIANEAL8 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL8, label %cond_jump_then9, label %cond_end10

cond_jump_then9:                                  ; preds = %cond_end
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %16 = bitcast i8* %15 to %sCompileInfo**
  %info11 = load %sCompileInfo*, %sCompileInfo** %16, align 8
  call void @compile_err_msg(%sCompileInfo* %info11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.158, i32 0, i32 0))
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i1 true

cond_end10:                                       ; preds = %cond_end
  %info12 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info12, i32 0, i32 7
  %20 = load i1, i1* %19, align 1
  %LOGICAL_DIANEAL13 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL13, label %cond_jump_then14, label %cond_end15

cond_jump_then14:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info16 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  %23 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info16, i32 0, i32 5
  %24 = load %buffer*, %buffer** %23, align 8
  store %buffer* %24, %buffer** %self, align 8
  store i32 36, i32* %value, align 4
  br label %append_int

cond_end15:                                       ; preds = %inline_func_end, %cond_end10
  %info19 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info20 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %25 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info20, i32 0, i32 4
  %26 = load %sParserInfo*, %sParserInfo** %25, align 8
  %27 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.159, i32 0, i32 0), %sParserInfo* %26)
  %28 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info19, i32 0, i32 6
  store %sCLType* %27, %sCLType** %28, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info22 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %29 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info22, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %subttmp = sub nsw i32 %30, 1
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info21, i32 0, i32 3
  store i32 %subttmp, i32* %31, align 4
  %addtmp = add nsw i32 %subttmp, 1
  %info23 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info24 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %32 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %addtmp25 = add nsw i32 %33, 1
  %34 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info23, i32 0, i32 3
  store i32 %addtmp25, i32* %34, align 4
  %subttmp26 = sub nsw i32 %addtmp25, 1
  %35 = bitcast [8192 x i8*]* %lvtable to i8*
  %36 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %35, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then14
  %37 = bitcast %buffer** %self to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %38 = bitcast i32* %value to i8*
  store i8* %38, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self17 = load %buffer*, %buffer** %self, align 8
  %value18 = load i32, i32* %value, align 4
  %39 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self17, i8* %39, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  br label %cond_end15
}

define i1 @compile_normal_block(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value36 = alloca i32
  %self35 = alloca %buffer*
  %value28 = alloca i32
  %self27 = alloca %buffer*
  %value20 = alloca i32
  %self19 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 9
  %5 = load %sCLNode*, %sCLNode** %4, align 8
  %left_node = alloca %sCLNode*
  %6 = bitcast %sCLNode** %left_node to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLNode* %5, %sCLNode** %left_node, align 8
  %left_node4 = load %sCLNode*, %sCLNode** %left_node, align 8
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %7 = call i1 @compile(%sCLNode* %left_node4, %sCompileInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %7, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 6
  %11 = load %sCLType*, %sCLType** %10, align 8
  %block_type = alloca %sCLType*
  %12 = bitcast %sCLType** %block_type to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLType* %11, %sCLType** %block_type, align 8
  %num_params = alloca i32
  %13 = bitcast i32* %num_params to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 1, i32* %num_params, align 4
  %block_type7 = load %sCLType*, %sCLType** %block_type, align 8
  %14 = getelementptr inbounds %sCLType, %sCLType* %block_type7, i32 0, i32 7
  %15 = load %sCLType*, %sCLType** %14, align 8
  %info8 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %16 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 4
  %17 = load %sParserInfo*, %sParserInfo** %16, align 8
  %18 = call i1 @type_identify_with_class_name(%sCLType* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.161, i32 0, i32 0), %sParserInfo* %17)
  %LOGICAL_DIANEAL9 = icmp eq i1 %18, false
  %result_existance = alloca i1
  %19 = bitcast i1* %result_existance to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i1 %LOGICAL_DIANEAL9, i1* %result_existance, align 1
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %20 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info10, i32 0, i32 7
  %21 = load i1, i1* %20, align 1
  %LOGICAL_DIANEAL11 = icmp eq i1 %21, false
  br i1 %LOGICAL_DIANEAL11, label %cond_jump_then12, label %cond_end13

cond_jump_then12:                                 ; preds = %cond_end
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %23 = bitcast i8* %22 to %sCompileInfo**
  %info14 = load %sCompileInfo*, %sCompileInfo** %23, align 8
  %24 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info14, i32 0, i32 5
  %25 = load %buffer*, %buffer** %24, align 8
  store %buffer* %25, %buffer** %self, align 8
  store i32 19, i32* %value, align 4
  br label %append_int

cond_end13:                                       ; preds = %inline_func_end38, %cond_end
  %info41 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info42 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %26 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info42, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %num_params43 = load i32, i32* %num_params, align 4
  %subttmp44 = sub nsw i32 %27, %num_params43
  %28 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info41, i32 0, i32 3
  store i32 %subttmp44, i32* %28, align 4
  %num_params45 = load i32, i32* %num_params, align 4
  %addtmp = add nsw i32 %subttmp44, %num_params45
  %info46 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info47 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %29 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info47, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %addtmp48 = add nsw i32 %30, 1
  %31 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info46, i32 0, i32 3
  store i32 %addtmp48, i32* %31, align 4
  %subttmp49 = sub nsw i32 %addtmp48, 1
  %info50 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %block_type51 = load %sCLType*, %sCLType** %block_type, align 8
  %32 = getelementptr inbounds %sCLType, %sCLType* %block_type51, i32 0, i32 7
  %33 = load %sCLType*, %sCLType** %32, align 8
  %34 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info50, i32 0, i32 6
  store %sCLType* %33, %sCLType** %34, align 8
  %35 = bitcast [8192 x i8*]* %lvtable to i8*
  %36 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %35, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then12
  %37 = bitcast %buffer** %self to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %38 = bitcast i32* %value to i8*
  store i8* %38, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %self15 = load %buffer*, %buffer** %self, align 8
  %value16 = load i32, i32* %value, align 4
  %39 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self15, i8* %39, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %41 = bitcast i8* %40 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %41, align 8
  %42 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info17, i32 0, i32 5
  %43 = load %buffer*, %buffer** %42, align 8
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %45 = bitcast i8* %44 to %sCLType**
  %block_type18 = load %sCLType*, %sCLType** %45, align 8
  %46 = getelementptr inbounds %sCLType, %sCLType* %block_type18, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  store %buffer* %43, %buffer** %self19, align 8
  store i32 %47, i32* %value20, align 4
  br label %append_int21

append_int21:                                     ; preds = %inline_func_end
  %48 = bitcast %buffer** %self19 to i8*
  store i8* %48, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %49 = bitcast i32* %value20 to i8*
  store i8* %49, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %self23 = load %buffer*, %buffer** %self19, align 8
  %value24 = load i32, i32* %value20, align 4
  %50 = bitcast i32* %value20 to i8*
  call void @buffer_append(%buffer* %self23, i8* %50, i64 4)
  br label %inline_func_end22

inline_func_end22:                                ; preds = %append_int21
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %52 = bitcast i8* %51 to %sCompileInfo**
  %info25 = load %sCompileInfo*, %sCompileInfo** %52, align 8
  %53 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info25, i32 0, i32 5
  %54 = load %buffer*, %buffer** %53, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %56 = bitcast i8* %55 to i32*
  %num_params26 = load i32, i32* %56, align 4
  %subttmp = sub nsw i32 %num_params26, 1
  store %buffer* %54, %buffer** %self27, align 8
  store i32 %subttmp, i32* %value28, align 4
  br label %append_int29

append_int29:                                     ; preds = %inline_func_end22
  %57 = bitcast %buffer** %self27 to i8*
  store i8* %57, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %58 = bitcast i32* %value28 to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %self31 = load %buffer*, %buffer** %self27, align 8
  %value32 = load i32, i32* %value28, align 4
  %59 = bitcast i32* %value28 to i8*
  call void @buffer_append(%buffer* %self31, i8* %59, i64 4)
  br label %inline_func_end30

inline_func_end30:                                ; preds = %append_int29
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %61 = bitcast i8* %60 to %sCompileInfo**
  %info33 = load %sCompileInfo*, %sCompileInfo** %61, align 8
  %62 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info33, i32 0, i32 5
  %63 = load %buffer*, %buffer** %62, align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %65 = bitcast i8* %64 to i1*
  %result_existance34 = load i1, i1* %65, align 1
  %sext13 = zext i1 %result_existance34 to i32
  store %buffer* %63, %buffer** %self35, align 8
  store i32 %sext13, i32* %value36, align 4
  br label %append_int37

append_int37:                                     ; preds = %inline_func_end30
  %66 = bitcast %buffer** %self35 to i8*
  store i8* %66, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %67 = bitcast i32* %value36 to i8*
  store i8* %67, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %self39 = load %buffer*, %buffer** %self35, align 8
  %value40 = load i32, i32* %value36, align 4
  %68 = bitcast i32* %value36 to i8*
  call void @buffer_append(%buffer* %self39, i8* %68, i64 4)
  br label %inline_func_end38

inline_func_end38:                                ; preds = %append_int37
  br label %cond_end13
}

define i1 @compile_macro(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret i1 true
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/node.nc", directory: "/home/ab25cq/repo/neo-c/sevenstar")
!2 = !{}
