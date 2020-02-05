; ModuleID = 'Module vi++14dot'
source_filename = "Module vi++14dot"

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
%lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
@global_string = private constant [13 x i8] c"vector%<int>\00", align 1
@global_string.1 = private constant [13 x i8] c"vi++14dot.nc\00", align 1
@global_string.2 = private constant [11 x i8] c"initialize\00", align 1
@global_string.3 = private constant [17 x i8] c"ViWin_initialize\00", align 1
@global_string.4 = private constant [5 x i8] c"int%\00", align 1
@global_string.5 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.6 = private constant [26 x i8] c"initialize_int0_vi++14dot\00", align 1
@global_string.7 = private constant [33 x i8] c"vector_initialize_int0_vi++14dot\00", align 1
@global_string.8 = private constant [5 x i8] c"int%\00", align 1
@global_string.9 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.10 = private constant [25 x i8] c"push_back_int5_vi++14dot\00", align 1
@global_string.11 = private constant [32 x i8] c"vector_push_back_int5_vi++14dot\00", align 1
@global_string.12 = private constant [5 x i8] c"int%\00", align 1
@global_string.13 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.14 = private constant [25 x i8] c"push_back_int7_vi++14dot\00", align 1
@global_string.15 = private constant [32 x i8] c"vector_push_back_int7_vi++14dot\00", align 1
@global_string.16 = private constant [5 x i8] c"int%\00", align 1
@global_string.17 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.18 = private constant [25 x i8] c"push_back_int9_vi++14dot\00", align 1
@global_string.19 = private constant [32 x i8] c"vector_push_back_int9_vi++14dot\00", align 1
@global_string.20 = private constant [13 x i8] c"vector%<int>\00", align 1
@global_string.21 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.22 = private constant [22 x i8] c"clone_int11_vi++14dot\00", align 1
@global_string.23 = private constant [29 x i8] c"vector_clone_int11_vi++14dot\00", align 1
@global_string.24 = private constant [5 x i8] c"int%\00", align 1
@global_string.25 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.26 = private constant [27 x i8] c"initialize_int12_vi++14dot\00", align 1
@global_string.27 = private constant [34 x i8] c"vector_initialize_int12_vi++14dot\00", align 1
@global_string.28 = private constant [5 x i8] c"int%\00", align 1
@global_string.29 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.30 = private constant [26 x i8] c"push_back_int13_vi++14dot\00", align 1
@global_string.31 = private constant [33 x i8] c"vector_push_back_int13_vi++14dot\00", align 1
@global_string.32 = private constant [5 x i8] c"int%\00", align 1
@global_string.33 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.34 = private constant [26 x i8] c"push_back_int14_vi++14dot\00", align 1
@global_string.35 = private constant [33 x i8] c"vector_push_back_int14_vi++14dot\00", align 1

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

declare i8* @setlocale(i32, i8*)

declare %lconv* @localeconv()

declare %anon3* @newlocale(i32, i8*, %anon3*)

declare %anon3* @duplocale(%anon3*)

declare void @freelocale(%anon3*)

declare %anon3* @uselocale(%anon3*)

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

