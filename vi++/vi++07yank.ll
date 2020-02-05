; ModuleID = 'Module vi++07yank'
source_filename = "Module vi++07yank"

%_IO_FILE_plus = type {}
%_IO_FILE = type opaque
%anon27 = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%anon28 = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%anon29 = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%_win_st = type opaque
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
@global_string = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.1 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.2 = private constant [27 x i8] c"push_back_intp1_vi++07yank\00", align 1
@global_string.3 = private constant [32 x i8] c"list_push_back_intp1_vi++07yank\00", align 1
@global_string.4 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.5 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.6 = private constant [27 x i8] c"push_back_intp1_vi++07yank\00", align 1
@global_string.7 = private constant [32 x i8] c"list_push_back_intp1_vi++07yank\00", align 1
@global_string.8 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.9 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.10 = private constant [27 x i8] c"push_back_intp1_vi++07yank\00", align 1
@global_string.11 = private constant [32 x i8] c"list_push_back_intp1_vi++07yank\00", align 1
@global_string.12 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.13 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.14 = private constant [24 x i8] c"insert_intp0_vi++07yank\00", align 1
@global_string.15 = private constant [29 x i8] c"list_insert_intp0_vi++07yank\00", align 1
@global_string.16 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.17 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.18 = private constant [24 x i8] c"insert_intp0_vi++07yank\00", align 1
@global_string.19 = private constant [29 x i8] c"list_insert_intp0_vi++07yank\00", align 1
@global_string.20 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.21 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.22 = private constant [24 x i8] c"insert_intp0_vi++07yank\00", align 1
@global_string.23 = private constant [29 x i8] c"list_insert_intp0_vi++07yank\00", align 1
@global_string.24 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.25 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.26 = private constant [27 x i8] c"push_back_intp7_vi++07yank\00", align 1
@global_string.27 = private constant [32 x i8] c"list_push_back_intp7_vi++07yank\00", align 1
@global_string.28 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.29 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.30 = private constant [27 x i8] c"push_back_intp7_vi++07yank\00", align 1
@global_string.31 = private constant [32 x i8] c"list_push_back_intp7_vi++07yank\00", align 1
@global_string.32 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.33 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.34 = private constant [27 x i8] c"push_back_intp7_vi++07yank\00", align 1
@global_string.35 = private constant [32 x i8] c"list_push_back_intp7_vi++07yank\00", align 1
@global_string.36 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.37 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.38 = private constant [24 x i8] c"insert_intp6_vi++07yank\00", align 1
@global_string.39 = private constant [29 x i8] c"list_insert_intp6_vi++07yank\00", align 1
@global_string.40 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.41 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.42 = private constant [24 x i8] c"insert_intp6_vi++07yank\00", align 1
@global_string.43 = private constant [29 x i8] c"list_insert_intp6_vi++07yank\00", align 1
@global_string.44 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.45 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.46 = private constant [24 x i8] c"insert_intp6_vi++07yank\00", align 1
@global_string.47 = private constant [29 x i8] c"list_insert_intp6_vi++07yank\00", align 1
@global_string.48 = private constant [13 x i8] c"list%<int*%>\00", align 1
@global_string.49 = private constant [14 x i8] c"vi++07yank.nc\00", align 1
@global_string.50 = private constant [11 x i8] c"initialize\00", align 1
@global_string.51 = private constant [14 x i8] c"Vi_initialize\00", align 1

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

define %Vi* @Vi_initialize-7(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = call %Vi* @Vi_initialize-6(%Vi* %self2)
  %self3 = load %Vi*, %Vi** %self1, align 8
  %4 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.48, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.49, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.50, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.51, i32 0, i32 0))
  %5 = bitcast i8* %4 to %list__intp*
  %6 = call %list__intp* @"list_initialize_intp12_vi++07yank"(%list__intp* %5)
  %7 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 6
  %8 = load %list__intp*, %list__intp** %7, align 8
  %9 = ptrtoint %list__intp* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @"list_finalize_intp13_vi++07yank"(%list__intp* %8)
  %11 = bitcast %list__intp* %8 to i8*
  call void @xfree(i8* %11)
  store %list__intp* %6, %list__intp** %7, align 8
  %self4 = load %Vi*, %Vi** %self1, align 8
  %12 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 7
  store i32 0, i32* %12, align 4
  %self5 = load %Vi*, %Vi** %self1, align 8
  %13 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 2
  %14 = load %vector__lambdap*, %vector__lambdap** %13, align 8
  %15 = call i1 @"vector_replace_lambdap15_vi++07yank"(%vector__lambdap* %14, i32 112, void (%Vi*, i32)* @"vi++07yank_lambda2")
  %self6 = load %Vi*, %Vi** %self1, align 8
  %16 = getelementptr inbounds %Vi, %Vi* %self6, i32 0, i32 2
  %17 = load %vector__lambdap*, %vector__lambdap** %16, align 8
  %18 = call i1 @"vector_replace_lambdap16_vi++07yank"(%vector__lambdap* %17, i32 80, void (%Vi*, i32)* @"vi++07yank_lambda3")
  %self7 = load %Vi*, %Vi** %self1, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %Vi* %self7
}

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

declare %Vi* @Vi_initialize-15(%Vi*)

declare void @Vi_activateFiler-15(%Vi*)

declare i32 @Vi_main_loop-15(%Vi*)

declare void @Vi_repositionFiler-15(%Vi*)

declare void @Vi_view-15(%Vi*)

declare void @Vi_clearView-15(%Vi*)

declare void @ViWin_textsView-15(%ViWin*, %Vi*)

declare %ViWin* @ViWin_initialize-15(%ViWin*, i32, i32, i32, i32)

