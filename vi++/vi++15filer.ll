; ModuleID = 'Module vi++15filer'
source_filename = "Module vi++15filer"

%_IO_FILE_plus = type {}
%_IO_FILE = type opaque
%anon27 = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%anon28 = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%anon29 = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%_win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i1, i1, i1, i1, i1, i1, i1, i1, i1, i32, %ldat*, i16, i16, i32, i32, %_win_st*, %anon83, i16 }
%ldat = type opaque
%anon83 = type { i16, i16, i16, i16, i16, i16 }
%Vi = type { %list__ViWinp*, %ViWin*, %vector__lambdap*, i1, i32, i32, %list__intp*, i32, i32*, i8*, %ViFiler* }
%list__ViWinp = type { %list_item__ViWinp*, %list_item__ViWinp*, i32 }
%list_item__ViWinp = type { %ViWin*, %list_item__ViWinp*, %list_item__ViWinp* }
%ViWin = type { %_win_st*, %list__intp*, i32, i32, i32, i32, i32, i32, i32, %list__listp__intp*, %list__int*, %list__int*, %list__int*, i32, i8*, i1, i32, %vector__int*, %vector__int*, i1, i32, i1 }
%list__listp__intp = type { %list_item__listp__intp*, %list_item__listp__intp*, i32 }
%list_item__listp__intp = type { %list__intp*, %list_item__listp__intp*, %list_item__listp__intp* }
%list__int = type { %list_item__int*, %list_item__int*, i32 }
%list_item__int = type { i32, %list_item__int*, %list_item__int* }
%vector__int = type { i32*, i32, i32 }
%vector__lambdap = type { void (%Vi*, i32)**, i32, i32 }
%list__intp = type { %list_item__intp*, %list_item__intp*, i32 }
%list_item__intp = type { i32*, %list_item__intp*, %list_item__intp* }
%ViFiler = type { i8*, %list__charp*, %_win_st*, i32, i32, i32, i1 }
%list__charp = type { %list_item__charp*, %list_item__charp*, i32 }
%list_item__charp = type { i8*, %list_item__charp*, %list_item__charp* }
%anon3 = type { [13 x %__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%__locale_data = type opaque
%anon0 = type { i32, %anon1 }
%anon1 = type { i32 }
%__builtin_va_list.0 = type { i8* }
%tm = type opaque
%_IO_cookie_file = type opaque
%anon6 = type { i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)*, i32 (i8*, i64*, i32)*, i32 (i8*)* }
%anon4 = type { i64, %anon0 }
%anon11 = type { [16 x i64] }
%timeval = type { i64, i64 }
%timespec = type { i64, i64 }
%anon10 = type { [16 x i64] }
%random_data = type { i32*, i32*, i32*, i32, i32, i32, i32* }
%drand48_data = type { [3 x i16], [3 x i16], i16, i16, i64 }
%anon7 = type { i32, i32 }
%anon8 = type { i64, i64 }
%anon9 = type { i64, i64 }
%real_pcre = type opaque
%real_pcre16 = type opaque
%real_pcre32 = type opaque
%anon24 = type { i64, i8*, i64, i8*, i8*, i64, i8**, i8* }
%anon25 = type { i64, i8*, i64, i8*, i8*, i64, i16**, i8* }
%anon26 = type { i64, i8*, i64, i8*, i8*, i64, i32**, i8* }
%real_pcre_jit_stack = type opaque
%real_pcre16_jit_stack = type opaque
%real_pcre32_jit_stack = type opaque
%buffer = type { i8*, i32, i32 }
%regex_struct = type { i8*, %real_pcre*, i1, i1, i1, i1, i1, i1, i1, i1 }
%screen = type opaque
%anon84 = type { i16, i32, i32, i32, i64 }
%__dirstream = type opaque
%dirent = type { i64, i64, i16, i8, [256 x i8] }
%lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%anon87 = type { i32, i32, i32, %anon88 }
%anon88 = type { [28 x i32] }
%sigaction = type { %anon101, %anon10, i32, void ()* }
%anon101 = type { void (i32)* }
%sigval = type {}
%sigcontext = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i64, i64, i64, %anon103, [8 x i64] }
%anon103 = type { %_fpstate* }
%_fpstate = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %_fpxreg], [16 x %_xmmreg], [24 x i32] }
%_fpxreg = type { [4 x i16], i16, [3 x i16] }
%_xmmreg = type { [4 x i32] }
%sigstack = type { i8*, i32 }
%sigaltstack = type {}

@gLVTable = internal global [8192 x i8*] zeroinitializer, align 8
@__environ = external externally_initialized global i8**, align 8
@optarg = external externally_initialized global i8*, align 8
@optind = external externally_initialized global i32, align 4
@opterr = external externally_initialized global i32, align 4
@optopt = external externally_initialized global i32, align 4
@_IO_2_1_stdin_ = external externally_initialized global %_IO_FILE_plus, align 8
@_IO_2_1_stdout_ = external externally_initialized global %_IO_FILE_plus, align 8
@_IO_2_1_stderr_ = external externally_initialized global %_IO_FILE_plus, align 8
@stdin = external externally_initialized global %_IO_FILE*, align 8
@stdout = external externally_initialized global %_IO_FILE*, align 8
@stderr = external externally_initialized global %_IO_FILE*, align 8
@sys_nerr = external externally_initialized global i32, align 4
@sys_errlist = external externally_initialized global i8**, align 8
@pcre_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre_free = external externally_initialized global void (i8*)*, align 8
@pcre_stack_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre_stack_free = external externally_initialized global void (i8*)*, align 8
@pcre_callout = external externally_initialized global i32 (%anon27*)*, align 8
@pcre_stack_guard = external externally_initialized global i32 ()*, align 8
@pcre16_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre16_free = external externally_initialized global void (i8*)*, align 8
@pcre16_stack_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre16_stack_free = external externally_initialized global void (i8*)*, align 8
@pcre16_callout = external externally_initialized global i32 (%anon28*)*, align 8
@pcre16_stack_guard = external externally_initialized global i32 ()*, align 8
@pcre32_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre32_free = external externally_initialized global void (i8*)*, align 8
@pcre32_stack_malloc = external externally_initialized global i8* (i64)*, align 8
@pcre32_stack_free = external externally_initialized global void (i8*)*, align 8
@pcre32_callout = external externally_initialized global i32 (%anon29*)*, align 8
@pcre32_stack_guard = external externally_initialized global i32 ()*, align 8
@acs_map = external externally_initialized global i64*
@curscr = external externally_initialized global %_win_st*, align 8
@newscr = external externally_initialized global %_win_st*, align 8
@stdscr = external externally_initialized global %_win_st*, align 8
@ttytype = external externally_initialized global i8*, align 1
@COLORS = external externally_initialized global i32, align 4
@COLOR_PAIRS = external externally_initialized global i32, align 4
@COLS = external externally_initialized global i32, align 4
@ESCDELAY = external externally_initialized global i32, align 4
@LINES = external externally_initialized global i32, align 4
@TABSIZE = external externally_initialized global i32, align 4
@_sys_siglist = external externally_initialized global [65 x i8*], align 8
@sys_siglist = external externally_initialized global [65 x i8*], align 8
@global_string = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.1 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.2 = private constant [26 x i8] c"sublist_intp0_vi++15filer\00", align 1
@global_string.3 = private constant [31 x i8] c"list_sublist_intp0_vi++15filer\00", align 1
@global_string.4 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.5 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.6 = private constant [28 x i8] c"push_back_intp2_vi++15filer\00", align 1
@global_string.7 = private constant [33 x i8] c"list_push_back_intp2_vi++15filer\00", align 1
@global_string.8 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.9 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.10 = private constant [28 x i8] c"push_back_intp2_vi++15filer\00", align 1
@global_string.11 = private constant [33 x i8] c"list_push_back_intp2_vi++15filer\00", align 1
@global_string.12 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.13 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.14 = private constant [28 x i8] c"push_back_intp2_vi++15filer\00", align 1
@global_string.15 = private constant [33 x i8] c"list_push_back_intp2_vi++15filer\00", align 1
@global_string.16 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.17 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.18 = private constant [28 x i8] c"push_back_intp3_vi++15filer\00", align 1
@global_string.19 = private constant [33 x i8] c"list_push_back_intp3_vi++15filer\00", align 1
@global_string.20 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.21 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.22 = private constant [28 x i8] c"push_back_intp3_vi++15filer\00", align 1
@global_string.23 = private constant [33 x i8] c"list_push_back_intp3_vi++15filer\00", align 1
@global_string.24 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.25 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.26 = private constant [28 x i8] c"push_back_intp3_vi++15filer\00", align 1
@global_string.27 = private constant [33 x i8] c"list_push_back_intp3_vi++15filer\00", align 1
@global_string.28 = private constant [2 x i8] c" \00", align 1
@global_string.29 = private constant [4 x i8] c"%ls\00", align 1
@global_string.30 = private constant [2 x i8] c" \00", align 1
@global_string.31 = private constant [4 x i8] c"%ls\00", align 1
@global_string.32 = private constant [4 x i8] c"%ls\00", align 1
@global_string.33 = private constant [4 x i8] c"%ls\00", align 1
@global_string.34 = private constant [4 x i8] c"%ls\00", align 1
@global_string.35 = private constant [2 x i8] c" \00", align 1
@global_string.36 = private constant [4 x i8] c"%ls\00", align 1
@global_string.37 = private constant [2 x i8] c" \00", align 1
@global_string.38 = private constant [4 x i8] c"%ls\00", align 1
@global_string.39 = private constant [4 x i8] c"%ls\00", align 1
@global_string.40 = private constant [4 x i8] c"%ls\00", align 1
@global_string.41 = private constant [4 x i8] c"%ls\00", align 1
@global_string.42 = private constant [14 x i8] c"list%<char*%>\00", align 1
@global_string.43 = private constant [15 x i8] c"vi++15filer.nc\00", align 1
@global_string.44 = private constant [3 x i8] c"cd\00", align 1
@global_string.45 = private constant [11 x i8] c"ViFiler_cd\00", align 1
@global_string.46 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.47 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.48 = private constant [30 x i8] c"push_back_charp10_vi++15filer\00", align 1
@global_string.49 = private constant [35 x i8] c"list_push_back_charp10_vi++15filer\00", align 1
@global_string.50 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.51 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.52 = private constant [30 x i8] c"push_back_charp10_vi++15filer\00", align 1
@global_string.53 = private constant [35 x i8] c"list_push_back_charp10_vi++15filer\00", align 1
@global_string.54 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.55 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.56 = private constant [30 x i8] c"push_back_charp10_vi++15filer\00", align 1
@global_string.57 = private constant [35 x i8] c"list_push_back_charp10_vi++15filer\00", align 1
@global_string.58 = private constant [2 x i8] c".\00", align 1
@global_string.59 = private constant [2 x i8] c".\00", align 1
@global_string.60 = private constant [3 x i8] c"..\00", align 1
@global_string.61 = private constant [3 x i8] c"..\00", align 1
@global_string.62 = private constant [2 x i8] c".\00", align 1
@global_string.63 = private constant [2 x i8] c".\00", align 1
@global_string.64 = private constant [3 x i8] c"..\00", align 1
@global_string.65 = private constant [3 x i8] c"..\00", align 1
@global_string.66 = private constant [14 x i8] c"list%<char*%>\00", align 1
@global_string.67 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.68 = private constant [26 x i8] c"clone_charp13_vi++15filer\00", align 1
@global_string.69 = private constant [31 x i8] c"list_clone_charp13_vi++15filer\00", align 1
@global_string.70 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.71 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.72 = private constant [30 x i8] c"push_back_charp15_vi++15filer\00", align 1
@global_string.73 = private constant [35 x i8] c"list_push_back_charp15_vi++15filer\00", align 1
@global_string.74 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.75 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.76 = private constant [30 x i8] c"push_back_charp15_vi++15filer\00", align 1
@global_string.77 = private constant [35 x i8] c"list_push_back_charp15_vi++15filer\00", align 1
@global_string.78 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.79 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.80 = private constant [30 x i8] c"push_back_charp15_vi++15filer\00", align 1
@global_string.81 = private constant [35 x i8] c"list_push_back_charp15_vi++15filer\00", align 1
@global_string.82 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.83 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.84 = private constant [30 x i8] c"push_back_charp16_vi++15filer\00", align 1
@global_string.85 = private constant [35 x i8] c"list_push_back_charp16_vi++15filer\00", align 1
@global_string.86 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.87 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.88 = private constant [30 x i8] c"push_back_charp16_vi++15filer\00", align 1
@global_string.89 = private constant [35 x i8] c"list_push_back_charp16_vi++15filer\00", align 1
@global_string.90 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.91 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.92 = private constant [30 x i8] c"push_back_charp16_vi++15filer\00", align 1
@global_string.93 = private constant [35 x i8] c"list_push_back_charp16_vi++15filer\00", align 1
@global_string.94 = private constant [14 x i8] c"list%<char*%>\00", align 1
@global_string.95 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.96 = private constant [26 x i8] c"clone_charp17_vi++15filer\00", align 1
@global_string.97 = private constant [31 x i8] c"list_clone_charp17_vi++15filer\00", align 1
@global_string.98 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.99 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.100 = private constant [30 x i8] c"push_back_charp19_vi++15filer\00", align 1
@global_string.101 = private constant [35 x i8] c"list_push_back_charp19_vi++15filer\00", align 1
@global_string.102 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.103 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.104 = private constant [30 x i8] c"push_back_charp19_vi++15filer\00", align 1
@global_string.105 = private constant [35 x i8] c"list_push_back_charp19_vi++15filer\00", align 1
@global_string.106 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.107 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.108 = private constant [30 x i8] c"push_back_charp19_vi++15filer\00", align 1
@global_string.109 = private constant [35 x i8] c"list_push_back_charp19_vi++15filer\00", align 1
@global_string.110 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.111 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.112 = private constant [30 x i8] c"push_back_charp20_vi++15filer\00", align 1
@global_string.113 = private constant [35 x i8] c"list_push_back_charp20_vi++15filer\00", align 1
@global_string.114 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.115 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.116 = private constant [30 x i8] c"push_back_charp20_vi++15filer\00", align 1
@global_string.117 = private constant [35 x i8] c"list_push_back_charp20_vi++15filer\00", align 1
@global_string.118 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.119 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.120 = private constant [30 x i8] c"push_back_charp20_vi++15filer\00", align 1
@global_string.121 = private constant [35 x i8] c"list_push_back_charp20_vi++15filer\00", align 1
@global_string.122 = private constant [14 x i8] c"list%<char*%>\00", align 1
@global_string.123 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.124 = private constant [32 x i8] c"merge_sort2_charp12_vi++15filer\00", align 1
@global_string.125 = private constant [37 x i8] c"list_merge_sort2_charp12_vi++15filer\00", align 1
@global_string.126 = private constant [14 x i8] c"list%<char*%>\00", align 1
@global_string.127 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.128 = private constant [32 x i8] c"merge_sort2_charp12_vi++15filer\00", align 1
@global_string.129 = private constant [37 x i8] c"list_merge_sort2_charp12_vi++15filer\00", align 1
@global_string.130 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.131 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.132 = private constant [30 x i8] c"push_back_charp23_vi++15filer\00", align 1
@global_string.133 = private constant [35 x i8] c"list_push_back_charp23_vi++15filer\00", align 1
@global_string.134 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.135 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.136 = private constant [30 x i8] c"push_back_charp23_vi++15filer\00", align 1
@global_string.137 = private constant [35 x i8] c"list_push_back_charp23_vi++15filer\00", align 1
@global_string.138 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.139 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.140 = private constant [30 x i8] c"push_back_charp23_vi++15filer\00", align 1
@global_string.141 = private constant [35 x i8] c"list_push_back_charp23_vi++15filer\00", align 1
@global_string.142 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.143 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.144 = private constant [30 x i8] c"push_back_charp24_vi++15filer\00", align 1
@global_string.145 = private constant [35 x i8] c"list_push_back_charp24_vi++15filer\00", align 1
@global_string.146 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.147 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.148 = private constant [30 x i8] c"push_back_charp24_vi++15filer\00", align 1
@global_string.149 = private constant [35 x i8] c"list_push_back_charp24_vi++15filer\00", align 1
@global_string.150 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.151 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.152 = private constant [30 x i8] c"push_back_charp24_vi++15filer\00", align 1
@global_string.153 = private constant [35 x i8] c"list_push_back_charp24_vi++15filer\00", align 1
@global_string.154 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.155 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.156 = private constant [30 x i8] c"push_back_charp25_vi++15filer\00", align 1
@global_string.157 = private constant [35 x i8] c"list_push_back_charp25_vi++15filer\00", align 1
@global_string.158 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.159 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.160 = private constant [30 x i8] c"push_back_charp25_vi++15filer\00", align 1
@global_string.161 = private constant [35 x i8] c"list_push_back_charp25_vi++15filer\00", align 1
@global_string.162 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.163 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.164 = private constant [30 x i8] c"push_back_charp25_vi++15filer\00", align 1
@global_string.165 = private constant [35 x i8] c"list_push_back_charp25_vi++15filer\00", align 1
@global_string.166 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.167 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.168 = private constant [30 x i8] c"push_back_charp26_vi++15filer\00", align 1
@global_string.169 = private constant [35 x i8] c"list_push_back_charp26_vi++15filer\00", align 1
@global_string.170 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.171 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.172 = private constant [30 x i8] c"push_back_charp26_vi++15filer\00", align 1
@global_string.173 = private constant [35 x i8] c"list_push_back_charp26_vi++15filer\00", align 1
@global_string.174 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.175 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.176 = private constant [30 x i8] c"push_back_charp26_vi++15filer\00", align 1
@global_string.177 = private constant [35 x i8] c"list_push_back_charp26_vi++15filer\00", align 1
@global_string.178 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.179 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.180 = private constant [30 x i8] c"push_back_charp27_vi++15filer\00", align 1
@global_string.181 = private constant [35 x i8] c"list_push_back_charp27_vi++15filer\00", align 1
@global_string.182 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.183 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.184 = private constant [30 x i8] c"push_back_charp27_vi++15filer\00", align 1
@global_string.185 = private constant [35 x i8] c"list_push_back_charp27_vi++15filer\00", align 1
@global_string.186 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.187 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.188 = private constant [30 x i8] c"push_back_charp27_vi++15filer\00", align 1
@global_string.189 = private constant [35 x i8] c"list_push_back_charp27_vi++15filer\00", align 1
@global_string.190 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.191 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.192 = private constant [30 x i8] c"push_back_charp28_vi++15filer\00", align 1
@global_string.193 = private constant [35 x i8] c"list_push_back_charp28_vi++15filer\00", align 1
@global_string.194 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.195 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.196 = private constant [30 x i8] c"push_back_charp28_vi++15filer\00", align 1
@global_string.197 = private constant [35 x i8] c"list_push_back_charp28_vi++15filer\00", align 1
@global_string.198 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.199 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.200 = private constant [30 x i8] c"push_back_charp28_vi++15filer\00", align 1
@global_string.201 = private constant [35 x i8] c"list_push_back_charp28_vi++15filer\00", align 1
@global_string.202 = private constant [14 x i8] c"list%<char*%>\00", align 1
@global_string.203 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.204 = private constant [32 x i8] c"merge_list2_charp33_vi++15filer\00", align 1
@global_string.205 = private constant [37 x i8] c"list_merge_list2_charp33_vi++15filer\00", align 1
@global_string.206 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.207 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.208 = private constant [30 x i8] c"push_back_charp35_vi++15filer\00", align 1
@global_string.209 = private constant [35 x i8] c"list_push_back_charp35_vi++15filer\00", align 1
@global_string.210 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.211 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.212 = private constant [30 x i8] c"push_back_charp35_vi++15filer\00", align 1
@global_string.213 = private constant [35 x i8] c"list_push_back_charp35_vi++15filer\00", align 1
@global_string.214 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.215 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.216 = private constant [30 x i8] c"push_back_charp35_vi++15filer\00", align 1
@global_string.217 = private constant [35 x i8] c"list_push_back_charp35_vi++15filer\00", align 1
@global_string.218 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.219 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.220 = private constant [30 x i8] c"push_back_charp36_vi++15filer\00", align 1
@global_string.221 = private constant [35 x i8] c"list_push_back_charp36_vi++15filer\00", align 1
@global_string.222 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.223 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.224 = private constant [30 x i8] c"push_back_charp36_vi++15filer\00", align 1
@global_string.225 = private constant [35 x i8] c"list_push_back_charp36_vi++15filer\00", align 1
@global_string.226 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.227 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.228 = private constant [30 x i8] c"push_back_charp36_vi++15filer\00", align 1
@global_string.229 = private constant [35 x i8] c"list_push_back_charp36_vi++15filer\00", align 1
@global_string.230 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.231 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.232 = private constant [30 x i8] c"push_back_charp37_vi++15filer\00", align 1
@global_string.233 = private constant [35 x i8] c"list_push_back_charp37_vi++15filer\00", align 1
@global_string.234 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.235 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.236 = private constant [30 x i8] c"push_back_charp37_vi++15filer\00", align 1
@global_string.237 = private constant [35 x i8] c"list_push_back_charp37_vi++15filer\00", align 1
@global_string.238 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.239 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.240 = private constant [30 x i8] c"push_back_charp37_vi++15filer\00", align 1
@global_string.241 = private constant [35 x i8] c"list_push_back_charp37_vi++15filer\00", align 1
@global_string.242 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.243 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.244 = private constant [30 x i8] c"push_back_charp38_vi++15filer\00", align 1
@global_string.245 = private constant [35 x i8] c"list_push_back_charp38_vi++15filer\00", align 1
@global_string.246 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.247 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.248 = private constant [30 x i8] c"push_back_charp38_vi++15filer\00", align 1
@global_string.249 = private constant [35 x i8] c"list_push_back_charp38_vi++15filer\00", align 1
@global_string.250 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.251 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.252 = private constant [30 x i8] c"push_back_charp38_vi++15filer\00", align 1
@global_string.253 = private constant [35 x i8] c"list_push_back_charp38_vi++15filer\00", align 1
@global_string.254 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.255 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.256 = private constant [30 x i8] c"push_back_charp39_vi++15filer\00", align 1
@global_string.257 = private constant [35 x i8] c"list_push_back_charp39_vi++15filer\00", align 1
@global_string.258 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.259 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.260 = private constant [30 x i8] c"push_back_charp39_vi++15filer\00", align 1
@global_string.261 = private constant [35 x i8] c"list_push_back_charp39_vi++15filer\00", align 1
@global_string.262 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.263 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.264 = private constant [30 x i8] c"push_back_charp39_vi++15filer\00", align 1
@global_string.265 = private constant [35 x i8] c"list_push_back_charp39_vi++15filer\00", align 1
@global_string.266 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.267 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.268 = private constant [30 x i8] c"push_back_charp40_vi++15filer\00", align 1
@global_string.269 = private constant [35 x i8] c"list_push_back_charp40_vi++15filer\00", align 1
@global_string.270 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.271 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.272 = private constant [30 x i8] c"push_back_charp40_vi++15filer\00", align 1
@global_string.273 = private constant [35 x i8] c"list_push_back_charp40_vi++15filer\00", align 1
@global_string.274 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.275 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.276 = private constant [30 x i8] c"push_back_charp40_vi++15filer\00", align 1
@global_string.277 = private constant [35 x i8] c"list_push_back_charp40_vi++15filer\00", align 1
@global_string.278 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.279 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.280 = private constant [30 x i8] c"push_back_charp41_vi++15filer\00", align 1
@global_string.281 = private constant [35 x i8] c"list_push_back_charp41_vi++15filer\00", align 1
@global_string.282 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.283 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.284 = private constant [30 x i8] c"push_back_charp41_vi++15filer\00", align 1
@global_string.285 = private constant [35 x i8] c"list_push_back_charp41_vi++15filer\00", align 1
@global_string.286 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.287 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.288 = private constant [30 x i8] c"push_back_charp41_vi++15filer\00", align 1
@global_string.289 = private constant [35 x i8] c"list_push_back_charp41_vi++15filer\00", align 1
@global_string.290 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.291 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.292 = private constant [30 x i8] c"push_back_charp42_vi++15filer\00", align 1
@global_string.293 = private constant [35 x i8] c"list_push_back_charp42_vi++15filer\00", align 1
@global_string.294 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.295 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.296 = private constant [30 x i8] c"push_back_charp42_vi++15filer\00", align 1
@global_string.297 = private constant [35 x i8] c"list_push_back_charp42_vi++15filer\00", align 1
@global_string.298 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.299 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.300 = private constant [30 x i8] c"push_back_charp42_vi++15filer\00", align 1
@global_string.301 = private constant [35 x i8] c"list_push_back_charp42_vi++15filer\00", align 1
@global_string.302 = private constant [14 x i8] c"list%<char*%>\00", align 1
@global_string.303 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.304 = private constant [28 x i8] c"sublist_charp53_vi++15filer\00", align 1
@global_string.305 = private constant [33 x i8] c"list_sublist_charp53_vi++15filer\00", align 1
@global_string.306 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.307 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.308 = private constant [30 x i8] c"push_back_charp55_vi++15filer\00", align 1
@global_string.309 = private constant [35 x i8] c"list_push_back_charp55_vi++15filer\00", align 1
@global_string.310 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.311 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.312 = private constant [30 x i8] c"push_back_charp55_vi++15filer\00", align 1
@global_string.313 = private constant [35 x i8] c"list_push_back_charp55_vi++15filer\00", align 1
@global_string.314 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.315 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.316 = private constant [30 x i8] c"push_back_charp55_vi++15filer\00", align 1
@global_string.317 = private constant [35 x i8] c"list_push_back_charp55_vi++15filer\00", align 1
@global_string.318 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.319 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.320 = private constant [30 x i8] c"push_back_charp56_vi++15filer\00", align 1
@global_string.321 = private constant [35 x i8] c"list_push_back_charp56_vi++15filer\00", align 1
@global_string.322 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.323 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.324 = private constant [30 x i8] c"push_back_charp56_vi++15filer\00", align 1
@global_string.325 = private constant [35 x i8] c"list_push_back_charp56_vi++15filer\00", align 1
@global_string.326 = private constant [19 x i8] c"list_item%<char*%>\00", align 1
@global_string.327 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.328 = private constant [30 x i8] c"push_back_charp56_vi++15filer\00", align 1
@global_string.329 = private constant [35 x i8] c"list_push_back_charp56_vi++15filer\00", align 1
@global_string.330 = private constant [3 x i8] c"%s\00", align 1
@global_string.331 = private constant [3 x i8] c"%s\00", align 1
@global_string.332 = private constant [3 x i8] c"%s\00", align 1
@global_string.333 = private constant [3 x i8] c"%s\00", align 1
@gVi = global %Vi* zeroinitializer, align 8
@global_string.334 = private constant [9 x i8] c"ViFiler%\00", align 1
@global_string.335 = private constant [15 x i8] c"vi++15filer.nc\00", align 1
@global_string.336 = private constant [11 x i8] c"initialize\00", align 1
@global_string.337 = private constant [14 x i8] c"Vi_initialize\00", align 1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #0

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #0

declare i32 @iswalnum(i32)

declare i32 @iswalpha(i32)

declare i32 @iswcntrl(i32)

declare i32 @iswdigit(i32)

declare i32 @iswgraph(i32)

declare i32 @iswlower(i32)

declare i32 @iswprint(i32)

declare i32 @iswpunct(i32)

declare i32 @iswspace(i32)

declare i32 @iswupper(i32)

declare i32 @iswxdigit(i32)

declare i32 @iswblank(i32)

declare i64 @wctype(i8*)

declare i32 @iswctype(i32, i64)

declare i32 @towlower(i32)

declare i32 @towupper(i32)

declare i32* @wctrans(i8*)

declare i32 @towctrans(i32, i32*)

declare i32 @iswalnum_l(i32, %anon3*)

declare i32 @iswalpha_l(i32, %anon3*)

declare i32 @iswcntrl_l(i32, %anon3*)

declare i32 @iswdigit_l(i32, %anon3*)

declare i32 @iswgraph_l(i32, %anon3*)

declare i32 @iswlower_l(i32, %anon3*)

declare i32 @iswprint_l(i32, %anon3*)