define %ViWin* @ViWin_initialize-14(%ViWin* %self, i32 %y, i32 %x, i32 %width, i32 %height) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %y2 = alloca i32
  store i32 %y, i32* %y2, align 4
  %3 = bitcast i32* %y2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %x3 = alloca i32
  store i32 %x, i32* %x3, align 4
  %4 = bitcast i32* %x3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %width4 = alloca i32
  store i32 %width, i32* %width4, align 4
  %5 = bitcast i32* %width4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %height5 = alloca i32
  store i32 %height, i32* %height5, align 4
  %6 = bitcast i32* %height5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %self6 = load %ViWin*, %ViWin** %self1, align 8
  %y7 = load i32, i32* %y2, align 4
  %x8 = load i32, i32* %x3, align 4
  %width9 = load i32, i32* %width4, align 4
  %height10 = load i32, i32* %height5, align 4
  %7 = call %ViWin* @ViWin_initialize-8(%ViWin* %self6, i32 %y7, i32 %x8, i32 %width9, i32 %height10)
  %self11 = load %ViWin*, %ViWin** %self1, align 8
  %8 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.1, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.3, i32 0, i32 0))
  %9 = bitcast i8* %8 to %vector__int*
  %10 = call %vector__int* @"vector_initialize_int0_vi++14dot"(%vector__int* %9)
  %11 = getelementptr inbounds %ViWin, %ViWin* %self11, i32 0, i32 17
  %12 = load %vector__int*, %vector__int** %11, align 8
  %13 = ptrtoint %vector__int* %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @"vector_finalize_int1_vi++14dot"(%vector__int* %12)
  %15 = bitcast %vector__int* %12 to i8*
  call void @xfree(i8* %15)
  store %vector__int* %10, %vector__int** %11, align 8
  %self12 = load %ViWin*, %ViWin** %self1, align 8
  %16 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 19
  store i1 false, i1* %16, align 1
  %self13 = load %ViWin*, %ViWin** %self1, align 8
  %17 = getelementptr inbounds %ViWin, %ViWin* %self13, i32 0, i32 20
  store i32 0, i32* %17, align 4
  %self14 = load %ViWin*, %ViWin** %self1, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %ViWin* %self14
}

define i32 @ViWin_getKey-14(%ViWin* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %andand_result_var = alloca i1
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  %3 = getelementptr inbounds %ViWin, %ViWin* %self2, i32 0, i32 19
  %4 = load i1, i1* %3, align 1
  store i1 %4, i1* %andand_result_var, align 1
  br i1 %4, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %entry
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 18
  %6 = load %vector__int*, %vector__int** %5, align 8
  %7 = ptrtoint %vector__int* %6 to i64
  %8 = icmp ne i64 %7, 0
  %andand = and i1 %4, %8
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %entry
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then4, label %cond_else_block

cond_jump_then4:                                  ; preds = %cond_jump_end
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %10 = bitcast i8* %9 to %ViWin**
  %self5 = load %ViWin*, %ViWin** %10, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 20
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %14 = bitcast i8* %13 to %ViWin**
  %self6 = load %ViWin*, %ViWin** %14, align 8
  %15 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 18
  %16 = load %vector__int*, %vector__int** %15, align 8
  %17 = call i32 @"vector_length_int2_vi++14dot"(%vector__int* %16)
  %letmp = icmp slt i32 %12, %17
  br i1 %letmp, label %cond_jump_then7, label %cond_else_block8

cond_else_block:                                  ; preds = %cond_jump_end
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %19 = bitcast i8* %18 to %ViWin**
  %self40 = load %ViWin*, %ViWin** %19, align 8
  %20 = getelementptr inbounds %ViWin, %ViWin* %self40, i32 0, i32 21
  store i1 false, i1* %20, align 1
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %22 = bitcast i8* %21 to %ViWin**
  %self41 = load %ViWin*, %ViWin** %22, align 8
  %23 = getelementptr inbounds %ViWin, %ViWin* %self41, i32 0, i32 0
  %24 = load %_win_st*, %_win_st** %23, align 8
  %25 = call i32 @wgetch(%_win_st* %24)
  %key42 = alloca i32
  %26 = bitcast i32* %key42 to i8*
  store i8* %26, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32 %25, i32* %key42, align 4
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %28 = bitcast i8* %27 to %ViWin**
  %self43 = load %ViWin*, %ViWin** %28, align 8
  %29 = getelementptr inbounds %ViWin, %ViWin* %self43, i32 0, i32 17
  %30 = load %vector__int*, %vector__int** %29, align 8
  %31 = call i32 @"vector_length_int8_vi++14dot"(%vector__int* %30)
  %letmp44 = icmp slt i32 %31, 256
  br i1 %letmp44, label %cond_jump_then45, label %cond_end46

cond_end:                                         ; preds = %cond_end9
  %32 = bitcast [8192 x i8*]* %lvtable to i8*
  %33 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %32, i64 65536)
  ret i32 0