define void @ViWin_pasteAfterCursor-7(%ViWin* %self, %Vi* %nvi) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %nvi2 = alloca %Vi*
  store %Vi* %nvi, %Vi** %nvi2, align 8
  %3 = bitcast %Vi** %nvi2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %nvi3 = load %Vi*, %Vi** %nvi2, align 8
  %4 = getelementptr inbounds %Vi, %Vi* %nvi3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %7 = bitcast i8* %6 to %ViWin**
  %self4 = load %ViWin*, %ViWin** %7, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self4)
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %9 = bitcast i8* %8 to %Vi**
  %nvi5 = load %Vi*, %Vi** %9, align 8
  %10 = getelementptr inbounds %Vi, %Vi* %nvi5, i32 0, i32 6
  %11 = load %list__intp*, %list__intp** %10, align 8
  call void @"list_each_intp2_vi++07yank"(%list__intp* %11, void (i32*, i32, i1*)* @"vi++07yank_lambda0")
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %13 = bitcast i8* %12 to %ViWin**
  %self6 = load %ViWin*, %ViWin** %13, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self6)
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %15 = bitcast i8* %14 to %ViWin**
  %self7 = load %ViWin*, %ViWin** %15, align 8
  %16 = getelementptr inbounds %ViWin, %ViWin* %self7, i32 0, i32 1
  %17 = load %list__intp*, %list__intp** %16, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %19 = bitcast i8* %18 to %ViWin**
  %self8 = load %ViWin*, %ViWin** %19, align 8
  %20 = getelementptr inbounds %ViWin, %ViWin* %self8, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %23 = bitcast i8* %22 to %ViWin**
  %self9 = load %ViWin*, %ViWin** %23, align 8
  %24 = getelementptr inbounds %ViWin, %ViWin* %self9, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %addtmp = add nsw i32 %21, %25
  %26 = call i32* @"list_item_intp3_vi++07yank"(%list__intp* %17, i32 %addtmp, i32* null)
  %line = alloca i32*
  %27 = bitcast i32** %line to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %26, i32** %line, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %29 = bitcast i8* %28 to %Vi**
  %nvi10 = load %Vi*, %Vi** %29, align 8
  %30 = getelementptr inbounds %Vi, %Vi* %nvi10, i32 0, i32 6
  %31 = load %list__intp*, %list__intp** %30, align 8
  %32 = call i32* @"list_item_intp4_vi++07yank"(%list__intp* %31, i32 0, i32* null)
  %yank_first_line = alloca i32*
  %33 = bitcast i32** %yank_first_line to i8*
  store i8* %33, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i32* %32, i32** %yank_first_line, align 8
  %line11 = load i32*, i32** %line, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %35 = bitcast i8* %34 to %ViWin**
  %self12 = load %ViWin*, %ViWin** %35, align 8
  %36 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %addtmp13 = add nsw i32 %37, 1
  %38 = call i32* @wstring_substring(i32* %line11, i32 0, i32 %addtmp13)
  %yank_first_line14 = load i32*, i32** %yank_first_line, align 8
  %39 = call i32* @op_add_wstring_wstring(i32* %38, i32* %yank_first_line14)
  %line15 = load i32*, i32** %line, align 8
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %41 = bitcast i8* %40 to %ViWin**
  %self16 = load %ViWin*, %ViWin** %41, align 8
  %42 = getelementptr inbounds %ViWin, %ViWin* %self16, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %subttmp = sub nsw i32 %43, 1
  %44 = call i32* @wstring_substring(i32* %line15, i32 %subttmp, i32 -1)
  %45 = call i32* @op_add_wstring_wstring(i32* %39, i32* %44)
  %new_line = alloca i32*
  %46 = bitcast i32** %new_line to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32* %45, i32** %new_line, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %48 = bitcast i8* %47 to %ViWin**
  %self17 = load %ViWin*, %ViWin** %48, align 8
  %49 = getelementptr inbounds %ViWin, %ViWin* %self17, i32 0, i32 1
  %50 = load %list__intp*, %list__intp** %49, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %52 = bitcast i8* %51 to %ViWin**
  %self18 = load %ViWin*, %ViWin** %52, align 8
  %53 = getelementptr inbounds %ViWin, %ViWin* %self18, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %56 = bitcast i8* %55 to %ViWin**
  %self19 = load %ViWin*, %ViWin** %56, align 8
  %57 = getelementptr inbounds %ViWin, %ViWin* %self19, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %addtmp20 = add nsw i32 %54, %58
  %new_line21 = load i32*, i32** %new_line, align 8
  %59 = load i32*, i32** %new_line, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = call i8* @xmemdup(i8* %60)
  %62 = bitcast i8* %61 to i32*
  call void @"list_replace_intp5_vi++07yank"(%list__intp* %50, i32 %addtmp20, i32* %62)
  %63 = load i32*, i32** %new_line, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %cond_then_block, label %cond_end22

cond_end:                                         ; preds = %cond_end28, %cond_jump_then
  %66 = bitcast [8192 x i8*]* %lvtable to i8*
  %67 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %66, i64 65536)
  ret void

cond_then_block:                                  ; preds = %cond_else_block
  br label %cond_end22

cond_end22:                                       ; preds = %cond_then_block, %cond_else_block
  %68 = bitcast i32* %63 to i8*
  call void @xfree(i8* %68)
  %69 = ptrtoint i32* %39 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %cond_then_block23, label %cond_end24

cond_then_block23:                                ; preds = %cond_end22
  br label %cond_end24

cond_end24:                                       ; preds = %cond_then_block23, %cond_end22
  %71 = bitcast i32* %39 to i8*
  call void @xfree(i8* %71)
  %72 = ptrtoint i32* %38 to i64
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %cond_then_block25, label %cond_end26

cond_then_block25:                                ; preds = %cond_end24
  br label %cond_end26

cond_end26:                                       ; preds = %cond_then_block25, %cond_end24
  %74 = bitcast i32* %38 to i8*
  call void @xfree(i8* %74)
  %75 = ptrtoint i32* %44 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %cond_then_block27, label %cond_end28

cond_then_block27:                                ; preds = %cond_end26
  br label %cond_end28

cond_end28:                                       ; preds = %cond_then_block27, %cond_end26
  %77 = bitcast i32* %44 to i8*
  call void @xfree(i8* %77)
  br label %cond_end
}

define void @"vi++07yank_lambda0"(i32* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i32*
  store i32* %it, i32** %it1, align 8
  %2 = bitcast i32** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %6 = bitcast i8* %5 to %ViWin**
  %self = load %ViWin*, %ViWin** %6, align 8
  %7 = getelementptr inbounds %ViWin, %ViWin* %self, i32 0, i32 1
  %8 = load %list__intp*, %list__intp** %7, align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %10 = bitcast i8* %9 to %ViWin**
  %self4 = load %ViWin*, %ViWin** %10, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %14 = bitcast i8* %13 to %ViWin**
  %self5 = load %ViWin*, %ViWin** %14, align 8
  %15 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %addtmp = add nsw i32 %12, %16
  %it26 = load i32, i32* %it22, align 4
  %addtmp7 = add nsw i32 %addtmp, %it26
  %addtmp8 = add nsw i32 %addtmp7, 1
  %it9 = load i32*, i32** %it1, align 8
  %17 = load i32*, i32** %it1, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i8* @xmemdup(i8* %18)
  %20 = bitcast i8* %19 to i32*
  call void @"list_insert_intp0_vi++07yank"(%list__intp* %8, i32 %addtmp8, i32* %20)
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

define void @"list_insert_intp0_vi++07yank"(%list__intp* %self, i32 %position, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %item3 = alloca i32*
  store i32* %item, i32** %item3, align 8
  %4 = bitcast i32** %item3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %10, 1
  %addtmp7 = add nsw i32 %position5, %addtmp
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp7, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %14 = bitcast i8* %13 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %14, align 8
  %15 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %addtmp9 = add nsw i32 %16, 1
  %subttmp = sub nsw i32 %addtmp7, %addtmp9
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %position10 = load i32, i32* %position2, align 4
  %letmp11 = icmp slt i32 %position10, 0
  br i1 %letmp11, label %cond_jump_then12, label %cond_end13

cond_jump_then12:                                 ; preds = %cond_end
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 4
  br label %cond_end13

cond_end13:                                       ; preds = %cond_jump_then12, %cond_end
  %oror_result_var = alloca i1
  %self14 = load %list__intp*, %list__intp** %self1, align 8
  %19 = getelementptr inbounds %list__intp, %list__intp* %self14, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %eqtmpX = icmp eq i32 %20, 0
  store i1 %eqtmpX, i1* %oror_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_end, label %cond_jump_then15

cond_jump_then15:                                 ; preds = %cond_end13
  %position16 = load i32, i32* %position2, align 4
  %self17 = load %list__intp*, %list__intp** %self1, align 8
  %21 = getelementptr inbounds %list__intp, %list__intp* %self17, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %getmp = icmp sge i32 %position16, %22
  %oror = or i1 %eqtmpX, %getmp
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then15, %cond_end13
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_then18, label %cond_end19

cond_jump_then18:                                 ; preds = %cond_jump_end
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %24 = bitcast i8* %23 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %26 = bitcast i8* %25 to i32**
  %item21 = load i32*, i32** %26, align 8
  call void @"list_push_back_intp1_vi++07yank"(%list__intp* %self20, i32* %item21)
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret void

cond_end19:                                       ; preds = %cond_jump_end
  %position22 = load i32, i32* %position2, align 4
  %eqtmpX23 = icmp eq i32 %position22, 0
  br i1 %eqtmpX23, label %cond_jump_then24, label %"cond_jump_elif0\0A"

cond_jump_then24:                                 ; preds = %cond_end19
  %29 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.13, i32 0, i32 0), i32 788, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.15, i32 0, i32 0))
  %30 = bitcast i8* %29 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %31 = bitcast %list_item__intp** %litem to i8*
  store i8* %31, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %30, %list_item__intp** %litem, align 8
  %litem26 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %32 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem26, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %32, align 8
  %litem27 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %34 = bitcast i8* %33 to %list__intp**
  %self28 = load %list__intp*, %list__intp** %34, align 8
  %35 = getelementptr inbounds %list__intp, %list__intp* %self28, i32 0, i32 0
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem27, i32 0, i32 2
  store %list_item__intp* %36, %list_item__intp** %37, align 8
  %litem29 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %39 = bitcast i8* %38 to i32**
  %item30 = load i32*, i32** %39, align 8
  %40 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem29, i32 0, i32 0
  store i32* %item30, i32** %40, align 8
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %42 = bitcast i8* %41 to %list__intp**
  %self31 = load %list__intp*, %list__intp** %42, align 8
  %43 = getelementptr inbounds %list__intp, %list__intp* %self31, i32 0, i32 0
  %44 = load %list_item__intp*, %list_item__intp** %43, align 8
  %litem32 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %45 = getelementptr inbounds %list_item__intp, %list_item__intp* %44, i32 0, i32 1
  store %list_item__intp* %litem32, %list_item__intp** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %47 = bitcast i8* %46 to %list__intp**
  %self33 = load %list__intp*, %list__intp** %47, align 8
  %litem34 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %48 = getelementptr inbounds %list__intp, %list__intp* %self33, i32 0, i32 0
  store %list_item__intp* %litem34, %list_item__intp** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %50 = bitcast i8* %49 to %list__intp**
  %self35 = load %list__intp*, %list__intp** %50, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %52 = bitcast i8* %51 to %list__intp**
  %self36 = load %list__intp*, %list__intp** %52, align 8
  %53 = getelementptr inbounds %list__intp, %list__intp* %self36, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %addtmp37 = add nsw i32 %54, 1
  %55 = getelementptr inbounds %list__intp, %list__intp* %self35, i32 0, i32 2
  store i32 %addtmp37, i32* %55, align 4
  %subttmp38 = sub nsw i32 %addtmp37, 1
  br label %cond_end25