declare i32 @iswpunct_l(i32, %anon3*)

declare i32 @iswspace_l(i32, %anon3*)

declare i32 @iswupper_l(i32, %anon3*)

declare i32 @iswxdigit_l(i32, %anon3*)

declare i32 @iswblank_l(i32, %anon3*)

declare i64 @wctype_l(i8*, %anon3*)

declare i32 @iswctype_l(i32, i64, %anon3*)

declare i32 @towlower_l(i32, %anon3*)

declare i32 @towupper_l(i32, %anon3*)

declare i32* @wctrans_l(i8*, %anon3*)

declare i32 @towctrans_l(i32, i32*, %anon3*)

declare i32* @wcscpy(i32*, i32*)

declare i32* @wcsncpy(i32*, i32*, i64)

declare i32* @wcscat(i32*, i32*)

declare i32* @wcsncat(i32*, i32*, i64)

declare i32 @wcscmp(i32*, i32*)

declare i32 @wcsncmp(i32*, i32*, i64)

declare i32 @wcscasecmp(i32*, i32*)

declare i32 @wcsncasecmp(i32*, i32*, i64)

declare i32 @wcscasecmp_l(i32*, i32*, %anon3*)

declare i32 @wcsncasecmp_l(i32*, i32*, i64, %anon3*)

declare i32 @wcscoll(i32*, i32*)

declare i64 @wcsxfrm(i32*, i32*, i64)

declare i32 @wcscoll_l(i32*, i32*, %anon3*)

declare i64 @wcsxfrm_l(i32*, i32*, i64, %anon3*)

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

declare i32 @pipe([2 x i32])

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

declare void @encrypt(i8*, i32)

declare void @swab(i8*, i8*, i64)

declare void @_IO_cookie_init(%_IO_cookie_file*, i32, i8*, %anon6)

declare i32 @__underflow(%_IO_FILE*)

declare i32 @__uflow(%_IO_FILE*)

declare i32 @__overflow(%_IO_FILE*, i32)

declare i32 @_IO_getc(%_IO_FILE*)

declare i32 @_IO_putc(i32, %_IO_FILE*)

declare i32 @_IO_feof(%_IO_FILE*)

declare i32 @_IO_ferror(%_IO_FILE*)

declare i32 @_IO_peekc_locked(%_IO_FILE*)

declare void @_IO_flockfile(%_IO_FILE*)

declare void @_IO_funlockfile(%_IO_FILE*)

declare i32 @_IO_ftrylockfile(%_IO_FILE*)

declare i32 @_IO_vfscanf(%_IO_FILE*, i8*, %__builtin_va_list.0, i32*)

declare i32 @_IO_vfprintf(%_IO_FILE*, i8*, %__builtin_va_list.0)

declare i64 @_IO_padn(%_IO_FILE*, i32, i64)

declare i64 @_IO_sgetn(%_IO_FILE*, i8*, i64)

declare i64 @_IO_seekoff(%_IO_FILE*, i64, i32, i32)

declare i64 @_IO_seekpos(%_IO_FILE*, i64, i32)

declare void @_IO_free_backup_area(%_IO_FILE*)

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

declare i32 @fgetpos(%_IO_FILE*, %anon4*)

declare i32 @fsetpos(%_IO_FILE*, %anon4*)

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

declare i32 @select(i32, %anon11*, %anon11*, %anon11*, %timeval*)

declare i32 @pselect(i32, %anon11*, %anon11*, %anon11*, %timespec*, %anon10*)

declare i32 @gnu_dev_major(i64)

declare i32 @gnu_dev_minor(i64)

declare i64 @gnu_dev_makedev(i32, i32)

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

declare double @erand48([3 x i16])

declare i64 @lrand48()

declare i64 @nrand48([3 x i16])

declare i64 @mrand48()

declare i64 @jrand48([3 x i16])

declare void @srand48(i64)

declare i16* @seed48([3 x i16])

declare void @lcong48([7 x i16])

declare i32 @drand48_r(%drand48_data*, double*)

declare i32 @erand48_r([3 x i16], %drand48_data*, double*)

declare i32 @lrand48_r(%drand48_data*, i64*)

declare i32 @nrand48_r([3 x i16], %drand48_data*, i64*)

declare i32 @mrand48_r(%drand48_data*, i64*)

declare i32 @jrand48_r([3 x i16], %drand48_data*, i64*)

declare i32 @srand48_r(i64, %drand48_data*)

declare i32 @seed48_r([3 x i16], %drand48_data*)

declare i32 @lcong48_r([7 x i16], %drand48_data*)

declare i8* @malloc(i64)

declare i8* @calloc(i64, i64)

declare i8* @realloc(i8*, i64)

declare void @free(i8*)

declare void @cfree(i8*)

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

declare %anon7 @div(i32, i32)

declare %anon8 @ldiv(i64, i64)

declare %anon9 @lldiv(i64, i64)

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

declare void @setkey(i8*)

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

declare i32 @strcoll_l(i8*, i8*, %anon3*)

declare i64 @strxfrm_l(i8*, i8*, i64, %anon3*)

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

declare i8* @strerror_l(i32, %anon3*)

declare void @__bzero(i8*, i64)

declare void @bcopy(i8*, i8*, i64)

declare void @bzero(i8*, i64)

declare i32 @bcmp(i8*, i8*, i64)

declare i8* @index(i8*, i32)

declare i8* @rindex(i8*, i32)

declare i32 @ffs(i32)

declare i32 @strcasecmp(i8*, i8*)

declare i32 @strncasecmp(i8*, i8*, i64)

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

