; ModuleID = 'Module vi++13completion'
source_filename = "Module vi++13completion"

%_IO_FILE_plus = type {}
%_IO_FILE = type opaque
%anon27 = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%anon28 = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%anon29 = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%_win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i1, i1, i1, i1, i1, i1, i1, i1, i1, i32, %ldat*, i16, i16, i32, i32, %_win_st*, %anon83, i16 }
%ldat = type opaque
%anon83 = type { i16, i16, i16, i16, i16, i16 }
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
%list__charp = type { %list_item__charp*, %list_item__charp*, i32 }
%list_item__charp = type { i8*, %list_item__charp*, %list_item__charp* }
%screen = type opaque
%anon84 = type { i16, i32, i32, i32, i64 }
%ViWin = type { %_win_st*, %list__intp*, i32, i32, i32, i32, i32, i32, i32, %list__listp__intp*, %list__int*, %list__int*, %list__int*, i32, i8*, i1, i32, %vector__int*, %vector__int*, i1, i32, i1 }
%list__intp = type { %list_item__intp*, %list_item__intp*, i32 }
%list_item__intp = type { i32*, %list_item__intp*, %list_item__intp* }
%list__listp__intp = type { %list_item__listp__intp*, %list_item__listp__intp*, i32 }
%list_item__listp__intp = type { %list__intp*, %list_item__listp__intp*, %list_item__listp__intp* }
%list__int = type { %list_item__int*, %list_item__int*, i32 }
%list_item__int = type { i32, %list_item__int*, %list_item__int* }
%vector__int = type { i32*, i32, i32 }
%Vi = type { %list__ViWinp*, %ViWin*, %vector__lambdap*, i1, i32, i32, %list__intp*, i32, i32*, i8*, %ViFiler* }
%list__ViWinp = type { %list_item__ViWinp*, %list_item__ViWinp*, i32 }
%list_item__ViWinp = type { %ViWin*, %list_item__ViWinp*, %list_item__ViWinp* }
%vector__lambdap = type { void (%Vi*, i32)**, i32, i32 }
%ViFiler = type { i8*, %list__charp*, %_win_st*, i32, i32, i32, i1 }

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
@global_string = private constant [4 x i8] c"%ls\00", align 1
@global_string.1 = private constant [4 x i8] c"%ls\00", align 1
@global_string.2 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.3 = private constant [20 x i8] c"vi++13completion.nc\00", align 1
@global_string.4 = private constant [11 x i8] c"completion\00", align 1
@global_string.5 = private constant [17 x i8] c"ViWin_completion\00", align 1
@global_string.6 = private constant [1 x i8] zeroinitializer, align 1
@global_string.7 = private constant [14 x i8] c"[a-zA-Z0-9_]+\00", align 1
@global_string.8 = private constant [1 x i8] zeroinitializer, align 1
@global_string.9 = private constant [1 x i8] zeroinitializer, align 1
@global_string.10 = private constant [1 x i8] zeroinitializer, align 1
@global_string.11 = private constant [14 x i8] c"[a-zA-Z0-9_]+\00", align 1
@global_string.12 = private constant [1 x i8] zeroinitializer, align 1
@global_string.13 = private constant [1 x i8] zeroinitializer, align 1
@global_string.14 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.15 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.16 = private constant [33 x i8] c"push_back_intp5_vi++13completion\00", align 1
@global_string.17 = private constant [38 x i8] c"list_push_back_intp5_vi++13completion\00", align 1
@global_string.18 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.19 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.20 = private constant [33 x i8] c"push_back_intp5_vi++13completion\00", align 1
@global_string.21 = private constant [38 x i8] c"list_push_back_intp5_vi++13completion\00", align 1
@global_string.22 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.23 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.24 = private constant [33 x i8] c"push_back_intp5_vi++13completion\00", align 1
@global_string.25 = private constant [38 x i8] c"list_push_back_intp5_vi++13completion\00", align 1
@global_string.26 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.27 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.28 = private constant [30 x i8] c"clone_intp12_vi++13completion\00", align 1
@global_string.29 = private constant [35 x i8] c"list_clone_intp12_vi++13completion\00", align 1
@global_string.30 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.31 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.32 = private constant [34 x i8] c"push_back_intp14_vi++13completion\00", align 1
@global_string.33 = private constant [39 x i8] c"list_push_back_intp14_vi++13completion\00", align 1
@global_string.34 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.35 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.36 = private constant [34 x i8] c"push_back_intp14_vi++13completion\00", align 1
@global_string.37 = private constant [39 x i8] c"list_push_back_intp14_vi++13completion\00", align 1
@global_string.38 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.39 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.40 = private constant [34 x i8] c"push_back_intp14_vi++13completion\00", align 1
@global_string.41 = private constant [39 x i8] c"list_push_back_intp14_vi++13completion\00", align 1
@global_string.42 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.43 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.44 = private constant [34 x i8] c"push_back_intp15_vi++13completion\00", align 1
@global_string.45 = private constant [39 x i8] c"list_push_back_intp15_vi++13completion\00", align 1
@global_string.46 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.47 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.48 = private constant [34 x i8] c"push_back_intp15_vi++13completion\00", align 1
@global_string.49 = private constant [39 x i8] c"list_push_back_intp15_vi++13completion\00", align 1
@global_string.50 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.51 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.52 = private constant [34 x i8] c"push_back_intp15_vi++13completion\00", align 1
@global_string.53 = private constant [39 x i8] c"list_push_back_intp15_vi++13completion\00", align 1
@global_string.54 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.55 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.56 = private constant [30 x i8] c"clone_intp16_vi++13completion\00", align 1
@global_string.57 = private constant [35 x i8] c"list_clone_intp16_vi++13completion\00", align 1
@global_string.58 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.59 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.60 = private constant [34 x i8] c"push_back_intp18_vi++13completion\00", align 1
@global_string.61 = private constant [39 x i8] c"list_push_back_intp18_vi++13completion\00", align 1
@global_string.62 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.63 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.64 = private constant [34 x i8] c"push_back_intp18_vi++13completion\00", align 1
@global_string.65 = private constant [39 x i8] c"list_push_back_intp18_vi++13completion\00", align 1
@global_string.66 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.67 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.68 = private constant [34 x i8] c"push_back_intp18_vi++13completion\00", align 1
@global_string.69 = private constant [39 x i8] c"list_push_back_intp18_vi++13completion\00", align 1
@global_string.70 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.71 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.72 = private constant [34 x i8] c"push_back_intp19_vi++13completion\00", align 1
@global_string.73 = private constant [39 x i8] c"list_push_back_intp19_vi++13completion\00", align 1
@global_string.74 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.75 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.76 = private constant [34 x i8] c"push_back_intp19_vi++13completion\00", align 1
@global_string.77 = private constant [39 x i8] c"list_push_back_intp19_vi++13completion\00", align 1
@global_string.78 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.79 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.80 = private constant [34 x i8] c"push_back_intp19_vi++13completion\00", align 1
@global_string.81 = private constant [39 x i8] c"list_push_back_intp19_vi++13completion\00", align 1
@global_string.82 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.83 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.84 = private constant [35 x i8] c"merge_sort_intp11_vi++13completion\00", align 1
@global_string.85 = private constant [40 x i8] c"list_merge_sort_intp11_vi++13completion\00", align 1
@global_string.86 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.87 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.88 = private constant [35 x i8] c"merge_sort_intp11_vi++13completion\00", align 1
@global_string.89 = private constant [40 x i8] c"list_merge_sort_intp11_vi++13completion\00", align 1
@global_string.90 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.91 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.92 = private constant [34 x i8] c"push_back_intp22_vi++13completion\00", align 1
@global_string.93 = private constant [39 x i8] c"list_push_back_intp22_vi++13completion\00", align 1
@global_string.94 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.95 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.96 = private constant [34 x i8] c"push_back_intp22_vi++13completion\00", align 1
@global_string.97 = private constant [39 x i8] c"list_push_back_intp22_vi++13completion\00", align 1
@global_string.98 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.99 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.100 = private constant [34 x i8] c"push_back_intp22_vi++13completion\00", align 1
@global_string.101 = private constant [39 x i8] c"list_push_back_intp22_vi++13completion\00", align 1
@global_string.102 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.103 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.104 = private constant [34 x i8] c"push_back_intp23_vi++13completion\00", align 1
@global_string.105 = private constant [39 x i8] c"list_push_back_intp23_vi++13completion\00", align 1
@global_string.106 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.107 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.108 = private constant [34 x i8] c"push_back_intp23_vi++13completion\00", align 1
@global_string.109 = private constant [39 x i8] c"list_push_back_intp23_vi++13completion\00", align 1
@global_string.110 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.111 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.112 = private constant [34 x i8] c"push_back_intp23_vi++13completion\00", align 1
@global_string.113 = private constant [39 x i8] c"list_push_back_intp23_vi++13completion\00", align 1
@global_string.114 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.115 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.116 = private constant [34 x i8] c"push_back_intp24_vi++13completion\00", align 1
@global_string.117 = private constant [39 x i8] c"list_push_back_intp24_vi++13completion\00", align 1
@global_string.118 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.119 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.120 = private constant [34 x i8] c"push_back_intp24_vi++13completion\00", align 1
@global_string.121 = private constant [39 x i8] c"list_push_back_intp24_vi++13completion\00", align 1
@global_string.122 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.123 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.124 = private constant [34 x i8] c"push_back_intp24_vi++13completion\00", align 1
@global_string.125 = private constant [39 x i8] c"list_push_back_intp24_vi++13completion\00", align 1
@global_string.126 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.127 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.128 = private constant [34 x i8] c"push_back_intp25_vi++13completion\00", align 1
@global_string.129 = private constant [39 x i8] c"list_push_back_intp25_vi++13completion\00", align 1
@global_string.130 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.131 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.132 = private constant [34 x i8] c"push_back_intp25_vi++13completion\00", align 1
@global_string.133 = private constant [39 x i8] c"list_push_back_intp25_vi++13completion\00", align 1
@global_string.134 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.135 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.136 = private constant [34 x i8] c"push_back_intp25_vi++13completion\00", align 1
@global_string.137 = private constant [39 x i8] c"list_push_back_intp25_vi++13completion\00", align 1
@global_string.138 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.139 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.140 = private constant [34 x i8] c"push_back_intp26_vi++13completion\00", align 1
@global_string.141 = private constant [39 x i8] c"list_push_back_intp26_vi++13completion\00", align 1
@global_string.142 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.143 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.144 = private constant [34 x i8] c"push_back_intp26_vi++13completion\00", align 1
@global_string.145 = private constant [39 x i8] c"list_push_back_intp26_vi++13completion\00", align 1
@global_string.146 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.147 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.148 = private constant [34 x i8] c"push_back_intp26_vi++13completion\00", align 1
@global_string.149 = private constant [39 x i8] c"list_push_back_intp26_vi++13completion\00", align 1
@global_string.150 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.151 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.152 = private constant [34 x i8] c"push_back_intp27_vi++13completion\00", align 1
@global_string.153 = private constant [39 x i8] c"list_push_back_intp27_vi++13completion\00", align 1
@global_string.154 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.155 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.156 = private constant [34 x i8] c"push_back_intp27_vi++13completion\00", align 1
@global_string.157 = private constant [39 x i8] c"list_push_back_intp27_vi++13completion\00", align 1
@global_string.158 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.159 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.160 = private constant [34 x i8] c"push_back_intp27_vi++13completion\00", align 1
@global_string.161 = private constant [39 x i8] c"list_push_back_intp27_vi++13completion\00", align 1
@global_string.162 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.163 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.164 = private constant [35 x i8] c"merge_list_intp32_vi++13completion\00", align 1
@global_string.165 = private constant [40 x i8] c"list_merge_list_intp32_vi++13completion\00", align 1
@global_string.166 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.167 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.168 = private constant [34 x i8] c"push_back_intp34_vi++13completion\00", align 1
@global_string.169 = private constant [39 x i8] c"list_push_back_intp34_vi++13completion\00", align 1
@global_string.170 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.171 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.172 = private constant [34 x i8] c"push_back_intp34_vi++13completion\00", align 1
@global_string.173 = private constant [39 x i8] c"list_push_back_intp34_vi++13completion\00", align 1
@global_string.174 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.175 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.176 = private constant [34 x i8] c"push_back_intp34_vi++13completion\00", align 1
@global_string.177 = private constant [39 x i8] c"list_push_back_intp34_vi++13completion\00", align 1
@global_string.178 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.179 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.180 = private constant [34 x i8] c"push_back_intp35_vi++13completion\00", align 1
@global_string.181 = private constant [39 x i8] c"list_push_back_intp35_vi++13completion\00", align 1
@global_string.182 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.183 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.184 = private constant [34 x i8] c"push_back_intp35_vi++13completion\00", align 1
@global_string.185 = private constant [39 x i8] c"list_push_back_intp35_vi++13completion\00", align 1
@global_string.186 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.187 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.188 = private constant [34 x i8] c"push_back_intp35_vi++13completion\00", align 1
@global_string.189 = private constant [39 x i8] c"list_push_back_intp35_vi++13completion\00", align 1
@global_string.190 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.191 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.192 = private constant [34 x i8] c"push_back_intp36_vi++13completion\00", align 1
@global_string.193 = private constant [39 x i8] c"list_push_back_intp36_vi++13completion\00", align 1
@global_string.194 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.195 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.196 = private constant [34 x i8] c"push_back_intp36_vi++13completion\00", align 1
@global_string.197 = private constant [39 x i8] c"list_push_back_intp36_vi++13completion\00", align 1
@global_string.198 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.199 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.200 = private constant [34 x i8] c"push_back_intp36_vi++13completion\00", align 1
@global_string.201 = private constant [39 x i8] c"list_push_back_intp36_vi++13completion\00", align 1
@global_string.202 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.203 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.204 = private constant [34 x i8] c"push_back_intp37_vi++13completion\00", align 1
@global_string.205 = private constant [39 x i8] c"list_push_back_intp37_vi++13completion\00", align 1
@global_string.206 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.207 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.208 = private constant [34 x i8] c"push_back_intp37_vi++13completion\00", align 1
@global_string.209 = private constant [39 x i8] c"list_push_back_intp37_vi++13completion\00", align 1
@global_string.210 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.211 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.212 = private constant [34 x i8] c"push_back_intp37_vi++13completion\00", align 1
@global_string.213 = private constant [39 x i8] c"list_push_back_intp37_vi++13completion\00", align 1
@global_string.214 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.215 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.216 = private constant [34 x i8] c"push_back_intp38_vi++13completion\00", align 1
@global_string.217 = private constant [39 x i8] c"list_push_back_intp38_vi++13completion\00", align 1
@global_string.218 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.219 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.220 = private constant [34 x i8] c"push_back_intp38_vi++13completion\00", align 1
@global_string.221 = private constant [39 x i8] c"list_push_back_intp38_vi++13completion\00", align 1
@global_string.222 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.223 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.224 = private constant [34 x i8] c"push_back_intp38_vi++13completion\00", align 1
@global_string.225 = private constant [39 x i8] c"list_push_back_intp38_vi++13completion\00", align 1
@global_string.226 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.227 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.228 = private constant [34 x i8] c"push_back_intp39_vi++13completion\00", align 1
@global_string.229 = private constant [39 x i8] c"list_push_back_intp39_vi++13completion\00", align 1
@global_string.230 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.231 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.232 = private constant [34 x i8] c"push_back_intp39_vi++13completion\00", align 1
@global_string.233 = private constant [39 x i8] c"list_push_back_intp39_vi++13completion\00", align 1
@global_string.234 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.235 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.236 = private constant [34 x i8] c"push_back_intp39_vi++13completion\00", align 1
@global_string.237 = private constant [39 x i8] c"list_push_back_intp39_vi++13completion\00", align 1
@global_string.238 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.239 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.240 = private constant [34 x i8] c"push_back_intp40_vi++13completion\00", align 1
@global_string.241 = private constant [39 x i8] c"list_push_back_intp40_vi++13completion\00", align 1
@global_string.242 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.243 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.244 = private constant [34 x i8] c"push_back_intp40_vi++13completion\00", align 1
@global_string.245 = private constant [39 x i8] c"list_push_back_intp40_vi++13completion\00", align 1
@global_string.246 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.247 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.248 = private constant [34 x i8] c"push_back_intp40_vi++13completion\00", align 1
@global_string.249 = private constant [39 x i8] c"list_push_back_intp40_vi++13completion\00", align 1
@global_string.250 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.251 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.252 = private constant [34 x i8] c"push_back_intp41_vi++13completion\00", align 1
@global_string.253 = private constant [39 x i8] c"list_push_back_intp41_vi++13completion\00", align 1
@global_string.254 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.255 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.256 = private constant [34 x i8] c"push_back_intp41_vi++13completion\00", align 1
@global_string.257 = private constant [39 x i8] c"list_push_back_intp41_vi++13completion\00", align 1
@global_string.258 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.259 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.260 = private constant [34 x i8] c"push_back_intp41_vi++13completion\00", align 1
@global_string.261 = private constant [39 x i8] c"list_push_back_intp41_vi++13completion\00", align 1
@global_string.262 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.263 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.264 = private constant [29 x i8] c"uniq_intp50_vi++13completion\00", align 1
@global_string.265 = private constant [34 x i8] c"list_uniq_intp50_vi++13completion\00", align 1
@global_string.266 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.267 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.268 = private constant [34 x i8] c"push_back_intp54_vi++13completion\00", align 1
@global_string.269 = private constant [39 x i8] c"list_push_back_intp54_vi++13completion\00", align 1
@global_string.270 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.271 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.272 = private constant [34 x i8] c"push_back_intp54_vi++13completion\00", align 1
@global_string.273 = private constant [39 x i8] c"list_push_back_intp54_vi++13completion\00", align 1
@global_string.274 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.275 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.276 = private constant [34 x i8] c"push_back_intp54_vi++13completion\00", align 1
@global_string.277 = private constant [39 x i8] c"list_push_back_intp54_vi++13completion\00", align 1
@global_string.278 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.279 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.280 = private constant [34 x i8] c"push_back_intp55_vi++13completion\00", align 1
@global_string.281 = private constant [39 x i8] c"list_push_back_intp55_vi++13completion\00", align 1
@global_string.282 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.283 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.284 = private constant [34 x i8] c"push_back_intp55_vi++13completion\00", align 1
@global_string.285 = private constant [39 x i8] c"list_push_back_intp55_vi++13completion\00", align 1
@global_string.286 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.287 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.288 = private constant [34 x i8] c"push_back_intp55_vi++13completion\00", align 1
@global_string.289 = private constant [39 x i8] c"list_push_back_intp55_vi++13completion\00", align 1
@global_string.290 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.291 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.292 = private constant [32 x i8] c"sublist_intp56_vi++13completion\00", align 1
@global_string.293 = private constant [37 x i8] c"list_sublist_intp56_vi++13completion\00", align 1
@global_string.294 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.295 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.296 = private constant [34 x i8] c"push_back_intp58_vi++13completion\00", align 1
@global_string.297 = private constant [39 x i8] c"list_push_back_intp58_vi++13completion\00", align 1
@global_string.298 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.299 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.300 = private constant [34 x i8] c"push_back_intp58_vi++13completion\00", align 1
@global_string.301 = private constant [39 x i8] c"list_push_back_intp58_vi++13completion\00", align 1
@global_string.302 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.303 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.304 = private constant [34 x i8] c"push_back_intp58_vi++13completion\00", align 1
@global_string.305 = private constant [39 x i8] c"list_push_back_intp58_vi++13completion\00", align 1
@global_string.306 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.307 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.308 = private constant [34 x i8] c"push_back_intp59_vi++13completion\00", align 1
@global_string.309 = private constant [39 x i8] c"list_push_back_intp59_vi++13completion\00", align 1
@global_string.310 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.311 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.312 = private constant [34 x i8] c"push_back_intp59_vi++13completion\00", align 1
@global_string.313 = private constant [39 x i8] c"list_push_back_intp59_vi++13completion\00", align 1
@global_string.314 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.315 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.316 = private constant [34 x i8] c"push_back_intp59_vi++13completion\00", align 1
@global_string.317 = private constant [39 x i8] c"list_push_back_intp59_vi++13completion\00", align 1
@global_string.318 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.319 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.320 = private constant [34 x i8] c"push_back_intp60_vi++13completion\00", align 1
@global_string.321 = private constant [39 x i8] c"list_push_back_intp60_vi++13completion\00", align 1
@global_string.322 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.323 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.324 = private constant [34 x i8] c"push_back_intp60_vi++13completion\00", align 1
@global_string.325 = private constant [39 x i8] c"list_push_back_intp60_vi++13completion\00", align 1
@global_string.326 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.327 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.328 = private constant [34 x i8] c"push_back_intp60_vi++13completion\00", align 1
@global_string.329 = private constant [39 x i8] c"list_push_back_intp60_vi++13completion\00", align 1
@global_string.330 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.331 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.332 = private constant [34 x i8] c"push_back_intp61_vi++13completion\00", align 1
@global_string.333 = private constant [39 x i8] c"list_push_back_intp61_vi++13completion\00", align 1
@global_string.334 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.335 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.336 = private constant [34 x i8] c"push_back_intp61_vi++13completion\00", align 1
@global_string.337 = private constant [39 x i8] c"list_push_back_intp61_vi++13completion\00", align 1
@global_string.338 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.339 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.340 = private constant [34 x i8] c"push_back_intp61_vi++13completion\00", align 1
@global_string.341 = private constant [39 x i8] c"list_push_back_intp61_vi++13completion\00", align 1

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