cond_jump_then7:                                  ; preds = %cond_jump_then4
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %35 = bitcast i8* %34 to %ViWin**
  %self10 = load %ViWin*, %ViWin** %35, align 8
  %36 = getelementptr inbounds %ViWin, %ViWin* %self10, i32 0, i32 18
  %37 = load %vector__int*, %vector__int** %36, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %39 = bitcast i8* %38 to %ViWin**
  %self11 = load %ViWin*, %ViWin** %39, align 8
  %40 = getelementptr inbounds %ViWin, %ViWin* %self11, i32 0, i32 20
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @"vector_item_int3_vi++14dot"(%vector__int* %37, i32 %41, i32 -1)
  %key = alloca i32
  %43 = bitcast i32* %key to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32 %42, i32* %key, align 4
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %45 = bitcast i8* %44 to %ViWin**
  %self12 = load %ViWin*, %ViWin** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %47 = bitcast i8* %46 to %ViWin**
  %self13 = load %ViWin*, %ViWin** %47, align 8
  %48 = getelementptr inbounds %ViWin, %ViWin* %self13, i32 0, i32 20
  %49 = load i32, i32* %48, align 4
  %addtmp = add nsw i32 %49, 1
  %50 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 20
  store i32 %addtmp, i32* %50, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %key14 = load i32, i32* %key, align 4
  %51 = bitcast [8192 x i8*]* %lvtable to i8*
  %52 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %51, i64 65536)
  ret i32 %key14

cond_else_block8:                                 ; preds = %cond_jump_then4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %54 = bitcast i8* %53 to %ViWin**
  %self15 = load %ViWin*, %ViWin** %54, align 8
  %55 = getelementptr inbounds %ViWin, %ViWin* %self15, i32 0, i32 21
  %56 = load i1, i1* %55, align 1
  br i1 %56, label %cond_jump_then16, label %cond_else_block17

cond_end9:                                        ; preds = %cond_end18
  br label %cond_end

cond_jump_then16:                                 ; preds = %cond_else_block8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %58 = bitcast i8* %57 to %ViWin**
  %self19 = load %ViWin*, %ViWin** %58, align 8
  %59 = getelementptr inbounds %ViWin, %ViWin* %self19, i32 0, i32 20
  store i32 0, i32* %59, align 4
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %61 = bitcast i8* %60 to %ViWin**
  %self20 = load %ViWin*, %ViWin** %61, align 8
  %62 = getelementptr inbounds %ViWin, %ViWin* %self20, i32 0, i32 19
  store i1 false, i1* %62, align 1
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %64 = bitcast i8* %63 to %ViWin**
  %self21 = load %ViWin*, %ViWin** %64, align 8
  %65 = getelementptr inbounds %ViWin, %ViWin* %self21, i32 0, i32 21
  store i1 false, i1* %65, align 1
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %67 = bitcast i8* %66 to %ViWin**
  %self22 = load %ViWin*, %ViWin** %67, align 8
  %68 = getelementptr inbounds %ViWin, %ViWin* %self22, i32 0, i32 0
  %69 = load %_win_st*, %_win_st** %68, align 8
  %70 = call i32 @wgetch(%_win_st* %69)
  %key23 = alloca i32
  %71 = bitcast i32* %key23 to i8*
  store i8* %71, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32 %70, i32* %key23, align 4
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %73 = bitcast i8* %72 to %ViWin**
  %self24 = load %ViWin*, %ViWin** %73, align 8
  %74 = getelementptr inbounds %ViWin, %ViWin* %self24, i32 0, i32 17
  %75 = load %vector__int*, %vector__int** %74, align 8
  %76 = call i32 @"vector_length_int4_vi++14dot"(%vector__int* %75)
  %letmp25 = icmp slt i32 %76, 256
  br i1 %letmp25, label %cond_jump_then26, label %cond_end27