"cond_jump_elif0\0A":                             ; preds = %cond_end19
  %self39 = load %list__intp*, %list__intp** %self1, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self39, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %eqtmpX40 = icmp eq i32 %57, 1
  br i1 %eqtmpX40, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %58 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.17, i32 0, i32 0), i32 800, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.18, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.19, i32 0, i32 0))
  %59 = bitcast i8* %58 to %list_item__intp*
  %litem41 = alloca %list_item__intp*
  %60 = bitcast %list_item__intp** %litem41 to i8*
  store i8* %60, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %59, %list_item__intp** %litem41, align 8
  %litem42 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %62 = bitcast i8* %61 to %list__intp**
  %self43 = load %list__intp*, %list__intp** %62, align 8
  %63 = getelementptr inbounds %list__intp, %list__intp* %self43, i32 0, i32 0
  %64 = load %list_item__intp*, %list_item__intp** %63, align 8
  %65 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem42, i32 0, i32 1
  store %list_item__intp* %64, %list_item__intp** %65, align 8
  %litem44 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %67 = bitcast i8* %66 to %list__intp**
  %self45 = load %list__intp*, %list__intp** %67, align 8
  %68 = getelementptr inbounds %list__intp, %list__intp* %self45, i32 0, i32 1
  %69 = load %list_item__intp*, %list_item__intp** %68, align 8
  %70 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem44, i32 0, i32 2
  store %list_item__intp* %69, %list_item__intp** %70, align 8
  %litem46 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %72 = bitcast i8* %71 to i32**
  %item47 = load i32*, i32** %72, align 8
  %73 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem46, i32 0, i32 0
  store i32* %item47, i32** %73, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %75 = bitcast i8* %74 to %list__intp**
  %self48 = load %list__intp*, %list__intp** %75, align 8
  %76 = getelementptr inbounds %list__intp, %list__intp* %self48, i32 0, i32 1
  %77 = load %list_item__intp*, %list_item__intp** %76, align 8
  %litem49 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %78 = getelementptr inbounds %list_item__intp, %list_item__intp* %77, i32 0, i32 1
  store %list_item__intp* %litem49, %list_item__intp** %78, align 8
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %80 = bitcast i8* %79 to %list__intp**
  %self50 = load %list__intp*, %list__intp** %80, align 8
  %81 = getelementptr inbounds %list__intp, %list__intp* %self50, i32 0, i32 0
  %82 = load %list_item__intp*, %list_item__intp** %81, align 8
  %litem51 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %83 = getelementptr inbounds %list_item__intp, %list_item__intp* %82, i32 0, i32 2
  store %list_item__intp* %litem51, %list_item__intp** %83, align 8
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %85 = bitcast i8* %84 to %list__intp**
  %self52 = load %list__intp*, %list__intp** %85, align 8
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %87 = bitcast i8* %86 to %list__intp**
  %self53 = load %list__intp*, %list__intp** %87, align 8
  %88 = getelementptr inbounds %list__intp, %list__intp* %self53, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %addtmp54 = add nsw i32 %89, 1
  %90 = getelementptr inbounds %list__intp, %list__intp* %self52, i32 0, i32 2
  store i32 %addtmp54, i32* %90, align 4
  %subttmp55 = sub nsw i32 %addtmp54, 1
  br label %cond_end25

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %92 = bitcast i8* %91 to %list__intp**
  %self56 = load %list__intp*, %list__intp** %92, align 8
  %93 = getelementptr inbounds %list__intp, %list__intp* %self56, i32 0, i32 0
  %94 = load %list_item__intp*, %list_item__intp** %93, align 8
  %it = alloca %list_item__intp*
  %95 = bitcast %list_item__intp** %it to i8*
  store i8* %95, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %94, %list_item__intp** %it, align 8
  %i = alloca i32
  %96 = bitcast i32* %i to i8*
  store i8* %96, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end25:                                       ; preds = %cond_end_block, %"cond_jump_elif_then0\0A", %cond_jump_then24
  %97 = bitcast [8192 x i8*]* %lvtable to i8*
  %98 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %97, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end62, %cond_else_block
  %it57 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it57, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %100 = bitcast i8* %99 to i32*
  %position58 = load i32, i32* %100, align 4
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %102 = bitcast i8* %101 to i32*
  %i59 = load i32, i32* %102, align 4
  %eqtmpX60 = icmp eq i32 %position58, %i59
  br i1 %eqtmpX60, label %cond_jump_then61, label %cond_end62

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end25