declare i32 @pcre_dfa_exec(%real_pcre*, %anon24*, i8*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre16_dfa_exec(%real_pcre16*, %anon25*, i16*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre32_dfa_exec(%real_pcre32*, %anon26*, i32*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre_exec(%real_pcre*, %anon24*, i8*, i32, i32, i32, i32*, i32)

declare i32 @pcre16_exec(%real_pcre16*, %anon25*, i16*, i32, i32, i32, i32*, i32)

declare i32 @pcre32_exec(%real_pcre32*, %anon26*, i32*, i32, i32, i32, i32*, i32)

declare i32 @pcre_jit_exec(%real_pcre*, %anon24*, i8*, i32, i32, i32, i32*, i32, %real_pcre_jit_stack*)

declare i32 @pcre16_jit_exec(%real_pcre16*, %anon25*, i16*, i32, i32, i32, i32*, i32, %real_pcre16_jit_stack*)

declare i32 @pcre32_jit_exec(%real_pcre32*, %anon26*, i32*, i32, i32, i32, i32*, i32, %real_pcre32_jit_stack*)

declare void @pcre_free_substring(i8*)

declare void @pcre16_free_substring(i16*)

declare void @pcre32_free_substring(i32*)

declare void @pcre_free_substring_list(i8**)

declare void @pcre16_free_substring_list(i16**)

declare void @pcre32_free_substring_list(i32**)

declare i32 @pcre_fullinfo(%real_pcre*, %anon24*, i32, i8*)

declare i32 @pcre16_fullinfo(%real_pcre16*, %anon25*, i32, i8*)

declare i32 @pcre32_fullinfo(%real_pcre32*, %anon26*, i32, i8*)

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

declare %anon24* @pcre_study(%real_pcre*, i32, i8**)

declare %anon25* @pcre16_study(%real_pcre16*, i32, i8**)

declare %anon26* @pcre32_study(%real_pcre32*, i32, i8**)

declare void @pcre_free_study(%anon24*)

declare void @pcre16_free_study(%anon25*)

declare void @pcre32_free_study(%anon26*)

declare i8* @pcre_version()

declare i8* @pcre16_version()

declare i8* @pcre32_version()

declare i32 @pcre_pattern_to_host_byte_order(%real_pcre*, %anon24*, i8*)

declare i32 @pcre16_pattern_to_host_byte_order(%real_pcre16*, %anon25*, i8*)

declare i32 @pcre32_pattern_to_host_byte_order(%real_pcre32*, %anon26*, i8*)

declare i32 @pcre16_utf16_to_host_byte_order(i16*, i16*, i32, i32*, i32)

declare i32 @pcre32_utf32_to_host_byte_order(i32*, i32*, i32, i32*, i32)

declare %real_pcre_jit_stack* @pcre_jit_stack_alloc(i32, i32)

declare %real_pcre16_jit_stack* @pcre16_jit_stack_alloc(i32, i32)

declare %real_pcre32_jit_stack* @pcre32_jit_stack_alloc(i32, i32)

declare void @pcre_jit_stack_free(%real_pcre_jit_stack*)

declare void @pcre16_jit_stack_free(%real_pcre16_jit_stack*)

declare void @pcre32_jit_stack_free(%real_pcre32_jit_stack*)

declare void @pcre_assign_jit_stack(%anon24*, %real_pcre_jit_stack* (i8*)*, i8*)

declare void @pcre16_assign_jit_stack(%anon25*, %real_pcre16_jit_stack* (i8*)*, i8*)

declare void @pcre32_assign_jit_stack(%anon26*, %real_pcre32_jit_stack* (i8*)*, i8*)

declare void @pcre_jit_free_unused_memory()

declare void @pcre16_jit_free_unused_memory()

declare void @pcre32_jit_free_unused_memory()

declare i8* @xcalloc(i64, i64)

declare i8* @xmalloc(i64)

declare i8* @xmemdup(i8*)

declare void @xfree(i8*)

declare i8* @xstrncpy(i8*, i8*, i32)

declare i8* @xstrncat(i8*, i8*, i32)

declare i8* @xmemcpy(i8*, i8*, i64)

declare i8* @xasprintf(i8*, ...)

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

declare void @xassert(i8*, i1)

declare i32 @addch(i64)

declare i32 @addchnstr(i64*, i32)

declare i32 @addchstr(i64*)

declare i32 @addnstr(i8*, i32)

declare i32 @addstr(i8*)

declare i32 @attroff(i32)

declare i32 @attron(i32)

declare i32 @attrset(i32)

declare i32 @attr_get(i64*, i16*, i8*)

declare i32 @attr_off(i64, i8*)

declare i32 @attr_on(i64, i8*)

declare i32 @attr_set(i64, i16, i8*)

declare i32 @baudrate()

declare i32 @beep()

declare i32 @bkgd(i64)

declare void @bkgdset(i64)

declare i32 @border(i64, i64, i64, i64, i64, i64, i64, i64)

declare i32 @box(%_win_st*, i64, i64)

declare i1 @can_change_color()

declare i32 @cbreak()

declare i32 @chgat(i32, i64, i16, i8*)

declare i32 @clear()

declare i32 @clearok(%_win_st*, i1)

declare i32 @clrtobot()

declare i32 @clrtoeol()

declare i32 @color_content(i16, i16*, i16*, i16*)

declare i32 @color_set(i16, i8*)

declare i32 @COLOR_PAIR(i32)

declare i32 @copywin(%_win_st*, %_win_st*, i32, i32, i32, i32, i32, i32, i32)

declare i32 @curs_set(i32)

declare i32 @def_prog_mode()

declare i32 @def_shell_mode()

declare i32 @delay_output(i32)

declare i32 @delch()

declare void @delscreen(%screen*)

declare i32 @delwin(%_win_st*)

declare i32 @deleteln()

declare %_win_st* @derwin(%_win_st*, i32, i32, i32, i32)

declare i32 @doupdate()

declare %_win_st* @dupwin(%_win_st*)

declare i32 @echo()

declare i32 @echochar(i64)

declare i32 @erase()

declare i32 @endwin()

declare i8 @erasechar()

declare void @filter()

declare i32 @flash()

declare i32 @flushinp()

declare i64 @getbkgd(%_win_st*)

declare i32 @getch()

declare i32 @getnstr(i8*, i32)

declare i32 @getstr(i8*)

declare %_win_st* @getwin(%_IO_FILE*)

declare i32 @halfdelay(i32)

declare i1 @has_colors()

declare i1 @has_ic()

declare i1 @has_il()

declare i32 @hline(i64, i32)

declare void @idcok(%_win_st*, i1)

declare i32 @idlok(%_win_st*, i1)

declare void @immedok(%_win_st*, i1)

declare i64 @inch()

declare i32 @inchnstr(i64*, i32)

declare i32 @inchstr(i64*)

declare %_win_st* @initscr()

declare i32 @init_color(i16, i16, i16, i16)

declare i32 @init_pair(i16, i16, i16)

declare i32 @innstr(i8*, i32)

declare i32 @insch(i64)

declare i32 @insdelln(i32)

declare i32 @insertln()

declare i32 @insnstr(i8*, i32)

declare i32 @insstr(i8*)

declare i32 @instr(i8*)

declare i32 @intrflush(%_win_st*, i1)

declare i1 @isendwin()

declare i1 @is_linetouched(%_win_st*, i32)

declare i1 @is_wintouched(%_win_st*)

declare i8* @keyname(i32)

declare i32 @keypad(%_win_st*, i1)

declare i8 @killchar()

declare i32 @leaveok(%_win_st*, i1)

declare i8* @longname()

declare i32 @meta(%_win_st*, i1)

declare i32 @move(i32, i32)

declare i32 @mvaddch(i32, i32, i64)

declare i32 @mvaddchnstr(i32, i32, i64*, i32)

declare i32 @mvaddchstr(i32, i32, i64*)

declare i32 @mvaddnstr(i32, i32, i8*, i32)

declare i32 @mvaddstr(i32, i32, i8*)

declare i32 @mvchgat(i32, i32, i32, i64, i16, i8*)

declare i32 @mvcur(i32, i32, i32, i32)

declare i32 @mvdelch(i32, i32)

declare i32 @mvderwin(%_win_st*, i32, i32)

declare i32 @mvgetch(i32, i32)

declare i32 @mvgetnstr(i32, i32, i8*, i32)

declare i32 @mvgetstr(i32, i32, i8*)

declare i32 @mvhline(i32, i32, i64, i32)

declare i64 @mvinch(i32, i32)

declare i32 @mvinchnstr(i32, i32, i64*, i32)

declare i32 @mvinchstr(i32, i32, i64*)

declare i32 @mvinnstr(i32, i32, i8*, i32)

declare i32 @mvinsch(i32, i32, i64)

declare i32 @mvinsnstr(i32, i32, i8*, i32)

declare i32 @mvinsstr(i32, i32, i8*)

declare i32 @mvinstr(i32, i32, i8*)

declare i32 @mvprintw(i32, i32, i8*, ...)

declare i32 @mvscanw(i32, i32, i8*, ...)

declare i32 @mvvline(i32, i32, i64, i32)

declare i32 @mvwaddch(%_win_st*, i32, i32, i64)

declare i32 @mvwaddchnstr(%_win_st*, i32, i32, i64*, i32)

declare i32 @mvwaddchstr(%_win_st*, i32, i32, i64*)

declare i32 @mvwaddnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwaddstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwchgat(%_win_st*, i32, i32, i32, i64, i16, i8*)

declare i32 @mvwdelch(%_win_st*, i32, i32)

declare i32 @mvwgetch(%_win_st*, i32, i32)

declare i32 @mvwgetnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwgetstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwhline(%_win_st*, i32, i32, i64, i32)

declare i32 @mvwin(%_win_st*, i32, i32)

declare i64 @mvwinch(%_win_st*, i32, i32)

declare i32 @mvwinchnstr(%_win_st*, i32, i32, i64*, i32)

declare i32 @mvwinchstr(%_win_st*, i32, i32, i64*)

declare i32 @mvwinnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwinsch(%_win_st*, i32, i32, i64)

declare i32 @mvwinsnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwinsstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwinstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwprintw(%_win_st*, i32, i32, i8*, ...)

declare i32 @mvwscanw(%_win_st*, i32, i32, i8*, ...)

declare i32 @mvwvline(%_win_st*, i32, i32, i64, i32)

declare i32 @napms(i32)

declare %_win_st* @newpad(i32, i32)

declare %screen* @newterm(i8*, %_IO_FILE*, %_IO_FILE*)

declare %_win_st* @newwin(i32, i32, i32, i32)

declare i32 @nl()

declare i32 @nocbreak()

declare i32 @nodelay(%_win_st*, i1)

declare i32 @noecho()

declare i32 @nonl()

declare void @noqiflush()

declare i32 @noraw()

declare i32 @notimeout(%_win_st*, i1)

declare i32 @overlay(%_win_st*, %_win_st*)

declare i32 @overwrite(%_win_st*, %_win_st*)

declare i32 @pair_content(i16, i16*, i16*)

declare i32 @PAIR_NUMBER(i32)

declare i32 @pechochar(%_win_st*, i64)

declare i32 @pnoutrefresh(%_win_st*, i32, i32, i32, i32, i32, i32)

declare i32 @prefresh(%_win_st*, i32, i32, i32, i32, i32, i32)

declare i32 @printw(i8*, ...)

declare i32 @putwin(%_win_st*, %_IO_FILE*)

declare void @qiflush()

declare i32 @raw()

declare i32 @redrawwin(%_win_st*)

declare i32 @refresh()

declare i32 @resetty()

declare i32 @reset_prog_mode()

declare i32 @reset_shell_mode()

declare i32 @ripoffline(i32, i32 (%_win_st*, i32)*)

declare i32 @savetty()

declare i32 @scanw(i8*, ...)

declare i32 @scr_dump(i8*)

declare i32 @scr_init(i8*)

declare i32 @scrl(i32)

declare i32 @scroll(%_win_st*)

declare i32 @scrollok(%_win_st*, i1)

declare i32 @scr_restore(i8*)

declare i32 @scr_set(i8*)

declare i32 @setscrreg(i32, i32)

declare %screen* @set_term(%screen*)

declare i32 @slk_attroff(i64)

declare i32 @slk_attr_off(i64, i8*)

declare i32 @slk_attron(i64)

declare i32 @slk_attr_on(i64, i8*)

declare i32 @slk_attrset(i64)

declare i64 @slk_attr()

declare i32 @slk_attr_set(i64, i16, i8*)

declare i32 @slk_clear()

declare i32 @slk_color(i16)

declare i32 @slk_init(i32)

declare i8* @slk_label(i32)

declare i32 @slk_noutrefresh()

declare i32 @slk_refresh()

declare i32 @slk_restore()

declare i32 @slk_set(i32, i8*, i32)

declare i32 @slk_touch()

declare i32 @standout()

declare i32 @standend()

declare i32 @start_color()

declare %_win_st* @subpad(%_win_st*, i32, i32, i32, i32)

declare %_win_st* @subwin(%_win_st*, i32, i32, i32, i32)

declare i32 @syncok(%_win_st*, i1)

declare i64 @termattrs()

declare i8* @termname()

declare void @timeout(i32)

declare i32 @touchline(%_win_st*, i32, i32)

declare i32 @touchwin(%_win_st*)

declare i32 @typeahead(i32)

declare i32 @ungetch(i32)

declare i32 @untouchwin(%_win_st*)

declare void @use_env(i1)

declare void @use_tioctl(i1)

declare i32 @vidattr(i64)

declare i32 @vidputs(i64, i32 (i32)*)

declare i32 @vline(i64, i32)

declare i32 @vwprintw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @vw_printw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @vwscanw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @vw_scanw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @waddch(%_win_st*, i64)

declare i32 @waddchnstr(%_win_st*, i64*, i32)

declare i32 @waddchstr(%_win_st*, i64*)

declare i32 @waddnstr(%_win_st*, i8*, i32)

declare i32 @waddstr(%_win_st*, i8*)

declare i32 @wattron(%_win_st*, i32)

declare i32 @wattroff(%_win_st*, i32)

declare i32 @wattrset(%_win_st*, i32)

declare i32 @wattr_get(%_win_st*, i64*, i16*, i8*)

declare i32 @wattr_on(%_win_st*, i64, i8*)

declare i32 @wattr_off(%_win_st*, i64, i8*)

declare i32 @wattr_set(%_win_st*, i64, i16, i8*)

declare i32 @wbkgd(%_win_st*, i64)

declare void @wbkgdset(%_win_st*, i64)

declare i32 @wborder(%_win_st*, i64, i64, i64, i64, i64, i64, i64, i64)

declare i32 @wchgat(%_win_st*, i32, i64, i16, i8*)

declare i32 @wclear(%_win_st*)

declare i32 @wclrtobot(%_win_st*)

declare i32 @wclrtoeol(%_win_st*)

declare i32 @wcolor_set(%_win_st*, i16, i8*)

declare void @wcursyncup(%_win_st*)

declare i32 @wdelch(%_win_st*)

declare i32 @wdeleteln(%_win_st*)

declare i32 @wechochar(%_win_st*, i64)

declare i32 @werase(%_win_st*)

declare i32 @wgetch(%_win_st*)

declare i32 @wgetnstr(%_win_st*, i8*, i32)

declare i32 @wgetstr(%_win_st*, i8*)

declare i32 @whline(%_win_st*, i64, i32)

declare i64 @winch(%_win_st*)

declare i32 @winchnstr(%_win_st*, i64*, i32)

declare i32 @winchstr(%_win_st*, i64*)

declare i32 @winnstr(%_win_st*, i8*, i32)

declare i32 @winsch(%_win_st*, i64)

declare i32 @winsdelln(%_win_st*, i32)

declare i32 @winsertln(%_win_st*)

declare i32 @winsnstr(%_win_st*, i8*, i32)

declare i32 @winsstr(%_win_st*, i8*)

declare i32 @winstr(%_win_st*, i8*)

declare i32 @wmove(%_win_st*, i32, i32)

declare i32 @wnoutrefresh(%_win_st*)

declare i32 @wprintw(%_win_st*, i8*, ...)

declare i32 @wredrawln(%_win_st*, i32, i32)

declare i32 @wrefresh(%_win_st*)

declare i32 @wscanw(%_win_st*, i8*, ...)

declare i32 @wscrl(%_win_st*, i32)

declare i32 @wsetscrreg(%_win_st*, i32, i32)

declare i32 @wstandout(%_win_st*)

declare i32 @wstandend(%_win_st*)

declare void @wsyncdown(%_win_st*)

declare void @wsyncup(%_win_st*)

declare void @wtimeout(%_win_st*, i32)

declare i32 @wtouchln(%_win_st*, i32, i32, i32)

declare i32 @wvline(%_win_st*, i64, i32)

declare i32 @tigetflag(i8*)

declare i32 @tigetnum(i8*)

declare i8* @tigetstr(i8*)

declare i32 @putp(i8*)

declare i8* @tparm(i8*, ...)

declare i8* @tiparm(i8*, ...)

declare i32 @getattrs(%_win_st*)

declare i32 @getcurx(%_win_st*)

declare i32 @getcury(%_win_st*)

declare i32 @getbegx(%_win_st*)

declare i32 @getbegy(%_win_st*)

declare i32 @getmaxx(%_win_st*)

declare i32 @getmaxy(%_win_st*)

declare i32 @getparx(%_win_st*)

declare i32 @getpary(%_win_st*)

declare i1 @is_term_resized(i32, i32)

declare i8* @keybound(i32, i32)

declare i8* @curses_version()

declare i32 @assume_default_colors(i32, i32)

declare i32 @define_key(i8*, i32)

declare i32 @get_escdelay()

declare i32 @key_defined(i8*)

declare i32 @keyok(i32, i1)

declare i32 @resize_term(i32, i32)

declare i32 @resizeterm(i32, i32)

declare i32 @set_escdelay(i32)

declare i32 @set_tabsize(i32)

declare i32 @use_default_colors()

declare i32 @use_extended_names(i1)

declare i32 @use_legacy_coding(i32)

declare i32 @use_screen(%screen*, i32 (%screen*, i8*)*, i8*)

declare i32 @use_window(%_win_st*, i32 (%_win_st*, i8*)*, i8*)

declare i32 @wresize(%_win_st*, i32, i32)

declare void @nofilter()

declare %_win_st* @wgetparent(%_win_st*)

declare i1 @is_cleared(%_win_st*)

declare i1 @is_idcok(%_win_st*)

declare i1 @is_idlok(%_win_st*)

declare i1 @is_immedok(%_win_st*)

declare i1 @is_keypad(%_win_st*)

declare i1 @is_leaveok(%_win_st*)

declare i1 @is_nodelay(%_win_st*)

declare i1 @is_notimeout(%_win_st*)

declare i1 @is_pad(%_win_st*)

declare i1 @is_scrollok(%_win_st*)

declare i1 @is_subwin(%_win_st*)

declare i1 @is_syncok(%_win_st*)

declare i32 @wgetdelay(%_win_st*)

declare i32 @wgetscrreg(%_win_st*, i32*, i32*)

declare i1 @has_mouse()

declare i32 @getmouse(%anon84*)

declare i32 @ungetmouse(%anon84*)

declare i64 @mousemask(i64, i64*)

declare i1 @wenclose(%_win_st*, i32, i32)

declare i32 @mouseinterval(i32)

declare i1 @wmouse_trafo(%_win_st*, i32*, i32*, i1)

declare i1 @mouse_trafo(i32*, i32*, i1)

declare i32 @mcprint(i8*, i32)

declare i32 @has_key(i32)

declare void @_tracef(i8*, ...)

declare i8* @_traceattr(i64)

declare i8* @_traceattr2(i32, i64)

declare i8* @_tracechar(i32)

declare i8* @_tracechtype(i64)

declare i8* @_tracechtype2(i32, i64)

declare void @trace(i32)

declare i8* @unctrl(i64)

declare i32 @ioctl(i32, i64, ...)

declare %__dirstream* @opendir(i8*)

declare %__dirstream* @fdopendir(i32)

declare i32 @closedir(%__dirstream*)

declare %dirent* @readdir(%__dirstream*)

declare i32 @readdir_r(%__dirstream*, %dirent*, %dirent**)

declare void @rewinddir(%__dirstream*)

declare void @seekdir(%__dirstream*, i64)

declare i64 @telldir(%__dirstream*)

declare i32 @dirfd(%__dirstream*)

declare i32 @scandir(i8*, %dirent***, i32 (%dirent*)*, i32 (%dirent**, %dirent**)*)

declare i32 @alphasort(%dirent**, %dirent**)

declare i64 @getdirentries(i32, i8*, i64, i64*)

declare i8* @setlocale(i32, i8*)

declare %lconv* @localeconv()

declare %anon3* @newlocale(i32, i8*, %anon3*)

declare %anon3* @duplocale(%anon3*)

declare void @freelocale(%anon3*)

declare %anon3* @uselocale(%anon3*)

declare i32 @__sigismember(%anon10*, i32)

declare i32 @__sigaddset(%anon10*, i32)

declare i32 @__sigdelset(%anon10*, i32)

declare void (i32)* @__sysv_signal(i32, void (i32)*)

declare void (i32)* @signal(i32, void (i32)*)

declare i32 @kill(i32, i32)

declare i32 @killpg(i32, i32)

declare i32 @raise(i32)

declare void (i32)* @ssignal(i32, void (i32)*)

declare i32 @gsignal(i32)

declare void @psignal(i32, i8*)

declare void @psiginfo(%anon87*, i8*)

declare i32 @sigblock(i32)

declare i32 @sigsetmask(i32)

declare i32 @siggetmask()

declare i32 @sigemptyset(%anon10*)

declare i32 @sigfillset(%anon10*)

declare i32 @sigaddset(%anon10*, i32)

declare i32 @sigdelset(%anon10*, i32)

declare i32 @sigismember(%anon10*, i32)

declare i32 @sigprocmask(i32, %anon10*, %anon10*)

declare i32 @sigsuspend(%anon10*)

declare i32 @sigaction(i32, %sigaction*, %sigaction*)

declare i32 @sigpending(%anon10*)

declare i32 @sigwait(%anon10*, i32*)

declare i32 @sigwaitinfo(%anon10*, %anon87*)

declare i32 @sigtimedwait(%anon10*, %anon87*, %timespec*)

declare i32 @sigqueue(i32, i32, %sigval)

declare i32 @sigreturn(%sigcontext*)

declare i32 @siginterrupt(i32, i32)

declare i32 @sigstack(%sigstack*, %sigstack*)

declare i32 @sigaltstack(%sigaltstack*, %sigaltstack*)

declare i32 @pthread_sigmask(i32, %anon10*, %anon10*)

declare i32 @pthread_kill(i64, i32)

declare i32 @__libc_current_sigrtmin()

declare i32 @__libc_current_sigrtmax()

declare i32 @xgetmaxx()

declare i32 @xgetmaxy()

declare %ViWin* @ViWin_initialize(%ViWin*, i32, i32, i32, i32)

declare void @ViWin_finalize(%ViWin*)

declare void @ViWin_view(%ViWin*, %Vi*)

declare void @ViWin_input(%ViWin*, %Vi*)

declare i1 @ViWin_equals(%ViWin*, %ViWin*)

declare void @Vi_init_curses(%Vi*)

declare %Vi* @Vi_initialize(%Vi*)

declare void @Vi_finalize(%Vi*)

declare i32 @Vi_main_loop(%Vi*)

declare void @ViWin_textsView-2(%ViWin*, %Vi*)

declare void @ViWin_statusBarView-2(%ViWin*, %Vi*)

declare void @ViWin_view-2(%ViWin*, %Vi*)

declare void @ViWin_input-2(%ViWin*, %Vi*)

declare i32 @ViWin_getKey-2(%ViWin*)

declare void @ViWin_modifyOverCursorYValue-2(%ViWin*)

declare void @ViWin_modifyUnderCursorYValue-2(%ViWin*)

declare void @ViWin_modifyOverCursorXValue-2(%ViWin*)

declare void @ViWin_modifyUnderCursorXValue-2(%ViWin*)

declare void @ViWin_forward-2(%ViWin*)

declare void @ViWin_backward-2(%ViWin*)

declare void @ViWin_prevLine-2(%ViWin*)

declare void @ViWin_nextLine-2(%ViWin*)

declare void @ViWin_halfScrollUp-2(%ViWin*)

declare void @ViWin_halfScrollDown-2(%ViWin*)

declare void @ViWin_moveAtHead-2(%ViWin*)

declare void @ViWin_moveAtTail-2(%ViWin*)

declare void @ViWin_moveTop-2(%ViWin*)

declare void @ViWin_keyG-2(%ViWin*)

declare void @ViWin_moveBottom-2(%ViWin*)

declare void @ViWin_repositionWindows-2(%Vi*)

declare void @ViWin_repositionFiler-2(%Vi*)

declare void @ViWin_centeringCursor-2(%ViWin*)

declare void @ViWin_openFile-2(%ViWin*, i8*, i32)

declare %Vi* @Vi_initialize-2(%Vi*)

declare i32 @Vi_main_loop-2(%Vi*)

declare void @Vi_openFile-2(%Vi*, i8*, i32)

declare void @Vi_view-2(%Vi*)

declare void @Vi_clearView-2(%Vi*)

declare void @ViWin_view-3(%ViWin*, %Vi*)

declare void @ViWin_insertText-3(%ViWin*, i32*)

declare void @ViWin_enterNewLine-3(%ViWin*)

declare void @ViWin_enterNewLine2-3(%ViWin*)

declare void @ViWin_input-3(%ViWin*, %Vi*)

declare void @ViWin_pushUndo-3(%ViWin*)

declare void @ViWin_writedFlagOn-3(%ViWin*)

declare void @ViWin_completion-3(%ViWin*)

declare void @ViWin_clearInputedKey-3(%ViWin*)

declare void @ViWin_saveInputedKey-3(%ViWin*)

declare %Vi* @Vi_initialize-3(%Vi*)

declare void @Vi_enterInsertMode-3(%Vi*)

declare void @Vi_exitFromInsertMode-3(%Vi*)

declare i32 @Vi_main_loop-3(%Vi*)

declare void @ViWin_forwardWord-4(%ViWin*)

declare void @ViWin_backwardWord-4(%ViWin*)

declare %Vi* @Vi_initialize-4(%Vi*)

declare %ViWin* @ViWin_initialize-5(%ViWin*, i32, i32, i32, i32)

declare void @ViWin_pushUndo-5(%ViWin*)

declare void @ViWin_undo-5(%ViWin*)

declare void @ViWin_redo-5(%ViWin*)

declare %Vi* @Vi_initialize-5(%Vi*)

declare void @Vi_enterInsertMode-5(%Vi*)

declare %ViWin* @ViWin_initialize-6(%ViWin*, i32, i32, i32, i32)

declare void @ViWin_statusBarView-6(%ViWin*, %Vi*)

declare void @ViWin_openFile-6(%ViWin*, i8*, i32)

declare void @ViWin_writeFile-6(%ViWin*)

declare void @ViWin_writedFlagOn-6(%ViWin*)

declare %Vi* @Vi_initialize-6(%Vi*)

declare void @Vi_openFile-6(%Vi*, i8*, i32)

declare void @Vi_openNewFile-6(%Vi*, i8*)

declare void @Vi_closeActiveWin-6(%Vi*)

declare void @Vi_repositionWindows-6(%Vi*)

declare void @ViWin_deleteLines-7(%ViWin*, i32, i32, %Vi*)

declare void @ViWin_deleteOneLine-7(%ViWin*, %Vi*)

declare %Vi* @Vi_initialize-7(%Vi*)

declare %ViWin* @ViWin_initialize-8(%ViWin*, i32, i32, i32, i32)

declare void @ViWin_visualModeView-8(%ViWin*, %Vi*)

declare void @ViWin_view-8(%ViWin*, %Vi*)

declare void @ViWin_inputVisualMode-8(%ViWin*, %Vi*)

declare void @ViWin_input-8(%ViWin*, %Vi*)

declare void @Vi_enterVisualMode-8(%Vi*)

declare void @Vi_exitFromVisualMode-8(%Vi*)

declare %Vi* @Vi_initialize-8(%Vi*)

declare void @ViWin_searchModeView-9(%ViWin*, %Vi*)

declare void @ViWin_view-9(%ViWin*, %Vi*)

declare void @ViWin_inputSearchlMode-9(%ViWin*, %Vi*)

declare void @ViWin_input-9(%ViWin*, %Vi*)

declare void @Vi_enterSearchMode-9(%Vi*)

declare void @Vi_exitFromSearchMode-9(%Vi*)

declare %Vi* @Vi_initialize-9(%Vi*)

declare void @ViWin_deleteLines-10(%ViWin*, i32, i32, %Vi*)

declare void @ViWin_deleteOneLine-10(%ViWin*, %Vi*)

declare %Vi* @Vi_initialize-10(%Vi*)

declare %Vi* @Vi_initialize-11(%Vi*)

declare void @ViWin_view-12(%ViWin*, %Vi*)

declare void @ViWin_input-12(%ViWin*, %Vi*)

declare void @Vi_enterComandMode-12(%Vi*)

declare void @Vi_exitFromComandMode-12(%Vi*)

declare %Vi* @Vi_initialize-12(%Vi*)

declare void @Vi_activateFiler-12(%Vi*)

declare void @ViWin_completion-13(%ViWin*)

declare %ViWin* @ViWin_initialize-14(%ViWin*, i32, i32, i32, i32)

declare i32 @ViWin_getKey-14(%ViWin*)

declare void @ViWin_clearInputedKey-14(%ViWin*)

declare void @ViWin_saveInputedKey-14(%ViWin*)

declare %Vi* @Vi_initialize-14(%Vi*)

define %Vi* @Vi_initialize-15(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = call %Vi* @Vi_initialize-14(%Vi* %self2)
  %self3 = load %Vi*, %Vi** %self1, align 8
  %4 = call i8* @debug_xcalloc(i64 1, i64 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.334, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.335, i32 0, i32 0), i32 338, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.336, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.337, i32 0, i32 0))
  %5 = bitcast i8* %4 to %ViFiler*
  %6 = call %ViFiler* @ViFiler_initialize(%ViFiler* %5)
  %7 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 10
  %8 = load %ViFiler*, %ViFiler** %7, align 8
  %9 = ptrtoint %ViFiler* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  %11 = getelementptr inbounds %ViFiler, %ViFiler* %8, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %cond_then_block4, label %cond_end5

cond_end:                                         ; preds = %cond_end7, %entry
  call void @ViFiler_finalize(%ViFiler* %8)
  %15 = bitcast %ViFiler* %8 to i8*
  call void @xfree(i8* %15)
  store %ViFiler* %6, %ViFiler** %7, align 8
  %self8 = load %Vi*, %Vi** %self1, align 8
  store %Vi* %self8, %Vi** @gVi, align 8
  %16 = call void (i32)* @signal(i32 28, void (i32)* @sig_winch)
  %self9 = load %Vi*, %Vi** %self1, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %Vi* %self9

cond_then_block4:                                 ; preds = %cond_then_block
  br label %cond_end5

cond_end5:                                        ; preds = %cond_then_block4, %cond_then_block
  call void @xfree(i8* %12)
  %19 = getelementptr inbounds %ViFiler, %ViFiler* %8, i32 0, i32 1
  %20 = load %list__charp*, %list__charp** %19, align 8
  %21 = ptrtoint %list__charp* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block6, label %cond_end7

cond_then_block6:                                 ; preds = %cond_end5
  br label %cond_end7

cond_end7:                                        ; preds = %cond_then_block6, %cond_end5
  call void @"list_finalize_charp69_vi++15filer"(%list__charp* %20)
  %23 = bitcast %list__charp* %20 to i8*
  call void @xfree(i8* %23)
  br label %cond_end
}

define void @Vi_activateFiler-15(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = getelementptr inbounds %Vi, %Vi* %self2, i32 0, i32 10
  %4 = load %ViFiler*, %ViFiler** %3, align 8
  %5 = getelementptr inbounds %ViFiler, %ViFiler* %4, i32 0, i32 6
  store i1 true, i1* %5, align 1
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret void
}

define i32 @Vi_main_loop-15(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %entry
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = getelementptr inbounds %Vi, %Vi* %self2, i32 0, i32 3
  %4 = load i1, i1* %3, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %6 = bitcast i8* %5 to %Vi**
  %self3 = load %Vi*, %Vi** %6, align 8
  call void @Vi_view-15(%Vi* %self3)
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %8 = bitcast i8* %7 to %Vi**
  %self4 = load %Vi*, %Vi** %8, align 8
  %9 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %noteqtmp = icmp ne i32 %10, 1
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret i32 0

cond_jump_then:                                   ; preds = %cond_then_block
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %14 = bitcast i8* %13 to %Vi**
  %self5 = load %Vi*, %Vi** %14, align 8
  %15 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 1
  %16 = load %ViWin*, %ViWin** %15, align 8
  call void @ViWin_clearInputedKey-14(%ViWin* %16)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %18 = bitcast i8* %17 to %Vi**
  %self6 = load %Vi*, %Vi** %18, align 8
  %19 = getelementptr inbounds %Vi, %Vi* %self6, i32 0, i32 10
  %20 = load %ViFiler*, %ViFiler** %19, align 8
  %21 = getelementptr inbounds %ViFiler, %ViFiler* %20, i32 0, i32 6
  %22 = load i1, i1* %21, align 1
  br i1 %22, label %cond_jump_then7, label %cond_else_block

cond_jump_then7:                                  ; preds = %cond_end
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %24 = bitcast i8* %23 to %Vi**
  %self9 = load %Vi*, %Vi** %24, align 8
  %25 = getelementptr inbounds %Vi, %Vi* %self9, i32 0, i32 10
  %26 = load %ViFiler*, %ViFiler** %25, align 8
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %28 = bitcast i8* %27 to %Vi**
  %self10 = load %Vi*, %Vi** %28, align 8
  call void @ViFiler_input(%ViFiler* %26, %Vi* %self10)
  br label %cond_end8

cond_else_block:                                  ; preds = %cond_end
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %30 = bitcast i8* %29 to %Vi**
  %self11 = load %Vi*, %Vi** %30, align 8
  %31 = getelementptr inbounds %Vi, %Vi* %self11, i32 0, i32 1
  %32 = load %ViWin*, %ViWin** %31, align 8
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %34 = bitcast i8* %33 to %Vi**
  %self12 = load %Vi*, %Vi** %34, align 8
  call void @ViWin_input-12(%ViWin* %32, %Vi* %self12)
  br label %cond_end8

cond_end8:                                        ; preds = %cond_else_block, %cond_jump_then7
  br label %loop_top_block
}

define void @Vi_repositionFiler-15(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %3 = call i32 @xgetmaxy()
  %maxy = alloca i32
  %4 = bitcast i32* %maxy to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %3, i32* %maxy, align 4
  %5 = call i32 @xgetmaxx()
  %maxx = alloca i32
  %6 = bitcast i32* %maxx to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %5, i32* %maxx, align 4
  %self2 = load %Vi*, %Vi** %self1, align 8
  %7 = getelementptr inbounds %Vi, %Vi* %self2, i32 0, i32 10
  %8 = load %ViFiler*, %ViFiler** %7, align 8
  %9 = getelementptr inbounds %ViFiler, %ViFiler* %8, i32 0, i32 2
  %10 = load %_win_st*, %_win_st** %9, align 8
  %11 = call i32 @delwin(%_win_st* %10)
  %maxx3 = load i32, i32* %maxx, align 4
  %divtmp = sdiv i32 %maxx3, 5
  %width = alloca i32
  %12 = bitcast i32* %width to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store i32 %divtmp, i32* %width, align 4
  %maxy4 = load i32, i32* %maxy, align 4
  %width5 = load i32, i32* %width, align 4
  %13 = call %_win_st* @newwin(i32 %maxy4, i32 %width5, i32 0, i32 0)
  %win = alloca %_win_st*
  %14 = bitcast %_win_st** %win to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store %_win_st* %13, %_win_st** %win, align 8
  %win6 = load %_win_st*, %_win_st** %win, align 8
  %15 = call i32 @keypad(%_win_st* %win6, i1 true)
  %self7 = load %Vi*, %Vi** %self1, align 8
  %16 = getelementptr inbounds %Vi, %Vi* %self7, i32 0, i32 10
  %17 = load %ViFiler*, %ViFiler** %16, align 8
  %win8 = load %_win_st*, %_win_st** %win, align 8
  %18 = getelementptr inbounds %ViFiler, %ViFiler* %17, i32 0, i32 2
  store %_win_st* %win8, %_win_st** %18, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret void
}

define void @Vi_view-15(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = getelementptr inbounds %Vi, %Vi* %self2, i32 0, i32 10
  %4 = load %ViFiler*, %ViFiler** %3, align 8
  %5 = getelementptr inbounds %ViFiler, %ViFiler* %4, i32 0, i32 2
  %6 = load %_win_st*, %_win_st** %5, align 8
  call void @xclear(%_win_st* %6)
  %self3 = load %Vi*, %Vi** %self1, align 8
  %7 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 0
  %8 = load %list__ViWinp*, %list__ViWinp** %7, align 8
  call void @"list_each_ViWinp71_vi++15filer"(%list__ViWinp* %8, void (%ViWin*, i32, i1*)* @"vi++15filer_lambda3")
  %self4 = load %Vi*, %Vi** %self1, align 8
  %9 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 10
  %10 = load %ViFiler*, %ViFiler** %9, align 8
  %self5 = load %Vi*, %Vi** %self1, align 8
  call void @ViFiler_view(%ViFiler* %10, %Vi* %self5)
  %self6 = load %Vi*, %Vi** %self1, align 8
  %11 = getelementptr inbounds %Vi, %Vi* %self6, i32 0, i32 0
  %12 = load %list__ViWinp*, %list__ViWinp** %11, align 8
  call void @"list_each_ViWinp72_vi++15filer"(%list__ViWinp* %12, void (%ViWin*, i32, i1*)* @"vi++15filer_lambda4")
  %self7 = load %Vi*, %Vi** %self1, align 8
  %13 = getelementptr inbounds %Vi, %Vi* %self7, i32 0, i32 10
  %14 = load %ViFiler*, %ViFiler** %13, align 8
  %15 = getelementptr inbounds %ViFiler, %ViFiler* %14, i32 0, i32 2
  %16 = load %_win_st*, %_win_st** %15, align 8
  %17 = call i32 @wrefresh(%_win_st* %16)
  %self8 = load %Vi*, %Vi** %self1, align 8
  %18 = getelementptr inbounds %Vi, %Vi* %self8, i32 0, i32 0
  %19 = load %list__ViWinp*, %list__ViWinp** %18, align 8
  call void @"list_each_ViWinp73_vi++15filer"(%list__ViWinp* %19, void (%ViWin*, i32, i1*)* @"vi++15filer_lambda5")
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret void
}

define void @Vi_clearView-15(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %stdscr = load %_win_st*, %_win_st** @stdscr, align 8
  %3 = call i32 @clearok(%_win_st* %stdscr, i1 true)
  %stdscr2 = load %_win_st*, %_win_st** @stdscr, align 8
  %4 = call i32 @wclear(%_win_st* %stdscr2)
  %stdscr3 = load %_win_st*, %_win_st** @stdscr, align 8
  %5 = call i32 @clearok(%_win_st* %stdscr3, i1 false)
  %self4 = load %Vi*, %Vi** %self1, align 8
  %6 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 10
  %7 = load %ViFiler*, %ViFiler** %6, align 8
  %8 = getelementptr inbounds %ViFiler, %ViFiler* %7, i32 0, i32 2
  %9 = load %_win_st*, %_win_st** %8, align 8
  %10 = call i32 @clearok(%_win_st* %9, i1 true)
  %self5 = load %Vi*, %Vi** %self1, align 8
  %11 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 10
  %12 = load %ViFiler*, %ViFiler** %11, align 8
  %13 = getelementptr inbounds %ViFiler, %ViFiler* %12, i32 0, i32 2
  %14 = load %_win_st*, %_win_st** %13, align 8
  %15 = call i32 @wclear(%_win_st* %14)
  %self6 = load %Vi*, %Vi** %self1, align 8
  %16 = getelementptr inbounds %Vi, %Vi* %self6, i32 0, i32 10
  %17 = load %ViFiler*, %ViFiler** %16, align 8
  %18 = getelementptr inbounds %ViFiler, %ViFiler* %17, i32 0, i32 2
  %19 = load %_win_st*, %_win_st** %18, align 8
  %20 = call i32 @clearok(%_win_st* %19, i1 false)
  %self7 = load %Vi*, %Vi** %self1, align 8
  %21 = getelementptr inbounds %Vi, %Vi* %self7, i32 0, i32 10
  %22 = load %ViFiler*, %ViFiler** %21, align 8
  %self8 = load %Vi*, %Vi** %self1, align 8
  call void @ViFiler_view(%ViFiler* %22, %Vi* %self8)
  %self9 = load %Vi*, %Vi** %self1, align 8
  %23 = getelementptr inbounds %Vi, %Vi* %self9, i32 0, i32 10
  %24 = load %ViFiler*, %ViFiler** %23, align 8
  %25 = getelementptr inbounds %ViFiler, %ViFiler* %24, i32 0, i32 2
  %26 = load %_win_st*, %_win_st** %25, align 8
  %27 = call i32 @wrefresh(%_win_st* %26)
  %self10 = load %Vi*, %Vi** %self1, align 8
  %28 = getelementptr inbounds %Vi, %Vi* %self10, i32 0, i32 0
  %29 = load %list__ViWinp*, %list__ViWinp** %28, align 8
  call void @"list_each_ViWinp74_vi++15filer"(%list__ViWinp* %29, void (%ViWin*, i32, i1*)* @"vi++15filer_lambda6")
  %stdscr11 = load %_win_st*, %_win_st** @stdscr, align 8
  %30 = call i32 @wrefresh(%_win_st* %stdscr11)
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret void
}

define void @ViWin_textsView-15(%ViWin* %self, %Vi* %nvi) {
entry:
  %condtional_result_value11 = alloca i16
  %condtional_result_value = alloca i16
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %nvi2 = alloca %Vi*
  store %Vi* %nvi, %Vi** %nvi2, align 8
  %3 = bitcast %Vi** %nvi2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %4 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 0
  %5 = load %_win_st*, %_win_st** %4, align 8
  %6 = ptrtoint %_win_st* %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 0
  %9 = load %_win_st*, %_win_st** %8, align 8
  %10 = getelementptr inbounds %_win_st, %_win_st* %9, i32 0, i32 2
  %11 = load i16, i16* %10, align 2
  %addtmp = add nsw i16 %11, 1
  store i16 %addtmp, i16* %condtional_result_value, align 2
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  store i16 -1, i16* %condtional_result_value, align 2
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %12 = load i16, i16* %condtional_result_value, align 2
  %sext13 = sext i16 %12 to i32
  %maxy = alloca i32
  %13 = bitcast i32* %maxy to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %sext13, i32* %maxy, align 4
  %self5 = load %ViWin*, %ViWin** %self1, align 8
  %14 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 0
  %15 = load %_win_st*, %_win_st** %14, align 8
  %16 = ptrtoint %_win_st* %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %cond_jump_then6, label %cond_else_block7

cond_jump_then6:                                  ; preds = %cond_end
  %self9 = load %ViWin*, %ViWin** %self1, align 8
  %18 = getelementptr inbounds %ViWin, %ViWin* %self9, i32 0, i32 0
  %19 = load %_win_st*, %_win_st** %18, align 8
  %20 = getelementptr inbounds %_win_st, %_win_st* %19, i32 0, i32 3
  %21 = load i16, i16* %20, align 2
  %addtmp10 = add nsw i16 %21, 1
  store i16 %addtmp10, i16* %condtional_result_value11, align 2
  br label %cond_end8

cond_else_block7:                                 ; preds = %cond_end
  store i16 -1, i16* %condtional_result_value11, align 2
  br label %cond_end8

cond_end8:                                        ; preds = %cond_else_block7, %cond_jump_then6
  %22 = load i16, i16* %condtional_result_value11, align 2
  %sext1312 = sext i16 %22 to i32
  %maxx = alloca i32
  %23 = bitcast i32* %maxx to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store i32 %sext1312, i32* %maxx, align 4
  %self13 = load %ViWin*, %ViWin** %self1, align 8
  %24 = getelementptr inbounds %ViWin, %ViWin* %self13, i32 0, i32 1
  %25 = load %list__intp*, %list__intp** %24, align 8
  %self14 = load %ViWin*, %ViWin** %self1, align 8
  %26 = getelementptr inbounds %ViWin, %ViWin* %self14, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %self15 = load %ViWin*, %ViWin** %self1, align 8
  %28 = getelementptr inbounds %ViWin, %ViWin* %self15, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %maxy16 = load i32, i32* %maxy, align 4
  %addtmp17 = add nsw i32 %29, %maxy16
  %subttmp = sub nsw i32 %addtmp17, 1
  %30 = call %list__intp* @"list_sublist_intp0_vi++15filer"(%list__intp* %25, i32 %27, i32 %subttmp)
  call void @"list_each_intp4_vi++15filer"(%list__intp* %30, void (i32*, i32, i1*)* @"vi++15filer_lambda0")
  %31 = ptrtoint %list__intp* %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %cond_then_block, label %cond_end18

cond_then_block:                                  ; preds = %cond_end8
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block, %cond_end8
  call void @"list_finalize_intp5_vi++15filer"(%list__intp* %30)
  %33 = bitcast %list__intp* %30 to i8*
  call void @xfree(i8* %33)
  %34 = bitcast [8192 x i8*]* %lvtable to i8*
  %35 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %34, i64 65536)
  ret void
}

define %ViWin* @ViWin_initialize-15(%ViWin* %self, i32 %y, i32 %x, i32 %width, i32 %height) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %y2 = alloca i32
  store i32 %y, i32* %y2, align 4
  %3 = bitcast i32* %y2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %x3 = alloca i32
  store i32 %x, i32* %x3, align 4
  %4 = bitcast i32* %x3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %width4 = alloca i32
  store i32 %width, i32* %width4, align 4
  %5 = bitcast i32* %width4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %height5 = alloca i32
  store i32 %height, i32* %height5, align 4
  %6 = bitcast i32* %height5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %7 = call i32 @xgetmaxx()
  %maxx = alloca i32
  %8 = bitcast i32* %maxx to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i32 %7, i32* %maxx, align 4
  %maxx6 = load i32, i32* %maxx, align 4
  %divtmp = sdiv i32 %maxx6, 5
  %filer_width = alloca i32
  %9 = bitcast i32* %filer_width to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store i32 %divtmp, i32* %filer_width, align 4
  %self7 = load %ViWin*, %ViWin** %self1, align 8
  %y8 = load i32, i32* %y2, align 4
  %x9 = load i32, i32* %x3, align 4
  %filer_width10 = load i32, i32* %filer_width, align 4
  %addtmp = add nsw i32 %x9, %filer_width10
  %width11 = load i32, i32* %width4, align 4
  %filer_width12 = load i32, i32* %filer_width, align 4
  %subttmp = sub nsw i32 %width11, %filer_width12
  %height13 = load i32, i32* %height5, align 4
  %10 = call %ViWin* @ViWin_initialize-14(%ViWin* %self7, i32 %y8, i32 %addtmp, i32 %subttmp, i32 %height13)
  %self14 = load %ViWin*, %ViWin** %self1, align 8
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret %ViWin* %self14
}

define %list__intp* @"list_sublist_intp0_vi++15filer"(%list__intp* %self, i32 %begin, i32 %tail) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %begin2 = alloca i32
  store i32 %begin, i32* %begin2, align 4
  %3 = bitcast i32* %begin2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %tail3 = alloca i32
  store i32 %tail, i32* %tail3, align 4
  %4 = bitcast i32* %tail3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %5 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.1, i32 0, i32 0), i32 1126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_string.3, i32 0, i32 0))
  %6 = bitcast i8* %5 to %list__intp*
  %7 = call %list__intp* @"list_initialize_intp1_vi++15filer"(%list__intp* %6)
  %result = alloca %list__intp*
  %8 = bitcast %list__intp** %result to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store %list__intp* %7, %list__intp** %result, align 8
  %begin4 = load i32, i32* %begin2, align 4
  %letmp = icmp slt i32 %begin4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %10 = bitcast i8* %9 to i32*
  %begin5 = load i32, i32* %10, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %12 = bitcast i8* %11 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %12, align 8
  %13 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %addtmp = add nsw i32 %begin5, %14
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %16 = bitcast i8* %15 to i32*
  store i32 %addtmp, i32* %16, align 4
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %18 = bitcast i8* %17 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %18, align 8
  %19 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %subttmp = sub nsw i32 %addtmp, %20
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %tail8 = load i32, i32* %tail3, align 4
  %letmp9 = icmp slt i32 %tail8, 0
  br i1 %letmp9, label %cond_jump_then10, label %cond_end11

cond_jump_then10:                                 ; preds = %cond_end
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %22 = bitcast i8* %21 to i32*
  %tail12 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %24 = bitcast i8* %23 to %list__intp**
  %self13 = load %list__intp*, %list__intp** %24, align 8
  %25 = getelementptr inbounds %list__intp, %list__intp* %self13, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %addtmp14 = add nsw i32 %26, 1
  %addtmp15 = add nsw i32 %tail12, %addtmp14
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp15, i32* %28, align 4
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %30 = bitcast i8* %29 to %list__intp**
  %self16 = load %list__intp*, %list__intp** %30, align 8
  %31 = getelementptr inbounds %list__intp, %list__intp* %self16, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %addtmp17 = add nsw i32 %32, 1
  %subttmp18 = sub nsw i32 %addtmp15, %addtmp17
  br label %cond_end11

cond_end11:                                       ; preds = %cond_jump_then10, %cond_end
  %begin19 = load i32, i32* %begin2, align 4
  %letmp20 = icmp slt i32 %begin19, 0
  br i1 %letmp20, label %cond_jump_then21, label %cond_end22

cond_jump_then21:                                 ; preds = %cond_end11
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %34 = bitcast i8* %33 to i32*
  store i32 0, i32* %34, align 4
  br label %cond_end22

cond_end22:                                       ; preds = %cond_jump_then21, %cond_end11
  %tail23 = load i32, i32* %tail3, align 4
  %self24 = load %list__intp*, %list__intp** %self1, align 8
  %35 = getelementptr inbounds %list__intp, %list__intp* %self24, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %getmp = icmp sge i32 %tail23, %36
  br i1 %getmp, label %cond_jump_then25, label %cond_end26

cond_jump_then25:                                 ; preds = %cond_end22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self27 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self27, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %cond_end26