cond_else_block17:                                ; preds = %cond_else_block8
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %78 = bitcast i8* %77 to %ViWin**
  %self31 = load %ViWin*, %ViWin** %78, align 8
  %79 = getelementptr inbounds %ViWin, %ViWin* %self31, i32 0, i32 18
  %80 = load %vector__int*, %vector__int** %79, align 8
  call void @"vector_reset_int6_vi++14dot"(%vector__int* %80)
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %82 = bitcast i8* %81 to %ViWin**
  %self32 = load %ViWin*, %ViWin** %82, align 8
  %83 = getelementptr inbounds %ViWin, %ViWin* %self32, i32 0, i32 19
  store i1 false, i1* %83, align 1
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %85 = bitcast i8* %84 to %ViWin**
  %self33 = load %ViWin*, %ViWin** %85, align 8
  %86 = getelementptr inbounds %ViWin, %ViWin* %self33, i32 0, i32 20
  store i32 0, i32* %86, align 4
  %87 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %88 = bitcast i8* %87 to %ViWin**
  %self34 = load %ViWin*, %ViWin** %88, align 8
  %89 = getelementptr inbounds %ViWin, %ViWin* %self34, i32 0, i32 21
  store i1 false, i1* %89, align 1
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %91 = bitcast i8* %90 to %ViWin**
  %self35 = load %ViWin*, %ViWin** %91, align 8
  %92 = getelementptr inbounds %ViWin, %ViWin* %self35, i32 0, i32 0
  %93 = load %_win_st*, %_win_st** %92, align 8
  %94 = call i32 @wgetch(%_win_st* %93)
  %key36 = alloca i32
  %95 = bitcast i32* %key36 to i8*
  store i8* %95, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32 %94, i32* %key36, align 4
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %97 = bitcast i8* %96 to %ViWin**
  %self37 = load %ViWin*, %ViWin** %97, align 8
  %98 = getelementptr inbounds %ViWin, %ViWin* %self37, i32 0, i32 17
  %99 = load %vector__int*, %vector__int** %98, align 8
  %key38 = load i32, i32* %key36, align 4
  call void @"vector_push_back_int7_vi++14dot"(%vector__int* %99, i32 %key38)
  %key39 = load i32, i32* %key36, align 4
  %100 = bitcast [8192 x i8*]* %lvtable to i8*
  %101 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %100, i64 65536)
  ret i32 %key39

cond_end18:                                       ; No predecessors!
  br label %cond_end9

cond_jump_then26:                                 ; preds = %cond_jump_then16
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %103 = bitcast i8* %102 to %ViWin**
  %self28 = load %ViWin*, %ViWin** %103, align 8
  %104 = getelementptr inbounds %ViWin, %ViWin* %self28, i32 0, i32 17
  %105 = load %vector__int*, %vector__int** %104, align 8
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %107 = bitcast i8* %106 to i32*
  %key29 = load i32, i32* %107, align 4
  call void @"vector_push_back_int5_vi++14dot"(%vector__int* %105, i32 %key29)
  br label %cond_end27

cond_end27:                                       ; preds = %cond_jump_then26, %cond_jump_then16
  %key30 = load i32, i32* %key23, align 4
  %108 = bitcast [8192 x i8*]* %lvtable to i8*
  %109 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %108, i64 65536)
  ret i32 %key30