cond_jump_then61:                                 ; preds = %cond_then_block
  %103 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.21, i32 0, i32 0), i32 816, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.23, i32 0, i32 0))
  %104 = bitcast i8* %103 to %list_item__intp*
  %litem63 = alloca %list_item__intp*
  %105 = bitcast %list_item__intp** %litem63 to i8*
  store i8* %105, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %104, %list_item__intp** %litem63, align 8
  %litem64 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %107 = bitcast i8* %106 to %list_item__intp**
  %it65 = load %list_item__intp*, %list_item__intp** %107, align 8
  %108 = getelementptr inbounds %list_item__intp, %list_item__intp* %it65, i32 0, i32 1
  %109 = load %list_item__intp*, %list_item__intp** %108, align 8
  %110 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem64, i32 0, i32 1
  store %list_item__intp* %109, %list_item__intp** %110, align 8
  %litem66 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %112 = bitcast i8* %111 to %list_item__intp**
  %it67 = load %list_item__intp*, %list_item__intp** %112, align 8
  %113 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem66, i32 0, i32 2
  store %list_item__intp* %it67, %list_item__intp** %113, align 8
  %litem68 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %115 = bitcast i8* %114 to i32**
  %item69 = load i32*, i32** %115, align 8
  %116 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem68, i32 0, i32 0
  store i32* %item69, i32** %116, align 8
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %118 = bitcast i8* %117 to %list_item__intp**
  %it70 = load %list_item__intp*, %list_item__intp** %118, align 8
  %119 = getelementptr inbounds %list_item__intp, %list_item__intp* %it70, i32 0, i32 1
  %120 = load %list_item__intp*, %list_item__intp** %119, align 8
  %litem71 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %121 = getelementptr inbounds %list_item__intp, %list_item__intp* %120, i32 0, i32 2
  store %list_item__intp* %litem71, %list_item__intp** %121, align 8
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %123 = bitcast i8* %122 to %list_item__intp**
  %it72 = load %list_item__intp*, %list_item__intp** %123, align 8
  %litem73 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %124 = getelementptr inbounds %list_item__intp, %list_item__intp* %it72, i32 0, i32 1
  store %list_item__intp* %litem73, %list_item__intp** %124, align 8
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %126 = bitcast i8* %125 to %list__intp**
  %self74 = load %list__intp*, %list__intp** %126, align 8
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %128 = bitcast i8* %127 to %list__intp**
  %self75 = load %list__intp*, %list__intp** %128, align 8
  %129 = getelementptr inbounds %list__intp, %list__intp* %self75, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %addtmp76 = add nsw i32 %130, 1
  %131 = getelementptr inbounds %list__intp, %list__intp* %self74, i32 0, i32 2
  store i32 %addtmp76, i32* %131, align 4
  %subttmp77 = sub nsw i32 %addtmp76, 1
  br label %cond_end62

cond_end62:                                       ; preds = %cond_jump_then61, %cond_then_block
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %133 = bitcast i8* %132 to %list_item__intp**
  %it78 = load %list_item__intp*, %list_item__intp** %133, align 8
  %134 = getelementptr inbounds %list_item__intp, %list_item__intp* %it78, i32 0, i32 2
  %135 = load %list_item__intp*, %list_item__intp** %134, align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %137 = bitcast i8* %136 to %list_item__intp**
  store %list_item__intp* %135, %list_item__intp** %137, align 8
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %139 = bitcast i8* %138 to i32*
  %i79 = load i32, i32* %139, align 4
  %addtmp80 = add nsw i32 %i79, 1
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %141 = bitcast i8* %140 to i32*
  store i32 %addtmp80, i32* %141, align 4
  %subttmp81 = sub nsw i32 %addtmp80, 1
  br label %loop_top_block
}

define void @"list_push_back_intp1_vi++07yank"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.1, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.3, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.5, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.7, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.9, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.11, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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