cond_end26:                                       ; preds = %cond_jump_then25, %cond_end22
  %self28 = load %list__intp*, %list__intp** %self1, align 8
  %43 = getelementptr inbounds %list__intp, %list__intp* %self28, i32 0, i32 0
  %44 = load %list_item__intp*, %list_item__intp** %43, align 8
  %it = alloca %list_item__intp*
  %45 = bitcast %list_item__intp** %it to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store %list_item__intp* %44, %list_item__intp** %it, align 8
  %i = alloca i32
  %46 = bitcast i32* %i to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end38, %cond_end26
  %it29 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it29, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %48 = bitcast i8* %47 to i32*
  %i30 = load i32, i32* %48, align 4
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %50 = bitcast i8* %49 to i32*
  %begin31 = load i32, i32* %50, align 4
  %getmp32 = icmp sge i32 %i30, %begin31
  store i1 %getmp32, i1* %andand_result_var, align 1
  br i1 %getmp32, label %cond_jump_then33, label %cond_jump_end

cond_end_block:                                   ; preds = %loop_top_block
  %result49 = load %list__intp*, %list__intp** %result, align 8
  %51 = bitcast [8192 x i8*]* %lvtable to i8*
  %52 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %51, i64 65536)
  ret %list__intp* %result49

cond_jump_then33:                                 ; preds = %cond_then_block
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %54 = bitcast i8* %53 to i32*
  %i34 = load i32, i32* %54, align 4
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %56 = bitcast i8* %55 to i32*
  %tail35 = load i32, i32* %56, align 4
  %letmp36 = icmp slt i32 %i34, %tail35
  %andand = and i1 %getmp32, %letmp36
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then33, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then37, label %cond_end38

cond_jump_then37:                                 ; preds = %cond_jump_end
  br i1 true, label %cond_jump_then39, label %cond_else_block

cond_end38:                                       ; preds = %cond_end40, %cond_jump_end
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %58 = bitcast i8* %57 to %list_item__intp**
  %it45 = load %list_item__intp*, %list_item__intp** %58, align 8
  %59 = getelementptr inbounds %list_item__intp, %list_item__intp* %it45, i32 0, i32 2
  %60 = load %list_item__intp*, %list_item__intp** %59, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %62 = bitcast i8* %61 to %list_item__intp**
  store %list_item__intp* %60, %list_item__intp** %62, align 8
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %64 = bitcast i8* %63 to i32*
  %i46 = load i32, i32* %64, align 4
  %addtmp47 = add nsw i32 %i46, 1
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %66 = bitcast i8* %65 to i32*
  store i32 %addtmp47, i32* %66, align 4
  %subttmp48 = sub nsw i32 %addtmp47, 1
  br label %loop_top_block

cond_jump_then39:                                 ; preds = %cond_jump_then37
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %68 = bitcast i8* %67 to %list__intp**
  %result41 = load %list__intp*, %list__intp** %68, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %70 = bitcast i8* %69 to %list_item__intp**
  %it42 = load %list_item__intp*, %list_item__intp** %70, align 8
  %71 = getelementptr inbounds %list_item__intp, %list_item__intp* %it42, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %71, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = call i8* @xmemdup(i8* %74)
  %76 = bitcast i8* %75 to i32*
  call void @"list_push_back_intp2_vi++15filer"(%list__intp* %result41, i32* %76)
  br label %cond_end40

cond_else_block:                                  ; preds = %cond_jump_then37
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %78 = bitcast i8* %77 to %list__intp**
  %result43 = load %list__intp*, %list__intp** %78, align 8
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %80 = bitcast i8* %79 to %list_item__intp**
  %it44 = load %list_item__intp*, %list_item__intp** %80, align 8
  %81 = getelementptr inbounds %list_item__intp, %list_item__intp* %it44, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  call void @"list_push_back_intp3_vi++15filer"(%list__intp* %result43, i32* %82)
  br label %cond_end40

cond_end40:                                       ; preds = %cond_else_block, %cond_jump_then39
  br label %cond_end38
}

define %list__intp* @"list_initialize_intp1_vi++15filer"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 0
  store %list_item__intp* null, %list_item__intp** %3, align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %4, align 8
  %self4 = load %list__intp*, %list__intp** %self1, align 8
  %5 = getelementptr inbounds %list__intp, %list__intp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__intp*, %list__intp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__intp* %self5
}

define void @"list_push_back_intp2_vi++15filer"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.5, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.7, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__intp**
  %self10 = load %list__intp*, %list__intp** %18, align 8
  %litem11 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %19 = getelementptr inbounds %list__intp, %list__intp* %self10, i32 0, i32 0
  store %list_item__intp* %litem11, %list_item__intp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__intp*, %list__intp** %self1, align 8
  %20 = getelementptr inbounds %list__intp, %list__intp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.9, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.10, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.11, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__intp**
  %self16 = load %list__intp*, %list__intp** %26, align 8
  %27 = getelementptr inbounds %list__intp, %list__intp* %self16, i32 0, i32 0
  %28 = load %list_item__intp*, %list_item__intp** %27, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem15, i32 0, i32 1
  store %list_item__intp* %28, %list_item__intp** %29, align 8
  %litem17 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem17, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %30, align 8
  %litem18 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.13, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.14, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.15, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__intp**
  %self26 = load %list__intp*, %list__intp** %46, align 8
  %47 = getelementptr inbounds %list__intp, %list__intp* %self26, i32 0, i32 1
  %48 = load %list_item__intp*, %list_item__intp** %47, align 8
  %49 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem25, i32 0, i32 1
  store %list_item__intp* %48, %list_item__intp** %49, align 8
  %litem27 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem27, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %50, align 8
  %litem28 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__intp**
  %self32 = load %list__intp*, %list__intp** %60, align 8
  %litem33 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %61 = getelementptr inbounds %list__intp, %list__intp* %self32, i32 0, i32 1
  store %list_item__intp* %litem33, %list_item__intp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__intp*, %list__intp** %self1, align 8
  %self35 = load %list__intp*, %list__intp** %self1, align 8
  %62 = getelementptr inbounds %list__intp, %list__intp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__intp, %list__intp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_intp3_vi++15filer"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.17, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.19, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__intp**
  %self10 = load %list__intp*, %list__intp** %18, align 8
  %litem11 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %19 = getelementptr inbounds %list__intp, %list__intp* %self10, i32 0, i32 0
  store %list_item__intp* %litem11, %list_item__intp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__intp*, %list__intp** %self1, align 8
  %20 = getelementptr inbounds %list__intp, %list__intp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.21, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.22, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.23, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__intp**
  %self16 = load %list__intp*, %list__intp** %26, align 8
  %27 = getelementptr inbounds %list__intp, %list__intp* %self16, i32 0, i32 0
  %28 = load %list_item__intp*, %list_item__intp** %27, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem15, i32 0, i32 1
  store %list_item__intp* %28, %list_item__intp** %29, align 8
  %litem17 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem17, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %30, align 8
  %litem18 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.25, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.27, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__intp**
  %self26 = load %list__intp*, %list__intp** %46, align 8
  %47 = getelementptr inbounds %list__intp, %list__intp* %self26, i32 0, i32 1
  %48 = load %list_item__intp*, %list_item__intp** %47, align 8
  %49 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem25, i32 0, i32 1
  store %list_item__intp* %48, %list_item__intp** %49, align 8
  %litem27 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem27, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %50, align 8
  %litem28 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__intp**
  %self32 = load %list__intp*, %list__intp** %60, align 8
  %litem33 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %61 = getelementptr inbounds %list__intp, %list__intp* %self32, i32 0, i32 1
  store %list_item__intp* %litem33, %list_item__intp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__intp*, %list__intp** %self1, align 8
  %self35 = load %list__intp*, %list__intp** %self1, align 8
  %62 = getelementptr inbounds %list__intp, %list__intp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__intp, %list__intp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"vi++15filer_lambda0"(i32* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i32*
  store i32* %it, i32** %it1, align 8
  %2 = bitcast i32** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %it4 = load i32*, i32** %it1, align 8
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %6 = bitcast i8* %5 to i32*
  %maxx = load i32, i32* %6, align 4
  %subttmp = sub nsw i32 %maxx, 1
  %7 = call i32* @wstring_substring(i32* %it4, i32 0, i32 %subttmp)
  %line = alloca i32*
  %8 = bitcast i32** %line to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store i32* %7, i32** %line, align 8
  %andand_result_var = alloca i1
  %andand_result_var5 = alloca i1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %10 = bitcast i8* %9 to %ViWin**
  %self = load %ViWin*, %ViWin** %10, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %it26 = load i32, i32* %it22, align 4
  %eqtmpX = icmp eq i32 %12, %it26
  store i1 %eqtmpX, i1* %andand_result_var5, align 1
  br i1 %eqtmpX, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %entry
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %14 = bitcast i8* %13 to %Vi**
  %nvi = load %Vi*, %Vi** %14, align 8
  %15 = getelementptr inbounds %Vi, %Vi* %nvi, i32 0, i32 1
  %16 = load %ViWin*, %ViWin** %15, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %18 = bitcast i8* %17 to %ViWin**
  %self7 = load %ViWin*, %ViWin** %18, align 8
  %19 = call i1 @ViWin_equals(%ViWin* %16, %ViWin* %self7)
  %andand = and i1 %eqtmpX, %19
  store i1 %andand, i1* %andand_result_var5, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %entry
  %andand_result_value = load i1, i1* %andand_result_var5, align 1
  store i1 %andand_result_value, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then8, label %cond_jump_end9

cond_jump_then8:                                  ; preds = %cond_jump_end
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %21 = bitcast i8* %20 to %Vi**
  %nvi10 = load %Vi*, %Vi** %21, align 8
  %22 = getelementptr inbounds %Vi, %Vi* %nvi10, i32 0, i32 10
  %23 = load %ViFiler*, %ViFiler** %22, align 8
  %24 = getelementptr inbounds %ViFiler, %ViFiler* %23, i32 0, i32 6
  %25 = load i1, i1* %24, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %25, false
  %andand11 = and i1 %andand_result_value, %LOGICAL_DIANEAL
  store i1 %andand11, i1* %andand_result_var, align 1
  br label %cond_jump_end9

cond_jump_end9:                                   ; preds = %cond_jump_then8, %cond_jump_end
  %andand_result_value12 = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value12, label %cond_jump_then13, label %cond_else_block

cond_jump_then13:                                 ; preds = %cond_jump_end9
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %27 = bitcast i8* %26 to i32**
  %line14 = load i32*, i32** %27, align 8
  %28 = call i32 @wstring_length(i32* %line14)
  %eqtmpX15 = icmp eq i32 %28, 0
  br i1 %eqtmpX15, label %cond_jump_then16, label %"cond_jump_elif0\0A"

cond_else_block:                                  ; preds = %cond_jump_end9
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %30 = bitcast i8* %29 to %ViWin**
  %self88 = load %ViWin*, %ViWin** %30, align 8
  %31 = getelementptr inbounds %ViWin, %ViWin* %self88, i32 0, i32 0
  %32 = load %_win_st*, %_win_st** %31, align 8
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %34 = bitcast i8* %33 to i32*
  %it289 = load i32, i32* %34, align 4
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %36 = bitcast i8* %35 to i32**
  %line90 = load i32*, i32** %36, align 8
  %37 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %32, i32 %it289, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.41, i32 0, i32 0), i32* %line90)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_end18
  %38 = load i32*, i32** %line, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %cond_then_block91, label %cond_end92

cond_jump_then16:                                 ; preds = %cond_jump_then13
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %42 = bitcast i8* %41 to %ViWin**
  %self19 = load %ViWin*, %ViWin** %42, align 8
  %43 = getelementptr inbounds %ViWin, %ViWin* %self19, i32 0, i32 0
  %44 = load %_win_st*, %_win_st** %43, align 8
  %45 = call i32 @wattr_on(%_win_st* %44, i64 262144, i8* null)
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %47 = bitcast i8* %46 to %ViWin**
  %self20 = load %ViWin*, %ViWin** %47, align 8
  %48 = getelementptr inbounds %ViWin, %ViWin* %self20, i32 0, i32 0
  %49 = load %_win_st*, %_win_st** %48, align 8
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %51 = bitcast i8* %50 to i32*
  %it221 = load i32, i32* %51, align 4
  %52 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %49, i32 %it221, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_string.35, i32 0, i32 0))
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %54 = bitcast i8* %53 to %ViWin**
  %self22 = load %ViWin*, %ViWin** %54, align 8
  %55 = getelementptr inbounds %ViWin, %ViWin* %self22, i32 0, i32 0
  %56 = load %_win_st*, %_win_st** %55, align 8
  %57 = call i32 @wattr_off(%_win_st* %56, i64 262144, i8* null)
  br label %cond_end18

"cond_jump_elif0\0A":                             ; preds = %cond_jump_then13
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %59 = bitcast i8* %58 to %ViWin**
  %self23 = load %ViWin*, %ViWin** %59, align 8
  %60 = getelementptr inbounds %ViWin, %ViWin* %self23, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %63 = bitcast i8* %62 to i32**
  %line24 = load i32*, i32** %63, align 8
  %64 = call i32 @wstring_length(i32* %line24)
  %eqtmpX25 = icmp eq i32 %61, %64
  br i1 %eqtmpX25, label %"cond_jump_elif_then0\0A", label %cond_else_block17

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %66 = bitcast i8* %65 to %ViWin**
  %self26 = load %ViWin*, %ViWin** %66, align 8
  %67 = getelementptr inbounds %ViWin, %ViWin* %self26, i32 0, i32 0
  %68 = load %_win_st*, %_win_st** %67, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %70 = bitcast i8* %69 to i32*
  %it227 = load i32, i32* %70, align 4
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %72 = bitcast i8* %71 to i32**
  %line28 = load i32*, i32** %72, align 8
  %73 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %68, i32 %it227, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.36, i32 0, i32 0), i32* %line28)
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %75 = bitcast i8* %74 to i32**
  %line29 = load i32*, i32** %75, align 8
  %76 = call i32* @wstring_printable(i32* %line29)
  %line2 = alloca i32*
  %77 = bitcast i32** %line2 to i8*
  store i8* %77, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store i32* %76, i32** %line2, align 8
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %79 = bitcast i8* %78 to %ViWin**
  %self30 = load %ViWin*, %ViWin** %79, align 8
  %80 = getelementptr inbounds %ViWin, %ViWin* %self30, i32 0, i32 0
  %81 = load %_win_st*, %_win_st** %80, align 8
  %82 = call i32 @wattr_on(%_win_st* %81, i64 262144, i8* null)
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %84 = bitcast i8* %83 to %ViWin**
  %self31 = load %ViWin*, %ViWin** %84, align 8
  %85 = getelementptr inbounds %ViWin, %ViWin* %self31, i32 0, i32 0
  %86 = load %_win_st*, %_win_st** %85, align 8
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %88 = bitcast i8* %87 to i32*
  %it232 = load i32, i32* %88, align 4
  %line233 = load i32*, i32** %line2, align 8
  %line234 = load i32*, i32** %line2, align 8
  %89 = call i32 @wstring_length(i32* %line234)
  %sext14 = sext i32 %89 to i64
  %90 = call i32 @wcswidth(i32* %line233, i64 %sext14)
  %91 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %86, i32 %it232, i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_string.37, i32 0, i32 0))
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %93 = bitcast i8* %92 to %ViWin**
  %self35 = load %ViWin*, %ViWin** %93, align 8
  %94 = getelementptr inbounds %ViWin, %ViWin* %self35, i32 0, i32 0
  %95 = load %_win_st*, %_win_st** %94, align 8
  %96 = call i32 @wattr_off(%_win_st* %95, i64 262144, i8* null)
  %97 = load i32*, i32** %line2, align 8
  %98 = ptrtoint i32* %97 to i64
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %cond_then_block, label %cond_end36

cond_else_block17:                                ; preds = %"cond_jump_elif0\0A"
  %x = alloca i32
  %100 = bitcast i32* %x to i8*
  store i8* %100, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store i32 0, i32* %x, align 4
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %102 = bitcast i8* %101 to i32**
  %line37 = load i32*, i32** %102, align 8
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %104 = bitcast i8* %103 to %ViWin**
  %self38 = load %ViWin*, %ViWin** %104, align 8
  %105 = getelementptr inbounds %ViWin, %ViWin* %self38, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i32* @wstring_substring(i32* %line37, i32 0, i32 %106)
  %head_string = alloca i32*
  %108 = bitcast i32** %head_string to i8*
  store i8* %108, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  store i32* %107, i32** %head_string, align 8
  %head_string39 = load i32*, i32** %head_string, align 8
  %109 = call i32* @wstring_printable(i32* %head_string39)
  %printable_head_string = alloca i32*
  %110 = bitcast i32** %printable_head_string to i8*
  store i8* %110, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  store i32* %109, i32** %printable_head_string, align 8
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %112 = bitcast i8* %111 to %ViWin**
  %self40 = load %ViWin*, %ViWin** %112, align 8
  %113 = getelementptr inbounds %ViWin, %ViWin* %self40, i32 0, i32 0
  %114 = load %_win_st*, %_win_st** %113, align 8
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %116 = bitcast i8* %115 to i32*
  %it241 = load i32, i32* %116, align 4
  %printable_head_string42 = load i32*, i32** %printable_head_string, align 8
  %117 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %114, i32 %it241, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.38, i32 0, i32 0), i32* %printable_head_string42)
  %x43 = load i32, i32* %x, align 4
  %printable_head_string44 = load i32*, i32** %printable_head_string, align 8
  %printable_head_string45 = load i32*, i32** %printable_head_string, align 8
  %118 = call i32 @wstring_length(i32* %printable_head_string45)
  %sext1446 = sext i32 %118 to i64
  %119 = call i32 @wcswidth(i32* %printable_head_string44, i64 %sext1446)
  %addtmp = add nsw i32 %x43, %119
  store i32 %addtmp, i32* %x, align 4
  %printable_head_string47 = load i32*, i32** %printable_head_string, align 8
  %printable_head_string48 = load i32*, i32** %printable_head_string, align 8
  %120 = call i32 @wstring_length(i32* %printable_head_string48)
  %sext1449 = sext i32 %120 to i64
  %121 = call i32 @wcswidth(i32* %printable_head_string47, i64 %sext1449)
  %subttmp50 = sub nsw i32 %addtmp, %121
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %123 = bitcast i8* %122 to i32**
  %line51 = load i32*, i32** %123, align 8
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %125 = bitcast i8* %124 to %ViWin**
  %self52 = load %ViWin*, %ViWin** %125, align 8
  %126 = getelementptr inbounds %ViWin, %ViWin* %self52, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %129 = bitcast i8* %128 to %ViWin**
  %self53 = load %ViWin*, %ViWin** %129, align 8
  %130 = getelementptr inbounds %ViWin, %ViWin* %self53, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %addtmp54 = add nsw i32 %131, 1
  %132 = call i32* @wstring_substring(i32* %line51, i32 %127, i32 %addtmp54)
  %cursor_string = alloca i32*
  %133 = bitcast i32** %cursor_string to i8*
  store i8* %133, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store i32* %132, i32** %cursor_string, align 8
  %cursor_string55 = load i32*, i32** %cursor_string, align 8
  %134 = call i32* @wstring_printable(i32* %cursor_string55)
  %printable_cursor_string = alloca i32*
  %135 = bitcast i32** %printable_cursor_string to i8*
  store i8* %135, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store i32* %134, i32** %printable_cursor_string, align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %137 = bitcast i8* %136 to %ViWin**
  %self56 = load %ViWin*, %ViWin** %137, align 8
  %138 = getelementptr inbounds %ViWin, %ViWin* %self56, i32 0, i32 0
  %139 = load %_win_st*, %_win_st** %138, align 8
  %140 = call i32 @wattr_on(%_win_st* %139, i64 262144, i8* null)
  %141 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %142 = bitcast i8* %141 to %ViWin**
  %self57 = load %ViWin*, %ViWin** %142, align 8
  %143 = getelementptr inbounds %ViWin, %ViWin* %self57, i32 0, i32 0
  %144 = load %_win_st*, %_win_st** %143, align 8
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %146 = bitcast i8* %145 to i32*
  %it258 = load i32, i32* %146, align 4
  %x59 = load i32, i32* %x, align 4
  %printable_cursor_string60 = load i32*, i32** %printable_cursor_string, align 8
  %147 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %144, i32 %it258, i32 %x59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.39, i32 0, i32 0), i32* %printable_cursor_string60)
  %148 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %149 = bitcast i8* %148 to %ViWin**
  %self61 = load %ViWin*, %ViWin** %149, align 8
  %150 = getelementptr inbounds %ViWin, %ViWin* %self61, i32 0, i32 0
  %151 = load %_win_st*, %_win_st** %150, align 8
  %152 = call i32 @wattr_off(%_win_st* %151, i64 262144, i8* null)
  %x62 = load i32, i32* %x, align 4
  %printable_cursor_string63 = load i32*, i32** %printable_cursor_string, align 8
  %printable_cursor_string64 = load i32*, i32** %printable_cursor_string, align 8
  %153 = call i32 @wstring_length(i32* %printable_cursor_string64)
  %sext1465 = sext i32 %153 to i64
  %154 = call i32 @wcswidth(i32* %printable_cursor_string63, i64 %sext1465)
  %addtmp66 = add nsw i32 %x62, %154
  store i32 %addtmp66, i32* %x, align 4
  %printable_cursor_string67 = load i32*, i32** %printable_cursor_string, align 8
  %printable_cursor_string68 = load i32*, i32** %printable_cursor_string, align 8
  %155 = call i32 @wstring_length(i32* %printable_cursor_string68)
  %sext1469 = sext i32 %155 to i64
  %156 = call i32 @wcswidth(i32* %printable_cursor_string67, i64 %sext1469)
  %subttmp70 = sub nsw i32 %addtmp66, %156
  %157 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %158 = bitcast i8* %157 to i32**
  %line71 = load i32*, i32** %158, align 8
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %160 = bitcast i8* %159 to %ViWin**
  %self72 = load %ViWin*, %ViWin** %160, align 8
  %161 = getelementptr inbounds %ViWin, %ViWin* %self72, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %addtmp73 = add nsw i32 %162, 1
  %163 = call i32* @wstring_substring(i32* %line71, i32 %addtmp73, i32 -1)
  %tail_string = alloca i32*
  %164 = bitcast i32** %tail_string to i8*
  store i8* %164, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  store i32* %163, i32** %tail_string, align 8
  %165 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %166 = bitcast i8* %165 to %ViWin**
  %self74 = load %ViWin*, %ViWin** %166, align 8
  %167 = getelementptr inbounds %ViWin, %ViWin* %self74, i32 0, i32 0
  %168 = load %_win_st*, %_win_st** %167, align 8
  %169 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %170 = bitcast i8* %169 to i32*
  %it275 = load i32, i32* %170, align 4
  %x76 = load i32, i32* %x, align 4
  %tail_string77 = load i32*, i32** %tail_string, align 8
  %171 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %168, i32 %it275, i32 %x76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.40, i32 0, i32 0), i32* %tail_string77)
  %172 = load i32*, i32** %head_string, align 8
  %173 = ptrtoint i32* %172 to i64
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %cond_then_block78, label %cond_end79

cond_end18:                                       ; preds = %cond_end87, %cond_end36, %cond_jump_then16
  br label %cond_end

cond_then_block:                                  ; preds = %"cond_jump_elif_then0\0A"
  br label %cond_end36

cond_end36:                                       ; preds = %cond_then_block, %"cond_jump_elif_then0\0A"
  %175 = bitcast i32* %97 to i8*
  call void @xfree(i8* %175)
  br label %cond_end18

cond_then_block78:                                ; preds = %cond_else_block17
  br label %cond_end79

cond_end79:                                       ; preds = %cond_then_block78, %cond_else_block17
  %176 = bitcast i32* %172 to i8*
  call void @xfree(i8* %176)
  %177 = load i32*, i32** %tail_string, align 8
  %178 = ptrtoint i32* %177 to i64
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %cond_then_block80, label %cond_end81

cond_then_block80:                                ; preds = %cond_end79
  br label %cond_end81

cond_end81:                                       ; preds = %cond_then_block80, %cond_end79
  %180 = bitcast i32* %177 to i8*
  call void @xfree(i8* %180)
  %181 = load i32*, i32** %cursor_string, align 8
  %182 = ptrtoint i32* %181 to i64
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %cond_then_block82, label %cond_end83

cond_then_block82:                                ; preds = %cond_end81
  br label %cond_end83

cond_end83:                                       ; preds = %cond_then_block82, %cond_end81
  %184 = bitcast i32* %181 to i8*
  call void @xfree(i8* %184)
  %185 = load i32*, i32** %printable_head_string, align 8
  %186 = ptrtoint i32* %185 to i64
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %cond_then_block84, label %cond_end85

cond_then_block84:                                ; preds = %cond_end83
  br label %cond_end85

cond_end85:                                       ; preds = %cond_then_block84, %cond_end83
  %188 = bitcast i32* %185 to i8*
  call void @xfree(i8* %188)
  %189 = load i32*, i32** %printable_cursor_string, align 8
  %190 = ptrtoint i32* %189 to i64
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %cond_then_block86, label %cond_end87

cond_then_block86:                                ; preds = %cond_end85
  br label %cond_end87

cond_end87:                                       ; preds = %cond_then_block86, %cond_end85
  %192 = bitcast i32* %189 to i8*
  call void @xfree(i8* %192)
  br label %cond_end18

cond_then_block91:                                ; preds = %cond_end
  br label %cond_end92

cond_end92:                                       ; preds = %cond_then_block91, %cond_end
  %193 = bitcast i32* %38 to i8*
  call void @xfree(i8* %193)
  %194 = bitcast [8192 x i8*]* %lvtable to i8*
  %195 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %194, i64 65536)
  ret void
}

define void @"list_each_intp4_vi++15filer"(%list__intp* %self, void (i32*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %block_2 = alloca void (i32*, i32, i1*)*
  store void (i32*, i32, i1*)* %block_, void (i32*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i32*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 0
  %5 = load %list_item__intp*, %list_item__intp** %4, align 8
  %it_ = alloca %list_item__intp*
  %6 = bitcast %list_item__intp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store %list_item__intp* %5, %list_item__intp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__intp*, %list_item__intp** %it_, align 8
  %noteqtmp = icmp ne %list_item__intp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %10 = bitcast i8* %9 to void (i32*, i32, i1*)**
  %block_5 = load void (i32*, i32, i1*)*, void (i32*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it_6 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %16 = bitcast i8* %15 to i32*
  %i_7 = load i32, i32* %16, align 4
  %end_flag_8 = load i1, i1* %end_flag_, align 1
  call void %block_5(i32* %14, i32 %i_7, i1* %end_flag_)
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_9, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %20 = bitcast i8* %19 to %list_item__intp**
  %it_10 = load %list_item__intp*, %list_item__intp** %20, align 8
  %21 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_10, i32 0, i32 2
  %22 = load %list_item__intp*, %list_item__intp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %24 = bitcast i8* %23 to %list_item__intp**
  store %list_item__intp* %22, %list_item__intp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @"list_finalize_intp5_vi++15filer"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %eqtmpX = icmp eq %list__intp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %5 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 0
  %6 = load %list_item__intp*, %list_item__intp** %5, align 8
  %it = alloca %list_item__intp*
  %7 = bitcast %list_item__intp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store %list_item__intp* %6, %list_item__intp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %25 = bitcast i8* %24 to %list_item__intp**
  store %list_item__intp* %23, %list_item__intp** %25, align 8
  %prev_it12 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %26 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %27 = ptrtoint %list_item__intp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  %29 = bitcast i32* %14 to i8*
  call void @xfree(i8* %29)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %30 = bitcast %list_item__intp* %26 to i8*
  call void @xfree(i8* %30)
  br label %loop_top_block
}

define i1 @ViFiler_cd(%ViFiler* %self, i8* %cwd) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViFiler*
  store %ViFiler* %self, %ViFiler** %self1, align 8
  %2 = bitcast %ViFiler** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %cwd2 = alloca i8*
  store i8* %cwd, i8** %cwd2, align 8
  %3 = bitcast i8** %cwd2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %self3 = load %ViFiler*, %ViFiler** %self1, align 8
  %cwd4 = load i8*, i8** %cwd2, align 8
  %4 = call i8* @string(i8* %cwd4)
  %5 = getelementptr inbounds %ViFiler, %ViFiler* %self3, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %6)
  store i8* %4, i8** %5, align 8
  %self5 = load %ViFiler*, %ViFiler** %self1, align 8
  %9 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.43, i32 0, i32 0), i32 86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.45, i32 0, i32 0))
  %10 = bitcast i8* %9 to %list__charp*
  %11 = call %list__charp* @"list_initialize_charp7_vi++15filer"(%list__charp* %10)
  %12 = getelementptr inbounds %ViFiler, %ViFiler* %self5, i32 0, i32 1
  %13 = load %list__charp*, %list__charp** %12, align 8
  %14 = ptrtoint %list__charp* %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %cond_then_block6, label %cond_end7