define void @ViWin_completion-13(%ViWin* %self) {
entry:
  %result_variable = alloca i32*
  %str = alloca i32*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  %3 = getelementptr inbounds %ViWin, %ViWin* %self2, i32 0, i32 1
  %4 = load %list__intp*, %list__intp** %3, align 8
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 8
  %6 = load i32, i32* %5, align 4
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %7 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %addtmp = add nsw i32 %6, %8
  %9 = call i32* @"list_item_intp3_vi++13completion"(%list__intp* %4, i32 %addtmp, i32* null)
  %line = alloca i32*
  %10 = bitcast i32** %line to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32* %9, i32** %line, align 8
  %line5 = load i32*, i32** %line, align 8
  %self6 = load %ViWin*, %ViWin** %self1, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = ptrtoint i32* %line5 to i64
  %sext1 = sext i32 %12 to i64
  %multtmp = mul nsw i64 %sext1, 4
  %addtmp7 = add nsw i64 %13, %multtmp
  %14 = inttoptr i64 %addtmp7 to i32*
  %p = alloca i32*
  %15 = bitcast i32** %p to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %14, i32** %p, align 8
  %p8 = load i32*, i32** %p, align 8
  %16 = ptrtoint i32* %p8 to i64
  %subtmp = sub nsw i64 %16, 4
  %17 = inttoptr i64 %subtmp to i32*
  store i32* %17, i32** %p, align 8
  %18 = ptrtoint i32* %17 to i64
  %addtmp9 = add nsw i64 %18, 4
  %19 = inttoptr i64 %addtmp9 to i32*
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %p10 = load i32*, i32** %p, align 8
  %line11 = load i32*, i32** %line, align 8
  %getmp = icmp sge i32* %p10, %line11
  br i1 %getmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %oror_result_var = alloca i1
  %oror_result_var12 = alloca i1
  %oror_result_var13 = alloca i1
  %andand_result_var = alloca i1
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %21 = bitcast i8* %20 to i32**
  %p14 = load i32*, i32** %21, align 8
  %derefference_value = load i32, i32* %p14, align 8
  %getmp15 = icmp sge i32 %derefference_value, 97
  store i1 %getmp15, i1* %andand_result_var, align 1
  br i1 %getmp15, label %cond_jump_then, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %p56 = load i32*, i32** %p, align 8
  %22 = ptrtoint i32* %p56 to i64
  %addtmp57 = add nsw i64 %22, 4
  %23 = inttoptr i64 %addtmp57 to i32*
  store i32* %23, i32** %p, align 8
  %24 = ptrtoint i32* %23 to i64
  %subtmp58 = sub nsw i64 %24, 4
  %25 = inttoptr i64 %subtmp58 to i32*
  %line59 = load i32*, i32** %line, align 8
  %self60 = load %ViWin*, %ViWin** %self1, align 8
  %26 = getelementptr inbounds %ViWin, %ViWin* %self60, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = ptrtoint i32* %line59 to i64
  %sext161 = sext i32 %27 to i64
  %multtmp62 = mul nsw i64 %sext161, 4
  %addtmp63 = add nsw i64 %28, %multtmp62
  %29 = inttoptr i64 %addtmp63 to i32*
  %p64 = load i32*, i32** %p, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = ptrtoint i32* %p64 to i64
  %subtmp65 = sub nsw i64 %30, %31
  %divtmp = sdiv i64 %subtmp65, 4
  %32 = trunc i64 %divtmp to i32
  %len = alloca i32
  %33 = bitcast i32* %len to i8*
  store i8* %33, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i32 %32, i32* %len, align 4
  %line66 = load i32*, i32** %line, align 8
  store i32* %line66, i32** %str, align 8
  br label %to_wstring

cond_jump_then:                                   ; preds = %cond_then_block
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %35 = bitcast i8* %34 to i32**
  %p16 = load i32*, i32** %35, align 8
  %derefference_value17 = load i32, i32* %p16, align 8
  %leeqtmp = icmp sle i32 %derefference_value17, 122
  %andand = and i1 %getmp15, %leeqtmp
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  store i1 %andand_result_value, i1* %oror_result_var13, align 1
  br i1 %andand_result_value, label %cond_jump_end19, label %cond_jump_then18

cond_jump_then18:                                 ; preds = %cond_jump_end
  %andand_result_var20 = alloca i1
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %37 = bitcast i8* %36 to i32**
  %p21 = load i32*, i32** %37, align 8
  %derefference_value22 = load i32, i32* %p21, align 8
  %getmp23 = icmp sge i32 %derefference_value22, 65
  store i1 %getmp23, i1* %andand_result_var20, align 1
  br i1 %getmp23, label %cond_jump_then24, label %cond_jump_end25

cond_jump_end19:                                  ; preds = %cond_jump_end25, %cond_jump_end
  %oror_result_value = load i1, i1* %oror_result_var13, align 1
  store i1 %oror_result_value, i1* %oror_result_var12, align 1
  br i1 %oror_result_value, label %cond_jump_end32, label %cond_jump_then31

cond_jump_then24:                                 ; preds = %cond_jump_then18
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %39 = bitcast i8* %38 to i32**
  %p26 = load i32*, i32** %39, align 8
  %derefference_value27 = load i32, i32* %p26, align 8
  %leeqtmp28 = icmp sle i32 %derefference_value27, 90
  %andand29 = and i1 %getmp23, %leeqtmp28
  store i1 %andand29, i1* %andand_result_var20, align 1
  br label %cond_jump_end25

cond_jump_end25:                                  ; preds = %cond_jump_then24, %cond_jump_then18
  %andand_result_value30 = load i1, i1* %andand_result_var20, align 1
  %oror = or i1 %andand_result_value, %andand_result_value30
  store i1 %oror, i1* %oror_result_var13, align 1
  br label %cond_jump_end19

cond_jump_then31:                                 ; preds = %cond_jump_end19
  %andand_result_var33 = alloca i1
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %41 = bitcast i8* %40 to i32**
  %p34 = load i32*, i32** %41, align 8
  %derefference_value35 = load i32, i32* %p34, align 8
  %getmp36 = icmp sge i32 %derefference_value35, 48
  store i1 %getmp36, i1* %andand_result_var33, align 1
  br i1 %getmp36, label %cond_jump_then37, label %cond_jump_end38

cond_jump_end32:                                  ; preds = %cond_jump_end38, %cond_jump_end19
  %oror_result_value45 = load i1, i1* %oror_result_var12, align 1
  store i1 %oror_result_value45, i1* %oror_result_var, align 1
  br i1 %oror_result_value45, label %cond_jump_end47, label %cond_jump_then46

cond_jump_then37:                                 ; preds = %cond_jump_then31
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %43 = bitcast i8* %42 to i32**
  %p39 = load i32*, i32** %43, align 8
  %derefference_value40 = load i32, i32* %p39, align 8
  %leeqtmp41 = icmp sle i32 %derefference_value40, 57
  %andand42 = and i1 %getmp36, %leeqtmp41
  store i1 %andand42, i1* %andand_result_var33, align 1
  br label %cond_jump_end38

cond_jump_end38:                                  ; preds = %cond_jump_then37, %cond_jump_then31
  %andand_result_value43 = load i1, i1* %andand_result_var33, align 1
  %oror44 = or i1 %oror_result_value, %andand_result_value43
  store i1 %oror44, i1* %oror_result_var12, align 1
  br label %cond_jump_end32

cond_jump_then46:                                 ; preds = %cond_jump_end32
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %45 = bitcast i8* %44 to i32**
  %p48 = load i32*, i32** %45, align 8
  %derefference_value49 = load i32, i32* %p48, align 8
  %eqtmpX = icmp eq i32 %derefference_value49, 95
  %oror50 = or i1 %oror_result_value45, %eqtmpX
  store i1 %oror50, i1* %oror_result_var, align 1
  br label %cond_jump_end47

cond_jump_end47:                                  ; preds = %cond_jump_then46, %cond_jump_end32
  %oror_result_value51 = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value51, label %cond_jump_then52, label %cond_else_block

cond_jump_then52:                                 ; preds = %cond_jump_end47
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %47 = bitcast i8* %46 to i32**
  %p53 = load i32*, i32** %47, align 8
  %48 = ptrtoint i32* %p53 to i64
  %subtmp54 = sub nsw i64 %48, 4
  %49 = inttoptr i64 %subtmp54 to i32*
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %51 = bitcast i8* %50 to i32**
  store i32* %49, i32** %51, align 8
  %52 = ptrtoint i32* %49 to i64
  %addtmp55 = add nsw i64 %52, 4
  %53 = inttoptr i64 %addtmp55 to i32*
  br label %cond_end

cond_else_block:                                  ; preds = %cond_jump_end47
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_jump_then52
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end

to_wstring:                                       ; preds = %cond_end_block
  %54 = bitcast i32** %str to i8*
  store i8* %54, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %str67 = load i32*, i32** %str, align 8
  %55 = call i32* @wstring_from_wchar_t(i32* %str67)
  store i32* %55, i32** %result_variable, align 8
  br label %inline_func_end

inline_func_end:                                  ; preds = %to_wstring
  %result_variable68 = load i32*, i32** %result_variable, align 8
  %self69 = load %ViWin*, %ViWin** %self1, align 8
  %56 = getelementptr inbounds %ViWin, %ViWin* %self69, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %len70 = load i32, i32* %len, align 4
  %subttmp = sub nsw i32 %57, %len70
  %self71 = load %ViWin*, %ViWin** %self1, align 8
  %58 = getelementptr inbounds %ViWin, %ViWin* %self71, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @wstring_substring(i32* %result_variable68, i32 %subttmp, i32 %59)
  %word = alloca i32*
  %61 = bitcast i32** %word to i8*
  store i8* %61, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32* %60, i32** %word, align 8
  %62 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_string.3, i32 0, i32 0), i32 138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.5, i32 0, i32 0))
  %63 = bitcast i8* %62 to %list__intp*
  %64 = call %list__intp* @"list_initialize_intp4_vi++13completion"(%list__intp* %63)
  %candidates = alloca %list__intp*
  %65 = bitcast %list__intp** %candidates to i8*
  store i8* %65, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list__intp* %64, %list__intp** %candidates, align 8
  %self72 = load %ViWin*, %ViWin** %self1, align 8
  %66 = getelementptr inbounds %ViWin, %ViWin* %self72, i32 0, i32 1
  %67 = load %list__intp*, %list__intp** %66, align 8
  call void @"list_each_intp9_vi++13completion"(%list__intp* %67, void (i32*, i32, i1*)* @"vi++13completion_lambda0")
  %candidates73 = load %list__intp*, %list__intp** %candidates, align 8
  %68 = call %list__intp* @"list_sort_intp10_vi++13completion"(%list__intp* %candidates73)
  %69 = call %list__intp* @"list_uniq_intp50_vi++13completion"(%list__intp* %68)
  %candidates2 = alloca %list__intp*
  %70 = bitcast %list__intp** %candidates2 to i8*
  store i8* %70, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store %list__intp* %69, %list__intp** %candidates2, align 8
  %self74 = load %ViWin*, %ViWin** %self1, align 8
  %candidates275 = load %list__intp*, %list__intp** %candidates2, align 8
  %71 = call i32* @ViWin_selector-13(%ViWin* %self74, %list__intp* %candidates275)
  %candidate = alloca i32*
  %72 = bitcast i32** %candidate to i8*
  store i8* %72, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32* %71, i32** %candidate, align 8
  %candidate76 = load i32*, i32** %candidate, align 8
  %len77 = load i32, i32* %len, align 4
  %73 = call i32* @wstring_substring(i32* %candidate76, i32 %len77, i32 -1)
  %append = alloca i32*
  %74 = bitcast i32** %append to i8*
  store i8* %74, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store i32* %73, i32** %append, align 8
  %self78 = load %ViWin*, %ViWin** %self1, align 8
  %append79 = load i32*, i32** %append, align 8
  call void @ViWin_insertText-3(%ViWin* %self78, i32* %append79)
  %75 = load i32*, i32** %word, align 8
  %76 = ptrtoint i32* %75 to i64
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %cond_then_block80, label %cond_end81