define void @"list_each_intp2_vi++07yank"(%list__intp* %self, void (i32*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %block_2 = alloca void (i32*, i32, i1*)*
  store void (i32*, i32, i1*)* %block_, void (i32*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i32*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 0
  %5 = load %list_item__intp*, %list_item__intp** %4, align 8
  %it_ = alloca %list_item__intp*
  %6 = bitcast %list_item__intp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store %list_item__intp* %5, %list_item__intp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__intp*, %list_item__intp** %it_, align 8
  %noteqtmp = icmp ne %list_item__intp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %10 = bitcast i8* %9 to void (i32*, i32, i1*)**
  %block_5 = load void (i32*, i32, i1*)*, void (i32*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it_6 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %20 = bitcast i8* %19 to %list_item__intp**
  %it_10 = load %list_item__intp*, %list_item__intp** %20, align 8
  %21 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_10, i32 0, i32 2
  %22 = load %list_item__intp*, %list_item__intp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %24 = bitcast i8* %23 to %list_item__intp**
  store %list_item__intp* %22, %list_item__intp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define i32* @"list_item_intp3_vi++07yank"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define i32* @"list_item_intp4_vi++07yank"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @"list_replace_intp5_vi++07yank"(%list__intp* %self, i32 %position, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %item3 = alloca i32*
  store i32* %item, i32** %item3, align 8
  %4 = bitcast i32** %item3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %24 = bitcast i8* %23 to i32*
  %i11 = load i32, i32* %24, align 4
  %eqtmpX = icmp eq i32 %position10, %i11
  br i1 %eqtmpX, label %cond_jump_then12, label %cond_end13

cond_end_block:                                   ; preds = %cond_end15, %loop_top_block
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret void

cond_jump_then12:                                 ; preds = %cond_then_block
  br i1 true, label %cond_jump_then14, label %cond_end15

cond_end13:                                       ; preds = %after_break, %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it21 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it21, i32 0, i32 2
  %30 = load %list_item__intp*, %list_item__intp** %29, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %32 = bitcast i8* %31 to %list_item__intp**
  store %list_item__intp* %30, %list_item__intp** %32, align 8
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %34 = bitcast i8* %33 to i32*
  %i22 = load i32, i32* %34, align 4
  %addtmp23 = add nsw i32 %i22, 1
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %addtmp23, i32* %36, align 4
  %subttmp24 = sub nsw i32 %addtmp23, 1
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then12
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  %it16 = load %list_item__intp*, %list_item__intp** %38, align 8
  %39 = getelementptr inbounds %list_item__intp, %list_item__intp* %it16, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %39, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %cond_then_block17, label %cond_end18

cond_end15:                                       ; preds = %cond_end18, %cond_jump_then12
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %45 = bitcast i8* %44 to %list_item__intp**
  %it19 = load %list_item__intp*, %list_item__intp** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %47 = bitcast i8* %46 to i32**
  %item20 = load i32*, i32** %47, align 8
  %48 = getelementptr inbounds %list_item__intp, %list_item__intp* %it19, i32 0, i32 0
  store i32* %item20, i32** %48, align 8
  br label %cond_end_block

cond_then_block17:                                ; preds = %cond_jump_then14
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_jump_then14
  %49 = bitcast i32* %41 to i8*
  call void @xfree(i8* %49)
  br label %cond_end15

after_break:                                      ; No predecessors!
  br label %cond_end13
}

define void @ViWin_pasteBeforeCursor-7(%ViWin* %self, %Vi* %nvi) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %nvi2 = alloca %Vi*
  store %Vi* %nvi, %Vi** %nvi2, align 8
  %3 = bitcast %Vi** %nvi2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %nvi3 = load %Vi*, %Vi** %nvi2, align 8
  %4 = getelementptr inbounds %Vi, %Vi* %nvi3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %7 = bitcast i8* %6 to %ViWin**
  %self4 = load %ViWin*, %ViWin** %7, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self4)
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %9 = bitcast i8* %8 to %Vi**
  %nvi5 = load %Vi*, %Vi** %9, align 8
  %10 = getelementptr inbounds %Vi, %Vi* %nvi5, i32 0, i32 6
  %11 = load %list__intp*, %list__intp** %10, align 8
  call void @"list_each_intp8_vi++07yank"(%list__intp* %11, void (i32*, i32, i1*)* @"vi++07yank_lambda1")
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %13 = bitcast i8* %12 to %ViWin**
  %self6 = load %ViWin*, %ViWin** %13, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self6)
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %15 = bitcast i8* %14 to %ViWin**
  %self7 = load %ViWin*, %ViWin** %15, align 8
  %16 = getelementptr inbounds %ViWin, %ViWin* %self7, i32 0, i32 1
  %17 = load %list__intp*, %list__intp** %16, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %19 = bitcast i8* %18 to %ViWin**
  %self8 = load %ViWin*, %ViWin** %19, align 8
  %20 = getelementptr inbounds %ViWin, %ViWin* %self8, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %23 = bitcast i8* %22 to %ViWin**
  %self9 = load %ViWin*, %ViWin** %23, align 8
  %24 = getelementptr inbounds %ViWin, %ViWin* %self9, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %addtmp = add nsw i32 %21, %25
  %26 = call i32* @"list_item_intp9_vi++07yank"(%list__intp* %17, i32 %addtmp, i32* null)
  %line = alloca i32*
  %27 = bitcast i32** %line to i8*
  store i8* %27, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %26, i32** %line, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %29 = bitcast i8* %28 to %Vi**
  %nvi10 = load %Vi*, %Vi** %29, align 8
  %30 = getelementptr inbounds %Vi, %Vi* %nvi10, i32 0, i32 6
  %31 = load %list__intp*, %list__intp** %30, align 8
  %32 = call i32* @"list_item_intp10_vi++07yank"(%list__intp* %31, i32 0, i32* null)
  %yank_first_line = alloca i32*
  %33 = bitcast i32** %yank_first_line to i8*
  store i8* %33, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i32* %32, i32** %yank_first_line, align 8
  %line11 = load i32*, i32** %line, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %35 = bitcast i8* %34 to %ViWin**
  %self12 = load %ViWin*, %ViWin** %35, align 8
  %36 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @wstring_substring(i32* %line11, i32 0, i32 %37)
  %yank_first_line13 = load i32*, i32** %yank_first_line, align 8
  %39 = call i32* @op_add_wstring_wstring(i32* %38, i32* %yank_first_line13)
  %line14 = load i32*, i32** %line, align 8
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %41 = bitcast i8* %40 to %ViWin**
  %self15 = load %ViWin*, %ViWin** %41, align 8
  %42 = getelementptr inbounds %ViWin, %ViWin* %self15, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @wstring_substring(i32* %line14, i32 %43, i32 -1)
  %45 = call i32* @op_add_wstring_wstring(i32* %39, i32* %44)
  %new_line = alloca i32*
  %46 = bitcast i32** %new_line to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32* %45, i32** %new_line, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %48 = bitcast i8* %47 to %ViWin**
  %self16 = load %ViWin*, %ViWin** %48, align 8
  %49 = getelementptr inbounds %ViWin, %ViWin* %self16, i32 0, i32 1
  %50 = load %list__intp*, %list__intp** %49, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %52 = bitcast i8* %51 to %ViWin**
  %self17 = load %ViWin*, %ViWin** %52, align 8
  %53 = getelementptr inbounds %ViWin, %ViWin* %self17, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %56 = bitcast i8* %55 to %ViWin**
  %self18 = load %ViWin*, %ViWin** %56, align 8
  %57 = getelementptr inbounds %ViWin, %ViWin* %self18, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %addtmp19 = add nsw i32 %54, %58
  %new_line20 = load i32*, i32** %new_line, align 8
  %59 = load i32*, i32** %new_line, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = call i8* @xmemdup(i8* %60)
  %62 = bitcast i8* %61 to i32*
  call void @"list_replace_intp11_vi++07yank"(%list__intp* %50, i32 %addtmp19, i32* %62)
  %63 = load i32*, i32** %new_line, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %cond_then_block, label %cond_end21

cond_end:                                         ; preds = %cond_end27, %cond_jump_then
  %66 = bitcast [8192 x i8*]* %lvtable to i8*
  %67 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %66, i64 65536)
  ret void

cond_then_block:                                  ; preds = %cond_else_block
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block, %cond_else_block
  %68 = bitcast i32* %63 to i8*
  call void @xfree(i8* %68)
  %69 = ptrtoint i32* %38 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %cond_then_block22, label %cond_end23

cond_then_block22:                                ; preds = %cond_end21
  br label %cond_end23

cond_end23:                                       ; preds = %cond_then_block22, %cond_end21
  %71 = bitcast i32* %38 to i8*
  call void @xfree(i8* %71)
  %72 = ptrtoint i32* %39 to i64
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %cond_then_block24, label %cond_end25

cond_then_block24:                                ; preds = %cond_end23
  br label %cond_end25

cond_end25:                                       ; preds = %cond_then_block24, %cond_end23
  %74 = bitcast i32* %39 to i8*
  call void @xfree(i8* %74)
  %75 = ptrtoint i32* %44 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %cond_then_block26, label %cond_end27

cond_then_block26:                                ; preds = %cond_end25
  br label %cond_end27

cond_end27:                                       ; preds = %cond_then_block26, %cond_end25
  %77 = bitcast i32* %44 to i8*
  call void @xfree(i8* %77)
  br label %cond_end
}

define void @"vi++07yank_lambda1"(i32* %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i32*
  store i32* %it, i32** %it1, align 8
  %2 = bitcast i32** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %6 = bitcast i8* %5 to %ViWin**
  %self = load %ViWin*, %ViWin** %6, align 8
  %7 = getelementptr inbounds %ViWin, %ViWin* %self, i32 0, i32 1
  %8 = load %list__intp*, %list__intp** %7, align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %10 = bitcast i8* %9 to %ViWin**
  %self4 = load %ViWin*, %ViWin** %10, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %14 = bitcast i8* %13 to %ViWin**
  %self5 = load %ViWin*, %ViWin** %14, align 8
  %15 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %addtmp = add nsw i32 %12, %16
  %it26 = load i32, i32* %it22, align 4
  %addtmp7 = add nsw i32 %addtmp, %it26
  %it8 = load i32*, i32** %it1, align 8
  %17 = load i32*, i32** %it1, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i8* @xmemdup(i8* %18)
  %20 = bitcast i8* %19 to i32*
  call void @"list_insert_intp6_vi++07yank"(%list__intp* %8, i32 %addtmp7, i32* %20)
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

define void @"list_insert_intp6_vi++07yank"(%list__intp* %self, i32 %position, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %item3 = alloca i32*
  store i32* %item, i32** %item3, align 8
  %4 = bitcast i32** %item3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %10, 1
  %addtmp7 = add nsw i32 %position5, %addtmp
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp7, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %14 = bitcast i8* %13 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %14, align 8
  %15 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %addtmp9 = add nsw i32 %16, 1
  %subttmp = sub nsw i32 %addtmp7, %addtmp9
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %position10 = load i32, i32* %position2, align 4
  %letmp11 = icmp slt i32 %position10, 0
  br i1 %letmp11, label %cond_jump_then12, label %cond_end13

cond_jump_then12:                                 ; preds = %cond_end
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 4
  br label %cond_end13

cond_end13:                                       ; preds = %cond_jump_then12, %cond_end
  %oror_result_var = alloca i1
  %self14 = load %list__intp*, %list__intp** %self1, align 8
  %19 = getelementptr inbounds %list__intp, %list__intp* %self14, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %eqtmpX = icmp eq i32 %20, 0
  store i1 %eqtmpX, i1* %oror_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_end, label %cond_jump_then15

cond_jump_then15:                                 ; preds = %cond_end13
  %position16 = load i32, i32* %position2, align 4
  %self17 = load %list__intp*, %list__intp** %self1, align 8
  %21 = getelementptr inbounds %list__intp, %list__intp* %self17, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %getmp = icmp sge i32 %position16, %22
  %oror = or i1 %eqtmpX, %getmp
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then15, %cond_end13
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_then18, label %cond_end19

cond_jump_then18:                                 ; preds = %cond_jump_end
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %24 = bitcast i8* %23 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %26 = bitcast i8* %25 to i32**
  %item21 = load i32*, i32** %26, align 8
  call void @"list_push_back_intp7_vi++07yank"(%list__intp* %self20, i32* %item21)
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret void

cond_end19:                                       ; preds = %cond_jump_end
  %position22 = load i32, i32* %position2, align 4
  %eqtmpX23 = icmp eq i32 %position22, 0
  br i1 %eqtmpX23, label %cond_jump_then24, label %"cond_jump_elif0\0A"

cond_jump_then24:                                 ; preds = %cond_end19
  %29 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.36, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.37, i32 0, i32 0), i32 788, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.38, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.39, i32 0, i32 0))
  %30 = bitcast i8* %29 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %31 = bitcast %list_item__intp** %litem to i8*
  store i8* %31, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %30, %list_item__intp** %litem, align 8
  %litem26 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %32 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem26, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %32, align 8
  %litem27 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %34 = bitcast i8* %33 to %list__intp**
  %self28 = load %list__intp*, %list__intp** %34, align 8
  %35 = getelementptr inbounds %list__intp, %list__intp* %self28, i32 0, i32 0
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem27, i32 0, i32 2
  store %list_item__intp* %36, %list_item__intp** %37, align 8
  %litem29 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %39 = bitcast i8* %38 to i32**
  %item30 = load i32*, i32** %39, align 8
  %40 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem29, i32 0, i32 0
  store i32* %item30, i32** %40, align 8
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %42 = bitcast i8* %41 to %list__intp**
  %self31 = load %list__intp*, %list__intp** %42, align 8
  %43 = getelementptr inbounds %list__intp, %list__intp* %self31, i32 0, i32 0
  %44 = load %list_item__intp*, %list_item__intp** %43, align 8
  %litem32 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %45 = getelementptr inbounds %list_item__intp, %list_item__intp* %44, i32 0, i32 1
  store %list_item__intp* %litem32, %list_item__intp** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %47 = bitcast i8* %46 to %list__intp**
  %self33 = load %list__intp*, %list__intp** %47, align 8
  %litem34 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %48 = getelementptr inbounds %list__intp, %list__intp* %self33, i32 0, i32 0
  store %list_item__intp* %litem34, %list_item__intp** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %50 = bitcast i8* %49 to %list__intp**
  %self35 = load %list__intp*, %list__intp** %50, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %52 = bitcast i8* %51 to %list__intp**
  %self36 = load %list__intp*, %list__intp** %52, align 8
  %53 = getelementptr inbounds %list__intp, %list__intp* %self36, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %addtmp37 = add nsw i32 %54, 1
  %55 = getelementptr inbounds %list__intp, %list__intp* %self35, i32 0, i32 2
  store i32 %addtmp37, i32* %55, align 4
  %subttmp38 = sub nsw i32 %addtmp37, 1
  br label %cond_end25