cond_then_block6:                                 ; preds = %cond_end
  br label %cond_end7

cond_end7:                                        ; preds = %cond_then_block6, %cond_end
  call void @"list_finalize_charp8_vi++15filer"(%list__charp* %13)
  %16 = bitcast %list__charp* %13 to i8*
  call void @xfree(i8* %16)
  store %list__charp* %11, %list__charp** %12, align 8
  %cwd8 = load i8*, i8** %cwd2, align 8
  %17 = call %__dirstream* @opendir(i8* %cwd8)
  %dir = alloca %__dirstream*
  %18 = bitcast %__dirstream** %dir to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store %__dirstream* %17, %__dirstream** %dir, align 8
  %dir9 = load %__dirstream*, %__dirstream** %dir, align 8
  %eqtmpX = icmp eq %__dirstream* %dir9, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end10

cond_jump_then:                                   ; preds = %cond_end7
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %cond_end7
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end17, %cond_end10
  br i1 true, label %cond_then_block11, label %cond_end_block

cond_then_block11:                                ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %22 = bitcast i8* %21 to %__dirstream**
  %dir12 = load %__dirstream*, %__dirstream** %22, align 8
  %23 = call %dirent* @readdir(%__dirstream* %dir12)
  %entry13 = alloca %dirent*
  %24 = bitcast %dirent** %entry13 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store %dirent* %23, %dirent** %entry13, align 8
  %entry14 = load %dirent*, %dirent** %entry13, align 8
  %eqtmpX15 = icmp eq %dirent* %entry14, null
  br i1 %eqtmpX15, label %cond_jump_then16, label %cond_end17

cond_end_block:                                   ; preds = %cond_jump_then16, %loop_top_block
  %dir20 = load %__dirstream*, %__dirstream** %dir, align 8
  %25 = call i32 @closedir(%__dirstream* %dir20)
  %self21 = load %ViFiler*, %ViFiler** %self1, align 8
  %self22 = load %ViFiler*, %ViFiler** %self1, align 8
  %26 = getelementptr inbounds %ViFiler, %ViFiler* %self22, i32 0, i32 1
  %27 = load %list__charp*, %list__charp** %26, align 8
  %28 = call %list__charp* @"list_sort_block_charp11_vi++15filer"(%list__charp* %27, i32 (i8*, i8*)* @"vi++15filer_lambda1")
  %29 = getelementptr inbounds %ViFiler, %ViFiler* %self21, i32 0, i32 1
  %30 = load %list__charp*, %list__charp** %29, align 8
  %31 = ptrtoint %list__charp* %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %cond_then_block23, label %cond_end24

cond_jump_then16:                                 ; preds = %cond_then_block11
  br label %cond_end_block

cond_end17:                                       ; preds = %after_break, %cond_then_block11
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %34 = bitcast i8* %33 to %ViFiler**
  %self18 = load %ViFiler*, %ViFiler** %34, align 8
  %35 = getelementptr inbounds %ViFiler, %ViFiler* %self18, i32 0, i32 1
  %36 = load %list__charp*, %list__charp** %35, align 8
  %entry19 = load %dirent*, %dirent** %entry13, align 8
  %37 = getelementptr inbounds %dirent, %dirent* %entry19, i32 0, i32 4
  %38 = bitcast [256 x i8]* %37 to i8*
  %39 = call i8* @string(i8* %38)
  call void @"list_push_back_charp10_vi++15filer"(%list__charp* %36, i8* %39)
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end17

cond_then_block23:                                ; preds = %cond_end_block
  br label %cond_end24

cond_end24:                                       ; preds = %cond_then_block23, %cond_end_block
  call void @"list_finalize_charp51_vi++15filer"(%list__charp* %30)
  %40 = bitcast %list__charp* %30 to i8*
  call void @xfree(i8* %40)
  store %list__charp* %28, %list__charp** %29, align 8
  %41 = bitcast [8192 x i8*]* %lvtable to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret i1 true
}

define %list__charp* @"list_initialize_charp7_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  store %list_item__charp* null, %list_item__charp** %3, align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %4, align 8
  %self4 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__charp* %self5
}

define void @"list_finalize_charp8_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define void @"list_push_back_charp10_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.46, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.47, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.48, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.49, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.50, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.51, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.52, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.53, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.54, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.55, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.56, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.57, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define i32 @"vi++15filer_lambda1"(i8* %it, i8* %it2) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %it22 = alloca i8*
  store i8* %it2, i8** %it22, align 8
  %3 = bitcast i8** %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %it3 = load i8*, i8** %it1, align 8
  %4 = call i32 @strcmp(i8* %it3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_string.62, i32 0, i32 0))
  %eqtmpX = icmp eq i32 %4, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 -1

cond_end:                                         ; preds = %entry
  %it24 = load i8*, i8** %it22, align 8
  %7 = call i32 @strcmp(i8* %it24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_string.63, i32 0, i32 0))
  %eqtmpX5 = icmp eq i32 %7, 0
  br i1 %eqtmpX5, label %cond_jump_then6, label %cond_end7

cond_jump_then6:                                  ; preds = %cond_end
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret i32 1

cond_end7:                                        ; preds = %cond_end
  %it8 = load i8*, i8** %it1, align 8
  %10 = call i32 @strcmp(i8* %it8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.64, i32 0, i32 0))
  %eqtmpX9 = icmp eq i32 %10, 0
  br i1 %eqtmpX9, label %cond_jump_then10, label %cond_end11

cond_jump_then10:                                 ; preds = %cond_end7
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret i32 -1

cond_end11:                                       ; preds = %cond_end7
  %it212 = load i8*, i8** %it22, align 8
  %13 = call i32 @strcmp(i8* %it212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.65, i32 0, i32 0))
  %eqtmpX13 = icmp eq i32 %13, 0
  br i1 %eqtmpX13, label %cond_jump_then14, label %cond_end15

cond_jump_then14:                                 ; preds = %cond_end11
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i32 1

cond_end15:                                       ; preds = %cond_end11
  %it16 = load i8*, i8** %it1, align 8
  %it17 = load i8*, i8** %it1, align 8
  %16 = call i64 @strlen(i8* %it17)
  %17 = ptrtoint i8* %it16 to i64
  %multtmp = mul nsw i64 %16, 1
  %addtmp = add nsw i64 %17, %multtmp
  %18 = inttoptr i64 %addtmp to i8*
  %p = alloca i8*
  %19 = bitcast i8** %p to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i8* %18, i8** %p, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end23, %cond_end15
  %p18 = load i8*, i8** %p, align 8
  %it19 = load i8*, i8** %it1, align 8
  %getmp = icmp sge i8* %p18, %it19
  br i1 %getmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %21 = bitcast i8* %20 to i8**
  %p20 = load i8*, i8** %21, align 8
  %derefference_value = load i8, i8* %p20, align 8
  %eqtmpX21 = icmp eq i8 %derefference_value, 46
  br i1 %eqtmpX21, label %cond_jump_then22, label %cond_else_block

cond_end_block:                                   ; preds = %cond_jump_then22, %loop_top_block
  %p26 = load i8*, i8** %p, align 8
  %it27 = load i8*, i8** %it1, align 8
  %22 = ptrtoint i8* %p26 to i64
  %23 = ptrtoint i8* %it27 to i64
  %subtmp28 = sub nsw i64 %22, %23
  %24 = trunc i64 %subtmp28 to i32
  %name_len = alloca i32
  %25 = bitcast i32* %name_len to i8*
  store i8* %25, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store i32 %24, i32* %name_len, align 4
  %it229 = load i8*, i8** %it22, align 8
  %it230 = load i8*, i8** %it22, align 8
  %26 = call i64 @strlen(i8* %it230)
  %27 = ptrtoint i8* %it229 to i64
  %multtmp31 = mul nsw i64 %26, 1
  %addtmp32 = add nsw i64 %27, %multtmp31
  %28 = inttoptr i64 %addtmp32 to i8*
  %p2 = alloca i8*
  %29 = bitcast i8** %p2 to i8*
  store i8* %29, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store i8* %28, i8** %p2, align 8
  br label %loop_top_block33

cond_jump_then22:                                 ; preds = %cond_then_block
  br label %cond_end_block

cond_else_block:                                  ; preds = %cond_then_block
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %31 = bitcast i8* %30 to i8**
  %p24 = load i8*, i8** %31, align 8
  %32 = ptrtoint i8* %p24 to i64
  %subtmp = sub nsw i64 %32, 1
  %33 = inttoptr i64 %subtmp to i8*
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = ptrtoint i8* %33 to i64
  %addtmp25 = add nsw i64 %36, 1
  %37 = inttoptr i64 %addtmp25 to i8*
  br label %cond_end23

cond_end23:                                       ; preds = %cond_else_block, %after_break
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end23

loop_top_block33:                                 ; preds = %cond_end44, %cond_end_block
  %p234 = load i8*, i8** %p2, align 8
  %it235 = load i8*, i8** %it22, align 8
  %getmp36 = icmp sge i8* %p234, %it235
  br i1 %getmp36, label %cond_then_block37, label %cond_end_block38

cond_then_block37:                                ; preds = %loop_top_block33
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %39 = bitcast i8* %38 to i8**
  %p239 = load i8*, i8** %39, align 8
  %derefference_value40 = load i8, i8* %p239, align 8
  %eqtmpX41 = icmp eq i8 %derefference_value40, 46
  br i1 %eqtmpX41, label %cond_jump_then42, label %cond_else_block43

cond_end_block38:                                 ; preds = %cond_jump_then42, %loop_top_block33
  %p249 = load i8*, i8** %p2, align 8
  %it250 = load i8*, i8** %it22, align 8
  %40 = ptrtoint i8* %p249 to i64
  %41 = ptrtoint i8* %it250 to i64
  %subtmp51 = sub nsw i64 %40, %41
  %42 = trunc i64 %subtmp51 to i32
  %name_len2 = alloca i32
  %43 = bitcast i32* %name_len2 to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store i32 %42, i32* %name_len2, align 4
  %andand_result_var = alloca i1
  %name_len52 = load i32, i32* %name_len, align 4
  %eqtmpX53 = icmp eq i32 %name_len52, 0
  store i1 %eqtmpX53, i1* %andand_result_var, align 1
  br i1 %eqtmpX53, label %cond_jump_then54, label %cond_jump_end

cond_jump_then42:                                 ; preds = %cond_then_block37
  br label %cond_end_block38

cond_else_block43:                                ; preds = %cond_then_block37
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %45 = bitcast i8* %44 to i8**
  %p246 = load i8*, i8** %45, align 8
  %46 = ptrtoint i8* %p246 to i64
  %subtmp47 = sub nsw i64 %46, 1
  %47 = inttoptr i64 %subtmp47 to i8*
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %49 = bitcast i8* %48 to i8**
  store i8* %47, i8** %49, align 8
  %50 = ptrtoint i8* %47 to i64
  %addtmp48 = add nsw i64 %50, 1
  %51 = inttoptr i64 %addtmp48 to i8*
  br label %cond_end44

cond_end44:                                       ; preds = %cond_else_block43, %after_break45
  br label %loop_top_block33

after_break45:                                    ; No predecessors!
  br label %cond_end44

cond_jump_then54:                                 ; preds = %cond_end_block38
  %name_len255 = load i32, i32* %name_len2, align 4
  %eqtmpX56 = icmp eq i32 %name_len255, 0
  %andand = and i1 %eqtmpX53, %eqtmpX56
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then54, %cond_end_block38
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then57, label %cond_end58

cond_jump_then57:                                 ; preds = %cond_jump_end
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %53 = bitcast i8* %52 to i8**
  %it59 = load i8*, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %55 = bitcast i8* %54 to i8**
  %it260 = load i8*, i8** %55, align 8
  %56 = call i32 @strcmp(i8* %it59, i8* %it260)
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret i32 %56

cond_end58:                                       ; preds = %cond_jump_end
  %name_len61 = load i32, i32* %name_len, align 4
  %eqtmpX62 = icmp eq i32 %name_len61, 0
  br i1 %eqtmpX62, label %cond_jump_then63, label %cond_end64

cond_jump_then63:                                 ; preds = %cond_end58
  %59 = bitcast [8192 x i8*]* %lvtable to i8*
  %60 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %59, i64 65536)
  ret i32 -1

cond_end64:                                       ; preds = %cond_end58
  %name_len265 = load i32, i32* %name_len2, align 4
  %eqtmpX66 = icmp eq i32 %name_len265, 0
  br i1 %eqtmpX66, label %cond_jump_then67, label %cond_end68

cond_jump_then67:                                 ; preds = %cond_end64
  %61 = bitcast [8192 x i8*]* %lvtable to i8*
  %62 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %61, i64 65536)
  ret i32 1

cond_end68:                                       ; preds = %cond_end64
  %it69 = load i8*, i8** %it1, align 8
  %name_len70 = load i32, i32* %name_len, align 4
  %addtmp71 = add nsw i32 %name_len70, 1
  %63 = call i8* @string_substring(i8* %it69, i32 %addtmp71, i32 -1)
  %ext_name = alloca i8*
  %64 = bitcast i8** %ext_name to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  store i8* %63, i8** %ext_name, align 8
  %it272 = load i8*, i8** %it22, align 8
  %name_len273 = load i32, i32* %name_len2, align 4
  %addtmp74 = add nsw i32 %name_len273, 1
  %65 = call i8* @string_substring(i8* %it272, i32 %addtmp74, i32 -1)
  %ext_name2 = alloca i8*
  %66 = bitcast i8** %ext_name2 to i8*
  store i8* %66, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  store i8* %65, i8** %ext_name2, align 8
  %ext_name75 = load i8*, i8** %ext_name, align 8
  %ext_name276 = load i8*, i8** %ext_name2, align 8
  %67 = call i32 @strcmp(i8* %ext_name75, i8* %ext_name276)
  %noteqtmp = icmp ne i32 %67, 0
  br i1 %noteqtmp, label %cond_jump_then77, label %cond_end78

cond_jump_then77:                                 ; preds = %cond_end68
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %69 = bitcast i8* %68 to i8**
  %ext_name79 = load i8*, i8** %69, align 8
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %71 = bitcast i8* %70 to i8**
  %ext_name280 = load i8*, i8** %71, align 8
  %72 = call i32 @strcmp(i8* %ext_name79, i8* %ext_name280)
  %73 = bitcast [8192 x i8*]* %lvtable to i8*
  %74 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %73, i64 65536)
  %75 = load i8*, i8** %ext_name, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %cond_then_block81, label %cond_end82

cond_end78:                                       ; preds = %cond_end68
  %it85 = load i8*, i8** %it1, align 8
  %it286 = load i8*, i8** %it22, align 8
  %78 = call i32 @strcmp(i8* %it85, i8* %it286)
  %79 = bitcast [8192 x i8*]* %lvtable to i8*
  %80 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %79, i64 65536)
  %81 = load i8*, i8** %ext_name, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %cond_then_block87, label %cond_end88

cond_then_block81:                                ; preds = %cond_jump_then77
  br label %cond_end82

cond_end82:                                       ; preds = %cond_then_block81, %cond_jump_then77
  call void @xfree(i8* %75)
  %84 = load i8*, i8** %ext_name2, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %cond_then_block83, label %cond_end84

cond_then_block83:                                ; preds = %cond_end82
  br label %cond_end84

cond_end84:                                       ; preds = %cond_then_block83, %cond_end82
  call void @xfree(i8* %84)
  ret i32 %72

cond_then_block87:                                ; preds = %cond_end78
  br label %cond_end88

cond_end88:                                       ; preds = %cond_then_block87, %cond_end78
  call void @xfree(i8* %81)
  %87 = load i8*, i8** %ext_name2, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %cond_then_block89, label %cond_end90

cond_then_block89:                                ; preds = %cond_end88
  br label %cond_end90

cond_end90:                                       ; preds = %cond_then_block89, %cond_end88
  call void @xfree(i8* %87)
  ret i32 %78
}

define %list__charp* @"list_sort_block_charp11_vi++15filer"(%list__charp* %self, i32 (i8*, i8*)* %compare) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %compare2 = alloca i32 (i8*, i8*)*
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare2, align 8
  %3 = bitcast i32 (i8*, i8*)** %compare2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %compare4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare2, align 8
  %4 = call %list__charp* @"list_merge_sort2_charp12_vi++15filer"(%list__charp* %self3, i32 (i8*, i8*)* %compare4)
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret %list__charp* %4
}

define %list__charp* @"list_merge_sort2_charp12_vi++15filer"(%list__charp* %self, i32 (i8*, i8*)* %compare) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %compare2 = alloca i32 (i8*, i8*)*
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare2, align 8
  %3 = bitcast i32 (i8*, i8*)** %compare2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %5 = load %list_item__charp*, %list_item__charp** %4, align 8
  %eqtmpX = icmp eq %list_item__charp* %5, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %7 = bitcast i8* %6 to %list__charp**
  %self4 = load %list__charp*, %list__charp** %7, align 8
  %8 = call %list__charp* @"list_clone_charp13_vi++15filer"(%list__charp* %self4)
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret %list__charp* %8

cond_end:                                         ; preds = %entry
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %11 = getelementptr inbounds %list__charp, %list__charp* %self5, i32 0, i32 0
  %12 = load %list_item__charp*, %list_item__charp** %11, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %12, i32 0, i32 2
  %14 = load %list_item__charp*, %list_item__charp** %13, align 8
  %eqtmpX6 = icmp eq %list_item__charp* %14, null
  br i1 %eqtmpX6, label %cond_jump_then7, label %cond_end8

cond_jump_then7:                                  ; preds = %cond_end
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %16 = bitcast i8* %15 to %list__charp**
  %self9 = load %list__charp*, %list__charp** %16, align 8
  %17 = call %list__charp* @"list_clone_charp17_vi++15filer"(%list__charp* %self9)
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %list__charp* %17

cond_end8:                                        ; preds = %cond_end
  %20 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.122, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.123, i32 0, i32 0), i32 1401, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.124, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.125, i32 0, i32 0))
  %21 = bitcast i8* %20 to %list__charp*
  %22 = call %list__charp* @"list_initialize_charp21_vi++15filer"(%list__charp* %21)
  %list1 = alloca %list__charp*
  %23 = bitcast %list__charp** %list1 to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store %list__charp* %22, %list__charp** %list1, align 8
  %24 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.126, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.127, i32 0, i32 0), i32 1402, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.128, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.129, i32 0, i32 0))
  %25 = bitcast i8* %24 to %list__charp*
  %26 = call %list__charp* @"list_initialize_charp22_vi++15filer"(%list__charp* %25)
  %list2 = alloca %list__charp*
  %27 = bitcast %list__charp** %list2 to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store %list__charp* %26, %list__charp** %list2, align 8
  %self10 = load %list__charp*, %list__charp** %self1, align 8
  %28 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  %29 = load %list_item__charp*, %list_item__charp** %28, align 8
  %it = alloca %list_item__charp*
  %30 = bitcast %list_item__charp** %it to i8*
  store i8* %30, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  store %list_item__charp* %29, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end32, %cond_end8
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then11, label %cond_else_block

cond_end_block:                                   ; preds = %cond_end35, %cond_jump_then26, %loop_top_block
  %list141 = load %list__charp*, %list__charp** %list1, align 8
  %compare42 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare2, align 8
  %31 = call %list__charp* @"list_merge_sort2_charp12_vi++15filer"(%list__charp* %list141, i32 (i8*, i8*)* %compare42)
  %list243 = load %list__charp*, %list__charp** %list2, align 8
  %compare44 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare2, align 8
  %32 = call %list__charp* @"list_merge_sort2_charp12_vi++15filer"(%list__charp* %list243, i32 (i8*, i8*)* %compare44)
  %compare45 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare2, align 8
  %33 = call %list__charp* @"list_merge_list2_charp33_vi++15filer"(%list__charp* %31, %list__charp* %32, i32 (i8*, i8*)* %compare45)
  %34 = bitcast [8192 x i8*]* %lvtable to i8*
  %35 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %34, i64 65536)
  %36 = ptrtoint %list__charp* %31 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %cond_then_block46, label %cond_end47

cond_jump_then11:                                 ; preds = %cond_then_block
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %39 = bitcast i8* %38 to %list__charp**
  %list113 = load %list__charp*, %list__charp** %39, align 8
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %41 = bitcast i8* %40 to %list_item__charp**
  %it14 = load %list_item__charp*, %list_item__charp** %41, align 8
  %42 = getelementptr inbounds %list_item__charp, %list_item__charp* %it14, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %42, align 8
  %45 = call i8* @xmemdup(i8* %44)
  call void @"list_push_back_charp23_vi++15filer"(%list__charp* %list113, i8* %45)
  br label %cond_end12

cond_else_block:                                  ; preds = %cond_then_block
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %47 = bitcast i8* %46 to %list__charp**
  %list115 = load %list__charp*, %list__charp** %47, align 8
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %49 = bitcast i8* %48 to %list_item__charp**
  %it16 = load %list_item__charp*, %list_item__charp** %49, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %it16, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  call void @"list_push_back_charp24_vi++15filer"(%list__charp* %list115, i8* %51)
  br label %cond_end12

cond_end12:                                       ; preds = %cond_else_block, %cond_jump_then11
  br i1 true, label %cond_jump_then17, label %cond_else_block18

cond_jump_then17:                                 ; preds = %cond_end12
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %53 = bitcast i8* %52 to %list__charp**
  %list220 = load %list__charp*, %list__charp** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %55 = bitcast i8* %54 to %list_item__charp**
  %it21 = load %list_item__charp*, %list_item__charp** %55, align 8
  %56 = getelementptr inbounds %list_item__charp, %list_item__charp* %it21, i32 0, i32 2
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %58, align 8
  %61 = call i8* @xmemdup(i8* %60)
  call void @"list_push_back_charp25_vi++15filer"(%list__charp* %list220, i8* %61)
  br label %cond_end19

cond_else_block18:                                ; preds = %cond_end12
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %63 = bitcast i8* %62 to %list__charp**
  %list222 = load %list__charp*, %list__charp** %63, align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %65 = bitcast i8* %64 to %list_item__charp**
  %it23 = load %list_item__charp*, %list_item__charp** %65, align 8
  %66 = getelementptr inbounds %list_item__charp, %list_item__charp* %it23, i32 0, i32 2
  %67 = load %list_item__charp*, %list_item__charp** %66, align 8
  %68 = getelementptr inbounds %list_item__charp, %list_item__charp* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  call void @"list_push_back_charp26_vi++15filer"(%list__charp* %list222, i8* %69)
  br label %cond_end19

cond_end19:                                       ; preds = %cond_else_block18, %cond_jump_then17
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %71 = bitcast i8* %70 to %list_item__charp**
  %it24 = load %list_item__charp*, %list_item__charp** %71, align 8
  %72 = getelementptr inbounds %list_item__charp, %list_item__charp* %it24, i32 0, i32 2
  %73 = load %list_item__charp*, %list_item__charp** %72, align 8
  %74 = getelementptr inbounds %list_item__charp, %list_item__charp* %73, i32 0, i32 2
  %75 = load %list_item__charp*, %list_item__charp** %74, align 8
  %eqtmpX25 = icmp eq %list_item__charp* %75, null
  br i1 %eqtmpX25, label %cond_jump_then26, label %cond_end27

cond_jump_then26:                                 ; preds = %cond_end19
  br label %cond_end_block

cond_end27:                                       ; preds = %after_break, %cond_end19
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %77 = bitcast i8* %76 to %list_item__charp**
  %it28 = load %list_item__charp*, %list_item__charp** %77, align 8
  %78 = getelementptr inbounds %list_item__charp, %list_item__charp* %it28, i32 0, i32 2
  %79 = load %list_item__charp*, %list_item__charp** %78, align 8
  %80 = getelementptr inbounds %list_item__charp, %list_item__charp* %79, i32 0, i32 2
  %81 = load %list_item__charp*, %list_item__charp** %80, align 8
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %83 = bitcast i8* %82 to %list_item__charp**
  store %list_item__charp* %81, %list_item__charp** %83, align 8
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %85 = bitcast i8* %84 to %list_item__charp**
  %it29 = load %list_item__charp*, %list_item__charp** %85, align 8
  %86 = getelementptr inbounds %list_item__charp, %list_item__charp* %it29, i32 0, i32 2
  %87 = load %list_item__charp*, %list_item__charp** %86, align 8
  %eqtmpX30 = icmp eq %list_item__charp* %87, null
  br i1 %eqtmpX30, label %cond_jump_then31, label %cond_end32

after_break:                                      ; No predecessors!
  br label %cond_end27

cond_jump_then31:                                 ; preds = %cond_end27
  br i1 true, label %cond_jump_then33, label %cond_else_block34

cond_end32:                                       ; preds = %after_break40, %cond_end27
  br label %loop_top_block

cond_jump_then33:                                 ; preds = %cond_jump_then31
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %89 = bitcast i8* %88 to %list__charp**
  %list136 = load %list__charp*, %list__charp** %89, align 8
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %91 = bitcast i8* %90 to %list_item__charp**
  %it37 = load %list_item__charp*, %list_item__charp** %91, align 8
  %92 = getelementptr inbounds %list_item__charp, %list_item__charp* %it37, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %92, align 8
  %95 = call i8* @xmemdup(i8* %94)
  call void @"list_push_back_charp27_vi++15filer"(%list__charp* %list136, i8* %95)
  br label %cond_end35

cond_else_block34:                                ; preds = %cond_jump_then31
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %97 = bitcast i8* %96 to %list__charp**
  %list138 = load %list__charp*, %list__charp** %97, align 8
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %99 = bitcast i8* %98 to %list_item__charp**
  %it39 = load %list_item__charp*, %list_item__charp** %99, align 8
  %100 = getelementptr inbounds %list_item__charp, %list_item__charp* %it39, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  call void @"list_push_back_charp28_vi++15filer"(%list__charp* %list138, i8* %101)
  br label %cond_end35

cond_end35:                                       ; preds = %cond_else_block34, %cond_jump_then33
  br label %cond_end_block

after_break40:                                    ; No predecessors!
  br label %cond_end32

cond_then_block46:                                ; preds = %cond_end_block
  br label %cond_end47

cond_end47:                                       ; preds = %cond_then_block46, %cond_end_block
  call void @"list_finalize_charp43_vi++15filer"(%list__charp* %31)
  %102 = bitcast %list__charp* %31 to i8*
  call void @xfree(i8* %102)
  %103 = ptrtoint %list__charp* %32 to i64
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %cond_then_block48, label %cond_end49

cond_then_block48:                                ; preds = %cond_end47
  br label %cond_end49

cond_end49:                                       ; preds = %cond_then_block48, %cond_end47
  call void @"list_finalize_charp45_vi++15filer"(%list__charp* %32)
  %105 = bitcast %list__charp* %32 to i8*
  call void @xfree(i8* %105)
  %106 = load %list__charp*, %list__charp** %list1, align 8
  %107 = ptrtoint %list__charp* %106 to i64
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %cond_then_block50, label %cond_end51

cond_then_block50:                                ; preds = %cond_end49
  br label %cond_end51

cond_end51:                                       ; preds = %cond_then_block50, %cond_end49
  call void @"list_finalize_charp47_vi++15filer"(%list__charp* %106)
  %109 = bitcast %list__charp* %106 to i8*
  call void @xfree(i8* %109)
  %110 = load %list__charp*, %list__charp** %list2, align 8
  %111 = ptrtoint %list__charp* %110 to i64
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %cond_then_block52, label %cond_end53

cond_then_block52:                                ; preds = %cond_end51
  br label %cond_end53