cond_then_block80:                                ; preds = %inline_func_end
  br label %cond_end81

cond_end81:                                       ; preds = %cond_then_block80, %inline_func_end
  %78 = bitcast i32* %75 to i8*
  call void @xfree(i8* %78)
  %79 = load %list__intp*, %list__intp** %candidates, align 8
  %80 = ptrtoint %list__intp* %79 to i64
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %cond_then_block82, label %cond_end83

cond_then_block82:                                ; preds = %cond_end81
  br label %cond_end83

cond_end83:                                       ; preds = %cond_then_block82, %cond_end81
  call void @"list_finalize_intp65_vi++13completion"(%list__intp* %79)
  %82 = bitcast %list__intp* %79 to i8*
  call void @xfree(i8* %82)
  %83 = load %list__intp*, %list__intp** %candidates2, align 8
  %84 = ptrtoint %list__intp* %83 to i64
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %cond_then_block84, label %cond_end85

cond_then_block84:                                ; preds = %cond_end83
  br label %cond_end85

cond_end85:                                       ; preds = %cond_then_block84, %cond_end83
  call void @"list_finalize_intp67_vi++13completion"(%list__intp* %83)
  %86 = bitcast %list__intp* %83 to i8*
  call void @xfree(i8* %86)
  %87 = ptrtoint i32* %result_variable68 to i64
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %cond_then_block86, label %cond_end87

cond_then_block86:                                ; preds = %cond_end85
  br label %cond_end87

cond_end87:                                       ; preds = %cond_then_block86, %cond_end85
  %89 = bitcast i32* %result_variable68 to i8*
  call void @xfree(i8* %89)
  %90 = ptrtoint %list__intp* %68 to i64
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %cond_then_block88, label %cond_end89

cond_then_block88:                                ; preds = %cond_end87
  br label %cond_end89

cond_end89:                                       ; preds = %cond_then_block88, %cond_end87
  call void @"list_finalize_intp69_vi++13completion"(%list__intp* %68)
  %92 = bitcast %list__intp* %68 to i8*
  call void @xfree(i8* %92)
  %93 = bitcast [8192 x i8*]* %lvtable to i8*
  %94 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %93, i64 65536)
  ret void
}

declare %ViWin* @ViWin_initialize-14(%ViWin*, i32, i32, i32, i32)

declare i32 @ViWin_getKey-14(%ViWin*)

declare void @ViWin_clearInputedKey-14(%ViWin*)

declare void @ViWin_saveInputedKey-14(%ViWin*)

declare %Vi* @Vi_initialize-14(%Vi*)

declare %Vi* @Vi_initialize-15(%Vi*)

declare void @Vi_activateFiler-15(%Vi*)

declare i32 @Vi_main_loop-15(%Vi*)

declare void @Vi_repositionFiler-15(%Vi*)

declare void @Vi_view-15(%Vi*)

declare void @Vi_clearView-15(%Vi*)

declare void @ViWin_textsView-15(%ViWin*, %Vi*)

declare %ViWin* @ViWin_initialize-15(%ViWin*, i32, i32, i32, i32)

define i32* @ViWin_selector-13(%ViWin* %self, %list__intp* %lines) {
entry:
  %condtional_result_value11 = alloca i16
  %condtional_result_value = alloca i16
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %lines2 = alloca %list__intp*
  store %list__intp* %lines, %list__intp** %lines2, align 8
  %3 = bitcast %list__intp** %lines2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %result = alloca i32*
  %4 = bitcast i32** %result to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* null, i32** %result, align 8
  %end_of_select = alloca i1
  %5 = bitcast i1* %end_of_select to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i1 false, i1* %end_of_select, align 1
  %canceled = alloca i1
  %6 = bitcast i1* %canceled to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i1 false, i1* %canceled, align 1
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %7 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 0
  %8 = load %_win_st*, %_win_st** %7, align 8
  %9 = ptrtoint %_win_st* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 0
  %12 = load %_win_st*, %_win_st** %11, align 8
  %13 = getelementptr inbounds %_win_st, %_win_st* %12, i32 0, i32 3
  %14 = load i16, i16* %13, align 2
  %addtmp = add nsw i16 %14, 1
  store i16 %addtmp, i16* %condtional_result_value, align 2
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  store i16 -1, i16* %condtional_result_value, align 2
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %15 = load i16, i16* %condtional_result_value, align 2
  %sext13 = sext i16 %15 to i32
  %maxx = alloca i32
  %16 = bitcast i32* %maxx to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store i32 %sext13, i32* %maxx, align 4
  %self5 = load %ViWin*, %ViWin** %self1, align 8
  %17 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 0
  %18 = load %_win_st*, %_win_st** %17, align 8
  %19 = ptrtoint %_win_st* %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %cond_jump_then6, label %cond_else_block7

cond_jump_then6:                                  ; preds = %cond_end
  %self9 = load %ViWin*, %ViWin** %self1, align 8
  %21 = getelementptr inbounds %ViWin, %ViWin* %self9, i32 0, i32 0
  %22 = load %_win_st*, %_win_st** %21, align 8
  %23 = getelementptr inbounds %_win_st, %_win_st* %22, i32 0, i32 2
  %24 = load i16, i16* %23, align 2
  %addtmp10 = add nsw i16 %24, 1
  store i16 %addtmp10, i16* %condtional_result_value11, align 2
  br label %cond_end8

cond_else_block7:                                 ; preds = %cond_end
  store i16 -1, i16* %condtional_result_value11, align 2
  br label %cond_end8

cond_end8:                                        ; preds = %cond_else_block7, %cond_jump_then6
  %25 = load i16, i16* %condtional_result_value11, align 2
  %sext1312 = sext i16 %25 to i32
  %maxy = alloca i32
  %26 = bitcast i32* %maxy to i8*
  store i8* %26, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i32 %sext1312, i32* %maxy, align 4
  %scrolltop = alloca i32
  %27 = bitcast i32* %scrolltop to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 0, i32* %scrolltop, align 4
  %cursor = alloca i32
  %28 = bitcast i32* %cursor to i8*
  store i8* %28, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store i32 0, i32* %cursor, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end122, %cond_end8
  %end_of_select13 = load i1, i1* %end_of_select, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %end_of_select13, false
  br i1 %LOGICAL_DIANEAL, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %stdscr = load %_win_st*, %_win_st** @stdscr, align 8
  %29 = call i32 @wclear(%_win_st* %stdscr)
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %31 = bitcast i8* %30 to %list__intp**
  %lines14 = load %list__intp*, %list__intp** %31, align 8
  %32 = call i32 @"list_length_intp0_vi++13completion"(%list__intp* %lines14)
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %34 = bitcast i8* %33 to i32*
  %scrolltop15 = load i32, i32* %34, align 4
  %subttmp = sub nsw i32 %32, %scrolltop15
  %maxy2 = alloca i32
  %35 = bitcast i32* %maxy2 to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 %subttmp, i32* %maxy2, align 4
  %y = alloca i32
  %36 = bitcast i32* %y to i8*
  store i8* %36, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store i32 0, i32* %y, align 4
  br label %loop_top_block16

cond_end_block:                                   ; preds = %loop_top_block
  %canceled149 = load i1, i1* %canceled, align 1
  %LOGICAL_DIANEAL150 = icmp eq i1 %canceled149, false
  br i1 %LOGICAL_DIANEAL150, label %cond_jump_then151, label %cond_end152

loop_top_block16:                                 ; preds = %cond_end44, %cond_then_block
  %andand_result_var = alloca i1
  %y17 = load i32, i32* %y, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %38 = bitcast i8* %37 to i32*
  %maxy18 = load i32, i32* %38, align 4
  %letmp = icmp slt i32 %y17, %maxy18
  store i1 %letmp, i1* %andand_result_var, align 1
  br i1 %letmp, label %cond_jump_then19, label %cond_jump_end

cond_jump_then19:                                 ; preds = %loop_top_block16
  %y20 = load i32, i32* %y, align 4
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %40 = bitcast i8* %39 to i32*
  %maxy221 = load i32, i32* %40, align 4
  %letmp22 = icmp slt i32 %y20, %maxy221
  %andand = and i1 %letmp, %letmp22
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then19, %loop_top_block16
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_then_block23, label %cond_end_block24

cond_then_block23:                                ; preds = %cond_jump_end
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %42 = bitcast i8* %41 to %list__intp**
  %lines25 = load %list__intp*, %list__intp** %42, align 8
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %44 = bitcast i8* %43 to i32*
  %scrolltop26 = load i32, i32* %44, align 4
  %y27 = load i32, i32* %y, align 4
  %addtmp28 = add nsw i32 %scrolltop26, %y27
  %45 = call i32* @"list_item_intp1_vi++13completion"(%list__intp* %lines25, i32 %addtmp28, i32* null)
  %it = alloca i32*
  %46 = bitcast i32** %it to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  store i32* %45, i32** %it, align 8
  %it29 = load i32*, i32** %it, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %48 = bitcast i8* %47 to i32*
  %maxx30 = load i32, i32* %48, align 4
  %subttmp31 = sub nsw i32 %maxx30, 1
  %49 = call i32* @wstring_substring(i32* %it29, i32 0, i32 %subttmp31)
  %line = alloca i32*
  %50 = bitcast i32** %line to i8*
  store i8* %50, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  store i32* %49, i32** %line, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %52 = bitcast i8* %51 to i32*
  %cursor32 = load i32, i32* %52, align 4
  %y33 = load i32, i32* %y, align 4
  %eqtmpX = icmp eq i32 %cursor32, %y33
  br i1 %eqtmpX, label %cond_jump_then34, label %cond_else_block35

cond_end_block24:                                 ; preds = %cond_jump_end
  %stdscr48 = load %_win_st*, %_win_st** @stdscr, align 8
  %53 = call i32 @wrefresh(%_win_st* %stdscr48)
  %stdscr49 = load %_win_st*, %_win_st** @stdscr, align 8
  %54 = call i32 @wgetch(%_win_st* %stdscr49)
  %key = alloca i32
  %55 = bitcast i32* %key to i8*
  store i8* %55, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store i32 %54, i32* %key, align 4
  %key50 = load i32, i32* %key, align 4
  %eqtmpY = icmp eq i32 %key50, 259
  br i1 %eqtmpY, label %cond_then_block51, label %cond_else_block52

cond_jump_then34:                                 ; preds = %cond_then_block23
  %stdscr37 = load %_win_st*, %_win_st** @stdscr, align 8
  %56 = call i32 @wattr_on(%_win_st* %stdscr37, i64 262144, i8* null)
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %58 = bitcast i8* %57 to i32*
  %y38 = load i32, i32* %58, align 4
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %60 = bitcast i8* %59 to i32**
  %line39 = load i32*, i32** %60, align 8
  %61 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %y38, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string, i32 0, i32 0), i32* %line39)
  %stdscr40 = load %_win_st*, %_win_st** @stdscr, align 8
  %62 = call i32 @wattr_off(%_win_st* %stdscr40, i64 262144, i8* null)
  br label %cond_end36