"cond_jump_elif0\0A":                             ; preds = %cond_end19
  %self39 = load %list__intp*, %list__intp** %self1, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self39, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %eqtmpX40 = icmp eq i32 %57, 1
  br i1 %eqtmpX40, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %58 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.40, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.41, i32 0, i32 0), i32 800, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.42, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.43, i32 0, i32 0))
  %59 = bitcast i8* %58 to %list_item__intp*
  %litem41 = alloca %list_item__intp*
  %60 = bitcast %list_item__intp** %litem41 to i8*
  store i8* %60, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %59, %list_item__intp** %litem41, align 8
  %litem42 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %62 = bitcast i8* %61 to %list__intp**
  %self43 = load %list__intp*, %list__intp** %62, align 8
  %63 = getelementptr inbounds %list__intp, %list__intp* %self43, i32 0, i32 0
  %64 = load %list_item__intp*, %list_item__intp** %63, align 8
  %65 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem42, i32 0, i32 1
  store %list_item__intp* %64, %list_item__intp** %65, align 8
  %litem44 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %67 = bitcast i8* %66 to %list__intp**
  %self45 = load %list__intp*, %list__intp** %67, align 8
  %68 = getelementptr inbounds %list__intp, %list__intp* %self45, i32 0, i32 1
  %69 = load %list_item__intp*, %list_item__intp** %68, align 8
  %70 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem44, i32 0, i32 2
  store %list_item__intp* %69, %list_item__intp** %70, align 8
  %litem46 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %72 = bitcast i8* %71 to i32**
  %item47 = load i32*, i32** %72, align 8
  %73 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem46, i32 0, i32 0
  store i32* %item47, i32** %73, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %75 = bitcast i8* %74 to %list__intp**
  %self48 = load %list__intp*, %list__intp** %75, align 8
  %76 = getelementptr inbounds %list__intp, %list__intp* %self48, i32 0, i32 1
  %77 = load %list_item__intp*, %list_item__intp** %76, align 8
  %litem49 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %78 = getelementptr inbounds %list_item__intp, %list_item__intp* %77, i32 0, i32 1
  store %list_item__intp* %litem49, %list_item__intp** %78, align 8
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %80 = bitcast i8* %79 to %list__intp**
  %self50 = load %list__intp*, %list__intp** %80, align 8
  %81 = getelementptr inbounds %list__intp, %list__intp* %self50, i32 0, i32 0
  %82 = load %list_item__intp*, %list_item__intp** %81, align 8
  %litem51 = load %list_item__intp*, %list_item__intp** %litem41, align 8
  %83 = getelementptr inbounds %list_item__intp, %list_item__intp* %82, i32 0, i32 2
  store %list_item__intp* %litem51, %list_item__intp** %83, align 8
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %85 = bitcast i8* %84 to %list__intp**
  %self52 = load %list__intp*, %list__intp** %85, align 8
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %87 = bitcast i8* %86 to %list__intp**
  %self53 = load %list__intp*, %list__intp** %87, align 8
  %88 = getelementptr inbounds %list__intp, %list__intp* %self53, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %addtmp54 = add nsw i32 %89, 1
  %90 = getelementptr inbounds %list__intp, %list__intp* %self52, i32 0, i32 2
  store i32 %addtmp54, i32* %90, align 4
  %subttmp55 = sub nsw i32 %addtmp54, 1
  br label %cond_end25

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %92 = bitcast i8* %91 to %list__intp**
  %self56 = load %list__intp*, %list__intp** %92, align 8
  %93 = getelementptr inbounds %list__intp, %list__intp* %self56, i32 0, i32 0
  %94 = load %list_item__intp*, %list_item__intp** %93, align 8
  %it = alloca %list_item__intp*
  %95 = bitcast %list_item__intp** %it to i8*
  store i8* %95, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %94, %list_item__intp** %it, align 8
  %i = alloca i32
  %96 = bitcast i32* %i to i8*
  store i8* %96, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end25:                                       ; preds = %cond_end_block, %"cond_jump_elif_then0\0A", %cond_jump_then24
  %97 = bitcast [8192 x i8*]* %lvtable to i8*
  %98 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %97, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end62, %cond_else_block
  %it57 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it57, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %100 = bitcast i8* %99 to i32*
  %position58 = load i32, i32* %100, align 4
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %102 = bitcast i8* %101 to i32*
  %i59 = load i32, i32* %102, align 4
  %eqtmpX60 = icmp eq i32 %position58, %i59
  br i1 %eqtmpX60, label %cond_jump_then61, label %cond_end62

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end25