cond_end53:                                       ; preds = %cond_then_block52, %cond_end51
  call void @"list_finalize_charp49_vi++15filer"(%list__charp* %110)
  %113 = bitcast %list__charp* %110 to i8*
  call void @xfree(i8* %113)
  ret %list__charp* %33
}

define %list__charp* @"list_clone_charp13_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.66, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.67, i32 0, i32 0), i32 654, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.68, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_string.69, i32 0, i32 0))
  %4 = bitcast i8* %3 to %list__charp*
  %5 = call %list__charp* @"list_initialize_charp14_vi++15filer"(%list__charp* %4)
  %result = alloca %list__charp*
  %6 = bitcast %list__charp** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list__charp* %5, %list__charp** %result, align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %7 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  %8 = load %list_item__charp*, %list_item__charp** %7, align 8
  %it = alloca %list_item__charp*
  %9 = bitcast %list_item__charp** %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %8, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it3 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it3, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %result9 = load %list__charp*, %list__charp** %result, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %list__charp* %result9

cond_jump_then:                                   ; preds = %cond_then_block
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %13 = bitcast i8* %12 to %list__charp**
  %result4 = load %list__charp*, %list__charp** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %15 = bitcast i8* %14 to %list_item__charp**
  %it5 = load %list_item__charp*, %list_item__charp** %15, align 8
  %16 = getelementptr inbounds %list_item__charp, %list_item__charp* %it5, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %16, align 8
  %19 = call i8* @xmemdup(i8* %18)
  call void @"list_push_back_charp15_vi++15filer"(%list__charp* %result4, i8* %19)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_then_block
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %21 = bitcast i8* %20 to %list__charp**
  %result6 = load %list__charp*, %list__charp** %21, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %23 = bitcast i8* %22 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %23, align 8
  %24 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  call void @"list_push_back_charp16_vi++15filer"(%list__charp* %result6, i8* %25)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %27 = bitcast i8* %26 to %list_item__charp**
  %it8 = load %list_item__charp*, %list_item__charp** %27, align 8
  %28 = getelementptr inbounds %list_item__charp, %list_item__charp* %it8, i32 0, i32 2
  %29 = load %list_item__charp*, %list_item__charp** %28, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %31 = bitcast i8* %30 to %list_item__charp**
  store %list_item__charp* %29, %list_item__charp** %31, align 8
  br label %loop_top_block
}

define %list__charp* @"list_initialize_charp14_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  store %list_item__charp* null, %list_item__charp** %3, align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %4, align 8
  %self4 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__charp* %self5
}

define void @"list_push_back_charp15_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.70, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.71, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.72, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.73, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.74, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.75, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.76, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.77, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.78, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.79, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.80, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.81, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp16_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.82, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.83, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.84, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.85, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.86, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.87, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.88, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.89, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.90, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.91, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.92, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.93, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define %list__charp* @"list_clone_charp17_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.94, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.95, i32 0, i32 0), i32 654, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.96, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_string.97, i32 0, i32 0))
  %4 = bitcast i8* %3 to %list__charp*
  %5 = call %list__charp* @"list_initialize_charp18_vi++15filer"(%list__charp* %4)
  %result = alloca %list__charp*
  %6 = bitcast %list__charp** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list__charp* %5, %list__charp** %result, align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %7 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  %8 = load %list_item__charp*, %list_item__charp** %7, align 8
  %it = alloca %list_item__charp*
  %9 = bitcast %list_item__charp** %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %8, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it3 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it3, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %result9 = load %list__charp*, %list__charp** %result, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %list__charp* %result9

cond_jump_then:                                   ; preds = %cond_then_block
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %13 = bitcast i8* %12 to %list__charp**
  %result4 = load %list__charp*, %list__charp** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %15 = bitcast i8* %14 to %list_item__charp**
  %it5 = load %list_item__charp*, %list_item__charp** %15, align 8
  %16 = getelementptr inbounds %list_item__charp, %list_item__charp* %it5, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %16, align 8
  %19 = call i8* @xmemdup(i8* %18)
  call void @"list_push_back_charp19_vi++15filer"(%list__charp* %result4, i8* %19)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_then_block
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %21 = bitcast i8* %20 to %list__charp**
  %result6 = load %list__charp*, %list__charp** %21, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %23 = bitcast i8* %22 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %23, align 8
  %24 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  call void @"list_push_back_charp20_vi++15filer"(%list__charp* %result6, i8* %25)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %27 = bitcast i8* %26 to %list_item__charp**
  %it8 = load %list_item__charp*, %list_item__charp** %27, align 8
  %28 = getelementptr inbounds %list_item__charp, %list_item__charp* %it8, i32 0, i32 2
  %29 = load %list_item__charp*, %list_item__charp** %28, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %31 = bitcast i8* %30 to %list_item__charp**
  store %list_item__charp* %29, %list_item__charp** %31, align 8
  br label %loop_top_block
}

define %list__charp* @"list_initialize_charp18_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  store %list_item__charp* null, %list_item__charp** %3, align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %4, align 8
  %self4 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__charp* %self5
}

define void @"list_push_back_charp19_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.98, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.99, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.100, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.101, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.102, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.103, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.104, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.105, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.106, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.107, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.108, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.109, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp20_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.110, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.111, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.112, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.113, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.114, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.115, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.116, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.117, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.118, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.119, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.120, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.121, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define %list__charp* @"list_initialize_charp21_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  store %list_item__charp* null, %list_item__charp** %3, align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %4, align 8
  %self4 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__charp* %self5
}

define %list__charp* @"list_initialize_charp22_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  store %list_item__charp* null, %list_item__charp** %3, align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %4, align 8
  %self4 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__charp* %self5
}

define void @"list_push_back_charp23_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.130, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.131, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.132, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.133, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.134, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.135, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.136, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.137, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.138, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.139, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.140, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.141, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp24_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.142, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.143, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.144, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.145, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.146, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.147, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.148, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.149, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.150, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.151, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.152, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.153, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp25_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.154, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.155, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.156, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.157, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.158, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.159, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.160, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.161, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.162, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.163, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.164, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.165, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp26_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.166, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.167, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.168, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.169, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.170, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.171, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.172, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.173, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.174, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.175, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.176, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.177, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp27_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.178, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.179, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.180, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.181, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.182, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.183, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.184, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.185, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.186, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.187, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.188, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.189, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp28_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.190, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.191, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.192, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.193, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.194, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.195, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.196, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.197, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.198, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.199, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.200, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.201, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define %list__charp* @"list_merge_list2_charp33_vi++15filer"(%list__charp* %left, %list__charp* %right, i32 (i8*, i8*)* %compare) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %list__charp*
  store %list__charp* %left, %list__charp** %left1, align 8
  %2 = bitcast %list__charp** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %right2 = alloca %list__charp*
  store %list__charp* %right, %list__charp** %right2, align 8
  %3 = bitcast %list__charp** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %compare3 = alloca i32 (i8*, i8*)*
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare3, align 8
  %4 = bitcast i32 (i8*, i8*)** %compare3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %5 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.202, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.203, i32 0, i32 0), i32 1322, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.204, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.205, i32 0, i32 0))
  %6 = bitcast i8* %5 to %list__charp*
  %7 = call %list__charp* @"list_initialize_charp34_vi++15filer"(%list__charp* %6)
  %result = alloca %list__charp*
  %8 = bitcast %list__charp** %result to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  store %list__charp* %7, %list__charp** %result, align 8
  %left4 = load %list__charp*, %list__charp** %left1, align 8
  %9 = getelementptr inbounds %list__charp, %list__charp* %left4, i32 0, i32 0
  %10 = load %list_item__charp*, %list_item__charp** %9, align 8
  %it = alloca %list_item__charp*
  %11 = bitcast %list_item__charp** %it to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  store %list_item__charp* %10, %list_item__charp** %it, align 8
  %right5 = load %list__charp*, %list__charp** %right2, align 8
  %12 = getelementptr inbounds %list__charp, %list__charp* %right5, i32 0, i32 0
  %13 = load %list_item__charp*, %list_item__charp** %12, align 8
  %it2 = alloca %list_item__charp*
  %14 = bitcast %list_item__charp** %it2 to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  store %list_item__charp* %13, %list_item__charp** %it2, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end40, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %16 = bitcast i8* %15 to %list_item__charp**
  %it6 = load %list_item__charp*, %list_item__charp** %16, align 8
  %17 = ptrtoint %list_item__charp* %it6 to i64
  %18 = icmp ne i64 %17, 0
  store i1 %18, i1* %andand_result_var, align 1
  br i1 %18, label %cond_jump_then, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_end62, %cond_end43, %loop_top_block
  %result77 = load %list__charp*, %list__charp** %result, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %list__charp* %result77

cond_jump_then:                                   ; preds = %cond_then_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %22 = bitcast i8* %21 to %list_item__charp**
  %it27 = load %list_item__charp*, %list_item__charp** %22, align 8
  %23 = ptrtoint %list_item__charp* %it27 to i64
  %24 = icmp ne i64 %23, 0
  %andand = and i1 %18, %24
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then8, label %cond_end

cond_jump_then8:                                  ; preds = %cond_jump_end
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %26 = bitcast i8* %25 to %list_item__charp**
  %it9 = load %list_item__charp*, %list_item__charp** %26, align 8
  %27 = getelementptr inbounds %list_item__charp, %list_item__charp* %it9, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %eqtmpX = icmp eq i8* %28, null
  br i1 %eqtmpX, label %cond_jump_then10, label %"cond_jump_elif0\0A"

cond_end:                                         ; preds = %cond_end11, %cond_jump_end
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %30 = bitcast i8* %29 to %list_item__charp**
  %it35 = load %list_item__charp*, %list_item__charp** %30, align 8
  %eqtmpX36 = icmp eq %list_item__charp* %it35, null
  br i1 %eqtmpX36, label %cond_jump_then37, label %"cond_jump_elif0\0A38"

cond_jump_then10:                                 ; preds = %cond_jump_then8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %32 = bitcast i8* %31 to %list_item__charp**
  %it12 = load %list_item__charp*, %list_item__charp** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %it12, i32 0, i32 2
  %34 = load %list_item__charp*, %list_item__charp** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %36 = bitcast i8* %35 to %list_item__charp**
  store %list_item__charp* %34, %list_item__charp** %36, align 8
  br label %cond_end11

"cond_jump_elif0\0A":                             ; preds = %cond_jump_then8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %38 = bitcast i8* %37 to %list_item__charp**
  %it213 = load %list_item__charp*, %list_item__charp** %38, align 8
  %39 = getelementptr inbounds %list_item__charp, %list_item__charp* %it213, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %eqtmpX14 = icmp eq i8* %40, null
  br i1 %eqtmpX14, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %42 = bitcast i8* %41 to %list_item__charp**
  %it215 = load %list_item__charp*, %list_item__charp** %42, align 8
  %43 = getelementptr inbounds %list_item__charp, %list_item__charp* %it215, i32 0, i32 2
  %44 = load %list_item__charp*, %list_item__charp** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %46 = bitcast i8* %45 to %list_item__charp**
  store %list_item__charp* %44, %list_item__charp** %46, align 8
  br label %cond_end11

"cond_jump_elif1\0A":                             ; preds = %"cond_jump_elif0\0A"
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  %48 = bitcast i8* %47 to i32 (i8*, i8*)**
  %compare16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %50 = bitcast i8* %49 to %list_item__charp**
  %it17 = load %list_item__charp*, %list_item__charp** %50, align 8
  %51 = getelementptr inbounds %list_item__charp, %list_item__charp* %it17, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %54 = bitcast i8* %53 to %list_item__charp**
  %it218 = load %list_item__charp*, %list_item__charp** %54, align 8
  %55 = getelementptr inbounds %list_item__charp, %list_item__charp* %it218, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 %compare16(i8* %52, i8* %56)
  %leeqtmp = icmp sle i32 %57, 0
  br i1 %leeqtmp, label %"cond_jump_elif_then1\0A", label %cond_else_block

"cond_jump_elif_then1\0A":                        ; preds = %"cond_jump_elif1\0A"
  br i1 true, label %cond_jump_then19, label %cond_else_block20

cond_else_block:                                  ; preds = %"cond_jump_elif1\0A"
  br i1 true, label %cond_jump_then27, label %cond_else_block28

cond_end11:                                       ; preds = %cond_end29, %cond_end21, %"cond_jump_elif_then0\0A", %cond_jump_then10
  br label %cond_end

cond_jump_then19:                                 ; preds = %"cond_jump_elif_then1\0A"
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %59 = bitcast i8* %58 to %list__charp**
  %result22 = load %list__charp*, %list__charp** %59, align 8
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %61 = bitcast i8* %60 to %list_item__charp**
  %it23 = load %list_item__charp*, %list_item__charp** %61, align 8
  %62 = getelementptr inbounds %list_item__charp, %list_item__charp* %it23, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %62, align 8
  %65 = call i8* @xmemdup(i8* %64)
  call void @"list_push_back_charp35_vi++15filer"(%list__charp* %result22, i8* %65)
  br label %cond_end21

cond_else_block20:                                ; preds = %"cond_jump_elif_then1\0A"
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %67 = bitcast i8* %66 to %list__charp**
  %result24 = load %list__charp*, %list__charp** %67, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %69 = bitcast i8* %68 to %list_item__charp**
  %it25 = load %list_item__charp*, %list_item__charp** %69, align 8
  %70 = getelementptr inbounds %list_item__charp, %list_item__charp* %it25, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  call void @"list_push_back_charp36_vi++15filer"(%list__charp* %result24, i8* %71)
  br label %cond_end21

cond_end21:                                       ; preds = %cond_else_block20, %cond_jump_then19
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %73 = bitcast i8* %72 to %list_item__charp**
  %it26 = load %list_item__charp*, %list_item__charp** %73, align 8
  %74 = getelementptr inbounds %list_item__charp, %list_item__charp* %it26, i32 0, i32 2
  %75 = load %list_item__charp*, %list_item__charp** %74, align 8
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %77 = bitcast i8* %76 to %list_item__charp**
  store %list_item__charp* %75, %list_item__charp** %77, align 8
  br label %cond_end11

cond_jump_then27:                                 ; preds = %cond_else_block
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %79 = bitcast i8* %78 to %list__charp**
  %result30 = load %list__charp*, %list__charp** %79, align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %81 = bitcast i8* %80 to %list_item__charp**
  %it231 = load %list_item__charp*, %list_item__charp** %81, align 8
  %82 = getelementptr inbounds %list_item__charp, %list_item__charp* %it231, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %82, align 8
  %85 = call i8* @xmemdup(i8* %84)
  call void @"list_push_back_charp37_vi++15filer"(%list__charp* %result30, i8* %85)
  br label %cond_end29

cond_else_block28:                                ; preds = %cond_else_block
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %87 = bitcast i8* %86 to %list__charp**
  %result32 = load %list__charp*, %list__charp** %87, align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %89 = bitcast i8* %88 to %list_item__charp**
  %it233 = load %list_item__charp*, %list_item__charp** %89, align 8
  %90 = getelementptr inbounds %list_item__charp, %list_item__charp* %it233, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  call void @"list_push_back_charp38_vi++15filer"(%list__charp* %result32, i8* %91)
  br label %cond_end29

cond_end29:                                       ; preds = %cond_else_block28, %cond_jump_then27
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %93 = bitcast i8* %92 to %list_item__charp**
  %it234 = load %list_item__charp*, %list_item__charp** %93, align 8
  %94 = getelementptr inbounds %list_item__charp, %list_item__charp* %it234, i32 0, i32 2
  %95 = load %list_item__charp*, %list_item__charp** %94, align 8
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %97 = bitcast i8* %96 to %list_item__charp**
  store %list_item__charp* %95, %list_item__charp** %97, align 8
  br label %cond_end11

cond_jump_then37:                                 ; preds = %cond_end
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %99 = bitcast i8* %98 to %list_item__charp**
  %it241 = load %list_item__charp*, %list_item__charp** %99, align 8
  %noteqtmp = icmp ne %list_item__charp* %it241, null
  br i1 %noteqtmp, label %cond_jump_then42, label %cond_end43

"cond_jump_elif0\0A38":                           ; preds = %cond_end
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %101 = bitcast i8* %100 to %list_item__charp**
  %it257 = load %list_item__charp*, %list_item__charp** %101, align 8
  %eqtmpX58 = icmp eq %list_item__charp* %it257, null
  br i1 %eqtmpX58, label %"cond_jump_elif_then0\0A39", label %cond_end40

"cond_jump_elif_then0\0A39":                      ; preds = %"cond_jump_elif0\0A38"
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %103 = bitcast i8* %102 to %list_item__charp**
  %it59 = load %list_item__charp*, %list_item__charp** %103, align 8
  %noteqtmp60 = icmp ne %list_item__charp* %it59, null
  br i1 %noteqtmp60, label %cond_jump_then61, label %cond_end62

cond_end40:                                       ; preds = %after_break76, %"cond_jump_elif0\0A38", %after_break
  br label %loop_top_block

cond_jump_then42:                                 ; preds = %cond_jump_then37
  br label %loop_top_block44

cond_end43:                                       ; preds = %cond_end_block48, %cond_jump_then37
  br label %cond_end_block

loop_top_block44:                                 ; preds = %cond_end51, %cond_jump_then42
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %105 = bitcast i8* %104 to %list_item__charp**
  %it245 = load %list_item__charp*, %list_item__charp** %105, align 8
  %noteqtmp46 = icmp ne %list_item__charp* %it245, null
  br i1 %noteqtmp46, label %cond_then_block47, label %cond_end_block48

cond_then_block47:                                ; preds = %loop_top_block44
  br i1 true, label %cond_jump_then49, label %cond_else_block50

cond_end_block48:                                 ; preds = %loop_top_block44
  br label %cond_end43

cond_jump_then49:                                 ; preds = %cond_then_block47
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %107 = bitcast i8* %106 to %list__charp**
  %result52 = load %list__charp*, %list__charp** %107, align 8
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %109 = bitcast i8* %108 to %list_item__charp**
  %it253 = load %list_item__charp*, %list_item__charp** %109, align 8
  %110 = getelementptr inbounds %list_item__charp, %list_item__charp* %it253, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %110, align 8
  %113 = call i8* @xmemdup(i8* %112)
  call void @"list_push_back_charp39_vi++15filer"(%list__charp* %result52, i8* %113)
  br label %cond_end51

cond_else_block50:                                ; preds = %cond_then_block47
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %115 = bitcast i8* %114 to %list__charp**
  %result54 = load %list__charp*, %list__charp** %115, align 8
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %117 = bitcast i8* %116 to %list_item__charp**
  %it255 = load %list_item__charp*, %list_item__charp** %117, align 8
  %118 = getelementptr inbounds %list_item__charp, %list_item__charp* %it255, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  call void @"list_push_back_charp40_vi++15filer"(%list__charp* %result54, i8* %119)
  br label %cond_end51

cond_end51:                                       ; preds = %cond_else_block50, %cond_jump_then49
  %120 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %121 = bitcast i8* %120 to %list_item__charp**
  %it256 = load %list_item__charp*, %list_item__charp** %121, align 8
  %122 = getelementptr inbounds %list_item__charp, %list_item__charp* %it256, i32 0, i32 2
  %123 = load %list_item__charp*, %list_item__charp** %122, align 8
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 457), align 8
  %125 = bitcast i8* %124 to %list_item__charp**
  store %list_item__charp* %123, %list_item__charp** %125, align 8
  br label %loop_top_block44

after_break:                                      ; No predecessors!
  br label %cond_end40

cond_jump_then61:                                 ; preds = %"cond_jump_elif_then0\0A39"
  br label %loop_top_block63

cond_end62:                                       ; preds = %cond_end_block67, %"cond_jump_elif_then0\0A39"
  br label %cond_end_block

loop_top_block63:                                 ; preds = %cond_end70, %cond_jump_then61
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %127 = bitcast i8* %126 to %list_item__charp**
  %it64 = load %list_item__charp*, %list_item__charp** %127, align 8
  %noteqtmp65 = icmp ne %list_item__charp* %it64, null
  br i1 %noteqtmp65, label %cond_then_block66, label %cond_end_block67

cond_then_block66:                                ; preds = %loop_top_block63
  br i1 true, label %cond_jump_then68, label %cond_else_block69

cond_end_block67:                                 ; preds = %loop_top_block63
  br label %cond_end62

cond_jump_then68:                                 ; preds = %cond_then_block66
  %128 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %129 = bitcast i8* %128 to %list__charp**
  %result71 = load %list__charp*, %list__charp** %129, align 8
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %131 = bitcast i8* %130 to %list_item__charp**
  %it72 = load %list_item__charp*, %list_item__charp** %131, align 8
  %132 = getelementptr inbounds %list_item__charp, %list_item__charp* %it72, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %132, align 8
  %135 = call i8* @xmemdup(i8* %134)
  call void @"list_push_back_charp41_vi++15filer"(%list__charp* %result71, i8* %135)
  br label %cond_end70

cond_else_block69:                                ; preds = %cond_then_block66
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 455), align 8
  %137 = bitcast i8* %136 to %list__charp**
  %result73 = load %list__charp*, %list__charp** %137, align 8
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %139 = bitcast i8* %138 to %list_item__charp**
  %it74 = load %list_item__charp*, %list_item__charp** %139, align 8
  %140 = getelementptr inbounds %list_item__charp, %list_item__charp* %it74, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  call void @"list_push_back_charp42_vi++15filer"(%list__charp* %result73, i8* %141)
  br label %cond_end70

cond_end70:                                       ; preds = %cond_else_block69, %cond_jump_then68
  %142 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %143 = bitcast i8* %142 to %list_item__charp**
  %it75 = load %list_item__charp*, %list_item__charp** %143, align 8
  %144 = getelementptr inbounds %list_item__charp, %list_item__charp* %it75, i32 0, i32 2
  %145 = load %list_item__charp*, %list_item__charp** %144, align 8
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 456), align 8
  %147 = bitcast i8* %146 to %list_item__charp**
  store %list_item__charp* %145, %list_item__charp** %147, align 8
  br label %loop_top_block63

after_break76:                                    ; No predecessors!
  br label %cond_end40
}

define %list__charp* @"list_initialize_charp34_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  store %list_item__charp* null, %list_item__charp** %3, align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %4, align 8
  %self4 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__charp* %self5
}

define void @"list_push_back_charp35_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.206, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.207, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.208, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.209, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.210, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.211, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.212, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.213, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.214, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.215, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.216, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.217, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp36_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.218, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.219, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.220, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.221, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.222, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.223, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.224, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.225, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.226, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.227, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.228, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.229, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp37_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.230, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.231, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.232, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.233, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.234, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.235, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.236, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.237, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.238, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.239, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.240, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.241, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp38_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.242, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.243, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.244, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.245, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.246, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.247, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.248, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.249, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.250, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.251, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.252, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.253, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp39_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.254, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.255, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.256, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.257, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.258, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.259, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.260, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.261, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.262, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.263, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.264, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.265, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp40_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.266, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.267, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.268, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.269, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.270, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.271, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.272, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.273, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.274, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.275, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.276, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.277, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp41_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.278, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.279, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.280, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.281, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.282, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.283, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.284, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.285, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.286, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.287, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.288, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.289, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp42_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.290, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.291, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.292, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.293, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.294, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.295, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.296, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.297, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.298, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.299, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.300, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.301, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 460), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 459), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 458), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_finalize_charp43_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define void @"list_finalize_charp45_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define void @"list_finalize_charp47_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define void @"list_finalize_charp49_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 454), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define void @"list_finalize_charp51_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define %ViFiler* @ViFiler_initialize(%ViFiler* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViFiler*
  store %ViFiler* %self, %ViFiler** %self1, align 8
  %2 = bitcast %ViFiler** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %3 = call i32 @xgetmaxy()
  %maxy = alloca i32
  %4 = bitcast i32* %maxy to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %3, i32* %maxy, align 4
  %5 = call i32 @xgetmaxx()
  %maxx = alloca i32
  %6 = bitcast i32* %maxx to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %5, i32* %maxx, align 4
  %maxx2 = load i32, i32* %maxx, align 4
  %divtmp = sdiv i32 %maxx2, 5
  %width = alloca i32
  %7 = bitcast i32* %width to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store i32 %divtmp, i32* %width, align 4
  %self3 = load %ViFiler*, %ViFiler** %self1, align 8
  %maxy4 = load i32, i32* %maxy, align 4
  %width5 = load i32, i32* %width, align 4
  %8 = call %_win_st* @newwin(i32 %maxy4, i32 %width5, i32 0, i32 0)
  %9 = getelementptr inbounds %ViFiler, %ViFiler* %self3, i32 0, i32 2
  store %_win_st* %8, %_win_st** %9, align 8
  %self6 = load %ViFiler*, %ViFiler** %self1, align 8
  %10 = getelementptr inbounds %ViFiler, %ViFiler* %self6, i32 0, i32 2
  %11 = load %_win_st*, %_win_st** %10, align 8
  %12 = call i32 @keypad(%_win_st* %11, i1 true)
  %self7 = load %ViFiler*, %ViFiler** %self1, align 8
  %13 = getelementptr inbounds %ViFiler, %ViFiler* %self7, i32 0, i32 6
  store i1 false, i1* %13, align 1
  %self8 = load %ViFiler*, %ViFiler** %self1, align 8
  %14 = getelementptr inbounds %ViFiler, %ViFiler* %self8, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %self9 = load %ViFiler*, %ViFiler** %self1, align 8
  %15 = getelementptr inbounds %ViFiler, %ViFiler* %self9, i32 0, i32 4
  store i32 0, i32* %15, align 4
  %self10 = load %ViFiler*, %ViFiler** %self1, align 8
  %width11 = load i32, i32* %width, align 4
  %16 = getelementptr inbounds %ViFiler, %ViFiler* %self10, i32 0, i32 5
  store i32 %width11, i32* %16, align 4
  %cwd = alloca i8*
  %17 = bitcast i8** %cwd to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %element_memory = alloca i8, i32 4096
  store i8* %element_memory, i8** %cwd, align 8
  %cwd12 = load i8*, i8** %cwd, align 8
  %18 = call i8* @getcwd(i8* %cwd12, i64 4096)
  %self13 = load %ViFiler*, %ViFiler** %self1, align 8
  %cwd14 = load i8*, i8** %cwd, align 8
  %19 = call i1 @ViFiler_cd(%ViFiler* %self13, i8* %cwd14)
  %self15 = load %ViFiler*, %ViFiler** %self1, align 8
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret %ViFiler* %self15
}

define void @ViFiler_finalize(%ViFiler* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViFiler*
  store %ViFiler* %self, %ViFiler** %self1, align 8
  %2 = bitcast %ViFiler** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %self2 = load %ViFiler*, %ViFiler** %self1, align 8
  %eqtmpX = icmp eq %ViFiler* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %ViFiler*, %ViFiler** %self1, align 8
  %5 = getelementptr inbounds %ViFiler, %ViFiler* %self3, i32 0, i32 2
  %6 = load %_win_st*, %_win_st** %5, align 8
  %7 = call i32 @delwin(%_win_st* %6)
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void
}

define void @ViFiler_view(%ViFiler* %self, %Vi* %nvi) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViFiler*
  store %ViFiler* %self, %ViFiler** %self1, align 8
  %2 = bitcast %ViFiler** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %nvi2 = alloca %Vi*
  store %Vi* %nvi, %Vi** %nvi2, align 8
  %3 = bitcast %Vi** %nvi2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %4 = call i32 @xgetmaxy()
  %maxy = alloca i32
  %5 = bitcast i32* %maxy to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %4, i32* %maxy, align 4
  %self3 = load %ViFiler*, %ViFiler** %self1, align 8
  %6 = getelementptr inbounds %ViFiler, %ViFiler* %self3, i32 0, i32 1
  %7 = load %list__charp*, %list__charp** %6, align 8
  %self4 = load %ViFiler*, %ViFiler** %self1, align 8
  %8 = getelementptr inbounds %ViFiler, %ViFiler* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %self5 = load %ViFiler*, %ViFiler** %self1, align 8
  %10 = getelementptr inbounds %ViFiler, %ViFiler* %self5, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %maxy6 = load i32, i32* %maxy, align 4
  %addtmp = add nsw i32 %11, %maxy6
  %addtmp7 = add nsw i32 %addtmp, 1
  %12 = call %list__charp* @"list_sublist_charp53_vi++15filer"(%list__charp* %7, i32 %9, i32 %addtmp7)
  call void @"list_each_charp57_vi++15filer"(%list__charp* %12, void (i8*, i32, i1*)* @"vi++15filer_lambda2")
  %13 = ptrtoint %list__charp* %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @"list_finalize_charp58_vi++15filer"(%list__charp* %12)
  %15 = bitcast %list__charp* %12 to i8*
  call void @xfree(i8* %15)
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void
}