cond_else_block35:                                ; preds = %cond_then_block23
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %64 = bitcast i8* %63 to i32*
  %y41 = load i32, i32* %64, align 4
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %66 = bitcast i8* %65 to i32**
  %line42 = load i32*, i32** %66, align 8
  %67 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %y41, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.1, i32 0, i32 0), i32* %line42)
  br label %cond_end36

cond_end36:                                       ; preds = %cond_else_block35, %cond_jump_then34
  %68 = load i32*, i32** %line, align 8
  %69 = ptrtoint i32* %68 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %cond_then_block43, label %cond_end44

cond_then_block43:                                ; preds = %cond_end36
  br label %cond_end44

cond_end44:                                       ; preds = %cond_then_block43, %cond_end36
  %71 = bitcast i32* %68 to i8*
  call void @xfree(i8* %71)
  %y45 = load i32, i32* %y, align 4
  %addtmp46 = add nsw i32 %y45, 1
  store i32 %addtmp46, i32* %y, align 4
  %subttmp47 = sub nsw i32 %addtmp46, 1
  br label %loop_top_block16

end_block:                                        ; preds = %cond_else_block98, %cond_then_block95, %cond_then_block87, %cond_then_block80, %cond_then_block73, %cond_then_block60, %cond_then_block51
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %73 = bitcast i8* %72 to i32*
  %cursor101 = load i32, i32* %73, align 4
  %letmp102 = icmp slt i32 %cursor101, 0
  br i1 %letmp102, label %cond_jump_then103, label %cond_end104

cond_then_block51:                                ; preds = %cond_else_block53, %cond_else_block52, %cond_end_block24
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %75 = bitcast i8* %74 to i32*
  %cursor57 = load i32, i32* %75, align 4
  %subttmp58 = sub nsw i32 %cursor57, 1
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %77 = bitcast i8* %76 to i32*
  store i32 %subttmp58, i32* %77, align 4
  %addtmp59 = add nsw i32 %subttmp58, 1
  br label %end_block

cond_else_block52:                                ; preds = %cond_end_block24
  %eqtmpY54 = icmp eq i32 %key50, 107
  br i1 %eqtmpY54, label %cond_then_block51, label %cond_else_block53

cond_else_block53:                                ; preds = %cond_else_block52
  %eqtmpY56 = icmp eq i32 %key50, 16
  br i1 %eqtmpY56, label %cond_then_block51, label %cond_else_block55

cond_else_block55:                                ; preds = %after_break, %cond_else_block53
  %eqtmpY62 = icmp eq i32 %key50, 258
  br i1 %eqtmpY62, label %cond_then_block60, label %cond_else_block61

after_break:                                      ; No predecessors!
  br label %cond_else_block55

cond_then_block60:                                ; preds = %cond_else_block65, %cond_else_block63, %cond_else_block61, %cond_else_block55
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %79 = bitcast i8* %78 to i32*
  %cursor69 = load i32, i32* %79, align 4
  %addtmp70 = add nsw i32 %cursor69, 1
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %81 = bitcast i8* %80 to i32*
  store i32 %addtmp70, i32* %81, align 4
  %subttmp71 = sub nsw i32 %addtmp70, 1
  br label %end_block

cond_else_block61:                                ; preds = %cond_else_block55
  %eqtmpY64 = icmp eq i32 %key50, 106
  br i1 %eqtmpY64, label %cond_then_block60, label %cond_else_block63

cond_else_block63:                                ; preds = %cond_else_block61
  %eqtmpY66 = icmp eq i32 %key50, 14
  br i1 %eqtmpY66, label %cond_then_block60, label %cond_else_block65

cond_else_block65:                                ; preds = %cond_else_block63
  %eqtmpY68 = icmp eq i32 %key50, 9
  br i1 %eqtmpY68, label %cond_then_block60, label %cond_else_block67

cond_else_block67:                                ; preds = %after_break72, %cond_else_block65
  %eqtmpY75 = icmp eq i32 %key50, 4
  br i1 %eqtmpY75, label %cond_then_block73, label %cond_else_block74

after_break72:                                    ; No predecessors!
  br label %cond_else_block67

cond_then_block73:                                ; preds = %cond_else_block67
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %83 = bitcast i8* %82 to i32*
  %cursor76 = load i32, i32* %83, align 4
  %addtmp77 = add nsw i32 %cursor76, 10
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %85 = bitcast i8* %84 to i32*
  store i32 %addtmp77, i32* %85, align 4
  %subttmp78 = sub nsw i32 %addtmp77, 10
  br label %end_block

cond_else_block74:                                ; preds = %after_break79, %cond_else_block67
  %eqtmpY82 = icmp eq i32 %key50, 21
  br i1 %eqtmpY82, label %cond_then_block80, label %cond_else_block81

after_break79:                                    ; No predecessors!
  br label %cond_else_block74

cond_then_block80:                                ; preds = %cond_else_block74
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %87 = bitcast i8* %86 to i32*
  %cursor83 = load i32, i32* %87, align 4
  %subttmp84 = sub nsw i32 %cursor83, 10
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %89 = bitcast i8* %88 to i32*
  store i32 %subttmp84, i32* %89, align 4
  %addtmp85 = add nsw i32 %subttmp84, 10
  br label %end_block

cond_else_block81:                                ; preds = %after_break86, %cond_else_block74
  %eqtmpY89 = icmp eq i32 %key50, 3
  br i1 %eqtmpY89, label %cond_then_block87, label %cond_else_block88

after_break86:                                    ; No predecessors!
  br label %cond_else_block81

cond_then_block87:                                ; preds = %cond_else_block90, %cond_else_block88, %cond_else_block81
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %91 = bitcast i8* %90 to i1*
  store i1 true, i1* %91, align 1
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %93 = bitcast i8* %92 to i1*
  store i1 true, i1* %93, align 1
  br label %end_block

cond_else_block88:                                ; preds = %cond_else_block81
  %eqtmpY91 = icmp eq i32 %key50, 113
  br i1 %eqtmpY91, label %cond_then_block87, label %cond_else_block90

cond_else_block90:                                ; preds = %cond_else_block88
  %eqtmpY93 = icmp eq i32 %key50, 27
  br i1 %eqtmpY93, label %cond_then_block87, label %cond_else_block92

cond_else_block92:                                ; preds = %after_break94, %cond_else_block90
  %eqtmpY97 = icmp eq i32 %key50, 343
  br i1 %eqtmpY97, label %cond_then_block95, label %cond_else_block96

after_break94:                                    ; No predecessors!
  br label %cond_else_block92

cond_then_block95:                                ; preds = %cond_else_block96, %cond_else_block92
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %95 = bitcast i8* %94 to i1*
  store i1 true, i1* %95, align 1
  br label %end_block

cond_else_block96:                                ; preds = %cond_else_block92
  %eqtmpY99 = icmp eq i32 %key50, 10
  br i1 %eqtmpY99, label %cond_then_block95, label %cond_else_block98

cond_else_block98:                                ; preds = %after_break100, %cond_else_block96
  br label %end_block

after_break100:                                   ; No predecessors!
  br label %cond_else_block98

cond_jump_then103:                                ; preds = %end_block
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %97 = bitcast i8* %96 to i32*
  %cursor105 = load i32, i32* %97, align 4
  %subttmp106 = sub nsw i32 0, %cursor105
  %addtmp107 = add nsw i32 %subttmp106, 1
  %scroll_size = alloca i32
  %98 = bitcast i32* %scroll_size to i8*
  store i8* %98, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store i32 %addtmp107, i32* %scroll_size, align 4
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %100 = bitcast i8* %99 to i32*
  store i32 0, i32* %100, align 4
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %102 = bitcast i8* %101 to i32*
  %scrolltop108 = load i32, i32* %102, align 4
  %scroll_size109 = load i32, i32* %scroll_size, align 4
  %subttmp110 = sub nsw i32 %scrolltop108, %scroll_size109
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %104 = bitcast i8* %103 to i32*
  store i32 %subttmp110, i32* %104, align 4
  %scroll_size111 = load i32, i32* %scroll_size, align 4
  %addtmp112 = add nsw i32 %subttmp110, %scroll_size111
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %106 = bitcast i8* %105 to i32*
  %scrolltop113 = load i32, i32* %106, align 4
  %letmp114 = icmp slt i32 %scrolltop113, 0
  br i1 %letmp114, label %cond_jump_then115, label %cond_end116

cond_end104:                                      ; preds = %cond_end116, %end_block
  %maxy2117 = load i32, i32* %maxy2, align 4
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %108 = bitcast i8* %107 to i32*
  %maxy118 = load i32, i32* %108, align 4
  %letmp119 = icmp slt i32 %maxy2117, %maxy118
  br i1 %letmp119, label %cond_jump_then120, label %cond_else_block121

cond_jump_then115:                                ; preds = %cond_jump_then103
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %110 = bitcast i8* %109 to i32*
  store i32 0, i32* %110, align 4
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %112 = bitcast i8* %111 to i32*
  store i32 0, i32* %112, align 4
  br label %cond_end116

cond_end116:                                      ; preds = %cond_jump_then115, %cond_jump_then103
  br label %cond_end104

cond_jump_then120:                                ; preds = %cond_end104
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %114 = bitcast i8* %113 to i32*
  %cursor123 = load i32, i32* %114, align 4
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %116 = bitcast i8* %115 to i32*
  %maxy2124 = load i32, i32* %116, align 4
  %getmp = icmp sge i32 %cursor123, %maxy2124
  br i1 %getmp, label %cond_jump_then125, label %cond_end126

cond_else_block121:                               ; preds = %cond_end104
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %118 = bitcast i8* %117 to i32*
  %cursor129 = load i32, i32* %118, align 4
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %120 = bitcast i8* %119 to i32*
  %maxy130 = load i32, i32* %120, align 4
  %getmp131 = icmp sge i32 %cursor129, %maxy130
  br i1 %getmp131, label %cond_jump_then132, label %cond_end133

cond_end122:                                      ; preds = %cond_end133, %cond_end126
  br label %loop_top_block

cond_jump_then125:                                ; preds = %cond_jump_then120
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %122 = bitcast i8* %121 to i32*
  %maxy2127 = load i32, i32* %122, align 4
  %subttmp128 = sub nsw i32 %maxy2127, 1
  %123 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %124 = bitcast i8* %123 to i32*
  store i32 %subttmp128, i32* %124, align 4
  br label %cond_end126

cond_end126:                                      ; preds = %cond_jump_then125, %cond_jump_then120
  br label %cond_end122

cond_jump_then132:                                ; preds = %cond_else_block121
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %126 = bitcast i8* %125 to i32*
  %cursor134 = load i32, i32* %126, align 4
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %128 = bitcast i8* %127 to i32*
  %maxy135 = load i32, i32* %128, align 4
  %subttmp136 = sub nsw i32 %cursor134, %maxy135
  %addtmp137 = add nsw i32 %subttmp136, 1
  %scroll_size138 = alloca i32
  %129 = bitcast i32* %scroll_size138 to i8*
  store i8* %129, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store i32 %addtmp137, i32* %scroll_size138, align 4
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %131 = bitcast i8* %130 to i32*
  %scrolltop139 = load i32, i32* %131, align 4
  %scroll_size140 = load i32, i32* %scroll_size138, align 4
  %addtmp141 = add nsw i32 %scrolltop139, %scroll_size140
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %133 = bitcast i8* %132 to i32*
  store i32 %addtmp141, i32* %133, align 4
  %scroll_size142 = load i32, i32* %scroll_size138, align 4
  %subttmp143 = sub nsw i32 %addtmp141, %scroll_size142
  %134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %135 = bitcast i8* %134 to i32*
  %cursor144 = load i32, i32* %135, align 4
  %scroll_size145 = load i32, i32* %scroll_size138, align 4
  %subttmp146 = sub nsw i32 %cursor144, %scroll_size145
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %137 = bitcast i8* %136 to i32*
  store i32 %subttmp146, i32* %137, align 4
  %scroll_size147 = load i32, i32* %scroll_size138, align 4
  %addtmp148 = add nsw i32 %subttmp146, %scroll_size147
  br label %cond_end133