cond_jump_then61:                                 ; preds = %cond_then_block
  %103 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.44, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.45, i32 0, i32 0), i32 816, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.46, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.47, i32 0, i32 0))
  %104 = bitcast i8* %103 to %list_item__intp*
  %litem63 = alloca %list_item__intp*
  %105 = bitcast %list_item__intp** %litem63 to i8*
  store i8* %105, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %104, %list_item__intp** %litem63, align 8
  %litem64 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %107 = bitcast i8* %106 to %list_item__intp**
  %it65 = load %list_item__intp*, %list_item__intp** %107, align 8
  %108 = getelementptr inbounds %list_item__intp, %list_item__intp* %it65, i32 0, i32 1
  %109 = load %list_item__intp*, %list_item__intp** %108, align 8
  %110 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem64, i32 0, i32 1
  store %list_item__intp* %109, %list_item__intp** %110, align 8
  %litem66 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %112 = bitcast i8* %111 to %list_item__intp**
  %it67 = load %list_item__intp*, %list_item__intp** %112, align 8
  %113 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem66, i32 0, i32 2
  store %list_item__intp* %it67, %list_item__intp** %113, align 8
  %litem68 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %115 = bitcast i8* %114 to i32**
  %item69 = load i32*, i32** %115, align 8
  %116 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem68, i32 0, i32 0
  store i32* %item69, i32** %116, align 8
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %118 = bitcast i8* %117 to %list_item__intp**
  %it70 = load %list_item__intp*, %list_item__intp** %118, align 8
  %119 = getelementptr inbounds %list_item__intp, %list_item__intp* %it70, i32 0, i32 1
  %120 = load %list_item__intp*, %list_item__intp** %119, align 8
  %litem71 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %121 = getelementptr inbounds %list_item__intp, %list_item__intp* %120, i32 0, i32 2
  store %list_item__intp* %litem71, %list_item__intp** %121, align 8
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %123 = bitcast i8* %122 to %list_item__intp**
  %it72 = load %list_item__intp*, %list_item__intp** %123, align 8
  %litem73 = load %list_item__intp*, %list_item__intp** %litem63, align 8
  %124 = getelementptr inbounds %list_item__intp, %list_item__intp* %it72, i32 0, i32 1
  store %list_item__intp* %litem73, %list_item__intp** %124, align 8
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %126 = bitcast i8* %125 to %list__intp**
  %self74 = load %list__intp*, %list__intp** %126, align 8
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %128 = bitcast i8* %127 to %list__intp**
  %self75 = load %list__intp*, %list__intp** %128, align 8
  %129 = getelementptr inbounds %list__intp, %list__intp* %self75, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %addtmp76 = add nsw i32 %130, 1
  %131 = getelementptr inbounds %list__intp, %list__intp* %self74, i32 0, i32 2
  store i32 %addtmp76, i32* %131, align 4
  %subttmp77 = sub nsw i32 %addtmp76, 1
  br label %cond_end62

cond_end62:                                       ; preds = %cond_jump_then61, %cond_then_block
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %133 = bitcast i8* %132 to %list_item__intp**
  %it78 = load %list_item__intp*, %list_item__intp** %133, align 8
  %134 = getelementptr inbounds %list_item__intp, %list_item__intp* %it78, i32 0, i32 2
  %135 = load %list_item__intp*, %list_item__intp** %134, align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %137 = bitcast i8* %136 to %list_item__intp**
  store %list_item__intp* %135, %list_item__intp** %137, align 8
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %139 = bitcast i8* %138 to i32*
  %i79 = load i32, i32* %139, align 4
  %addtmp80 = add nsw i32 %i79, 1
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %141 = bitcast i8* %140 to i32*
  store i32 %addtmp80, i32* %141, align 4
  %subttmp81 = sub nsw i32 %addtmp80, 1
  br label %loop_top_block
}

define void @"list_push_back_intp7_vi++07yank"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.25, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.27, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.29, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.30, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.31, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.33, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.34, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.35, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
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