define %list__charp* @"list_sublist_charp53_vi++15filer"(%list__charp* %self, i32 %begin, i32 %tail) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %begin2 = alloca i32
  store i32 %begin, i32* %begin2, align 4
  %3 = bitcast i32* %begin2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %tail3 = alloca i32
  store i32 %tail, i32* %tail3, align 4
  %4 = bitcast i32* %tail3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %5 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.302, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.303, i32 0, i32 0), i32 1126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.304, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.305, i32 0, i32 0))
  %6 = bitcast i8* %5 to %list__charp*
  %7 = call %list__charp* @"list_initialize_charp54_vi++15filer"(%list__charp* %6)
  %result = alloca %list__charp*
  %8 = bitcast %list__charp** %result to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store %list__charp* %7, %list__charp** %result, align 8
  %begin4 = load i32, i32* %begin2, align 4
  %letmp = icmp slt i32 %begin4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %10 = bitcast i8* %9 to i32*
  %begin5 = load i32, i32* %10, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %12 = bitcast i8* %11 to %list__charp**
  %self6 = load %list__charp*, %list__charp** %12, align 8
  %13 = getelementptr inbounds %list__charp, %list__charp* %self6, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %addtmp = add nsw i32 %begin5, %14
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %16 = bitcast i8* %15 to i32*
  store i32 %addtmp, i32* %16, align 4
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self7 = load %list__charp*, %list__charp** %18, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self7, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %subttmp = sub nsw i32 %addtmp, %20
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %tail8 = load i32, i32* %tail3, align 4
  %letmp9 = icmp slt i32 %tail8, 0
  br i1 %letmp9, label %cond_jump_then10, label %cond_end11

cond_jump_then10:                                 ; preds = %cond_end
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %22 = bitcast i8* %21 to i32*
  %tail12 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %24 = bitcast i8* %23 to %list__charp**
  %self13 = load %list__charp*, %list__charp** %24, align 8
  %25 = getelementptr inbounds %list__charp, %list__charp* %self13, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %addtmp14 = add nsw i32 %26, 1
  %addtmp15 = add nsw i32 %tail12, %addtmp14
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp15, i32* %28, align 4
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %30 = bitcast i8* %29 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %30, align 8
  %31 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %addtmp17 = add nsw i32 %32, 1
  %subttmp18 = sub nsw i32 %addtmp15, %addtmp17
  br label %cond_end11

cond_end11:                                       ; preds = %cond_jump_then10, %cond_end
  %begin19 = load i32, i32* %begin2, align 4
  %letmp20 = icmp slt i32 %begin19, 0
  br i1 %letmp20, label %cond_jump_then21, label %cond_end22

cond_jump_then21:                                 ; preds = %cond_end11
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %34 = bitcast i8* %33 to i32*
  store i32 0, i32* %34, align 4
  br label %cond_end22

cond_end22:                                       ; preds = %cond_jump_then21, %cond_end11
  %tail23 = load i32, i32* %tail3, align 4
  %self24 = load %list__charp*, %list__charp** %self1, align 8
  %35 = getelementptr inbounds %list__charp, %list__charp* %self24, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %getmp = icmp sge i32 %tail23, %36
  br i1 %getmp, label %cond_jump_then25, label %cond_end26

cond_jump_then25:                                 ; preds = %cond_end22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self27 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self27, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %cond_end26

cond_end26:                                       ; preds = %cond_jump_then25, %cond_end22
  %self28 = load %list__charp*, %list__charp** %self1, align 8
  %43 = getelementptr inbounds %list__charp, %list__charp* %self28, i32 0, i32 0
  %44 = load %list_item__charp*, %list_item__charp** %43, align 8
  %it = alloca %list_item__charp*
  %45 = bitcast %list_item__charp** %it to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store %list_item__charp* %44, %list_item__charp** %it, align 8
  %i = alloca i32
  %46 = bitcast i32* %i to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end38, %cond_end26
  %it29 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it29, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %48 = bitcast i8* %47 to i32*
  %i30 = load i32, i32* %48, align 4
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %50 = bitcast i8* %49 to i32*
  %begin31 = load i32, i32* %50, align 4
  %getmp32 = icmp sge i32 %i30, %begin31
  store i1 %getmp32, i1* %andand_result_var, align 1
  br i1 %getmp32, label %cond_jump_then33, label %cond_jump_end

cond_end_block:                                   ; preds = %loop_top_block
  %result49 = load %list__charp*, %list__charp** %result, align 8
  %51 = bitcast [8192 x i8*]* %lvtable to i8*
  %52 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %51, i64 65536)
  ret %list__charp* %result49

cond_jump_then33:                                 ; preds = %cond_then_block
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %54 = bitcast i8* %53 to i32*
  %i34 = load i32, i32* %54, align 4
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %56 = bitcast i8* %55 to i32*
  %tail35 = load i32, i32* %56, align 4
  %letmp36 = icmp slt i32 %i34, %tail35
  %andand = and i1 %getmp32, %letmp36
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then33, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then37, label %cond_end38

cond_jump_then37:                                 ; preds = %cond_jump_end
  br i1 true, label %cond_jump_then39, label %cond_else_block

cond_end38:                                       ; preds = %cond_end40, %cond_jump_end
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %58 = bitcast i8* %57 to %list_item__charp**
  %it45 = load %list_item__charp*, %list_item__charp** %58, align 8
  %59 = getelementptr inbounds %list_item__charp, %list_item__charp* %it45, i32 0, i32 2
  %60 = load %list_item__charp*, %list_item__charp** %59, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %62 = bitcast i8* %61 to %list_item__charp**
  store %list_item__charp* %60, %list_item__charp** %62, align 8
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %64 = bitcast i8* %63 to i32*
  %i46 = load i32, i32* %64, align 4
  %addtmp47 = add nsw i32 %i46, 1
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %66 = bitcast i8* %65 to i32*
  store i32 %addtmp47, i32* %66, align 4
  %subttmp48 = sub nsw i32 %addtmp47, 1
  br label %loop_top_block

cond_jump_then39:                                 ; preds = %cond_jump_then37
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %68 = bitcast i8* %67 to %list__charp**
  %result41 = load %list__charp*, %list__charp** %68, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %70 = bitcast i8* %69 to %list_item__charp**
  %it42 = load %list_item__charp*, %list_item__charp** %70, align 8
  %71 = getelementptr inbounds %list_item__charp, %list_item__charp* %it42, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %71, align 8
  %74 = call i8* @xmemdup(i8* %73)
  call void @"list_push_back_charp55_vi++15filer"(%list__charp* %result41, i8* %74)
  br label %cond_end40

cond_else_block:                                  ; preds = %cond_jump_then37
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %76 = bitcast i8* %75 to %list__charp**
  %result43 = load %list__charp*, %list__charp** %76, align 8
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %78 = bitcast i8* %77 to %list_item__charp**
  %it44 = load %list_item__charp*, %list_item__charp** %78, align 8
  %79 = getelementptr inbounds %list_item__charp, %list_item__charp* %it44, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  call void @"list_push_back_charp56_vi++15filer"(%list__charp* %result43, i8* %80)
  br label %cond_end40

cond_end40:                                       ; preds = %cond_else_block, %cond_jump_then39
  br label %cond_end38
}

define %list__charp* @"list_initialize_charp54_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 0
  store %list_item__charp* null, %list_item__charp** %3, align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %4, align 8
  %self4 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list__charp*, %list__charp** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list__charp* %self5
}

define void @"list_push_back_charp55_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.306, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.307, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.308, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.309, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.310, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.311, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.312, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.313, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.314, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.315, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.316, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.317, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"list_push_back_charp56_vi++15filer"(%list__charp* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.318, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.319, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.320, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.321, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__charp*
  %litem = alloca %list_item__charp*
  %8 = bitcast %list_item__charp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %7, %list_item__charp** %litem, align 8
  %litem4 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %9 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem4, i32 0, i32 1
  store %list_item__charp* null, %list_item__charp** %9, align 8
  %litem5 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %10 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem5, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %10, align 8
  %litem6 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %15 = bitcast i8* %14 to %list__charp**
  %self8 = load %list__charp*, %list__charp** %15, align 8
  %litem9 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %16 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 1
  store %list_item__charp* %litem9, %list_item__charp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %18 = bitcast i8* %17 to %list__charp**
  %self10 = load %list__charp*, %list__charp** %18, align 8
  %litem11 = load %list_item__charp*, %list_item__charp** %litem, align 8
  %19 = getelementptr inbounds %list__charp, %list__charp* %self10, i32 0, i32 0
  store %list_item__charp* %litem11, %list_item__charp** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list__charp*, %list__charp** %self1, align 8
  %20 = getelementptr inbounds %list__charp, %list__charp* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX13 = icmp eq i32 %21, 1
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.322, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.323, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.324, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.325, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__charp*
  %litem14 = alloca %list_item__charp*
  %24 = bitcast %list_item__charp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %23, %list_item__charp** %litem14, align 8
  %litem15 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %26 = bitcast i8* %25 to %list__charp**
  %self16 = load %list__charp*, %list__charp** %26, align 8
  %27 = getelementptr inbounds %list__charp, %list__charp* %self16, i32 0, i32 0
  %28 = load %list_item__charp*, %list_item__charp** %27, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem15, i32 0, i32 1
  store %list_item__charp* %28, %list_item__charp** %29, align 8
  %litem17 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %30 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem17, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %30, align 8
  %litem18 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %35 = bitcast i8* %34 to %list__charp**
  %self20 = load %list__charp*, %list__charp** %35, align 8
  %litem21 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %36 = getelementptr inbounds %list__charp, %list__charp* %self20, i32 0, i32 1
  store %list_item__charp* %litem21, %list_item__charp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %38 = bitcast i8* %37 to %list__charp**
  %self22 = load %list__charp*, %list__charp** %38, align 8
  %39 = getelementptr inbounds %list__charp, %list__charp* %self22, i32 0, i32 0
  %40 = load %list_item__charp*, %list_item__charp** %39, align 8
  %litem23 = load %list_item__charp*, %list_item__charp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__charp, %list_item__charp* %40, i32 0, i32 2
  store %list_item__charp* %litem23, %list_item__charp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.326, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.327, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.328, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.329, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__charp*
  %litem24 = alloca %list_item__charp*
  %44 = bitcast %list_item__charp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 453), align 8
  store %list_item__charp* %43, %list_item__charp** %litem24, align 8
  %litem25 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %46 = bitcast i8* %45 to %list__charp**
  %self26 = load %list__charp*, %list__charp** %46, align 8
  %47 = getelementptr inbounds %list__charp, %list__charp* %self26, i32 0, i32 1
  %48 = load %list_item__charp*, %list_item__charp** %47, align 8
  %49 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem25, i32 0, i32 1
  store %list_item__charp* %48, %list_item__charp** %49, align 8
  %litem27 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %50 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem27, i32 0, i32 2
  store %list_item__charp* null, %list_item__charp** %50, align 8
  %litem28 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 452), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item__charp, %list_item__charp* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %55 = bitcast i8* %54 to %list__charp**
  %self30 = load %list__charp*, %list__charp** %55, align 8
  %56 = getelementptr inbounds %list__charp, %list__charp* %self30, i32 0, i32 1
  %57 = load %list_item__charp*, %list_item__charp** %56, align 8
  %litem31 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__charp, %list_item__charp* %57, i32 0, i32 2
  store %list_item__charp* %litem31, %list_item__charp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %60 = bitcast i8* %59 to %list__charp**
  %self32 = load %list__charp*, %list__charp** %60, align 8
  %litem33 = load %list_item__charp*, %list_item__charp** %litem24, align 8
  %61 = getelementptr inbounds %list__charp, %list__charp* %self32, i32 0, i32 1
  store %list_item__charp* %litem33, %list_item__charp** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list__charp*, %list__charp** %self1, align 8
  %self35 = load %list__charp*, %list__charp** %self1, align 8
  %62 = getelementptr inbounds %list__charp, %list__charp* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list__charp, %list__charp* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @"vi++15filer_lambda2"(i8* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %andand_result_var = alloca i1
  %it24 = load i32, i32* %it22, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %6 = bitcast i8* %5 to %ViFiler**
  %self = load %ViFiler*, %ViFiler** %6, align 8
  %7 = getelementptr inbounds %ViFiler, %ViFiler* %self, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %eqtmpX = icmp eq i32 %it24, %8
  store i1 %eqtmpX, i1* %andand_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %10 = bitcast i8* %9 to %ViFiler**
  %self5 = load %ViFiler*, %ViFiler** %10, align 8
  %11 = getelementptr inbounds %ViFiler, %ViFiler* %self5, i32 0, i32 6
  %12 = load i1, i1* %11, align 1
  %andand = and i1 %eqtmpX, %12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %entry
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then6, label %cond_else_block

cond_jump_then6:                                  ; preds = %cond_jump_end
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %14 = bitcast i8* %13 to %ViFiler**
  %self7 = load %ViFiler*, %ViFiler** %14, align 8
  %15 = getelementptr inbounds %ViFiler, %ViFiler* %self7, i32 0, i32 2
  %16 = load %_win_st*, %_win_st** %15, align 8
  %17 = call i32 @wattr_on(%_win_st* %16, i64 262144, i8* null)
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %19 = bitcast i8* %18 to %ViFiler**
  %self8 = load %ViFiler*, %ViFiler** %19, align 8
  %20 = getelementptr inbounds %ViFiler, %ViFiler* %self8, i32 0, i32 2
  %21 = load %_win_st*, %_win_st** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %23 = bitcast i8* %22 to i32*
  %it29 = load i32, i32* %23, align 4
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %25 = bitcast i8* %24 to i8**
  %it10 = load i8*, i8** %25, align 8
  %26 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %21, i32 %it29, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.332, i32 0, i32 0), i8* %it10)
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %28 = bitcast i8* %27 to %ViFiler**
  %self11 = load %ViFiler*, %ViFiler** %28, align 8
  %29 = getelementptr inbounds %ViFiler, %ViFiler* %self11, i32 0, i32 2
  %30 = load %_win_st*, %_win_st** %29, align 8
  %31 = call i32 @wattr_off(%_win_st* %30, i64 262144, i8* null)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_jump_end
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %33 = bitcast i8* %32 to %ViFiler**
  %self12 = load %ViFiler*, %ViFiler** %33, align 8
  %34 = getelementptr inbounds %ViFiler, %ViFiler* %self12, i32 0, i32 2
  %35 = load %_win_st*, %_win_st** %34, align 8
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %37 = bitcast i8* %36 to i32*
  %it213 = load i32, i32* %37, align 4
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %39 = bitcast i8* %38 to i8**
  %it14 = load i8*, i8** %39, align 8
  %40 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %35, i32 %it213, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.333, i32 0, i32 0), i8* %it14)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then6
  %41 = bitcast [8192 x i8*]* %lvtable to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret void
}