cond_end133:                                      ; preds = %cond_jump_then132, %cond_else_block121
  br label %cond_end122

cond_jump_then151:                                ; preds = %cond_end_block
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %139 = bitcast i8* %138 to %list__intp**
  %lines153 = load %list__intp*, %list__intp** %139, align 8
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %141 = bitcast i8* %140 to i32*
  %scrolltop154 = load i32, i32* %141, align 4
  %142 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %143 = bitcast i8* %142 to i32*
  %cursor155 = load i32, i32* %143, align 4
  %addtmp156 = add nsw i32 %scrolltop154, %cursor155
  %144 = call i32* @"list_item_intp2_vi++13completion"(%list__intp* %lines153, i32 %addtmp156, i32* null)
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %146 = bitcast i8* %145 to i32**
  store i32* %144, i32** %146, align 8
  br label %cond_end152

cond_end152:                                      ; preds = %cond_jump_then151, %cond_end_block
  %result157 = load i32*, i32** %result, align 8
  %147 = bitcast [8192 x i8*]* %lvtable to i8*
  %148 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %147, i64 65536)
  ret i32* %result157
}

define i32 @"list_length_intp0_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp1_vi++13completion"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %14 = bitcast i8* %13 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %14, align 8
  %15 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, %16
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %self8 = load %list__intp*, %list__intp** %self1, align 8
  %17 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 0
  %18 = load %list_item__intp*, %list_item__intp** %17, align 8
  %it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %24 = bitcast i8* %23 to i32*
  %i11 = load i32, i32* %24, align 4
  %eqtmpX = icmp eq i32 %position10, %i11
  br i1 %eqtmpX, label %cond_jump_then12, label %cond_end13

cond_end_block:                                   ; preds = %loop_top_block
  %default_value19 = load i32*, i32** %default_value3, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i32* %default_value19

cond_jump_then12:                                 ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define i32* @"list_item_intp2_vi++13completion"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %14 = bitcast i8* %13 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %14, align 8
  %15 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, %16
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %self8 = load %list__intp*, %list__intp** %self1, align 8
  %17 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 0
  %18 = load %list_item__intp*, %list_item__intp** %17, align 8
  %it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %24 = bitcast i8* %23 to i32*
  %i11 = load i32, i32* %24, align 4
  %eqtmpX = icmp eq i32 %position10, %i11
  br i1 %eqtmpX, label %cond_jump_then12, label %cond_end13

cond_end_block:                                   ; preds = %loop_top_block
  %default_value19 = load i32*, i32** %default_value3, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i32* %default_value19

cond_jump_then12:                                 ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define i32* @"list_item_intp3_vi++13completion"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %14 = bitcast i8* %13 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %14, align 8
  %15 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, %16
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %self8 = load %list__intp*, %list__intp** %self1, align 8
  %17 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 0
  %18 = load %list_item__intp*, %list_item__intp** %17, align 8
  %it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %24 = bitcast i8* %23 to i32*
  %i11 = load i32, i32* %24, align 4
  %eqtmpX = icmp eq i32 %position10, %i11
  br i1 %eqtmpX, label %cond_jump_then12, label %cond_end13

cond_end_block:                                   ; preds = %loop_top_block
  %default_value19 = load i32*, i32** %default_value3, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i32* %default_value19

cond_jump_then12:                                 ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define %list__intp* @"list_initialize_intp4_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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

define void @"vi++13completion_lambda1"(i8* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %6 = bitcast i8* %5 to i32**
  %dummy = alloca i8*
  %dummy_value = load i8*, i8** %dummy, align 8
  %dummy4 = alloca i32
  %dummy_value5 = load i32, i32* %dummy4, align 4
  %noteqtmp = icmp ne i32 %dummy_value5, -1
  call void @xfree(i8* inttoptr (i64 1 to i8*))
  call void @xfree(i8* %dummy_value)
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %10 = bitcast i8* %9 to i8**
  %dummy6 = alloca i32*
  %dummy_value7 = load i32*, i32** %dummy6, align 8
  call void @xfree(i8* inttoptr (i64 1 to i8*))
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret void
}

define void @"vi++13completion_lambda0"(i32* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i32*
  store i32* %it, i32** %it1, align 8
  %2 = bitcast i32** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %it4 = load i32*, i32** %it1, align 8
  %5 = call i8* @wstring_to_string(i32* %it4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.10, i32 0, i32 0))
  %6 = call %regex_struct* @regex(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.11, i32 0, i32 0), i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false)
  %7 = call %list__charp* @string_scan(i8* %5, %regex_struct* %6)
  %li = alloca %list__charp*
  %8 = bitcast %list__charp** %li to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  store %list__charp* %7, %list__charp** %li, align 8
  %li5 = load %list__charp*, %list__charp** %li, align 8
  call void @"list_each_charp6_vi++13completion"(%list__charp* %li5, void (i8*, i32, i1*)* @"vi++13completion_lambda2")
  %9 = load %list__charp*, %list__charp** %li, align 8
  %10 = ptrtoint %list__charp* %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @"list_finalize_charp7_vi++13completion"(%list__charp* %9)
  %12 = bitcast %list__charp* %9 to i8*
  call void @xfree(i8* %12)
  %13 = ptrtoint i8* %5 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %cond_then_block6, label %cond_end7

cond_then_block6:                                 ; preds = %cond_end
  br label %cond_end7

cond_end7:                                        ; preds = %cond_then_block6, %cond_end
  call void @xfree(i8* %5)
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret void
}

define void @"vi++13completion_lambda2"(i8* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %it4 = load i8*, i8** %it1, align 8
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %6 = bitcast i8* %5 to i32**
  %word = load i32*, i32** %6, align 8
  %7 = call i8* @wstring_to_string(i32* %word, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.13, i32 0, i32 0))
  %8 = call i32 @string_index(i8* %it4, i8* %7, i32 -1)
  %noteqtmp = icmp ne i32 %8, -1
  %9 = ptrtoint i8* %7 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block, label %cond_end5

cond_jump_then:                                   ; preds = %cond_end5
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %12 = bitcast i8* %11 to %list__intp**
  %candidates = load %list__intp*, %list__intp** %12, align 8
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %14 = bitcast i8* %13 to i8**
  %it6 = load i8*, i8** %14, align 8
  %15 = call i32* @string_to_wstring(i8* %it6)
  call void @"list_push_back_intp5_vi++13completion"(%list__intp* %candidates, i32* %15)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %cond_end5
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void

cond_then_block:                                  ; preds = %entry
  br label %cond_end5

cond_end5:                                        ; preds = %cond_then_block, %entry
  call void @xfree(i8* %7)
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end
}

define void @"list_push_back_intp5_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.15, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.16, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.17, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.19, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.21, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.23, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.24, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.25, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
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

define void @"list_each_charp6_vi++13completion"(%list__charp* %self, void (i8*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %block_2 = alloca void (i8*, i32, i1*)*
  store void (i8*, i32, i1*)* %block_, void (i8*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i8*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %4 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %5 = load %list_item__charp*, %list_item__charp** %4, align 8
  %it_ = alloca %list_item__charp*
  %6 = bitcast %list_item__charp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  store %list_item__charp* %5, %list_item__charp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__charp*, %list_item__charp** %it_, align 8
  %noteqtmp = icmp ne %list_item__charp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %10 = bitcast i8* %9 to void (i8*, i32, i1*)**
  %block_5 = load void (i8*, i32, i1*)*, void (i8*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to %list_item__charp**
  %it_6 = load %list_item__charp*, %list_item__charp** %12, align 8
  %13 = getelementptr inbounds %list_item__charp, %list_item__charp* %it_6, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %20 = bitcast i8* %19 to %list_item__charp**
  %it_10 = load %list_item__charp*, %list_item__charp** %20, align 8
  %21 = getelementptr inbounds %list_item__charp, %list_item__charp* %it_10, i32 0, i32 2
  %22 = load %list_item__charp*, %list_item__charp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %24 = bitcast i8* %23 to %list_item__charp**
  store %list_item__charp* %22, %list_item__charp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @"list_finalize_charp7_vi++13completion"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define void @"list_each_intp9_vi++13completion"(%list__intp* %self, void (i32*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %block_2 = alloca void (i32*, i32, i1*)*
  store void (i32*, i32, i1*)* %block_, void (i32*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i32*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 0
  %5 = load %list_item__intp*, %list_item__intp** %4, align 8
  %it_ = alloca %list_item__intp*
  %6 = bitcast %list_item__intp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store %list_item__intp* %5, %list_item__intp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__intp*, %list_item__intp** %it_, align 8
  %noteqtmp = icmp ne %list_item__intp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %10 = bitcast i8* %9 to void (i32*, i32, i1*)**
  %block_5 = load void (i32*, i32, i1*)*, void (i32*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it_6 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %20 = bitcast i8* %19 to %list_item__intp**
  %it_10 = load %list_item__intp*, %list_item__intp** %20, align 8
  %21 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_10, i32 0, i32 2
  %22 = load %list_item__intp*, %list_item__intp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %24 = bitcast i8* %23 to %list_item__intp**
  store %list_item__intp* %22, %list_item__intp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define %list__intp* @"list_sort_intp10_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = call %list__intp* @"list_merge_sort_intp11_vi++13completion"(%list__intp* %self2)
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret %list__intp* %3
}

define %list__intp* @"list_merge_sort_intp11_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 0
  %4 = load %list_item__intp*, %list_item__intp** %3, align 8
  %eqtmpX = icmp eq %list_item__intp* %4, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %6 = bitcast i8* %5 to %list__intp**
  %self3 = load %list__intp*, %list__intp** %6, align 8
  %7 = call %list__intp* @"list_clone_intp12_vi++13completion"(%list__intp* %self3)
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %list__intp* %7

cond_end:                                         ; preds = %entry
  %self4 = load %list__intp*, %list__intp** %self1, align 8
  %10 = getelementptr inbounds %list__intp, %list__intp* %self4, i32 0, i32 0
  %11 = load %list_item__intp*, %list_item__intp** %10, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %11, i32 0, i32 2
  %13 = load %list_item__intp*, %list_item__intp** %12, align 8
  %eqtmpX5 = icmp eq %list_item__intp* %13, null
  br i1 %eqtmpX5, label %cond_jump_then6, label %cond_end7

cond_jump_then6:                                  ; preds = %cond_end
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %16 = call %list__intp* @"list_clone_intp16_vi++13completion"(%list__intp* %self8)
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %list__intp* %16

cond_end7:                                        ; preds = %cond_end
  %19 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.82, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.83, i32 0, i32 0), i32 1279, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.84, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_string.85, i32 0, i32 0))
  %20 = bitcast i8* %19 to %list__intp*
  %21 = call %list__intp* @"list_initialize_intp20_vi++13completion"(%list__intp* %20)
  %list1 = alloca %list__intp*
  %22 = bitcast %list__intp** %list1 to i8*
  store i8* %22, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store %list__intp* %21, %list__intp** %list1, align 8
  %23 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.86, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.87, i32 0, i32 0), i32 1280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.88, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_string.89, i32 0, i32 0))
  %24 = bitcast i8* %23 to %list__intp*
  %25 = call %list__intp* @"list_initialize_intp21_vi++13completion"(%list__intp* %24)
  %list2 = alloca %list__intp*
  %26 = bitcast %list__intp** %list2 to i8*
  store i8* %26, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  store %list__intp* %25, %list__intp** %list2, align 8
  %self9 = load %list__intp*, %list__intp** %self1, align 8
  %27 = getelementptr inbounds %list__intp, %list__intp* %self9, i32 0, i32 0
  %28 = load %list_item__intp*, %list_item__intp** %27, align 8
  %it = alloca %list_item__intp*
  %29 = bitcast %list_item__intp** %it to i8*
  store i8* %29, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  store %list_item__intp* %28, %list_item__intp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end31, %cond_end7
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then10, label %cond_else_block

cond_end_block:                                   ; preds = %cond_end34, %cond_jump_then25, %loop_top_block
  %list140 = load %list__intp*, %list__intp** %list1, align 8
  %30 = call %list__intp* @"list_merge_sort_intp11_vi++13completion"(%list__intp* %list140)
  %list241 = load %list__intp*, %list__intp** %list2, align 8
  %31 = call %list__intp* @"list_merge_sort_intp11_vi++13completion"(%list__intp* %list241)
  %32 = call %list__intp* @"list_merge_list_intp32_vi++13completion"(%list__intp* %30, %list__intp* %31)
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  %35 = ptrtoint %list__intp* %31 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %cond_then_block42, label %cond_end43

cond_jump_then10:                                 ; preds = %cond_then_block
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %list112 = load %list__intp*, %list__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %40 = bitcast i8* %39 to %list_item__intp**
  %it13 = load %list_item__intp*, %list_item__intp** %40, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %it13, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %41, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = call i8* @xmemdup(i8* %44)
  %46 = bitcast i8* %45 to i32*
  call void @"list_push_back_intp22_vi++13completion"(%list__intp* %list112, i32* %46)
  br label %cond_end11

cond_else_block:                                  ; preds = %cond_then_block
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %48 = bitcast i8* %47 to %list__intp**
  %list114 = load %list__intp*, %list__intp** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %50 = bitcast i8* %49 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %50, align 8
  %51 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  call void @"list_push_back_intp23_vi++13completion"(%list__intp* %list114, i32* %52)
  br label %cond_end11

cond_end11:                                       ; preds = %cond_else_block, %cond_jump_then10
  br i1 true, label %cond_jump_then16, label %cond_else_block17

cond_jump_then16:                                 ; preds = %cond_end11
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %54 = bitcast i8* %53 to %list__intp**
  %list219 = load %list__intp*, %list__intp** %54, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %56 = bitcast i8* %55 to %list_item__intp**
  %it20 = load %list_item__intp*, %list_item__intp** %56, align 8
  %57 = getelementptr inbounds %list_item__intp, %list_item__intp* %it20, i32 0, i32 2
  %58 = load %list_item__intp*, %list_item__intp** %57, align 8
  %59 = getelementptr inbounds %list_item__intp, %list_item__intp* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %59, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = call i8* @xmemdup(i8* %62)
  %64 = bitcast i8* %63 to i32*
  call void @"list_push_back_intp24_vi++13completion"(%list__intp* %list219, i32* %64)
  br label %cond_end18

cond_else_block17:                                ; preds = %cond_end11
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %66 = bitcast i8* %65 to %list__intp**
  %list221 = load %list__intp*, %list__intp** %66, align 8
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %68 = bitcast i8* %67 to %list_item__intp**
  %it22 = load %list_item__intp*, %list_item__intp** %68, align 8
  %69 = getelementptr inbounds %list_item__intp, %list_item__intp* %it22, i32 0, i32 2
  %70 = load %list_item__intp*, %list_item__intp** %69, align 8
  %71 = getelementptr inbounds %list_item__intp, %list_item__intp* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  call void @"list_push_back_intp25_vi++13completion"(%list__intp* %list221, i32* %72)
  br label %cond_end18

cond_end18:                                       ; preds = %cond_else_block17, %cond_jump_then16
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %74 = bitcast i8* %73 to %list_item__intp**
  %it23 = load %list_item__intp*, %list_item__intp** %74, align 8
  %75 = getelementptr inbounds %list_item__intp, %list_item__intp* %it23, i32 0, i32 2
  %76 = load %list_item__intp*, %list_item__intp** %75, align 8
  %77 = getelementptr inbounds %list_item__intp, %list_item__intp* %76, i32 0, i32 2
  %78 = load %list_item__intp*, %list_item__intp** %77, align 8
  %eqtmpX24 = icmp eq %list_item__intp* %78, null
  br i1 %eqtmpX24, label %cond_jump_then25, label %cond_end26

cond_jump_then25:                                 ; preds = %cond_end18
  br label %cond_end_block

cond_end26:                                       ; preds = %after_break, %cond_end18
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %80 = bitcast i8* %79 to %list_item__intp**
  %it27 = load %list_item__intp*, %list_item__intp** %80, align 8
  %81 = getelementptr inbounds %list_item__intp, %list_item__intp* %it27, i32 0, i32 2
  %82 = load %list_item__intp*, %list_item__intp** %81, align 8
  %83 = getelementptr inbounds %list_item__intp, %list_item__intp* %82, i32 0, i32 2
  %84 = load %list_item__intp*, %list_item__intp** %83, align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %86 = bitcast i8* %85 to %list_item__intp**
  store %list_item__intp* %84, %list_item__intp** %86, align 8
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %88 = bitcast i8* %87 to %list_item__intp**
  %it28 = load %list_item__intp*, %list_item__intp** %88, align 8
  %89 = getelementptr inbounds %list_item__intp, %list_item__intp* %it28, i32 0, i32 2
  %90 = load %list_item__intp*, %list_item__intp** %89, align 8
  %eqtmpX29 = icmp eq %list_item__intp* %90, null
  br i1 %eqtmpX29, label %cond_jump_then30, label %cond_end31

after_break:                                      ; No predecessors!
  br label %cond_end26

cond_jump_then30:                                 ; preds = %cond_end26
  br i1 true, label %cond_jump_then32, label %cond_else_block33

cond_end31:                                       ; preds = %after_break39, %cond_end26
  br label %loop_top_block

cond_jump_then32:                                 ; preds = %cond_jump_then30
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %92 = bitcast i8* %91 to %list__intp**
  %list135 = load %list__intp*, %list__intp** %92, align 8
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %94 = bitcast i8* %93 to %list_item__intp**
  %it36 = load %list_item__intp*, %list_item__intp** %94, align 8
  %95 = getelementptr inbounds %list_item__intp, %list_item__intp* %it36, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32*, i32** %95, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = call i8* @xmemdup(i8* %98)
  %100 = bitcast i8* %99 to i32*
  call void @"list_push_back_intp26_vi++13completion"(%list__intp* %list135, i32* %100)
  br label %cond_end34

cond_else_block33:                                ; preds = %cond_jump_then30
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %102 = bitcast i8* %101 to %list__intp**
  %list137 = load %list__intp*, %list__intp** %102, align 8
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %104 = bitcast i8* %103 to %list_item__intp**
  %it38 = load %list_item__intp*, %list_item__intp** %104, align 8
  %105 = getelementptr inbounds %list_item__intp, %list_item__intp* %it38, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  call void @"list_push_back_intp27_vi++13completion"(%list__intp* %list137, i32* %106)
  br label %cond_end34

cond_end34:                                       ; preds = %cond_else_block33, %cond_jump_then32
  br label %cond_end_block

after_break39:                                    ; No predecessors!
  br label %cond_end31

cond_then_block42:                                ; preds = %cond_end_block
  br label %cond_end43

cond_end43:                                       ; preds = %cond_then_block42, %cond_end_block
  call void @"list_finalize_intp42_vi++13completion"(%list__intp* %31)
  %107 = bitcast %list__intp* %31 to i8*
  call void @xfree(i8* %107)
  %108 = ptrtoint %list__intp* %30 to i64
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %cond_then_block44, label %cond_end45

cond_then_block44:                                ; preds = %cond_end43
  br label %cond_end45

cond_end45:                                       ; preds = %cond_then_block44, %cond_end43
  call void @"list_finalize_intp44_vi++13completion"(%list__intp* %30)
  %110 = bitcast %list__intp* %30 to i8*
  call void @xfree(i8* %110)
  %111 = load %list__intp*, %list__intp** %list1, align 8
  %112 = ptrtoint %list__intp* %111 to i64
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %cond_then_block46, label %cond_end47

cond_then_block46:                                ; preds = %cond_end45
  br label %cond_end47

cond_end47:                                       ; preds = %cond_then_block46, %cond_end45
  call void @"list_finalize_intp46_vi++13completion"(%list__intp* %111)
  %114 = bitcast %list__intp* %111 to i8*
  call void @xfree(i8* %114)
  %115 = load %list__intp*, %list__intp** %list2, align 8
  %116 = ptrtoint %list__intp* %115 to i64
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %cond_then_block48, label %cond_end49

cond_then_block48:                                ; preds = %cond_end47
  br label %cond_end49

cond_end49:                                       ; preds = %cond_then_block48, %cond_end47
  call void @"list_finalize_intp48_vi++13completion"(%list__intp* %115)
  %118 = bitcast %list__intp* %115 to i8*
  call void @xfree(i8* %118)
  ret %list__intp* %32
}