define void @"list_each_intp8_vi++07yank"(%list__intp* %self, void (i32*, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %block_2 = alloca void (i32*, i32, i1*)*
  store void (i32*, i32, i1*)* %block_, void (i32*, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i32*, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 0
  %5 = load %list_item__intp*, %list_item__intp** %4, align 8
  %it_ = alloca %list_item__intp*
  %6 = bitcast %list_item__intp** %it_ to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store %list_item__intp* %5, %list_item__intp** %it_, align 8
  %i_ = alloca i32
  %7 = bitcast i32* %i_ to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it_4 = load %list_item__intp*, %list_item__intp** %it_, align 8
  %noteqtmp = icmp ne %list_item__intp* %it_4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %8 = bitcast i1* %end_flag_ to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i1 false, i1* %end_flag_, align 1
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %10 = bitcast i8* %9 to void (i32*, i32, i1*)**
  %block_5 = load void (i32*, i32, i1*)*, void (i32*, i32, i1*)** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it_6 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %20 = bitcast i8* %19 to %list_item__intp**
  %it_10 = load %list_item__intp*, %list_item__intp** %20, align 8
  %21 = getelementptr inbounds %list_item__intp, %list_item__intp* %it_10, i32 0, i32 2
  %22 = load %list_item__intp*, %list_item__intp** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %24 = bitcast i8* %23 to %list_item__intp**
  store %list_item__intp* %22, %list_item__intp** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %26 = bitcast i8* %25 to i32*
  %i_11 = load i32, i32* %26, align 4
  %addtmp = add nsw i32 %i_11, 1
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %addtmp, i32* %28, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define i32* @"list_item_intp9_vi++07yank"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define i32* @"list_item_intp10_vi++07yank"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @"list_replace_intp11_vi++07yank"(%list__intp* %self, i32 %position, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %item3 = alloca i32*
  store i32* %item, i32** %item3, align 8
  %4 = bitcast i32** %item3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %24 = bitcast i8* %23 to i32*
  %i11 = load i32, i32* %24, align 4
  %eqtmpX = icmp eq i32 %position10, %i11
  br i1 %eqtmpX, label %cond_jump_then12, label %cond_end13

cond_end_block:                                   ; preds = %cond_end15, %loop_top_block
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret void

cond_jump_then12:                                 ; preds = %cond_then_block
  br i1 true, label %cond_jump_then14, label %cond_end15

cond_end13:                                       ; preds = %after_break, %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it21 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it21, i32 0, i32 2
  %30 = load %list_item__intp*, %list_item__intp** %29, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %32 = bitcast i8* %31 to %list_item__intp**
  store %list_item__intp* %30, %list_item__intp** %32, align 8
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %34 = bitcast i8* %33 to i32*
  %i22 = load i32, i32* %34, align 4
  %addtmp23 = add nsw i32 %i22, 1
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %addtmp23, i32* %36, align 4
  %subttmp24 = sub nsw i32 %addtmp23, 1
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then12
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  %it16 = load %list_item__intp*, %list_item__intp** %38, align 8
  %39 = getelementptr inbounds %list_item__intp, %list_item__intp* %it16, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %39, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %cond_then_block17, label %cond_end18

cond_end15:                                       ; preds = %cond_end18, %cond_jump_then12
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %45 = bitcast i8* %44 to %list_item__intp**
  %it19 = load %list_item__intp*, %list_item__intp** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %47 = bitcast i8* %46 to i32**
  %item20 = load i32*, i32** %47, align 8
  %48 = getelementptr inbounds %list_item__intp, %list_item__intp* %it19, i32 0, i32 0
  store i32* %item20, i32** %48, align 8
  br label %cond_end_block

cond_then_block17:                                ; preds = %cond_jump_then14
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_jump_then14
  %49 = bitcast i32* %41 to i8*
  call void @xfree(i8* %49)
  br label %cond_end15

after_break:                                      ; No predecessors!
  br label %cond_end13
}

define %list__intp* @"list_initialize_intp12_vi++07yank"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
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

define void @"list_finalize_intp13_vi++07yank"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %11 = bitcast i8* %10 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %11, align 8
  %12 = getelementptr inbounds %list_item__intp, %list_item__intp* %it7, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %18 = bitcast i8* %17 to %list_item__intp**
  %it10 = load %list_item__intp*, %list_item__intp** %18, align 8
  %prev_it = alloca %list_item__intp*
  %19 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store %list_item__intp* %it10, %list_item__intp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %21 = bitcast i8* %20 to %list_item__intp**
  %it11 = load %list_item__intp*, %list_item__intp** %21, align 8
  %22 = getelementptr inbounds %list_item__intp, %list_item__intp* %it11, i32 0, i32 2
  %23 = load %list_item__intp*, %list_item__intp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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

define void @"vi++07yank_lambda2"(%Vi* %self, i32 %key) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %key2 = alloca i32
  store i32 %key, i32* %key2, align 4
  %3 = bitcast i32* %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %self3 = load %Vi*, %Vi** %self1, align 8
  %4 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 1
  %5 = load %ViWin*, %ViWin** %4, align 8
  %self4 = load %Vi*, %Vi** %self1, align 8
  call void @ViWin_pasteAfterCursor-7(%ViWin* %5, %Vi* %self4)
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap15_vi++07yank"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__lambdap*
  store %vector__lambdap* %self, %vector__lambdap** %self1, align 8
  %2 = bitcast %vector__lambdap** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %value3 = alloca void (%Vi*, i32)*
  store void (%Vi*, i32)* %value, void (%Vi*, i32)** %value3, align 8
  %4 = bitcast void (%Vi*, i32)** %value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %8 = bitcast i8* %7 to %vector__lambdap**
  %self6 = load %vector__lambdap*, %vector__lambdap** %8, align 8
  %9 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %14 = bitcast i8* %13 to %vector__lambdap**
  %self7 = load %vector__lambdap*, %vector__lambdap** %14, align 8
  %15 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self7, i32 0, i32 1
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
  %self11 = load %vector__lambdap*, %vector__lambdap** %self1, align 8
  %17 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self11, i32 0, i32 1
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
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %22 = bitcast i8* %21 to %vector__lambdap**
  %self17 = load %vector__lambdap*, %vector__lambdap** %22, align 8
  %23 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self17, i32 0, i32 0
  %24 = load void (%Vi*, i32)**, void (%Vi*, i32)*** %23, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %26 = bitcast i8* %25 to i32*
  %index18 = load i32, i32* %26, align 4
  %element_address = getelementptr void (%Vi*, i32)*, void (%Vi*, i32)** %24, i32 %index18
  %element = load void (%Vi*, i32)*, void (%Vi*, i32)** %element_address, align 8
  %27 = load void (%Vi*, i32)*, void (%Vi*, i32)** %element_address, align 8
  %28 = ptrtoint void (%Vi*, i32)* %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %cond_then_block, label %cond_end19

cond_end16:                                       ; preds = %cond_end19, %cond_jump_then13
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %31 = bitcast i8* %30 to %vector__lambdap**
  %self20 = load %vector__lambdap*, %vector__lambdap** %31, align 8
  %32 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self20, i32 0, i32 0
  %33 = load void (%Vi*, i32)**, void (%Vi*, i32)*** %32, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %35 = bitcast i8* %34 to i32*
  %index21 = load i32, i32* %35, align 4
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %37 = bitcast i8* %36 to void (%Vi*, i32)**
  %value22 = load void (%Vi*, i32)*, void (%Vi*, i32)** %37, align 8
  %element_address23 = getelementptr void (%Vi*, i32)*, void (%Vi*, i32)** %33, i32 %index21
  store void (%Vi*, i32)* %value22, void (%Vi*, i32)** %element_address23, align 8
  %38 = bitcast [8192 x i8*]* %lvtable to i8*
  %39 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %38, i64 65536)
  ret i1 true

cond_then_block:                                  ; preds = %cond_jump_then15
  br label %cond_end19

cond_end19:                                       ; preds = %cond_then_block, %cond_jump_then15
  %40 = bitcast void (%Vi*, i32)* %27 to i8*
  call void @xfree(i8* %40)
  br label %cond_end16
}

define void @"vi++07yank_lambda3"(%Vi* %self, i32 %key) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %key2 = alloca i32
  store i32 %key, i32* %key2, align 4
  %3 = bitcast i32* %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %self3 = load %Vi*, %Vi** %self1, align 8
  %4 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 1
  %5 = load %ViWin*, %ViWin** %4, align 8
  %self4 = load %Vi*, %Vi** %self1, align 8
  call void @ViWin_pasteBeforeCursor-7(%ViWin* %5, %Vi* %self4)
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap16_vi++07yank"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__lambdap*
  store %vector__lambdap* %self, %vector__lambdap** %self1, align 8
  %2 = bitcast %vector__lambdap** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %value3 = alloca void (%Vi*, i32)*
  store void (%Vi*, i32)* %value, void (%Vi*, i32)** %value3, align 8
  %4 = bitcast void (%Vi*, i32)** %value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %8 = bitcast i8* %7 to %vector__lambdap**
  %self6 = load %vector__lambdap*, %vector__lambdap** %8, align 8
  %9 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %14 = bitcast i8* %13 to %vector__lambdap**
  %self7 = load %vector__lambdap*, %vector__lambdap** %14, align 8
  %15 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self7, i32 0, i32 1
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
  %self11 = load %vector__lambdap*, %vector__lambdap** %self1, align 8
  %17 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self11, i32 0, i32 1
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
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %22 = bitcast i8* %21 to %vector__lambdap**
  %self17 = load %vector__lambdap*, %vector__lambdap** %22, align 8
  %23 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self17, i32 0, i32 0
  %24 = load void (%Vi*, i32)**, void (%Vi*, i32)*** %23, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %26 = bitcast i8* %25 to i32*
  %index18 = load i32, i32* %26, align 4
  %element_address = getelementptr void (%Vi*, i32)*, void (%Vi*, i32)** %24, i32 %index18
  %element = load void (%Vi*, i32)*, void (%Vi*, i32)** %element_address, align 8
  %27 = load void (%Vi*, i32)*, void (%Vi*, i32)** %element_address, align 8
  %28 = ptrtoint void (%Vi*, i32)* %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %cond_then_block, label %cond_end19

cond_end16:                                       ; preds = %cond_end19, %cond_jump_then13
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %31 = bitcast i8* %30 to %vector__lambdap**
  %self20 = load %vector__lambdap*, %vector__lambdap** %31, align 8
  %32 = getelementptr inbounds %vector__lambdap, %vector__lambdap* %self20, i32 0, i32 0
  %33 = load void (%Vi*, i32)**, void (%Vi*, i32)*** %32, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %35 = bitcast i8* %34 to i32*
  %index21 = load i32, i32* %35, align 4
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %37 = bitcast i8* %36 to void (%Vi*, i32)**
  %value22 = load void (%Vi*, i32)*, void (%Vi*, i32)** %37, align 8
  %element_address23 = getelementptr void (%Vi*, i32)*, void (%Vi*, i32)** %33, i32 %index21
  store void (%Vi*, i32)* %value22, void (%Vi*, i32)** %element_address23, align 8
  %38 = bitcast [8192 x i8*]* %lvtable to i8*
  %39 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %38, i64 65536)
  ret i1 true

cond_then_block:                                  ; preds = %cond_jump_then15
  br label %cond_end19

cond_end19:                                       ; preds = %cond_then_block, %cond_jump_then15
  %40 = bitcast void (%Vi*, i32)* %27 to i8*
  call void @xfree(i8* %40)
  br label %cond_end16
}

attributes #0 = { nounwind }