cond_jump_then45:                                 ; preds = %cond_else_block
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %111 = bitcast i8* %110 to %ViWin**
  %self47 = load %ViWin*, %ViWin** %111, align 8
  %112 = getelementptr inbounds %ViWin, %ViWin* %self47, i32 0, i32 17
  %113 = load %vector__int*, %vector__int** %112, align 8
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %115 = bitcast i8* %114 to i32*
  %key48 = load i32, i32* %115, align 4
  call void @"vector_push_back_int9_vi++14dot"(%vector__int* %113, i32 %key48)
  br label %cond_end46

cond_end46:                                       ; preds = %cond_jump_then45, %cond_else_block
  %key49 = load i32, i32* %key42, align 4
  %116 = bitcast [8192 x i8*]* %lvtable to i8*
  %117 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %116, i64 65536)
  ret i32 %key49
}

define void @ViWin_clearInputedKey-14(%ViWin* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  %3 = getelementptr inbounds %ViWin, %ViWin* %self2, i32 0, i32 17
  %4 = load %vector__int*, %vector__int** %3, align 8
  call void @"vector_reset_int10_vi++14dot"(%vector__int* %4)
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret void
}

define void @ViWin_saveInputedKey-14(%ViWin* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %andand_result_var = alloca i1
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  %3 = getelementptr inbounds %ViWin, %ViWin* %self2, i32 0, i32 19
  %4 = load i1, i1* %3, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  store i1 %LOGICAL_DIANEAL, i1* %andand_result_var, align 1
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %entry
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 21
  %6 = load i1, i1* %5, align 1
  %LOGICAL_DIANEAL4 = icmp eq i1 %6, false
  %andand = and i1 %LOGICAL_DIANEAL, %LOGICAL_DIANEAL4
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %entry
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then5, label %cond_end

cond_jump_then5:                                  ; preds = %cond_jump_end
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %8 = bitcast i8* %7 to %ViWin**
  %self6 = load %ViWin*, %ViWin** %8, align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %10 = bitcast i8* %9 to %ViWin**
  %self7 = load %ViWin*, %ViWin** %10, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self7, i32 0, i32 17
  %12 = load %vector__int*, %vector__int** %11, align 8
  %13 = call %vector__int* @"vector_clone_int11_vi++14dot"(%vector__int* %12)
  %14 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 18
  %15 = load %vector__int*, %vector__int** %14, align 8
  %16 = ptrtoint %vector__int* %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %cond_then_block, label %cond_end8

cond_end:                                         ; preds = %cond_end8, %cond_jump_end
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret void

cond_then_block:                                  ; preds = %cond_jump_then5
  br label %cond_end8

cond_end8:                                        ; preds = %cond_then_block, %cond_jump_then5
  call void @"vector_finalize_int15_vi++14dot"(%vector__int* %15)
  %20 = bitcast %vector__int* %15 to i8*
  call void @xfree(i8* %20)
  store %vector__int* %13, %vector__int** %14, align 8
  br label %cond_end
}

define %Vi* @Vi_initialize-14(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = call %Vi* @Vi_initialize-12(%Vi* %self2)
  %self3 = load %Vi*, %Vi** %self1, align 8
  %4 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 2
  %5 = load %vector__lambdap*, %vector__lambdap** %4, align 8
  %6 = call i1 @"vector_replace_lambdap16_vi++14dot"(%vector__lambdap* %5, i32 46, void (%Vi*, i32)* @"vi++14dot_lambda0")
  %self4 = load %Vi*, %Vi** %self1, align 8
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret %Vi* %self4
}

declare %Vi* @Vi_initialize-15(%Vi*)

declare void @Vi_activateFiler-15(%Vi*)

declare i32 @Vi_main_loop-15(%Vi*)

declare void @Vi_repositionFiler-15(%Vi*)

declare void @Vi_view-15(%Vi*)

declare void @Vi_clearView-15(%Vi*)

declare void @ViWin_textsView-15(%ViWin*, %Vi*)

declare %ViWin* @ViWin_initialize-15(%ViWin*, i32, i32, i32, i32)