define %list__intp* @"list_clone_intp12_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.27, i32 0, i32 0), i32 654, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.28, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.29, i32 0, i32 0))
  %4 = bitcast i8* %3 to %list__intp*
  %5 = call %list__intp* @"list_initialize_intp13_vi++13completion"(%list__intp* %4)
  %result = alloca %list__intp*
  %6 = bitcast %list__intp** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  store %list__intp* %5, %list__intp** %result, align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %7 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 0
  %8 = load %list_item__intp*, %list_item__intp** %7, align 8
  %it = alloca %list_item__intp*
  %9 = bitcast %list_item__intp** %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %8, %list_item__intp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it3 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it3, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %result9 = load %list__intp*, %list__intp** %result, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %list__intp* %result9

cond_jump_then:                                   ; preds = %cond_then_block
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %13 = bitcast i8* %12 to %list__intp**
  %result4 = load %list__intp*, %list__intp** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %15 = bitcast i8* %14 to %list_item__intp**
  %it5 = load %list_item__intp*, %list_item__intp** %15, align 8
  %16 = getelementptr inbounds %list_item__intp, %list_item__intp* %it5, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %16, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = call i8* @xmemdup(i8* %19)
  %21 = bitcast i8* %20 to i32*
  call void @"list_push_back_intp14_vi++13completion"(%list__intp* %result4, i32* %21)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_then_block
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %23 = bitcast i8* %22 to %list__intp**
  %result6 = load %list__intp*, %list__intp** %23, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %25 = bitcast i8* %24 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %25, align 8
  %26 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  call void @"list_push_back_intp15_vi++13completion"(%list__intp* %result6, i32* %27)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %29 = bitcast i8* %28 to %list_item__intp**
  %it8 = load %list_item__intp*, %list_item__intp** %29, align 8
  %30 = getelementptr inbounds %list_item__intp, %list_item__intp* %it8, i32 0, i32 2
  %31 = load %list_item__intp*, %list_item__intp** %30, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %33 = bitcast i8* %32 to %list_item__intp**
  store %list_item__intp* %31, %list_item__intp** %33, align 8
  br label %loop_top_block
}

define %list__intp* @"list_initialize_intp13_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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

define void @"list_push_back_intp14_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.30, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.31, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.32, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.33, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.35, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.36, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.37, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.38, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.39, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.40, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.41, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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

define void @"list_push_back_intp15_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.43, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.44, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.45, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.46, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.47, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.48, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.49, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.50, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.51, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.52, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.53, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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

define %list__intp* @"list_clone_intp16_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.54, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.55, i32 0, i32 0), i32 654, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.56, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.57, i32 0, i32 0))
  %4 = bitcast i8* %3 to %list__intp*
  %5 = call %list__intp* @"list_initialize_intp17_vi++13completion"(%list__intp* %4)
  %result = alloca %list__intp*
  %6 = bitcast %list__intp** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  store %list__intp* %5, %list__intp** %result, align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %7 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 0
  %8 = load %list_item__intp*, %list_item__intp** %7, align 8
  %it = alloca %list_item__intp*
  %9 = bitcast %list_item__intp** %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %8, %list_item__intp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it3 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it3, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %result9 = load %list__intp*, %list__intp** %result, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %list__intp* %result9

cond_jump_then:                                   ; preds = %cond_then_block
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %13 = bitcast i8* %12 to %list__intp**
  %result4 = load %list__intp*, %list__intp** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %15 = bitcast i8* %14 to %list_item__intp**
  %it5 = load %list_item__intp*, %list_item__intp** %15, align 8
  %16 = getelementptr inbounds %list_item__intp, %list_item__intp* %it5, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %16, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = call i8* @xmemdup(i8* %19)
  %21 = bitcast i8* %20 to i32*
  call void @"list_push_back_intp18_vi++13completion"(%list__intp* %result4, i32* %21)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_then_block
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %23 = bitcast i8* %22 to %list__intp**
  %result6 = load %list__intp*, %list__intp** %23, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %25 = bitcast i8* %24 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %25, align 8
  %26 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  call void @"list_push_back_intp19_vi++13completion"(%list__intp* %result6, i32* %27)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %29 = bitcast i8* %28 to %list_item__intp**
  %it8 = load %list_item__intp*, %list_item__intp** %29, align 8
  %30 = getelementptr inbounds %list_item__intp, %list_item__intp* %it8, i32 0, i32 2
  %31 = load %list_item__intp*, %list_item__intp** %30, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %33 = bitcast i8* %32 to %list_item__intp**
  store %list_item__intp* %31, %list_item__intp** %33, align 8
  br label %loop_top_block
}

define %list__intp* @"list_initialize_intp17_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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

define void @"list_push_back_intp18_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.58, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.59, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.60, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.61, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.62, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.63, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.64, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.65, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.66, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.67, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.68, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.69, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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

define void @"list_push_back_intp19_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.70, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.71, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.72, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.73, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.74, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.75, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.76, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.77, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.78, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.79, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.80, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.81, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
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

define %list__intp* @"list_initialize_intp20_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define %list__intp* @"list_initialize_intp21_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define void @"list_push_back_intp22_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.90, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.91, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.92, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.93, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.94, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.95, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.96, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.97, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.98, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.99, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.100, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.101, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define void @"list_push_back_intp23_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.102, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.103, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.104, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.105, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.106, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.107, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.108, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.109, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.110, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.111, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.112, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.113, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define void @"list_push_back_intp24_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.114, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.115, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.116, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.117, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.118, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.119, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.120, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.121, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.122, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.123, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.124, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.125, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define void @"list_push_back_intp25_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.126, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.127, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.128, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.129, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.130, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.131, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.132, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.133, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.134, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.135, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.136, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.137, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define void @"list_push_back_intp26_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.138, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.139, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.140, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.141, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.142, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.143, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.144, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.145, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.146, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.147, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.148, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.149, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define void @"list_push_back_intp27_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.150, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.151, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.152, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.153, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.154, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.155, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.156, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.157, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.158, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.159, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.160, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.161, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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

define %list__intp* @"list_merge_list_intp32_vi++13completion"(%list__intp* %left, %list__intp* %right) {
entry:
  %result_variable = alloca i32
  %right18 = alloca i32*
  %left17 = alloca i32*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %list__intp*
  store %list__intp* %left, %list__intp** %left1, align 8
  %2 = bitcast %list__intp** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %right2 = alloca %list__intp*
  store %list__intp* %right, %list__intp** %right2, align 8
  %3 = bitcast %list__intp** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %4 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.162, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.163, i32 0, i32 0), i32 1200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.164, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_string.165, i32 0, i32 0))
  %5 = bitcast i8* %4 to %list__intp*
  %6 = call %list__intp* @"list_initialize_intp33_vi++13completion"(%list__intp* %5)
  %result = alloca %list__intp*
  %7 = bitcast %list__intp** %result to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list__intp* %6, %list__intp** %result, align 8
  %left3 = load %list__intp*, %list__intp** %left1, align 8
  %8 = getelementptr inbounds %list__intp, %list__intp* %left3, i32 0, i32 0
  %9 = load %list_item__intp*, %list_item__intp** %8, align 8
  %it = alloca %list_item__intp*
  %10 = bitcast %list_item__intp** %it to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %9, %list_item__intp** %it, align 8
  %right4 = load %list__intp*, %list__intp** %right2, align 8
  %11 = getelementptr inbounds %list__intp, %list__intp* %right4, i32 0, i32 0
  %12 = load %list_item__intp*, %list_item__intp** %11, align 8
  %it2 = alloca %list_item__intp*
  %13 = bitcast %list_item__intp** %it2 to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  store %list_item__intp* %12, %list_item__intp** %it2, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end44, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %15 = bitcast i8* %14 to %list_item__intp**
  %it5 = load %list_item__intp*, %list_item__intp** %15, align 8
  %16 = ptrtoint %list_item__intp* %it5 to i64
  %17 = icmp ne i64 %16, 0
  store i1 %17, i1* %andand_result_var, align 1
  br i1 %17, label %cond_jump_then, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_end66, %cond_end47, %loop_top_block
  %result81 = load %list__intp*, %list__intp** %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %list__intp* %result81