define void @"list_each_charp57_vi++15filer"(%list__charp* %self, void (i8*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %block_2 = alloca void (i8*, i32, i1*)*
  store void (i8*, i32, i1*)* %block_, void (i8*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i8*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %5 = load %list_item__charp*, %list_item__charp** %4, align 8
  %it_ = alloca %list_item__charp*
  %6 = bitcast %list_item__charp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store %list_item__charp* %5, %list_item__charp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__charp*, %list_item__charp** %it_, align 8
  %noteqtmp = icmp ne %list_item__charp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %10 = bitcast i8* %9 to void (i8*, i32, i1*)**
  %block_5 = load void (i8*, i32, i1*)*, void (i8*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %12 = bitcast i8* %11 to %list_item__charp**
  %it_6 = load %list_item__charp*, %list_item__charp** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %it_6, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %16 = bitcast i8* %15 to i32*
  %i_7 = load i32, i32* %16, align 4
  %end_flag_8 = load i1, i1* %end_flag_, align 1
  call void %block_5(i8* %14, i32 %i_7, i1* %end_flag_)
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_9, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %20 = bitcast i8* %19 to %list_item__charp**
  %it_10 = load %list_item__charp*, %list_item__charp** %20, align 8
  %21 = getelementptr inbounds %list_item__charp, %list_item__charp* %it_10, i32 0, i32 2
  %22 = load %list_item__charp*, %list_item__charp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %24 = bitcast i8* %23 to %list_item__charp**
  store %list_item__charp* %22, %list_item__charp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @"list_finalize_charp58_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define void @ViFiler_input(%ViFiler* %self, %Vi* %nvi) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViFiler*
  store %ViFiler* %self, %ViFiler** %self1, align 8
  %2 = bitcast %ViFiler** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %nvi2 = alloca %Vi*
  store %Vi* %nvi, %Vi** %nvi2, align 8
  %3 = bitcast %Vi** %nvi2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %self3 = load %ViFiler*, %ViFiler** %self1, align 8
  %4 = getelementptr inbounds %ViFiler, %ViFiler* %self3, i32 0, i32 2
  %5 = load %_win_st*, %_win_st** %4, align 8
  %6 = call i32 @wgetch(%_win_st* %5)
  %key = alloca i32
  %7 = bitcast i32* %key to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store i32 %6, i32* %key, align 4
  %self4 = load %ViFiler*, %ViFiler** %self1, align 8
  %8 = getelementptr inbounds %ViFiler, %ViFiler* %self4, i32 0, i32 1
  %9 = load %list__charp*, %list__charp** %8, align 8
  %self5 = load %ViFiler*, %ViFiler** %self1, align 8
  %10 = getelementptr inbounds %ViFiler, %ViFiler* %self5, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %self6 = load %ViFiler*, %ViFiler** %self1, align 8
  %12 = getelementptr inbounds %ViFiler, %ViFiler* %self6, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %addtmp = add nsw i32 %11, %13
  %14 = call i8* @"list_item_charp60_vi++15filer"(%list__charp* %9, i32 %addtmp, i8* null)
  %file_name = alloca i8*
  %15 = bitcast i8** %file_name to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store i8* %14, i8** %file_name, align 8
  %16 = call i32 @xgetmaxy()
  %maxy = alloca i32
  %17 = bitcast i32* %maxy to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store i32 %16, i32* %maxy, align 4
  %key7 = load i32, i32* %key, align 4
  %eqtmpY = icmp eq i32 %key7, 106
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block162, %cond_then_block161, %cond_then_block154, %cond_then_block146, %cond_end129, %cond_end112, %cond_end54, %cond_end37
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret void

cond_then_block:                                  ; preds = %cond_else_block, %entry
  %self10 = load %ViFiler*, %ViFiler** %self1, align 8
  %self11 = load %ViFiler*, %ViFiler** %self1, align 8
  %20 = getelementptr inbounds %ViFiler, %ViFiler* %self11, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %addtmp12 = add nsw i32 %21, 1
  %22 = getelementptr inbounds %ViFiler, %ViFiler* %self10, i32 0, i32 4
  store i32 %addtmp12, i32* %22, align 4
  %subttmp = sub nsw i32 %addtmp12, 1
  %self13 = load %ViFiler*, %ViFiler** %self1, align 8
  %23 = getelementptr inbounds %ViFiler, %ViFiler* %self13, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %maxy14 = load i32, i32* %maxy, align 4
  %getmp = icmp sge i32 %24, %maxy14
  br i1 %getmp, label %cond_jump_then, label %cond_end

cond_else_block:                                  ; preds = %entry
  %eqtmpY9 = icmp eq i32 %key7, 258
  br i1 %eqtmpY9, label %cond_then_block, label %cond_else_block8

cond_else_block8:                                 ; preds = %after_break, %cond_else_block
  %eqtmpY45 = icmp eq i32 %key7, 107
  br i1 %eqtmpY45, label %cond_then_block43, label %cond_else_block44

cond_jump_then:                                   ; preds = %cond_then_block
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %26 = bitcast i8* %25 to %ViFiler**
  %self15 = load %ViFiler*, %ViFiler** %26, align 8
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %28 = bitcast i8* %27 to %ViFiler**
  %self16 = load %ViFiler*, %ViFiler** %28, align 8
  %29 = getelementptr inbounds %ViFiler, %ViFiler* %self16, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %addtmp17 = add nsw i32 %30, 1
  %31 = getelementptr inbounds %ViFiler, %ViFiler* %self15, i32 0, i32 3
  store i32 %addtmp17, i32* %31, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %33 = bitcast i8* %32 to %ViFiler**
  %self19 = load %ViFiler*, %ViFiler** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %35 = bitcast i8* %34 to i32*
  %maxy20 = load i32, i32* %35, align 4
  %subttmp21 = sub nsw i32 %maxy20, 1
  %36 = getelementptr inbounds %ViFiler, %ViFiler* %self19, i32 0, i32 4
  store i32 %subttmp21, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %38 = bitcast i8* %37 to %ViFiler**
  %self22 = load %ViFiler*, %ViFiler** %38, align 8
  %39 = getelementptr inbounds %ViFiler, %ViFiler* %self22, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %42 = bitcast i8* %41 to %ViFiler**
  %self23 = load %ViFiler*, %ViFiler** %42, align 8
  %43 = getelementptr inbounds %ViFiler, %ViFiler* %self23, i32 0, i32 1
  %44 = load %list__charp*, %list__charp** %43, align 8
  %45 = call i32 @"list_length_charp61_vi++15filer"(%list__charp* %44)
  %getmp24 = icmp sge i32 %40, %45
  br i1 %getmp24, label %cond_jump_then25, label %cond_end26

cond_end:                                         ; preds = %cond_end26, %cond_then_block
  %self30 = load %ViFiler*, %ViFiler** %self1, align 8
  %46 = getelementptr inbounds %ViFiler, %ViFiler* %self30, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %self31 = load %ViFiler*, %ViFiler** %self1, align 8
  %48 = getelementptr inbounds %ViFiler, %ViFiler* %self31, i32 0, i32 1
  %49 = load %list__charp*, %list__charp** %48, align 8
  %50 = call i32 @"list_length_charp63_vi++15filer"(%list__charp* %49)
  %self32 = load %ViFiler*, %ViFiler** %self1, align 8
  %51 = getelementptr inbounds %ViFiler, %ViFiler* %self32, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %subttmp33 = sub nsw i32 %50, %52
  %subttmp34 = sub nsw i32 %subttmp33, 1
  %getmp35 = icmp sge i32 %47, %subttmp34
  br i1 %getmp35, label %cond_jump_then36, label %cond_end37

cond_jump_then25:                                 ; preds = %cond_jump_then
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %54 = bitcast i8* %53 to %ViFiler**
  %self27 = load %ViFiler*, %ViFiler** %54, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %56 = bitcast i8* %55 to %ViFiler**
  %self28 = load %ViFiler*, %ViFiler** %56, align 8
  %57 = getelementptr inbounds %ViFiler, %ViFiler* %self28, i32 0, i32 1
  %58 = load %list__charp*, %list__charp** %57, align 8
  %59 = call i32 @"list_length_charp62_vi++15filer"(%list__charp* %58)
  %subttmp29 = sub nsw i32 %59, 1
  %60 = getelementptr inbounds %ViFiler, %ViFiler* %self27, i32 0, i32 3
  store i32 %subttmp29, i32* %60, align 4
  br label %cond_end26

cond_end26:                                       ; preds = %cond_jump_then25, %cond_jump_then
  br label %cond_end

cond_jump_then36:                                 ; preds = %cond_end
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %62 = bitcast i8* %61 to %ViFiler**
  %self38 = load %ViFiler*, %ViFiler** %62, align 8
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %64 = bitcast i8* %63 to %ViFiler**
  %self39 = load %ViFiler*, %ViFiler** %64, align 8
  %65 = getelementptr inbounds %ViFiler, %ViFiler* %self39, i32 0, i32 1
  %66 = load %list__charp*, %list__charp** %65, align 8
  %67 = call i32 @"list_length_charp64_vi++15filer"(%list__charp* %66)
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %69 = bitcast i8* %68 to %ViFiler**
  %self40 = load %ViFiler*, %ViFiler** %69, align 8
  %70 = getelementptr inbounds %ViFiler, %ViFiler* %self40, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %subttmp41 = sub nsw i32 %67, %71
  %subttmp42 = sub nsw i32 %subttmp41, 1
  %72 = getelementptr inbounds %ViFiler, %ViFiler* %self38, i32 0, i32 4
  store i32 %subttmp42, i32* %72, align 4
  br label %cond_end37

cond_end37:                                       ; preds = %cond_jump_then36, %cond_end
  br label %end_block

after_break:                                      ; No predecessors!
  br label %cond_else_block8

cond_then_block43:                                ; preds = %cond_else_block44, %cond_else_block8
  %self48 = load %ViFiler*, %ViFiler** %self1, align 8
  %self49 = load %ViFiler*, %ViFiler** %self1, align 8
  %73 = getelementptr inbounds %ViFiler, %ViFiler* %self49, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %subttmp50 = sub nsw i32 %74, 1
  %75 = getelementptr inbounds %ViFiler, %ViFiler* %self48, i32 0, i32 4
  store i32 %subttmp50, i32* %75, align 4
  %addtmp51 = add nsw i32 %subttmp50, 1
  %self52 = load %ViFiler*, %ViFiler** %self1, align 8
  %76 = getelementptr inbounds %ViFiler, %ViFiler* %self52, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %letmp = icmp slt i32 %77, 0
  br i1 %letmp, label %cond_jump_then53, label %cond_end54

cond_else_block44:                                ; preds = %cond_else_block8
  %eqtmpY47 = icmp eq i32 %key7, 259
  br i1 %eqtmpY47, label %cond_then_block43, label %cond_else_block46

cond_else_block46:                                ; preds = %after_break65, %cond_else_block44
  %eqtmpY68 = icmp eq i32 %key7, 4
  br i1 %eqtmpY68, label %cond_then_block66, label %cond_else_block67

cond_jump_then53:                                 ; preds = %cond_then_block43
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %79 = bitcast i8* %78 to %ViFiler**
  %self55 = load %ViFiler*, %ViFiler** %79, align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %81 = bitcast i8* %80 to %ViFiler**
  %self56 = load %ViFiler*, %ViFiler** %81, align 8
  %82 = getelementptr inbounds %ViFiler, %ViFiler* %self56, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %subttmp57 = sub nsw i32 %83, 1
  %84 = getelementptr inbounds %ViFiler, %ViFiler* %self55, i32 0, i32 3
  store i32 %subttmp57, i32* %84, align 4
  %addtmp58 = add nsw i32 %subttmp57, 1
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %86 = bitcast i8* %85 to %ViFiler**
  %self59 = load %ViFiler*, %ViFiler** %86, align 8
  %87 = getelementptr inbounds %ViFiler, %ViFiler* %self59, i32 0, i32 4
  store i32 0, i32* %87, align 4
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %89 = bitcast i8* %88 to %ViFiler**
  %self60 = load %ViFiler*, %ViFiler** %89, align 8
  %90 = getelementptr inbounds %ViFiler, %ViFiler* %self60, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %letmp61 = icmp slt i32 %91, 0
  br i1 %letmp61, label %cond_jump_then62, label %cond_end63

cond_end54:                                       ; preds = %cond_end63, %cond_then_block43
  br label %end_block

cond_jump_then62:                                 ; preds = %cond_jump_then53
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %93 = bitcast i8* %92 to %ViFiler**
  %self64 = load %ViFiler*, %ViFiler** %93, align 8
  %94 = getelementptr inbounds %ViFiler, %ViFiler* %self64, i32 0, i32 3
  store i32 0, i32* %94, align 4
  br label %cond_end63

cond_end63:                                       ; preds = %cond_jump_then62, %cond_jump_then53
  br label %cond_end54

after_break65:                                    ; No predecessors!
  br label %cond_else_block46

cond_then_block66:                                ; preds = %cond_else_block46
  %self69 = load %ViFiler*, %ViFiler** %self1, align 8
  %self70 = load %ViFiler*, %ViFiler** %self1, align 8
  %95 = getelementptr inbounds %ViFiler, %ViFiler* %self70, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %addtmp71 = add nsw i32 %96, 10
  %97 = getelementptr inbounds %ViFiler, %ViFiler* %self69, i32 0, i32 4
  store i32 %addtmp71, i32* %97, align 4
  %subttmp72 = sub nsw i32 %addtmp71, 10
  %self73 = load %ViFiler*, %ViFiler** %self1, align 8
  %98 = getelementptr inbounds %ViFiler, %ViFiler* %self73, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %maxy74 = load i32, i32* %maxy, align 4
  %getmp75 = icmp sge i32 %99, %maxy74
  br i1 %getmp75, label %cond_jump_then76, label %cond_end77

cond_else_block67:                                ; preds = %after_break118, %cond_else_block46
  %eqtmpY121 = icmp eq i32 %key7, 21
  br i1 %eqtmpY121, label %cond_then_block119, label %cond_else_block120

cond_jump_then76:                                 ; preds = %cond_then_block66
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %101 = bitcast i8* %100 to %ViFiler**
  %self78 = load %ViFiler*, %ViFiler** %101, align 8
  %102 = getelementptr inbounds %ViFiler, %ViFiler* %self78, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %105 = bitcast i8* %104 to i32*
  %maxy79 = load i32, i32* %105, align 4
  %subttmp80 = sub nsw i32 %103, %maxy79
  %scroll_num = alloca i32
  %106 = bitcast i32* %scroll_num to i8*
  store i8* %106, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i32 %subttmp80, i32* %scroll_num, align 4
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %108 = bitcast i8* %107 to %ViFiler**
  %self81 = load %ViFiler*, %ViFiler** %108, align 8
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %110 = bitcast i8* %109 to %ViFiler**
  %self82 = load %ViFiler*, %ViFiler** %110, align 8
  %111 = getelementptr inbounds %ViFiler, %ViFiler* %self82, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %scroll_num83 = load i32, i32* %scroll_num, align 4
  %addtmp84 = add nsw i32 %112, %scroll_num83
  %113 = getelementptr inbounds %ViFiler, %ViFiler* %self81, i32 0, i32 3
  store i32 %addtmp84, i32* %113, align 4
  %scroll_num85 = load i32, i32* %scroll_num, align 4
  %subttmp86 = sub nsw i32 %addtmp84, %scroll_num85
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %115 = bitcast i8* %114 to %ViFiler**
  %self87 = load %ViFiler*, %ViFiler** %115, align 8
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %117 = bitcast i8* %116 to %ViFiler**
  %self88 = load %ViFiler*, %ViFiler** %117, align 8
  %118 = getelementptr inbounds %ViFiler, %ViFiler* %self88, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %scroll_num89 = load i32, i32* %scroll_num, align 4
  %subttmp90 = sub nsw i32 %119, %scroll_num89
  %120 = getelementptr inbounds %ViFiler, %ViFiler* %self87, i32 0, i32 4
  store i32 %subttmp90, i32* %120, align 4
  %scroll_num91 = load i32, i32* %scroll_num, align 4
  %addtmp92 = add nsw i32 %subttmp90, %scroll_num91
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %122 = bitcast i8* %121 to %ViFiler**
  %self93 = load %ViFiler*, %ViFiler** %122, align 8
  %123 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %124 = bitcast i8* %123 to %ViFiler**
  %self94 = load %ViFiler*, %ViFiler** %124, align 8
  %125 = getelementptr inbounds %ViFiler, %ViFiler* %self94, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %subttmp95 = sub nsw i32 %126, 1
  %127 = getelementptr inbounds %ViFiler, %ViFiler* %self93, i32 0, i32 4
  store i32 %subttmp95, i32* %127, align 4
  %addtmp96 = add nsw i32 %subttmp95, 1
  %128 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %129 = bitcast i8* %128 to %ViFiler**
  %self97 = load %ViFiler*, %ViFiler** %129, align 8
  %130 = getelementptr inbounds %ViFiler, %ViFiler* %self97, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %133 = bitcast i8* %132 to %ViFiler**
  %self98 = load %ViFiler*, %ViFiler** %133, align 8
  %134 = getelementptr inbounds %ViFiler, %ViFiler* %self98, i32 0, i32 1
  %135 = load %list__charp*, %list__charp** %134, align 8
  %136 = call i32 @"list_length_charp65_vi++15filer"(%list__charp* %135)
  %getmp99 = icmp sge i32 %131, %136
  br i1 %getmp99, label %cond_jump_then100, label %cond_end101

cond_end77:                                       ; preds = %cond_end101, %cond_then_block66
  %self105 = load %ViFiler*, %ViFiler** %self1, align 8
  %137 = getelementptr inbounds %ViFiler, %ViFiler* %self105, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %self106 = load %ViFiler*, %ViFiler** %self1, align 8
  %139 = getelementptr inbounds %ViFiler, %ViFiler* %self106, i32 0, i32 1
  %140 = load %list__charp*, %list__charp** %139, align 8
  %141 = call i32 @"list_length_charp67_vi++15filer"(%list__charp* %140)
  %self107 = load %ViFiler*, %ViFiler** %self1, align 8
  %142 = getelementptr inbounds %ViFiler, %ViFiler* %self107, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %subttmp108 = sub nsw i32 %141, %143
  %subttmp109 = sub nsw i32 %subttmp108, 1
  %getmp110 = icmp sge i32 %138, %subttmp109
  br i1 %getmp110, label %cond_jump_then111, label %cond_end112

cond_jump_then100:                                ; preds = %cond_jump_then76
  %144 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %145 = bitcast i8* %144 to %ViFiler**
  %self102 = load %ViFiler*, %ViFiler** %145, align 8
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %147 = bitcast i8* %146 to %ViFiler**
  %self103 = load %ViFiler*, %ViFiler** %147, align 8
  %148 = getelementptr inbounds %ViFiler, %ViFiler* %self103, i32 0, i32 1
  %149 = load %list__charp*, %list__charp** %148, align 8
  %150 = call i32 @"list_length_charp66_vi++15filer"(%list__charp* %149)
  %subttmp104 = sub nsw i32 %150, 1
  %151 = getelementptr inbounds %ViFiler, %ViFiler* %self102, i32 0, i32 3
  store i32 %subttmp104, i32* %151, align 4
  br label %cond_end101

cond_end101:                                      ; preds = %cond_jump_then100, %cond_jump_then76
  br label %cond_end77

cond_jump_then111:                                ; preds = %cond_end77
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %153 = bitcast i8* %152 to %ViFiler**
  %self113 = load %ViFiler*, %ViFiler** %153, align 8
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %155 = bitcast i8* %154 to %ViFiler**
  %self114 = load %ViFiler*, %ViFiler** %155, align 8
  %156 = getelementptr inbounds %ViFiler, %ViFiler* %self114, i32 0, i32 1
  %157 = load %list__charp*, %list__charp** %156, align 8
  %158 = call i32 @"list_length_charp68_vi++15filer"(%list__charp* %157)
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %160 = bitcast i8* %159 to %ViFiler**
  %self115 = load %ViFiler*, %ViFiler** %160, align 8
  %161 = getelementptr inbounds %ViFiler, %ViFiler* %self115, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %subttmp116 = sub nsw i32 %158, %162
  %subttmp117 = sub nsw i32 %subttmp116, 1
  %163 = getelementptr inbounds %ViFiler, %ViFiler* %self113, i32 0, i32 4
  store i32 %subttmp117, i32* %163, align 4
  br label %cond_end112

cond_end112:                                      ; preds = %cond_jump_then111, %cond_end77
  br label %end_block

after_break118:                                   ; No predecessors!
  br label %cond_else_block67

cond_then_block119:                               ; preds = %cond_else_block67
  %self122 = load %ViFiler*, %ViFiler** %self1, align 8
  %self123 = load %ViFiler*, %ViFiler** %self1, align 8
  %164 = getelementptr inbounds %ViFiler, %ViFiler* %self123, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %subttmp124 = sub nsw i32 %165, 10
  %166 = getelementptr inbounds %ViFiler, %ViFiler* %self122, i32 0, i32 4
  store i32 %subttmp124, i32* %166, align 4
  %addtmp125 = add nsw i32 %subttmp124, 10
  %self126 = load %ViFiler*, %ViFiler** %self1, align 8
  %167 = getelementptr inbounds %ViFiler, %ViFiler* %self126, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %letmp127 = icmp slt i32 %168, 0
  br i1 %letmp127, label %cond_jump_then128, label %cond_end129

cond_else_block120:                               ; preds = %after_break145, %cond_else_block67
  %eqtmpY148 = icmp eq i32 %key7, 10
  br i1 %eqtmpY148, label %cond_then_block146, label %cond_else_block147

cond_jump_then128:                                ; preds = %cond_then_block119
  %169 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %170 = bitcast i8* %169 to %ViFiler**
  %self130 = load %ViFiler*, %ViFiler** %170, align 8
  %171 = getelementptr inbounds %ViFiler, %ViFiler* %self130, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %subttmp131 = sub nsw i32 0, %172
  %scroll_num132 = alloca i32
  %173 = bitcast i32* %scroll_num132 to i8*
  store i8* %173, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i32 %subttmp131, i32* %scroll_num132, align 4
  %174 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %175 = bitcast i8* %174 to %ViFiler**
  %self133 = load %ViFiler*, %ViFiler** %175, align 8
  %176 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %177 = bitcast i8* %176 to %ViFiler**
  %self134 = load %ViFiler*, %ViFiler** %177, align 8
  %178 = getelementptr inbounds %ViFiler, %ViFiler* %self134, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %scroll_num135 = load i32, i32* %scroll_num132, align 4
  %subttmp136 = sub nsw i32 %179, %scroll_num135
  %180 = getelementptr inbounds %ViFiler, %ViFiler* %self133, i32 0, i32 3
  store i32 %subttmp136, i32* %180, align 4
  %scroll_num137 = load i32, i32* %scroll_num132, align 4
  %addtmp138 = add nsw i32 %subttmp136, %scroll_num137
  %181 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %182 = bitcast i8* %181 to %ViFiler**
  %self139 = load %ViFiler*, %ViFiler** %182, align 8
  %183 = getelementptr inbounds %ViFiler, %ViFiler* %self139, i32 0, i32 4
  store i32 0, i32* %183, align 4
  %184 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %185 = bitcast i8* %184 to %ViFiler**
  %self140 = load %ViFiler*, %ViFiler** %185, align 8
  %186 = getelementptr inbounds %ViFiler, %ViFiler* %self140, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %letmp141 = icmp slt i32 %187, 0
  br i1 %letmp141, label %cond_jump_then142, label %cond_end143

cond_end129:                                      ; preds = %cond_end143, %cond_then_block119
  br label %end_block

cond_jump_then142:                                ; preds = %cond_jump_then128
  %188 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %189 = bitcast i8* %188 to %ViFiler**
  %self144 = load %ViFiler*, %ViFiler** %189, align 8
  %190 = getelementptr inbounds %ViFiler, %ViFiler* %self144, i32 0, i32 3
  store i32 0, i32* %190, align 4
  br label %cond_end143

cond_end143:                                      ; preds = %cond_jump_then142, %cond_jump_then128
  br label %cond_end129

after_break145:                                   ; No predecessors!
  br label %cond_else_block120

cond_then_block146:                               ; preds = %cond_else_block120
  %nvi149 = load %Vi*, %Vi** %nvi2, align 8
  %191 = getelementptr inbounds %Vi, %Vi* %nvi149, i32 0, i32 1
  %192 = load %ViWin*, %ViWin** %191, align 8
  call void @ViWin_writeFile-6(%ViWin* %192)
  %nvi150 = load %Vi*, %Vi** %nvi2, align 8
  %file_name151 = load i8*, i8** %file_name, align 8
  call void @Vi_openFile-6(%Vi* %nvi150, i8* %file_name151, i32 -1)
  %self152 = load %ViFiler*, %ViFiler** %self1, align 8
  %193 = getelementptr inbounds %ViFiler, %ViFiler* %self152, i32 0, i32 6
  store i1 false, i1* %193, align 1
  br label %end_block

cond_else_block147:                               ; preds = %after_break153, %cond_else_block120
  %eqtmpY156 = icmp eq i32 %key7, 15
  br i1 %eqtmpY156, label %cond_then_block154, label %cond_else_block155

after_break153:                                   ; No predecessors!
  br label %cond_else_block147

cond_then_block154:                               ; preds = %cond_else_block155, %cond_else_block147
  %self159 = load %ViFiler*, %ViFiler** %self1, align 8
  %194 = getelementptr inbounds %ViFiler, %ViFiler* %self159, i32 0, i32 6
  store i1 false, i1* %194, align 1
  br label %end_block

cond_else_block155:                               ; preds = %cond_else_block147
  %eqtmpY158 = icmp eq i32 %key7, 3
  br i1 %eqtmpY158, label %cond_then_block154, label %cond_else_block157

cond_else_block157:                               ; preds = %after_break160, %cond_else_block155
  %eqtmpY163 = icmp eq i32 %key7, 111
  br i1 %eqtmpY163, label %cond_then_block161, label %cond_else_block162

after_break160:                                   ; No predecessors!
  br label %cond_else_block157

cond_then_block161:                               ; preds = %cond_else_block157
  %nvi164 = load %Vi*, %Vi** %nvi2, align 8
  %file_name165 = load i8*, i8** %file_name, align 8
  call void @Vi_openNewFile-6(%Vi* %nvi164, i8* %file_name165)
  %self166 = load %ViFiler*, %ViFiler** %self1, align 8
  %195 = getelementptr inbounds %ViFiler, %ViFiler* %self166, i32 0, i32 6
  store i1 false, i1* %195, align 1
  br label %end_block

cond_else_block162:                               ; preds = %after_break167, %cond_else_block157
  br label %end_block

after_break167:                                   ; No predecessors!
  br label %cond_else_block162
}

define i8* @"list_item_charp60_vi++15filer"(%list__charp* %self, i32 %position, i8* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %default_value3 = alloca i8*
  store i8* %default_value, i8** %default_value3, align 8
  %4 = bitcast i8** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %8 = bitcast i8* %7 to %list__charp**
  %self6 = load %list__charp*, %list__charp** %8, align 8
  %9 = getelementptr inbounds %list__charp, %list__charp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %14 = bitcast i8* %13 to %list__charp**
  %self7 = load %list__charp*, %list__charp** %14, align 8
  %15 = getelementptr inbounds %list__charp, %list__charp* %self7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, %16
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %self8 = load %list__charp*, %list__charp** %self1, align 8
  %17 = getelementptr inbounds %list__charp, %list__charp* %self8, i32 0, i32 0
  %18 = load %list_item__charp*, %list_item__charp** %17, align 8
  %it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store %list_item__charp* %18, %list_item__charp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %24 = bitcast i8* %23 to i32*
  %i11 = load i32, i32* %24, align 4
  %eqtmpX = icmp eq i32 %position10, %i11
  br i1 %eqtmpX, label %cond_jump_then12, label %cond_end13

cond_end_block:                                   ; preds = %loop_top_block
  %default_value19 = load i8*, i8** %default_value3, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i8* %default_value19

cond_jump_then12:                                 ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %28 = bitcast i8* %27 to %list_item__charp**
  %it14 = load %list_item__charp*, %list_item__charp** %28, align 8
  %29 = getelementptr inbounds %list_item__charp, %list_item__charp* %it14, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i8* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %34 = bitcast i8* %33 to %list_item__charp**
  %it15 = load %list_item__charp*, %list_item__charp** %34, align 8
  %35 = getelementptr inbounds %list_item__charp, %list_item__charp* %it15, i32 0, i32 2
  %36 = load %list_item__charp*, %list_item__charp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %38 = bitcast i8* %37 to %list_item__charp**
  store %list_item__charp* %36, %list_item__charp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define i32 @"list_length_charp61_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"list_length_charp62_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"list_length_charp63_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"list_length_charp64_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"list_length_charp65_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"list_length_charp66_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"list_length_charp67_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"list_length_charp68_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %3 = getelementptr inbounds %list__charp, %list__charp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define void @xclear(%_win_st* %win) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %win1 = alloca %_win_st*
  store %_win_st* %win, %_win_st** %win1, align 8
  %2 = bitcast %_win_st** %win1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %win2 = load %_win_st*, %_win_st** %win1, align 8
  %3 = call i32 @werase(%_win_st* %win2)
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret void
}

define void @sig_winch(i32 %sig_num) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %sig_num1 = alloca i32
  store i32 %sig_num, i32* %sig_num1, align 4
  %2 = bitcast i32* %sig_num1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %gVi = load %Vi*, %Vi** @gVi, align 8
  call void @Vi_repositionWindows-6(%Vi* %gVi)
  %gVi2 = load %Vi*, %Vi** @gVi, align 8
  call void @Vi_repositionFiler-15(%Vi* %gVi2)
  %gVi3 = load %Vi*, %Vi** @gVi, align 8
  call void @Vi_clearView-15(%Vi* %gVi3)
  %gVi4 = load %Vi*, %Vi** @gVi, align 8
  call void @Vi_view-15(%Vi* %gVi4)
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void
}

define void @"list_finalize_charp69_vi++15filer"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xfree(i8* %29)
  br label %loop_top_block
}

define void @"vi++15filer_lambda3"(%ViWin* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca %ViWin*
  store %ViWin* %it, %ViWin** %it1, align 8
  %2 = bitcast %ViWin** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %it4 = load %ViWin*, %ViWin** %it1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %it4, i32 0, i32 0
  %6 = load %_win_st*, %_win_st** %5, align 8
  call void @xclear(%_win_st* %6)
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret void
}

define void @"list_each_ViWinp71_vi++15filer"(%list__ViWinp* %self, void (%ViWin*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__ViWinp*
  store %list__ViWinp* %self, %list__ViWinp** %self1, align 8
  %2 = bitcast %list__ViWinp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %block_2 = alloca void (%ViWin*, i32, i1*)*
  store void (%ViWin*, i32, i1*)* %block_, void (%ViWin*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (%ViWin*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self3 = load %list__ViWinp*, %list__ViWinp** %self1, align 8
  %4 = getelementptr inbounds %list__ViWinp, %list__ViWinp* %self3, i32 0, i32 0
  %5 = load %list_item__ViWinp*, %list_item__ViWinp** %4, align 8
  %it_ = alloca %list_item__ViWinp*
  %6 = bitcast %list_item__ViWinp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store %list_item__ViWinp* %5, %list_item__ViWinp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__ViWinp*, %list_item__ViWinp** %it_, align 8
  %noteqtmp = icmp ne %list_item__ViWinp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %10 = bitcast i8* %9 to void (%ViWin*, i32, i1*)**
  %block_5 = load void (%ViWin*, i32, i1*)*, void (%ViWin*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %12 = bitcast i8* %11 to %list_item__ViWinp**
  %it_6 = load %list_item__ViWinp*, %list_item__ViWinp** %12, align 8
  %13 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_6, i32 0, i32 0
  %14 = load %ViWin*, %ViWin** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %16 = bitcast i8* %15 to i32*
  %i_7 = load i32, i32* %16, align 4
  %end_flag_8 = load i1, i1* %end_flag_, align 1
  call void %block_5(%ViWin* %14, i32 %i_7, i1* %end_flag_)
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_9, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %20 = bitcast i8* %19 to %list_item__ViWinp**
  %it_10 = load %list_item__ViWinp*, %list_item__ViWinp** %20, align 8
  %21 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_10, i32 0, i32 2
  %22 = load %list_item__ViWinp*, %list_item__ViWinp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %24 = bitcast i8* %23 to %list_item__ViWinp**
  store %list_item__ViWinp* %22, %list_item__ViWinp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @"vi++15filer_lambda4"(%ViWin* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca %ViWin*
  store %ViWin* %it, %ViWin** %it1, align 8
  %2 = bitcast %ViWin** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %it4 = load %ViWin*, %ViWin** %it1, align 8
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %6 = bitcast i8* %5 to %Vi**
  %self = load %Vi*, %Vi** %6, align 8
  call void @ViWin_view-12(%ViWin* %it4, %Vi* %self)
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret void
}

define void @"list_each_ViWinp72_vi++15filer"(%list__ViWinp* %self, void (%ViWin*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__ViWinp*
  store %list__ViWinp* %self, %list__ViWinp** %self1, align 8
  %2 = bitcast %list__ViWinp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %block_2 = alloca void (%ViWin*, i32, i1*)*
  store void (%ViWin*, i32, i1*)* %block_, void (%ViWin*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (%ViWin*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self3 = load %list__ViWinp*, %list__ViWinp** %self1, align 8
  %4 = getelementptr inbounds %list__ViWinp, %list__ViWinp* %self3, i32 0, i32 0
  %5 = load %list_item__ViWinp*, %list_item__ViWinp** %4, align 8
  %it_ = alloca %list_item__ViWinp*
  %6 = bitcast %list_item__ViWinp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store %list_item__ViWinp* %5, %list_item__ViWinp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__ViWinp*, %list_item__ViWinp** %it_, align 8
  %noteqtmp = icmp ne %list_item__ViWinp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %10 = bitcast i8* %9 to void (%ViWin*, i32, i1*)**
  %block_5 = load void (%ViWin*, i32, i1*)*, void (%ViWin*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %12 = bitcast i8* %11 to %list_item__ViWinp**
  %it_6 = load %list_item__ViWinp*, %list_item__ViWinp** %12, align 8
  %13 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_6, i32 0, i32 0
  %14 = load %ViWin*, %ViWin** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %16 = bitcast i8* %15 to i32*
  %i_7 = load i32, i32* %16, align 4
  %end_flag_8 = load i1, i1* %end_flag_, align 1
  call void %block_5(%ViWin* %14, i32 %i_7, i1* %end_flag_)
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_9, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %20 = bitcast i8* %19 to %list_item__ViWinp**
  %it_10 = load %list_item__ViWinp*, %list_item__ViWinp** %20, align 8
  %21 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_10, i32 0, i32 2
  %22 = load %list_item__ViWinp*, %list_item__ViWinp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %24 = bitcast i8* %23 to %list_item__ViWinp**
  store %list_item__ViWinp* %22, %list_item__ViWinp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @"vi++15filer_lambda5"(%ViWin* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca %ViWin*
  store %ViWin* %it, %ViWin** %it1, align 8
  %2 = bitcast %ViWin** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %it4 = load %ViWin*, %ViWin** %it1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %it4, i32 0, i32 0
  %6 = load %_win_st*, %_win_st** %5, align 8
  %7 = call i32 @wrefresh(%_win_st* %6)
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void
}

define void @"list_each_ViWinp73_vi++15filer"(%list__ViWinp* %self, void (%ViWin*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__ViWinp*
  store %list__ViWinp* %self, %list__ViWinp** %self1, align 8
  %2 = bitcast %list__ViWinp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %block_2 = alloca void (%ViWin*, i32, i1*)*
  store void (%ViWin*, i32, i1*)* %block_, void (%ViWin*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (%ViWin*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self3 = load %list__ViWinp*, %list__ViWinp** %self1, align 8
  %4 = getelementptr inbounds %list__ViWinp, %list__ViWinp* %self3, i32 0, i32 0
  %5 = load %list_item__ViWinp*, %list_item__ViWinp** %4, align 8
  %it_ = alloca %list_item__ViWinp*
  %6 = bitcast %list_item__ViWinp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store %list_item__ViWinp* %5, %list_item__ViWinp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__ViWinp*, %list_item__ViWinp** %it_, align 8
  %noteqtmp = icmp ne %list_item__ViWinp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %10 = bitcast i8* %9 to void (%ViWin*, i32, i1*)**
  %block_5 = load void (%ViWin*, i32, i1*)*, void (%ViWin*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %12 = bitcast i8* %11 to %list_item__ViWinp**
  %it_6 = load %list_item__ViWinp*, %list_item__ViWinp** %12, align 8
  %13 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_6, i32 0, i32 0
  %14 = load %ViWin*, %ViWin** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %16 = bitcast i8* %15 to i32*
  %i_7 = load i32, i32* %16, align 4
  %end_flag_8 = load i1, i1* %end_flag_, align 1
  call void %block_5(%ViWin* %14, i32 %i_7, i1* %end_flag_)
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_9, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %20 = bitcast i8* %19 to %list_item__ViWinp**
  %it_10 = load %list_item__ViWinp*, %list_item__ViWinp** %20, align 8
  %21 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_10, i32 0, i32 2
  %22 = load %list_item__ViWinp*, %list_item__ViWinp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %24 = bitcast i8* %23 to %list_item__ViWinp**
  store %list_item__ViWinp* %22, %list_item__ViWinp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @"vi++15filer_lambda6"(%ViWin* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca %ViWin*
  store %ViWin* %it, %ViWin** %it1, align 8
  %2 = bitcast %ViWin** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %it4 = load %ViWin*, %ViWin** %it1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %it4, i32 0, i32 0
  %6 = load %_win_st*, %_win_st** %5, align 8
  %7 = call i32 @clearok(%_win_st* %6, i1 true)
  %it5 = load %ViWin*, %ViWin** %it1, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %it5, i32 0, i32 0
  %9 = load %_win_st*, %_win_st** %8, align 8
  %10 = call i32 @wclear(%_win_st* %9)
  %it6 = load %ViWin*, %ViWin** %it1, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %it6, i32 0, i32 0
  %12 = load %_win_st*, %_win_st** %11, align 8
  %13 = call i32 @clearok(%_win_st* %12, i1 false)
  %it7 = load %ViWin*, %ViWin** %it1, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %15 = bitcast i8* %14 to %Vi**
  %self = load %Vi*, %Vi** %15, align 8
  call void @ViWin_view-12(%ViWin* %it7, %Vi* %self)
  %it8 = load %ViWin*, %ViWin** %it1, align 8
  %16 = getelementptr inbounds %ViWin, %ViWin* %it8, i32 0, i32 0
  %17 = load %_win_st*, %_win_st** %16, align 8
  %18 = call i32 @wrefresh(%_win_st* %17)
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret void
}

define void @"list_each_ViWinp74_vi++15filer"(%list__ViWinp* %self, void (%ViWin*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__ViWinp*
  store %list__ViWinp* %self, %list__ViWinp** %self1, align 8
  %2 = bitcast %list__ViWinp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %block_2 = alloca void (%ViWin*, i32, i1*)*
  store void (%ViWin*, i32, i1*)* %block_, void (%ViWin*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (%ViWin*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %self3 = load %list__ViWinp*, %list__ViWinp** %self1, align 8
  %4 = getelementptr inbounds %list__ViWinp, %list__ViWinp* %self3, i32 0, i32 0
  %5 = load %list_item__ViWinp*, %list_item__ViWinp** %4, align 8
  %it_ = alloca %list_item__ViWinp*
  %6 = bitcast %list_item__ViWinp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store %list_item__ViWinp* %5, %list_item__ViWinp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__ViWinp*, %list_item__ViWinp** %it_, align 8
  %noteqtmp = icmp ne %list_item__ViWinp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %10 = bitcast i8* %9 to void (%ViWin*, i32, i1*)**
  %block_5 = load void (%ViWin*, i32, i1*)*, void (%ViWin*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %12 = bitcast i8* %11 to %list_item__ViWinp**
  %it_6 = load %list_item__ViWinp*, %list_item__ViWinp** %12, align 8
  %13 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_6, i32 0, i32 0
  %14 = load %ViWin*, %ViWin** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %16 = bitcast i8* %15 to i32*
  %i_7 = load i32, i32* %16, align 4
  %end_flag_8 = load i1, i1* %end_flag_, align 1
  call void %block_5(%ViWin* %14, i32 %i_7, i1* %end_flag_)
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_9, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %20 = bitcast i8* %19 to %list_item__ViWinp**
  %it_10 = load %list_item__ViWinp*, %list_item__ViWinp** %20, align 8
  %21 = getelementptr inbounds %list_item__ViWinp, %list_item__ViWinp* %it_10, i32 0, i32 2
  %22 = load %list_item__ViWinp*, %list_item__ViWinp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %24 = bitcast i8* %23 to %list_item__ViWinp**
  store %list_item__ViWinp* %22, %list_item__ViWinp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

attributes #0 = { nounwind }