define %vector__int* @"vector_initialize_int0_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %3 = getelementptr inbounds %vector__int, %vector__int* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %self5 = load %vector__int*, %vector__int** %self1, align 8
  %5 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = sext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.5, i32 0, i32 0), i32 403, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.7, i32 0, i32 0))
  %8 = bitcast i8* %7 to i32*
  %9 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 0
  store i32* %8, i32** %9, align 8
  %self6 = load %vector__int*, %vector__int** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__int* %self6
}

define void @"vector_finalize_int1_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %eqtmpX = icmp eq %vector__int* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 false, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self10 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = ptrtoint i32* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block11, label %cond_end12

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %12 = bitcast i8* %11 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %12, align 8
  %13 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %letmp = icmp slt i32 %i5, %14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %16 = bitcast i8* %15 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %16, align 8
  %17 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr i32, i32* %18, i32 %i8
  %element = load i32, i32* %element_address, align 4
  %19 = load i32, i32* %element_address, align 8
  %i9 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i9, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block11:                                ; preds = %cond_end4
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_end4
  %20 = bitcast i32* %8 to i8*
  call void @xfree(i8* %20)
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

define i32 @"vector_length_int2_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %3 = getelementptr inbounds %vector__int, %vector__int* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"vector_item_int3_vi++14dot"(%vector__int* %self, i32 %index, i32 %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %default_value3 = alloca i32
  store i32 %default_value, i32* %default_value3, align 4
  %4 = bitcast i32* %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %8 = bitcast i8* %7 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %8, align 8
  %9 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %20 = bitcast i8* %19 to %vector__int**
  %self15 = load %vector__int*, %vector__int** %20, align 8
  %21 = getelementptr inbounds %vector__int, %vector__int* %self15, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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

define i32 @"vector_length_int4_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %3 = getelementptr inbounds %vector__int, %vector__int* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define void @"vector_push_back_int5_vi++14dot"(%vector__int* %self, i32 %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %item2 = alloca i32
  store i32 %item, i32* %item2, align 4
  %3 = bitcast i32* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self5 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %items = alloca i32*
  %17 = bitcast i32** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store i32* %16, i32** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %19 = bitcast i8* %18 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.9, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.11, i32 0, i32 0))
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
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
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %38 = bitcast i8* %37 to %vector__int**
  %self10 = load %vector__int*, %vector__int** %38, align 8
  %39 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %42 = bitcast i8* %41 to %vector__int**
  %self11 = load %vector__int*, %vector__int** %42, align 8
  %43 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %48 = bitcast i8* %47 to i32**
  %items13 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr i32, i32* %items13, i32 %i14
  %element = load i32, i32* %element_address, align 4
  %element_address15 = getelementptr i32, i32* %44, i32 %i12
  store i32 %element, i32* %element_address15, align 4
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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

define void @"vector_reset_int6_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %3 = getelementptr inbounds %vector__int, %vector__int* %self2, i32 0, i32 1
  store i32 0, i32* %3, align 4
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret void
}

define void @"vector_push_back_int7_vi++14dot"(%vector__int* %self, i32 %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %item2 = alloca i32
  store i32 %item, i32* %item2, align 4
  %3 = bitcast i32* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self5 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %items = alloca i32*
  %17 = bitcast i32** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store i32* %16, i32** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %19 = bitcast i8* %18 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.13, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.14, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.15, i32 0, i32 0))
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
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
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %38 = bitcast i8* %37 to %vector__int**
  %self10 = load %vector__int*, %vector__int** %38, align 8
  %39 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %42 = bitcast i8* %41 to %vector__int**
  %self11 = load %vector__int*, %vector__int** %42, align 8
  %43 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %48 = bitcast i8* %47 to i32**
  %items13 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr i32, i32* %items13, i32 %i14
  %element = load i32, i32* %element_address, align 4
  %element_address15 = getelementptr i32, i32* %44, i32 %i12
  store i32 %element, i32* %element_address15, align 4
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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