cond_jump_then:                                   ; preds = %cond_then_block
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it26 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = ptrtoint %list_item__intp* %it26 to i64
  %23 = icmp ne i64 %22, 0
  %andand = and i1 %17, %23
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %cond_then_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then7, label %cond_end

cond_jump_then7:                                  ; preds = %cond_jump_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %25 = bitcast i8* %24 to %list_item__intp**
  %it8 = load %list_item__intp*, %list_item__intp** %25, align 8
  %26 = getelementptr inbounds %list_item__intp, %list_item__intp* %it8, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %eqtmpX = icmp eq i32* %27, null
  br i1 %eqtmpX, label %cond_jump_then9, label %"cond_jump_elif0\0A"

cond_end:                                         ; preds = %cond_end10, %cond_jump_end
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %29 = bitcast i8* %28 to %list_item__intp**
  %it39 = load %list_item__intp*, %list_item__intp** %29, align 8
  %eqtmpX40 = icmp eq %list_item__intp* %it39, null
  br i1 %eqtmpX40, label %cond_jump_then41, label %"cond_jump_elif0\0A42"

cond_jump_then9:                                  ; preds = %cond_jump_then7
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %31 = bitcast i8* %30 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %31, align 8
  %32 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %33 = load %list_item__intp*, %list_item__intp** %32, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %35 = bitcast i8* %34 to %list_item__intp**
  store %list_item__intp* %33, %list_item__intp** %35, align 8
  br label %cond_end10

"cond_jump_elif0\0A":                             ; preds = %cond_jump_then7
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %37 = bitcast i8* %36 to %list_item__intp**
  %it212 = load %list_item__intp*, %list_item__intp** %37, align 8
  %38 = getelementptr inbounds %list_item__intp, %list_item__intp* %it212, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %eqtmpX13 = icmp eq i32* %39, null
  br i1 %eqtmpX13, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %41 = bitcast i8* %40 to %list_item__intp**
  %it214 = load %list_item__intp*, %list_item__intp** %41, align 8
  %42 = getelementptr inbounds %list_item__intp, %list_item__intp* %it214, i32 0, i32 2
  %43 = load %list_item__intp*, %list_item__intp** %42, align 8
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %45 = bitcast i8* %44 to %list_item__intp**
  store %list_item__intp* %43, %list_item__intp** %45, align 8
  br label %cond_end10

"cond_jump_elif1\0A":                             ; preds = %"cond_jump_elif0\0A"
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %47 = bitcast i8* %46 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %47, align 8
  %48 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %51 = bitcast i8* %50 to %list_item__intp**
  %it216 = load %list_item__intp*, %list_item__intp** %51, align 8
  %52 = getelementptr inbounds %list_item__intp, %list_item__intp* %it216, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %49, i32** %left17, align 8
  store i32* %53, i32** %right18, align 8
  br label %compare

"cond_jump_elif_then1\0A":                        ; preds = %inline_func_end
  br i1 true, label %cond_jump_then22, label %cond_else_block23

cond_else_block:                                  ; preds = %inline_func_end
  br i1 true, label %cond_jump_then31, label %cond_else_block32

cond_end10:                                       ; preds = %cond_end33, %cond_end24, %"cond_jump_elif_then0\0A", %cond_jump_then9
  br label %cond_end

compare:                                          ; preds = %"cond_jump_elif1\0A"
  %54 = bitcast i32** %left17 to i8*
  store i8* %54, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i32** %right18 to i8*
  store i8* %55, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %left19 = load i32*, i32** %left17, align 8
  %right20 = load i32*, i32** %right18, align 8
  %56 = call i32 @wcscmp(i32* %left19, i32* %right20)
  store i32 %56, i32* %result_variable, align 4
  br label %inline_func_end

inline_func_end:                                  ; preds = %compare
  %result_variable21 = load i32, i32* %result_variable, align 4
  %leeqtmp = icmp sle i32 %result_variable21, 0
  br i1 %leeqtmp, label %"cond_jump_elif_then1\0A", label %cond_else_block

cond_jump_then22:                                 ; preds = %"cond_jump_elif_then1\0A"
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %58 = bitcast i8* %57 to %list__intp**
  %result25 = load %list__intp*, %list__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %60 = bitcast i8* %59 to %list_item__intp**
  %it27 = load %list_item__intp*, %list_item__intp** %60, align 8
  %61 = getelementptr inbounds %list_item__intp, %list_item__intp* %it27, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %61, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = call i8* @xmemdup(i8* %64)
  %66 = bitcast i8* %65 to i32*
  call void @"list_push_back_intp34_vi++13completion"(%list__intp* %result25, i32* %66)
  br label %cond_end24

cond_else_block23:                                ; preds = %"cond_jump_elif_then1\0A"
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %68 = bitcast i8* %67 to %list__intp**
  %result28 = load %list__intp*, %list__intp** %68, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %70 = bitcast i8* %69 to %list_item__intp**
  %it29 = load %list_item__intp*, %list_item__intp** %70, align 8
  %71 = getelementptr inbounds %list_item__intp, %list_item__intp* %it29, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  call void @"list_push_back_intp35_vi++13completion"(%list__intp* %result28, i32* %72)
  br label %cond_end24

cond_end24:                                       ; preds = %cond_else_block23, %cond_jump_then22
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %74 = bitcast i8* %73 to %list_item__intp**
  %it30 = load %list_item__intp*, %list_item__intp** %74, align 8
  %75 = getelementptr inbounds %list_item__intp, %list_item__intp* %it30, i32 0, i32 2
  %76 = load %list_item__intp*, %list_item__intp** %75, align 8
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %78 = bitcast i8* %77 to %list_item__intp**
  store %list_item__intp* %76, %list_item__intp** %78, align 8
  br label %cond_end10

cond_jump_then31:                                 ; preds = %cond_else_block
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %80 = bitcast i8* %79 to %list__intp**
  %result34 = load %list__intp*, %list__intp** %80, align 8
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %82 = bitcast i8* %81 to %list_item__intp**
  %it235 = load %list_item__intp*, %list_item__intp** %82, align 8
  %83 = getelementptr inbounds %list_item__intp, %list_item__intp* %it235, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %83, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = call i8* @xmemdup(i8* %86)
  %88 = bitcast i8* %87 to i32*
  call void @"list_push_back_intp36_vi++13completion"(%list__intp* %result34, i32* %88)
  br label %cond_end33

cond_else_block32:                                ; preds = %cond_else_block
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %90 = bitcast i8* %89 to %list__intp**
  %result36 = load %list__intp*, %list__intp** %90, align 8
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %92 = bitcast i8* %91 to %list_item__intp**
  %it237 = load %list_item__intp*, %list_item__intp** %92, align 8
  %93 = getelementptr inbounds %list_item__intp, %list_item__intp* %it237, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  call void @"list_push_back_intp37_vi++13completion"(%list__intp* %result36, i32* %94)
  br label %cond_end33

cond_end33:                                       ; preds = %cond_else_block32, %cond_jump_then31
  %95 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %96 = bitcast i8* %95 to %list_item__intp**
  %it238 = load %list_item__intp*, %list_item__intp** %96, align 8
  %97 = getelementptr inbounds %list_item__intp, %list_item__intp* %it238, i32 0, i32 2
  %98 = load %list_item__intp*, %list_item__intp** %97, align 8
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %100 = bitcast i8* %99 to %list_item__intp**
  store %list_item__intp* %98, %list_item__intp** %100, align 8
  br label %cond_end10

cond_jump_then41:                                 ; preds = %cond_end
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %102 = bitcast i8* %101 to %list_item__intp**
  %it245 = load %list_item__intp*, %list_item__intp** %102, align 8
  %noteqtmp = icmp ne %list_item__intp* %it245, null
  br i1 %noteqtmp, label %cond_jump_then46, label %cond_end47

"cond_jump_elif0\0A42":                           ; preds = %cond_end
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %104 = bitcast i8* %103 to %list_item__intp**
  %it261 = load %list_item__intp*, %list_item__intp** %104, align 8
  %eqtmpX62 = icmp eq %list_item__intp* %it261, null
  br i1 %eqtmpX62, label %"cond_jump_elif_then0\0A43", label %cond_end44

"cond_jump_elif_then0\0A43":                      ; preds = %"cond_jump_elif0\0A42"
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %106 = bitcast i8* %105 to %list_item__intp**
  %it63 = load %list_item__intp*, %list_item__intp** %106, align 8
  %noteqtmp64 = icmp ne %list_item__intp* %it63, null
  br i1 %noteqtmp64, label %cond_jump_then65, label %cond_end66

cond_end44:                                       ; preds = %after_break80, %"cond_jump_elif0\0A42", %after_break
  br label %loop_top_block

cond_jump_then46:                                 ; preds = %cond_jump_then41
  br label %loop_top_block48

cond_end47:                                       ; preds = %cond_end_block52, %cond_jump_then41
  br label %cond_end_block

loop_top_block48:                                 ; preds = %cond_end55, %cond_jump_then46
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %108 = bitcast i8* %107 to %list_item__intp**
  %it249 = load %list_item__intp*, %list_item__intp** %108, align 8
  %noteqtmp50 = icmp ne %list_item__intp* %it249, null
  br i1 %noteqtmp50, label %cond_then_block51, label %cond_end_block52

cond_then_block51:                                ; preds = %loop_top_block48
  br i1 true, label %cond_jump_then53, label %cond_else_block54

cond_end_block52:                                 ; preds = %loop_top_block48
  br label %cond_end47

cond_jump_then53:                                 ; preds = %cond_then_block51
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %110 = bitcast i8* %109 to %list__intp**
  %result56 = load %list__intp*, %list__intp** %110, align 8
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %112 = bitcast i8* %111 to %list_item__intp**
  %it257 = load %list_item__intp*, %list_item__intp** %112, align 8
  %113 = getelementptr inbounds %list_item__intp, %list_item__intp* %it257, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %113, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = call i8* @xmemdup(i8* %116)
  %118 = bitcast i8* %117 to i32*
  call void @"list_push_back_intp38_vi++13completion"(%list__intp* %result56, i32* %118)
  br label %cond_end55

cond_else_block54:                                ; preds = %cond_then_block51
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %120 = bitcast i8* %119 to %list__intp**
  %result58 = load %list__intp*, %list__intp** %120, align 8
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %122 = bitcast i8* %121 to %list_item__intp**
  %it259 = load %list_item__intp*, %list_item__intp** %122, align 8
  %123 = getelementptr inbounds %list_item__intp, %list_item__intp* %it259, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  call void @"list_push_back_intp39_vi++13completion"(%list__intp* %result58, i32* %124)
  br label %cond_end55

cond_end55:                                       ; preds = %cond_else_block54, %cond_jump_then53
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %126 = bitcast i8* %125 to %list_item__intp**
  %it260 = load %list_item__intp*, %list_item__intp** %126, align 8
  %127 = getelementptr inbounds %list_item__intp, %list_item__intp* %it260, i32 0, i32 2
  %128 = load %list_item__intp*, %list_item__intp** %127, align 8
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %130 = bitcast i8* %129 to %list_item__intp**
  store %list_item__intp* %128, %list_item__intp** %130, align 8
  br label %loop_top_block48

after_break:                                      ; No predecessors!
  br label %cond_end44

cond_jump_then65:                                 ; preds = %"cond_jump_elif_then0\0A43"
  br label %loop_top_block67

cond_end66:                                       ; preds = %cond_end_block71, %"cond_jump_elif_then0\0A43"
  br label %cond_end_block

loop_top_block67:                                 ; preds = %cond_end74, %cond_jump_then65
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %132 = bitcast i8* %131 to %list_item__intp**
  %it68 = load %list_item__intp*, %list_item__intp** %132, align 8
  %noteqtmp69 = icmp ne %list_item__intp* %it68, null
  br i1 %noteqtmp69, label %cond_then_block70, label %cond_end_block71

cond_then_block70:                                ; preds = %loop_top_block67
  br i1 true, label %cond_jump_then72, label %cond_else_block73

cond_end_block71:                                 ; preds = %loop_top_block67
  br label %cond_end66

cond_jump_then72:                                 ; preds = %cond_then_block70
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %134 = bitcast i8* %133 to %list__intp**
  %result75 = load %list__intp*, %list__intp** %134, align 8
  %135 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %136 = bitcast i8* %135 to %list_item__intp**
  %it76 = load %list_item__intp*, %list_item__intp** %136, align 8
  %137 = getelementptr inbounds %list_item__intp, %list_item__intp* %it76, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32*, i32** %137, align 8
  %140 = bitcast i32* %139 to i8*
  %141 = call i8* @xmemdup(i8* %140)
  %142 = bitcast i8* %141 to i32*
  call void @"list_push_back_intp40_vi++13completion"(%list__intp* %result75, i32* %142)
  br label %cond_end74

cond_else_block73:                                ; preds = %cond_then_block70
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %144 = bitcast i8* %143 to %list__intp**
  %result77 = load %list__intp*, %list__intp** %144, align 8
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %146 = bitcast i8* %145 to %list_item__intp**
  %it78 = load %list_item__intp*, %list_item__intp** %146, align 8
  %147 = getelementptr inbounds %list_item__intp, %list_item__intp* %it78, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  call void @"list_push_back_intp41_vi++13completion"(%list__intp* %result77, i32* %148)
  br label %cond_end74