define i32 @"vector_length_int8_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %3 = getelementptr inbounds %vector__int, %vector__int* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define void @"vector_push_back_int9_vi++14dot"(%vector__int* %self, i32 %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %item2 = alloca i32
  store i32 %item, i32* %item2, align 4
  %3 = bitcast i32* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self5 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %items = alloca i32*
  %17 = bitcast i32** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store i32* %16, i32** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %19 = bitcast i8* %18 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.17, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_string.18, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.19, i32 0, i32 0))
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
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
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %38 = bitcast i8* %37 to %vector__int**
  %self10 = load %vector__int*, %vector__int** %38, align 8
  %39 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %42 = bitcast i8* %41 to %vector__int**
  %self11 = load %vector__int*, %vector__int** %42, align 8
  %43 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %48 = bitcast i8* %47 to i32**
  %items13 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr i32, i32* %items13, i32 %i14
  %element = load i32, i32* %element_address, align 4
  %element_address15 = getelementptr i32, i32* %44, i32 %i12
  store i32 %element, i32* %element_address15, align 4
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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

define void @"vector_reset_int10_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %3 = getelementptr inbounds %vector__int, %vector__int* %self2, i32 0, i32 1
  store i32 0, i32* %3, align 4
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret void
}

define %vector__int* @"vector_clone_int11_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.21, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.23, i32 0, i32 0))
  %4 = bitcast i8* %3 to %vector__int*
  %5 = call %vector__int* @"vector_initialize_int12_vi++14dot"(%vector__int* %4)
  %result = alloca %vector__int*
  %6 = bitcast %vector__int** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store %vector__int* %5, %vector__int** %result, align 8
  %i = alloca i32
  %7 = bitcast i32* %i to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i2 = load i32, i32* %i, align 4
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self3 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %letmp = icmp slt i32 %i2, %11
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %13 = bitcast i8* %12 to %vector__int**
  %self4 = load %vector__int*, %vector__int** %13, align 8
  %14 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %i5 = load i32, i32* %i, align 4
  %element_address = getelementptr i32, i32* %15, i32 %i5
  %element = load i32, i32* %element_address, align 4
  %it = alloca i32
  %16 = bitcast i32* %it to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32 %element, i32* %it, align 4
  br i1 false, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %result11 = load %vector__int*, %vector__int** %result, align 8
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret %vector__int* %result11

cond_jump_then:                                   ; preds = %cond_then_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %20 = bitcast i8* %19 to %vector__int**
  %result6 = load %vector__int*, %vector__int** %20, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %22 = bitcast i8* %21 to i32*
  %it7 = load i32, i32* %22, align 4
  %23 = load i32, i32* %22, align 8
  %24 = inttoptr i32 %23 to i8*
  %25 = call i8* @xmemdup(i8* %24)
  %26 = ptrtoint i8* %25 to i32
  call void @"vector_push_back_int13_vi++14dot"(%vector__int* %result6, i32 %26)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %28 = bitcast i8* %27 to %vector__int**
  %result8 = load %vector__int*, %vector__int** %28, align 8
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %30 = bitcast i8* %29 to i32*
  %it9 = load i32, i32* %30, align 4
  call void @"vector_push_back_int14_vi++14dot"(%vector__int* %result8, i32 %it9)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %i10 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i10, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define %vector__int* @"vector_initialize_int12_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %3 = getelementptr inbounds %vector__int, %vector__int* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %self5 = load %vector__int*, %vector__int** %self1, align 8
  %5 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = sext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.25, i32 0, i32 0), i32 403, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.27, i32 0, i32 0))
  %8 = bitcast i8* %7 to i32*
  %9 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 0
  store i32* %8, i32** %9, align 8
  %self6 = load %vector__int*, %vector__int** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__int* %self6
}