cond_end74:                                       ; preds = %cond_else_block73, %cond_jump_then72
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %150 = bitcast i8* %149 to %list_item__intp**
  %it79 = load %list_item__intp*, %list_item__intp** %150, align 8
  %151 = getelementptr inbounds %list_item__intp, %list_item__intp* %it79, i32 0, i32 2
  %152 = load %list_item__intp*, %list_item__intp** %151, align 8
  %153 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %154 = bitcast i8* %153 to %list_item__intp**
  store %list_item__intp* %152, %list_item__intp** %154, align 8
  br label %loop_top_block67

after_break80:                                    ; No predecessors!
  br label %cond_end44
}

define %list__intp* @"list_initialize_intp33_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp34_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.166, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.167, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.168, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.169, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.170, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.171, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.172, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.173, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.174, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.175, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.176, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.177, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp35_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.178, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.179, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.180, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.181, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.182, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.183, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.184, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.185, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.186, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.187, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.188, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.189, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp36_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.190, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.191, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.192, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.193, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.194, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.195, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.196, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.197, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.198, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.199, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.200, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.201, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp37_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.202, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.203, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.204, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.205, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.206, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.207, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.208, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.209, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.210, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.211, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.212, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.213, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp38_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.214, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.215, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.216, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.217, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.218, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.219, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.220, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.221, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.222, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.223, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.224, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.225, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp39_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.226, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.227, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.228, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.229, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.230, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.231, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.232, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.233, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.234, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.235, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.236, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.237, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp40_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.238, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.239, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.240, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.241, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.242, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.243, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.244, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.245, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.246, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.247, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.248, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.249, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_push_back_intp41_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.250, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.251, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.252, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.253, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.254, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.255, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.256, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.257, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.258, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.259, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.260, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.261, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 401), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
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

define void @"list_finalize_intp42_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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

define void @"list_finalize_intp44_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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

define void @"list_finalize_intp46_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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

define void @"list_finalize_intp48_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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

define %list__intp* @"list_uniq_intp50_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.262, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.263, i32 0, i32 0), i32 1445, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.264, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.265, i32 0, i32 0))
  %4 = bitcast i8* %3 to %list__intp*
  %5 = call %list__intp* @"list_initialize_intp51_vi++13completion"(%list__intp* %4)
  %result = alloca %list__intp*
  %6 = bitcast %list__intp** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list__intp* %5, %list__intp** %result, align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %7 = call i32 @"list_length_intp52_vi++13completion"(%list__intp* %self2)
  %gttmp = icmp sgt i32 %7, 0
  br i1 %gttmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %9 = bitcast i8* %8 to %list__intp**
  %self3 = load %list__intp*, %list__intp** %9, align 8
  %10 = call i32* @"list_item_intp53_vi++13completion"(%list__intp* %self3, i32 0, i32* null)
  %item_before = alloca i32*
  %11 = bitcast i32** %item_before to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store i32* %10, i32** %item_before, align 8
  br i1 true, label %cond_jump_then4, label %cond_else_block

cond_end:                                         ; preds = %cond_end11, %entry
  %result12 = load %list__intp*, %list__intp** %result, align 8
  %12 = bitcast [8192 x i8*]* %lvtable to i8*
  %13 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %12, i64 65536)
  ret %list__intp* %result12

cond_jump_then4:                                  ; preds = %cond_jump_then
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %result6 = load %list__intp*, %list__intp** %15, align 8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %17 = bitcast i8* %16 to i32**
  %item_before7 = load i32*, i32** %17, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = call i8* @xmemdup(i8* %19)
  %21 = bitcast i8* %20 to i32*
  call void @"list_push_back_intp54_vi++13completion"(%list__intp* %result6, i32* %21)
  br label %cond_end5

cond_else_block:                                  ; preds = %cond_jump_then
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %23 = bitcast i8* %22 to %list__intp**
  %result8 = load %list__intp*, %list__intp** %23, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %25 = bitcast i8* %24 to i32**
  %item_before9 = load i32*, i32** %25, align 8
  call void @"list_push_back_intp55_vi++13completion"(%list__intp* %result8, i32* %item_before9)
  br label %cond_end5

cond_end5:                                        ; preds = %cond_else_block, %cond_jump_then4
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %27 = bitcast i8* %26 to %list__intp**
  %self10 = load %list__intp*, %list__intp** %27, align 8
  %28 = call %list__intp* @"list_sublist_intp56_vi++13completion"(%list__intp* %self10, i32 1, i32 -1)
  call void @"list_each_intp62_vi++13completion"(%list__intp* %28, void (i32*, i32, i1*)* @"vi++13completion_lambda3")
  %29 = ptrtoint %list__intp* %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %cond_then_block, label %cond_end11

cond_then_block:                                  ; preds = %cond_end5
  br label %cond_end11

cond_end11:                                       ; preds = %cond_then_block, %cond_end5
  call void @"list_finalize_intp63_vi++13completion"(%list__intp* %28)
  %31 = bitcast %list__intp* %28 to i8*
  call void @xfree(i8* %31)
  br label %cond_end
}

define %list__intp* @"list_initialize_intp51_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
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

define i32 @"list_length_intp52_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp53_vi++13completion"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %14 = bitcast i8* %13 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %14, align 8
  %15 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, %16
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %self8 = load %list__intp*, %list__intp** %self1, align 8
  %17 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 0
  %18 = load %list_item__intp*, %list_item__intp** %17, align 8
  %it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %24 = bitcast i8* %23 to i32*
  %i11 = load i32, i32* %24, align 4
  %eqtmpX = icmp eq i32 %position10, %i11
  br i1 %eqtmpX, label %cond_jump_then12, label %cond_end13

cond_end_block:                                   ; preds = %loop_top_block
  %default_value19 = load i32*, i32** %default_value3, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i32* %default_value19

cond_jump_then12:                                 ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @"list_push_back_intp54_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.266, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.267, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.268, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.269, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.270, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.271, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.272, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.273, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.274, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.275, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.276, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.277, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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

define void @"list_push_back_intp55_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.278, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.279, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.280, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.281, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.282, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.283, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.284, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.285, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.286, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.287, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.288, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.289, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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

define %list__intp* @"list_sublist_intp56_vi++13completion"(%list__intp* %self, i32 %begin, i32 %tail) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %begin2 = alloca i32
  store i32 %begin, i32* %begin2, align 4
  %3 = bitcast i32* %begin2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %tail3 = alloca i32
  store i32 %tail, i32* %tail3, align 4
  %4 = bitcast i32* %tail3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %5 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.290, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.291, i32 0, i32 0), i32 1126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.292, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.293, i32 0, i32 0))
  %6 = bitcast i8* %5 to %list__intp*
  %7 = call %list__intp* @"list_initialize_intp57_vi++13completion"(%list__intp* %6)
  %result = alloca %list__intp*
  %8 = bitcast %list__intp** %result to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  store %list__intp* %7, %list__intp** %result, align 8
  %begin4 = load i32, i32* %begin2, align 4
  %letmp = icmp slt i32 %begin4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %10 = bitcast i8* %9 to i32*
  %begin5 = load i32, i32* %10, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %12 = bitcast i8* %11 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %12, align 8
  %13 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %addtmp = add nsw i32 %begin5, %14
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %16 = bitcast i8* %15 to i32*
  store i32 %addtmp, i32* %16, align 4
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %22 = bitcast i8* %21 to i32*
  %tail12 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %24 = bitcast i8* %23 to %list__intp**
  %self13 = load %list__intp*, %list__intp** %24, align 8
  %25 = getelementptr inbounds %list__intp, %list__intp* %self13, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %addtmp14 = add nsw i32 %26, 1
  %addtmp15 = add nsw i32 %tail12, %addtmp14
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp15, i32* %28, align 4
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
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
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self27 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self27, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %cond_end26

cond_end26:                                       ; preds = %cond_jump_then25, %cond_end22
  %self28 = load %list__intp*, %list__intp** %self1, align 8
  %43 = getelementptr inbounds %list__intp, %list__intp* %self28, i32 0, i32 0
  %44 = load %list_item__intp*, %list_item__intp** %43, align 8
  %it = alloca %list_item__intp*
  %45 = bitcast %list_item__intp** %it to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store %list_item__intp* %44, %list_item__intp** %it, align 8
  %i = alloca i32
  %46 = bitcast i32* %i to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end38, %cond_end26
  %it29 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it29, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %48 = bitcast i8* %47 to i32*
  %i30 = load i32, i32* %48, align 4
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
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
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %54 = bitcast i8* %53 to i32*
  %i34 = load i32, i32* %54, align 4
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
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
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %58 = bitcast i8* %57 to %list_item__intp**
  %it45 = load %list_item__intp*, %list_item__intp** %58, align 8
  %59 = getelementptr inbounds %list_item__intp, %list_item__intp* %it45, i32 0, i32 2
  %60 = load %list_item__intp*, %list_item__intp** %59, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %62 = bitcast i8* %61 to %list_item__intp**
  store %list_item__intp* %60, %list_item__intp** %62, align 8
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %64 = bitcast i8* %63 to i32*
  %i46 = load i32, i32* %64, align 4
  %addtmp47 = add nsw i32 %i46, 1
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  %66 = bitcast i8* %65 to i32*
  store i32 %addtmp47, i32* %66, align 4
  %subttmp48 = sub nsw i32 %addtmp47, 1
  br label %loop_top_block

cond_jump_then39:                                 ; preds = %cond_jump_then37
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %68 = bitcast i8* %67 to %list__intp**
  %result41 = load %list__intp*, %list__intp** %68, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %70 = bitcast i8* %69 to %list_item__intp**
  %it42 = load %list_item__intp*, %list_item__intp** %70, align 8
  %71 = getelementptr inbounds %list_item__intp, %list_item__intp* %it42, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %71, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = call i8* @xmemdup(i8* %74)
  %76 = bitcast i8* %75 to i32*
  call void @"list_push_back_intp58_vi++13completion"(%list__intp* %result41, i32* %76)
  br label %cond_end40

cond_else_block:                                  ; preds = %cond_jump_then37
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %78 = bitcast i8* %77 to %list__intp**
  %result43 = load %list__intp*, %list__intp** %78, align 8
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %80 = bitcast i8* %79 to %list_item__intp**
  %it44 = load %list_item__intp*, %list_item__intp** %80, align 8
  %81 = getelementptr inbounds %list_item__intp, %list_item__intp* %it44, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  call void @"list_push_back_intp59_vi++13completion"(%list__intp* %result43, i32* %82)
  br label %cond_end40

cond_end40:                                       ; preds = %cond_else_block, %cond_jump_then39
  br label %cond_end38
}

define %list__intp* @"list_initialize_intp57_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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

define void @"list_push_back_intp58_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.294, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.295, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.296, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.297, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.298, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.299, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.300, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.301, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.302, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.303, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.304, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.305, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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

define void @"list_push_back_intp59_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.306, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.307, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.308, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.309, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.310, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.311, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.312, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.313, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.314, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.315, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.316, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.317, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 400), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 399), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 398), align 8
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

define void @"vi++13completion_lambda3"(i32* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i32*
  store i32* %it, i32** %it1, align 8
  %2 = bitcast i32** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %it4 = load i32*, i32** %it1, align 8
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %6 = bitcast i8* %5 to i32**
  %item_before = load i32*, i32** %6, align 8
  %7 = call i1 @wstring_equals(i32* %it4, i32* %item_before)
  %LOGICAL_DIANEAL = icmp eq i1 %7, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  br i1 true, label %cond_jump_then5, label %cond_else_block

cond_end:                                         ; preds = %cond_end6, %entry
  %it10 = load i32*, i32** %it1, align 8
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  %9 = bitcast i8* %8 to i32**
  store i32* %it10, i32** %9, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_jump_then
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %13 = bitcast i8* %12 to %list__intp**
  %result = load %list__intp*, %list__intp** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %15 = bitcast i8* %14 to i32**
  %it7 = load i32*, i32** %15, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i8* @xmemdup(i8* %17)
  %19 = bitcast i8* %18 to i32*
  call void @"list_push_back_intp60_vi++13completion"(%list__intp* %result, i32* %19)
  br label %cond_end6

cond_else_block:                                  ; preds = %cond_jump_then
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %21 = bitcast i8* %20 to %list__intp**
  %result8 = load %list__intp*, %list__intp** %21, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %23 = bitcast i8* %22 to i32**
  %it9 = load i32*, i32** %23, align 8
  call void @"list_push_back_intp61_vi++13completion"(%list__intp* %result8, i32* %it9)
  br label %cond_end6

cond_end6:                                        ; preds = %cond_else_block, %cond_jump_then5
  br label %cond_end
}

define void @"list_push_back_intp60_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.318, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.319, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.320, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.321, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.322, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.323, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.324, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.325, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.326, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.327, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.328, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.329, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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

define void @"list_push_back_intp61_vi++13completion"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.330, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.331, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.332, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.333, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.334, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.335, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.336, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.337, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.338, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.339, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.340, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.341, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 397), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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

define void @"list_each_intp62_vi++13completion"(%list__intp* %self, void (i32*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
  %block_2 = alloca void (i32*, i32, i1*)*
  store void (i32*, i32, i1*)* %block_, void (i32*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i32*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 0
  %5 = load %list_item__intp*, %list_item__intp** %4, align 8
  %it_ = alloca %list_item__intp*
  %6 = bitcast %list_item__intp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %5, %list_item__intp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__intp*, %list_item__intp** %it_, align 8
  %noteqtmp = icmp ne %list_item__intp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 396), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %10 = bitcast i8* %9 to void (i32*, i32, i1*)**
  %block_5 = load void (i32*, i32, i1*)*, void (i32*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it_6 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %20 = bitcast i8* %19 to %list_item__intp**
  %it_10 = load %list_item__intp*, %list_item__intp** %20, align 8
  %21 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_10, i32 0, i32 2
  %22 = load %list_item__intp*, %list_item__intp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  %24 = bitcast i8* %23 to %list_item__intp**
  store %list_item__intp* %22, %list_item__intp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 395), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @"list_finalize_intp63_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 392), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 394), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 393), align 8
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

define void @"list_finalize_intp65_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
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

define void @"list_finalize_intp67_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
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

define void @"list_finalize_intp69_vi++13completion"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
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

attributes #0 = { nounwind }