define void @"vector_push_back_int13_vi++14dot"(%vector__int* %self, i32 %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %item2 = alloca i32
  store i32 %item, i32* %item2, align 4
  %3 = bitcast i32* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self5 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %items = alloca i32*
  %17 = bitcast i32** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store i32* %16, i32** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %19 = bitcast i8* %18 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.29, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.30, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.31, i32 0, i32 0))
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %38 = bitcast i8* %37 to %vector__int**
  %self10 = load %vector__int*, %vector__int** %38, align 8
  %39 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %42 = bitcast i8* %41 to %vector__int**
  %self11 = load %vector__int*, %vector__int** %42, align 8
  %43 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %48 = bitcast i8* %47 to i32**
  %items13 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr i32, i32* %items13, i32 %i14
  %element = load i32, i32* %element_address, align 4
  %element_address15 = getelementptr i32, i32* %44, i32 %i12
  store i32 %element, i32* %element_address15, align 4
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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

define void @"vector_push_back_int14_vi++14dot"(%vector__int* %self, i32 %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %item2 = alloca i32
  store i32 %item, i32* %item2, align 4
  %3 = bitcast i32* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %self3 = load %vector__int*, %vector__int** %self1, align 8
  %4 = getelementptr inbounds %vector__int, %vector__int* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %9 = bitcast i8* %8 to %vector__int**
  %self5 = load %vector__int*, %vector__int** %9, align 8
  %10 = getelementptr inbounds %vector__int, %vector__int* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %14 = bitcast i8* %13 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %14, align 8
  %15 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %items = alloca i32*
  %17 = bitcast i32** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store i32* %16, i32** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %19 = bitcast i8* %18 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.33, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.34, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.35, i32 0, i32 0))
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
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
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %38 = bitcast i8* %37 to %vector__int**
  %self10 = load %vector__int*, %vector__int** %38, align 8
  %39 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %42 = bitcast i8* %41 to %vector__int**
  %self11 = load %vector__int*, %vector__int** %42, align 8
  %43 = getelementptr inbounds %vector__int, %vector__int* %self11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %48 = bitcast i8* %47 to i32**
  %items13 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr i32, i32* %items13, i32 %i14
  %element = load i32, i32* %element_address, align 4
  %element_address15 = getelementptr i32, i32* %44, i32 %i12
  store i32 %element, i32* %element_address15, align 4
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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

define void @"vector_finalize_int15_vi++14dot"(%vector__int* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %self2 = load %vector__int*, %vector__int** %self1, align 8
  %eqtmpX = icmp eq %vector__int* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 false, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self10 = load %vector__int*, %vector__int** %self1, align 8
  %6 = getelementptr inbounds %vector__int, %vector__int* %self10, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = ptrtoint i32* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block11, label %cond_end12

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %12 = bitcast i8* %11 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %12, align 8
  %13 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %letmp = icmp slt i32 %i5, %14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %16 = bitcast i8* %15 to %vector__int**
  %self7 = load %vector__int*, %vector__int** %16, align 8
  %17 = getelementptr inbounds %vector__int, %vector__int* %self7, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr i32, i32* %18, i32 %i8
  %element = load i32, i32* %element_address, align 4
  %19 = load i32, i32* %element_address, align 8
  %i9 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i9, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block11:                                ; preds = %cond_end4
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_end4
  %20 = bitcast i32* %8 to i8*
  call void @xfree(i8* %20)
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

define void @"vi++14dot_lambda0"(%Vi* %self, i32 %key) {
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
  %6 = getelementptr inbounds %ViWin, %ViWin* %5, i32 0, i32 19
  store i1 true, i1* %6, align 1
  %self4 = load %Vi*, %Vi** %self1, align 8
  %7 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 1
  %8 = load %ViWin*, %ViWin** %7, align 8
  %9 = getelementptr inbounds %ViWin, %ViWin* %8, i32 0, i32 21
  store i1 true, i1* %9, align 1
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap16_vi++14dot"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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
