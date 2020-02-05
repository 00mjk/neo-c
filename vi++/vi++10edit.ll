; ModuleID = 'Module vi++10edit'
source_filename = "Module vi++10edit"

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
@global_string.2 = private constant [27 x i8] c"push_back_intp9_vi++10edit\00", align 1
@global_string.3 = private constant [32 x i8] c"list_push_back_intp9_vi++10edit\00", align 1
@global_string.4 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.5 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.6 = private constant [27 x i8] c"push_back_intp9_vi++10edit\00", align 1
@global_string.7 = private constant [32 x i8] c"list_push_back_intp9_vi++10edit\00", align 1
@global_string.8 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.9 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.10 = private constant [27 x i8] c"push_back_intp9_vi++10edit\00", align 1
@global_string.11 = private constant [32 x i8] c"list_push_back_intp9_vi++10edit\00", align 1
@global_string.12 = private constant [1 x i8] zeroinitializer, align 1
@global_string.13 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.14 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.15 = private constant [28 x i8] c"push_back_intp21_vi++10edit\00", align 1
@global_string.16 = private constant [33 x i8] c"list_push_back_intp21_vi++10edit\00", align 1
@global_string.17 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.18 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.19 = private constant [28 x i8] c"push_back_intp21_vi++10edit\00", align 1
@global_string.20 = private constant [33 x i8] c"list_push_back_intp21_vi++10edit\00", align 1
@global_string.21 = private constant [18 x i8] c"list_item%<int*%>\00", align 1
@global_string.22 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.23 = private constant [28 x i8] c"push_back_intp21_vi++10edit\00", align 1
@global_string.24 = private constant [33 x i8] c"list_push_back_intp21_vi++10edit\00", align 1

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

define void @ViWin_deleteLines-10(%ViWin* %self, i32 %head, i32 %tail, %Vi* %nvi) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %head2 = alloca i32
  store i32 %head, i32* %head2, align 4
  %3 = bitcast i32* %head2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %tail3 = alloca i32
  store i32 %tail, i32* %tail3, align 4
  %4 = bitcast i32* %tail3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %nvi4 = alloca %Vi*
  store %Vi* %nvi, %Vi** %nvi4, align 8
  %5 = bitcast %Vi** %nvi4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self5 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self5)
  %self6 = load %ViWin*, %ViWin** %self1, align 8
  %6 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 1
  %7 = load %list__intp*, %list__intp** %6, align 8
  %head7 = load i32, i32* %head2, align 4
  %tail8 = load i32, i32* %tail3, align 4
  call void @"list_delete_range_intp0_vi++10edit"(%list__intp* %7, i32 %head7, i32 %tail8)
  %self9 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_modifyCursorOnDeleting-10(%ViWin* %self9)
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void
}

define void @ViWin_deleteOneLine-10(%ViWin* %self, %Vi* %nvi) {
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
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %4 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 1
  %5 = load %list__intp*, %list__intp** %4, align 8
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %6 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %self5 = load %ViWin*, %ViWin** %self1, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %addtmp = add nsw i32 %7, %9
  %10 = call i32* @"list_item_intp6_vi++10edit"(%list__intp* %5, i32 %addtmp, i32* null)
  %line = alloca i32*
  %11 = bitcast i32** %line to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %10, i32** %line, align 8
  %line6 = load i32*, i32** %line, align 8
  %noteqtmp = icmp ne i32* %line6, null
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %13 = bitcast i8* %12 to %ViWin**
  %self7 = load %ViWin*, %ViWin** %13, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self7)
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %15 = bitcast i8* %14 to %Vi**
  %nvi8 = load %Vi*, %Vi** %15, align 8
  %16 = getelementptr inbounds %Vi, %Vi* %nvi8, i32 0, i32 6
  %17 = load %list__intp*, %list__intp** %16, align 8
  call void @"list_reset_intp7_vi++10edit"(%list__intp* %17)
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %19 = bitcast i8* %18 to %Vi**
  %nvi9 = load %Vi*, %Vi** %19, align 8
  %20 = getelementptr inbounds %Vi, %Vi* %nvi9, i32 0, i32 6
  %21 = load %list__intp*, %list__intp** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %23 = bitcast i8* %22 to i32**
  %line10 = load i32*, i32** %23, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = call i8* @xmemdup(i8* %25)
  %27 = bitcast i8* %26 to i32*
  call void @"list_push_back_intp9_vi++10edit"(%list__intp* %21, i32* %27)
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %29 = bitcast i8* %28 to %Vi**
  %nvi11 = load %Vi*, %Vi** %29, align 8
  %30 = getelementptr inbounds %Vi, %Vi* %nvi11, i32 0, i32 7
  store i32 0, i32* %30, align 4
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %32 = bitcast i8* %31 to %ViWin**
  %self12 = load %ViWin*, %ViWin** %32, align 8
  %33 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 1
  %34 = load %list__intp*, %list__intp** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %36 = bitcast i8* %35 to %ViWin**
  %self13 = load %ViWin*, %ViWin** %36, align 8
  %37 = getelementptr inbounds %ViWin, %ViWin* %self13, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %40 = bitcast i8* %39 to %ViWin**
  %self14 = load %ViWin*, %ViWin** %40, align 8
  %41 = getelementptr inbounds %ViWin, %ViWin* %self14, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %addtmp15 = add nsw i32 %38, %42
  call void @"list_delete_intp10_vi++10edit"(%list__intp* %34, i32 %addtmp15)
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %44 = bitcast i8* %43 to %ViWin**
  %self16 = load %ViWin*, %ViWin** %44, align 8
  call void @ViWin_modifyCursorOnDeleting-10(%ViWin* %self16)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %45 = bitcast [8192 x i8*]* %lvtable to i8*
  %46 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %45, i64 65536)
  ret void
}

define %Vi* @Vi_initialize-10(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = call %Vi* @Vi_initialize-9(%Vi* %self2)
  %self3 = load %Vi*, %Vi** %self1, align 8
  %4 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 2
  %5 = load %vector__lambdap*, %vector__lambdap** %4, align 8
  %6 = call i1 @"vector_replace_lambdap34_vi++10edit"(%vector__lambdap* %5, i32 100, void (%Vi*, i32)* @"vi++10edit_lambda0")
  %self4 = load %Vi*, %Vi** %self1, align 8
  %7 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 2
  %8 = load %vector__lambdap*, %vector__lambdap** %7, align 8
  %9 = call i1 @"vector_replace_lambdap35_vi++10edit"(%vector__lambdap* %8, i32 99, void (%Vi*, i32)* @"vi++10edit_lambda1")
  %self5 = load %Vi*, %Vi** %self1, align 8
  %10 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 2
  %11 = load %vector__lambdap*, %vector__lambdap** %10, align 8
  %12 = call i1 @"vector_replace_lambdap36_vi++10edit"(%vector__lambdap* %11, i32 67, void (%Vi*, i32)* @"vi++10edit_lambda2")
  %self6 = load %Vi*, %Vi** %self1, align 8
  %13 = getelementptr inbounds %Vi, %Vi* %self6, i32 0, i32 2
  %14 = load %vector__lambdap*, %vector__lambdap** %13, align 8
  %15 = call i1 @"vector_replace_lambdap37_vi++10edit"(%vector__lambdap* %14, i32 68, void (%Vi*, i32)* @"vi++10edit_lambda3")
  %self7 = load %Vi*, %Vi** %self1, align 8
  %16 = getelementptr inbounds %Vi, %Vi* %self7, i32 0, i32 2
  %17 = load %vector__lambdap*, %vector__lambdap** %16, align 8
  %18 = call i1 @"vector_replace_lambdap38_vi++10edit"(%vector__lambdap* %17, i32 120, void (%Vi*, i32)* @"vi++10edit_lambda4")
  %self8 = load %Vi*, %Vi** %self1, align 8
  %19 = getelementptr inbounds %Vi, %Vi* %self8, i32 0, i32 2
  %20 = load %vector__lambdap*, %vector__lambdap** %19, align 8
  %21 = call i1 @"vector_replace_lambdap39_vi++10edit"(%vector__lambdap* %20, i32 74, void (%Vi*, i32)* @"vi++10edit_lambda5")
  %self9 = load %Vi*, %Vi** %self1, align 8
  %22 = getelementptr inbounds %Vi, %Vi* %self9, i32 0, i32 2
  %23 = load %vector__lambdap*, %vector__lambdap** %22, align 8
  %24 = call i1 @"vector_replace_lambdap40_vi++10edit"(%vector__lambdap* %23, i32 68, void (%Vi*, i32)* @"vi++10edit_lambda6")
  %self10 = load %Vi*, %Vi** %self1, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %Vi* %self10
}

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

define void @ViWin_modifyCursorOnDeleting-10(%ViWin* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self2)
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_modifyOverCursorXValue-2(%ViWin* %self3)
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void
}

define void @"list_delete_range_intp0_vi++10edit"(%list__intp* %self, i32 %head, i32 %tail) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %head2 = alloca i32
  store i32 %head, i32* %head2, align 4
  %3 = bitcast i32* %head2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %tail3 = alloca i32
  store i32 %tail, i32* %tail3, align 4
  %4 = bitcast i32* %tail3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %head4 = load i32, i32* %head2, align 4
  %letmp = icmp slt i32 %head4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %6 = bitcast i8* %5 to i32*
  %head5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %head5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %14 = bitcast i8* %13 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %14, align 8
  %15 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, %16
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %tail8 = load i32, i32* %tail3, align 4
  %letmp9 = icmp slt i32 %tail8, 0
  br i1 %letmp9, label %cond_jump_then10, label %cond_end11

cond_jump_then10:                                 ; preds = %cond_end
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %18 = bitcast i8* %17 to i32*
  %tail12 = load i32, i32* %18, align 4
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %20 = bitcast i8* %19 to %list__intp**
  %self13 = load %list__intp*, %list__intp** %20, align 8
  %21 = getelementptr inbounds %list__intp, %list__intp* %self13, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %addtmp14 = add nsw i32 %22, 1
  %addtmp15 = add nsw i32 %tail12, %addtmp14
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %24 = bitcast i8* %23 to i32*
  store i32 %addtmp15, i32* %24, align 4
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %26 = bitcast i8* %25 to %list__intp**
  %self16 = load %list__intp*, %list__intp** %26, align 8
  %27 = getelementptr inbounds %list__intp, %list__intp* %self16, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %addtmp17 = add nsw i32 %28, 1
  %subttmp18 = sub nsw i32 %addtmp15, %addtmp17
  br label %cond_end11

cond_end11:                                       ; preds = %cond_jump_then10, %cond_end
  %head19 = load i32, i32* %head2, align 4
  %tail20 = load i32, i32* %tail3, align 4
  %gttmp = icmp sgt i32 %head19, %tail20
  br i1 %gttmp, label %cond_jump_then21, label %cond_end22

cond_jump_then21:                                 ; preds = %cond_end11
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %30 = bitcast i8* %29 to i32*
  %tail23 = load i32, i32* %30, align 4
  %tmp = alloca i32
  %31 = bitcast i32* %tmp to i8*
  store i8* %31, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 %tail23, i32* %tmp, align 4
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %33 = bitcast i8* %32 to i32*
  %head24 = load i32, i32* %33, align 4
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %35 = bitcast i8* %34 to i32*
  store i32 %head24, i32* %35, align 4
  %tmp25 = load i32, i32* %tmp, align 4
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %37 = bitcast i8* %36 to i32*
  store i32 %tmp25, i32* %37, align 4
  br label %cond_end22

cond_end22:                                       ; preds = %cond_jump_then21, %cond_end11
  %head26 = load i32, i32* %head2, align 4
  %letmp27 = icmp slt i32 %head26, 0
  br i1 %letmp27, label %cond_jump_then28, label %cond_end29

cond_jump_then28:                                 ; preds = %cond_end22
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %39 = bitcast i8* %38 to i32*
  store i32 0, i32* %39, align 4
  br label %cond_end29

cond_end29:                                       ; preds = %cond_jump_then28, %cond_end22
  %tail30 = load i32, i32* %tail3, align 4
  %self31 = load %list__intp*, %list__intp** %self1, align 8
  %40 = getelementptr inbounds %list__intp, %list__intp* %self31, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %gttmp32 = icmp sgt i32 %tail30, %41
  br i1 %gttmp32, label %cond_jump_then33, label %cond_end34

cond_jump_then33:                                 ; preds = %cond_end29
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %43 = bitcast i8* %42 to %list__intp**
  %self35 = load %list__intp*, %list__intp** %43, align 8
  %44 = getelementptr inbounds %list__intp, %list__intp* %self35, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %47 = bitcast i8* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %cond_end34

cond_end34:                                       ; preds = %cond_jump_then33, %cond_end29
  %head36 = load i32, i32* %head2, align 4
  %tail37 = load i32, i32* %tail3, align 4
  %eqtmpX = icmp eq i32 %head36, %tail37
  br i1 %eqtmpX, label %cond_jump_then38, label %cond_end39

cond_jump_then38:                                 ; preds = %cond_end34
  %48 = bitcast [8192 x i8*]* %lvtable to i8*
  %49 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %48, i64 65536)
  ret void

cond_end39:                                       ; preds = %cond_end34
  %andand_result_var = alloca i1
  %head40 = load i32, i32* %head2, align 4
  %eqtmpX41 = icmp eq i32 %head40, 0
  store i1 %eqtmpX41, i1* %andand_result_var, align 1
  br i1 %eqtmpX41, label %cond_jump_then42, label %cond_jump_end

cond_jump_then42:                                 ; preds = %cond_end39
  %tail43 = load i32, i32* %tail3, align 4
  %self44 = load %list__intp*, %list__intp** %self1, align 8
  %50 = getelementptr inbounds %list__intp, %list__intp* %self44, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %eqtmpX45 = icmp eq i32 %tail43, %51
  %andand = and i1 %eqtmpX41, %eqtmpX45
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then42, %cond_end39
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then46, label %"cond_jump_elif0\0A"

cond_jump_then46:                                 ; preds = %cond_jump_end
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %53 = bitcast i8* %52 to %list__intp**
  %self48 = load %list__intp*, %list__intp** %53, align 8
  call void @"list_reset_intp1_vi++10edit"(%list__intp* %self48)
  br label %cond_end47

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end
  %head49 = load i32, i32* %head2, align 4
  %eqtmpX50 = icmp eq i32 %head49, 0
  br i1 %eqtmpX50, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self51 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self51, i32 0, i32 0
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %it = alloca %list_item__intp*
  %58 = bitcast %list_item__intp** %it to i8*
  store i8* %58, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store %list_item__intp* %57, %list_item__intp** %it, align 8
  %i = alloca i32
  %59 = bitcast i32* %i to i8*
  store i8* %59, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

"cond_jump_elif1\0A":                             ; preds = %"cond_jump_elif0\0A"
  %tail88 = load i32, i32* %tail3, align 4
  %self89 = load %list__intp*, %list__intp** %self1, align 8
  %60 = getelementptr inbounds %list__intp, %list__intp* %self89, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %eqtmpX90 = icmp eq i32 %tail88, %61
  br i1 %eqtmpX90, label %"cond_jump_elif_then1\0A", label %cond_else_block

"cond_jump_elif_then1\0A":                        ; preds = %"cond_jump_elif1\0A"
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %63 = bitcast i8* %62 to %list__intp**
  %self91 = load %list__intp*, %list__intp** %63, align 8
  %64 = getelementptr inbounds %list__intp, %list__intp* %self91, i32 0, i32 0
  %65 = load %list_item__intp*, %list_item__intp** %64, align 8
  %it92 = alloca %list_item__intp*
  %66 = bitcast %list_item__intp** %it92 to i8*
  store i8* %66, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store %list_item__intp* %65, %list_item__intp** %it92, align 8
  %i93 = alloca i32
  %67 = bitcast i32* %i93 to i8*
  store i8* %67, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store i32 0, i32* %i93, align 4
  br label %loop_top_block94

cond_else_block:                                  ; preds = %"cond_jump_elif1\0A"
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %69 = bitcast i8* %68 to %list__intp**
  %self134 = load %list__intp*, %list__intp** %69, align 8
  %70 = getelementptr inbounds %list__intp, %list__intp* %self134, i32 0, i32 0
  %71 = load %list_item__intp*, %list_item__intp** %70, align 8
  %it135 = alloca %list_item__intp*
  %72 = bitcast %list_item__intp** %it135 to i8*
  store i8* %72, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store %list_item__intp* %71, %list_item__intp** %it135, align 8
  %head_prev_it = alloca %list_item__intp*
  %73 = bitcast %list_item__intp** %head_prev_it to i8*
  store i8* %73, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* null, %list_item__intp** %head_prev_it, align 8
  %tail_it = alloca %list_item__intp*
  %74 = bitcast %list_item__intp** %tail_it to i8*
  store i8* %74, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store %list_item__intp* null, %list_item__intp** %tail_it, align 8
  %i136 = alloca i32
  %75 = bitcast i32* %i136 to i8*
  store i8* %75, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  store i32 0, i32* %i136, align 4
  br label %loop_top_block137

cond_end47:                                       ; preds = %cond_end199, %cond_end_block98, %cond_end_block, %cond_jump_then46
  %76 = bitcast [8192 x i8*]* %lvtable to i8*
  %77 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %76, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end60, %"cond_jump_elif_then0\0A"
  %it52 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it52, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %79 = bitcast i8* %78 to i32*
  %i53 = load i32, i32* %79, align 4
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %81 = bitcast i8* %80 to i32*
  %tail54 = load i32, i32* %81, align 4
  %letmp55 = icmp slt i32 %i53, %tail54
  br i1 %letmp55, label %cond_jump_then56, label %"cond_jump_elif0\0A57"

cond_end_block:                                   ; preds = %"cond_jump_elif_then0\0A58", %loop_top_block
  br label %cond_end47

cond_jump_then56:                                 ; preds = %cond_then_block
  br i1 true, label %cond_jump_then61, label %cond_end62

"cond_jump_elif0\0A57":                           ; preds = %cond_then_block
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %83 = bitcast i8* %82 to i32*
  %i78 = load i32, i32* %83, align 4
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %85 = bitcast i8* %84 to i32*
  %tail79 = load i32, i32* %85, align 4
  %eqtmpX80 = icmp eq i32 %i78, %tail79
  br i1 %eqtmpX80, label %"cond_jump_elif_then0\0A58", label %cond_else_block59

"cond_jump_elif_then0\0A58":                      ; preds = %"cond_jump_elif0\0A57"
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %87 = bitcast i8* %86 to %list__intp**
  %self81 = load %list__intp*, %list__intp** %87, align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %89 = bitcast i8* %88 to %list_item__intp**
  %it82 = load %list_item__intp*, %list_item__intp** %89, align 8
  %90 = getelementptr inbounds %list__intp, %list__intp* %self81, i32 0, i32 0
  store %list_item__intp* %it82, %list_item__intp** %90, align 8
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %92 = bitcast i8* %91 to %list__intp**
  %self83 = load %list__intp*, %list__intp** %92, align 8
  %93 = getelementptr inbounds %list__intp, %list__intp* %self83, i32 0, i32 0
  %94 = load %list_item__intp*, %list_item__intp** %93, align 8
  %95 = getelementptr inbounds %list_item__intp, %list_item__intp* %94, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %95, align 8
  br label %cond_end_block

cond_else_block59:                                ; preds = %"cond_jump_elif0\0A57"
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %97 = bitcast i8* %96 to %list_item__intp**
  %it84 = load %list_item__intp*, %list_item__intp** %97, align 8
  %98 = getelementptr inbounds %list_item__intp, %list_item__intp* %it84, i32 0, i32 2
  %99 = load %list_item__intp*, %list_item__intp** %98, align 8
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %101 = bitcast i8* %100 to %list_item__intp**
  store %list_item__intp* %99, %list_item__intp** %101, align 8
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %103 = bitcast i8* %102 to i32*
  %i85 = load i32, i32* %103, align 4
  %addtmp86 = add nsw i32 %i85, 1
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %105 = bitcast i8* %104 to i32*
  store i32 %addtmp86, i32* %105, align 4
  %subttmp87 = sub nsw i32 %addtmp86, 1
  br label %cond_end60

cond_end60:                                       ; preds = %cond_else_block59, %after_break, %cond_end73
  br label %loop_top_block

cond_jump_then61:                                 ; preds = %cond_jump_then56
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %107 = bitcast i8* %106 to %list_item__intp**
  %it63 = load %list_item__intp*, %list_item__intp** %107, align 8
  %108 = getelementptr inbounds %list_item__intp, %list_item__intp* %it63, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32*, i32** %108, align 8
  %111 = ptrtoint i32* %110 to i64
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %cond_then_block64, label %cond_end65

cond_end62:                                       ; preds = %cond_end65, %cond_jump_then56
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %114 = bitcast i8* %113 to %list_item__intp**
  %it66 = load %list_item__intp*, %list_item__intp** %114, align 8
  %prev_it = alloca %list_item__intp*
  %115 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %115, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store %list_item__intp* %it66, %list_item__intp** %prev_it, align 8
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %117 = bitcast i8* %116 to %list_item__intp**
  %it67 = load %list_item__intp*, %list_item__intp** %117, align 8
  %118 = getelementptr inbounds %list_item__intp, %list_item__intp* %it67, i32 0, i32 2
  %119 = load %list_item__intp*, %list_item__intp** %118, align 8
  %120 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %121 = bitcast i8* %120 to %list_item__intp**
  store %list_item__intp* %119, %list_item__intp** %121, align 8
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %123 = bitcast i8* %122 to i32*
  %i68 = load i32, i32* %123, align 4
  %addtmp69 = add nsw i32 %i68, 1
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %125 = bitcast i8* %124 to i32*
  store i32 %addtmp69, i32* %125, align 4
  %subttmp70 = sub nsw i32 %addtmp69, 1
  %prev_it71 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %126 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %127 = ptrtoint %list_item__intp* %126 to i64
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %cond_then_block72, label %cond_end73

cond_then_block64:                                ; preds = %cond_jump_then61
  br label %cond_end65

cond_end65:                                       ; preds = %cond_then_block64, %cond_jump_then61
  %129 = bitcast i32* %110 to i8*
  call void @xfree(i8* %129)
  br label %cond_end62

cond_then_block72:                                ; preds = %cond_end62
  br label %cond_end73

cond_end73:                                       ; preds = %cond_then_block72, %cond_end62
  %130 = bitcast %list_item__intp* %126 to i8*
  call void @xfree(i8* %130)
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %132 = bitcast i8* %131 to %list__intp**
  %self74 = load %list__intp*, %list__intp** %132, align 8
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %134 = bitcast i8* %133 to %list__intp**
  %self75 = load %list__intp*, %list__intp** %134, align 8
  %135 = getelementptr inbounds %list__intp, %list__intp* %self75, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %subttmp76 = sub nsw i32 %136, 1
  %137 = getelementptr inbounds %list__intp, %list__intp* %self74, i32 0, i32 2
  store i32 %subttmp76, i32* %137, align 4
  %addtmp77 = add nsw i32 %subttmp76, 1
  br label %cond_end60

after_break:                                      ; No predecessors!
  br label %cond_end60

loop_top_block94:                                 ; preds = %cond_end111, %"cond_jump_elif_then1\0A"
  %it95 = load %list_item__intp*, %list_item__intp** %it92, align 8
  %noteqtmp96 = icmp ne %list_item__intp* %it95, null
  br i1 %noteqtmp96, label %cond_then_block97, label %cond_end_block98

cond_then_block97:                                ; preds = %loop_top_block94
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %139 = bitcast i8* %138 to i32*
  %i99 = load i32, i32* %139, align 4
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %141 = bitcast i8* %140 to i32*
  %head100 = load i32, i32* %141, align 4
  %eqtmpX101 = icmp eq i32 %i99, %head100
  br i1 %eqtmpX101, label %cond_jump_then102, label %cond_end103

cond_end_block98:                                 ; preds = %loop_top_block94
  br label %cond_end47

cond_jump_then102:                                ; preds = %cond_then_block97
  %142 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %143 = bitcast i8* %142 to %list__intp**
  %self104 = load %list__intp*, %list__intp** %143, align 8
  %144 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %145 = bitcast i8* %144 to %list_item__intp**
  %it105 = load %list_item__intp*, %list_item__intp** %145, align 8
  %146 = getelementptr inbounds %list_item__intp, %list_item__intp* %it105, i32 0, i32 1
  %147 = load %list_item__intp*, %list_item__intp** %146, align 8
  %148 = getelementptr inbounds %list__intp, %list__intp* %self104, i32 0, i32 1
  store %list_item__intp* %147, %list_item__intp** %148, align 8
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %150 = bitcast i8* %149 to %list__intp**
  %self106 = load %list__intp*, %list__intp** %150, align 8
  %151 = getelementptr inbounds %list__intp, %list__intp* %self106, i32 0, i32 1
  %152 = load %list_item__intp*, %list_item__intp** %151, align 8
  %153 = getelementptr inbounds %list_item__intp, %list_item__intp* %152, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %153, align 8
  br label %cond_end103

cond_end103:                                      ; preds = %cond_jump_then102, %cond_then_block97
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %155 = bitcast i8* %154 to i32*
  %i107 = load i32, i32* %155, align 4
  %156 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %157 = bitcast i8* %156 to i32*
  %head108 = load i32, i32* %157, align 4
  %getmp = icmp sge i32 %i107, %head108
  br i1 %getmp, label %cond_jump_then109, label %cond_else_block110

cond_jump_then109:                                ; preds = %cond_end103
  br i1 true, label %cond_jump_then112, label %cond_end113

cond_else_block110:                               ; preds = %cond_end103
  %158 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %159 = bitcast i8* %158 to %list_item__intp**
  %it130 = load %list_item__intp*, %list_item__intp** %159, align 8
  %160 = getelementptr inbounds %list_item__intp, %list_item__intp* %it130, i32 0, i32 2
  %161 = load %list_item__intp*, %list_item__intp** %160, align 8
  %162 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %163 = bitcast i8* %162 to %list_item__intp**
  store %list_item__intp* %161, %list_item__intp** %163, align 8
  %164 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %165 = bitcast i8* %164 to i32*
  %i131 = load i32, i32* %165, align 4
  %addtmp132 = add nsw i32 %i131, 1
  %166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %167 = bitcast i8* %166 to i32*
  store i32 %addtmp132, i32* %167, align 4
  %subttmp133 = sub nsw i32 %addtmp132, 1
  br label %cond_end111

cond_end111:                                      ; preds = %cond_else_block110, %cond_end125
  br label %loop_top_block94

cond_jump_then112:                                ; preds = %cond_jump_then109
  %168 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %169 = bitcast i8* %168 to %list_item__intp**
  %it114 = load %list_item__intp*, %list_item__intp** %169, align 8
  %170 = getelementptr inbounds %list_item__intp, %list_item__intp* %it114, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32*, i32** %170, align 8
  %173 = ptrtoint i32* %172 to i64
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %cond_then_block115, label %cond_end116

cond_end113:                                      ; preds = %cond_end116, %cond_jump_then109
  %175 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %176 = bitcast i8* %175 to %list_item__intp**
  %it117 = load %list_item__intp*, %list_item__intp** %176, align 8
  %prev_it118 = alloca %list_item__intp*
  %177 = bitcast %list_item__intp** %prev_it118 to i8*
  store i8* %177, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store %list_item__intp* %it117, %list_item__intp** %prev_it118, align 8
  %178 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %179 = bitcast i8* %178 to %list_item__intp**
  %it119 = load %list_item__intp*, %list_item__intp** %179, align 8
  %180 = getelementptr inbounds %list_item__intp, %list_item__intp* %it119, i32 0, i32 2
  %181 = load %list_item__intp*, %list_item__intp** %180, align 8
  %182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %183 = bitcast i8* %182 to %list_item__intp**
  store %list_item__intp* %181, %list_item__intp** %183, align 8
  %184 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %185 = bitcast i8* %184 to i32*
  %i120 = load i32, i32* %185, align 4
  %addtmp121 = add nsw i32 %i120, 1
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %187 = bitcast i8* %186 to i32*
  store i32 %addtmp121, i32* %187, align 4
  %subttmp122 = sub nsw i32 %addtmp121, 1
  %prev_it123 = load %list_item__intp*, %list_item__intp** %prev_it118, align 8
  %188 = load %list_item__intp*, %list_item__intp** %prev_it118, align 8
  %189 = ptrtoint %list_item__intp* %188 to i64
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %cond_then_block124, label %cond_end125

cond_then_block115:                               ; preds = %cond_jump_then112
  br label %cond_end116

cond_end116:                                      ; preds = %cond_then_block115, %cond_jump_then112
  %191 = bitcast i32* %172 to i8*
  call void @xfree(i8* %191)
  br label %cond_end113

cond_then_block124:                               ; preds = %cond_end113
  br label %cond_end125

cond_end125:                                      ; preds = %cond_then_block124, %cond_end113
  %192 = bitcast %list_item__intp* %188 to i8*
  call void @xfree(i8* %192)
  %193 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %194 = bitcast i8* %193 to %list__intp**
  %self126 = load %list__intp*, %list__intp** %194, align 8
  %195 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %196 = bitcast i8* %195 to %list__intp**
  %self127 = load %list__intp*, %list__intp** %196, align 8
  %197 = getelementptr inbounds %list__intp, %list__intp* %self127, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %subttmp128 = sub nsw i32 %198, 1
  %199 = getelementptr inbounds %list__intp, %list__intp* %self126, i32 0, i32 2
  store i32 %subttmp128, i32* %199, align 4
  %addtmp129 = add nsw i32 %subttmp128, 1
  br label %cond_end111

loop_top_block137:                                ; preds = %cond_end167, %cond_else_block
  %it138 = load %list_item__intp*, %list_item__intp** %it135, align 8
  %noteqtmp139 = icmp ne %list_item__intp* %it138, null
  br i1 %noteqtmp139, label %cond_then_block140, label %cond_end_block141

cond_then_block140:                               ; preds = %loop_top_block137
  %200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %201 = bitcast i8* %200 to i32*
  %i142 = load i32, i32* %201, align 4
  %202 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %203 = bitcast i8* %202 to i32*
  %head143 = load i32, i32* %203, align 4
  %eqtmpX144 = icmp eq i32 %i142, %head143
  br i1 %eqtmpX144, label %cond_jump_then145, label %cond_end146

cond_end_block141:                                ; preds = %loop_top_block137
  %head_prev_it190 = load %list_item__intp*, %list_item__intp** %head_prev_it, align 8
  %noteqtmp191 = icmp ne %list_item__intp* %head_prev_it190, null
  br i1 %noteqtmp191, label %cond_jump_then192, label %cond_end193

cond_jump_then145:                                ; preds = %cond_then_block140
  %204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %205 = bitcast i8* %204 to %list_item__intp**
  %it147 = load %list_item__intp*, %list_item__intp** %205, align 8
  %206 = getelementptr inbounds %list_item__intp, %list_item__intp* %it147, i32 0, i32 1
  %207 = load %list_item__intp*, %list_item__intp** %206, align 8
  %208 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %209 = bitcast i8* %208 to %list_item__intp**
  store %list_item__intp* %207, %list_item__intp** %209, align 8
  br label %cond_end146

cond_end146:                                      ; preds = %cond_jump_then145, %cond_then_block140
  %210 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %211 = bitcast i8* %210 to i32*
  %i148 = load i32, i32* %211, align 4
  %212 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %213 = bitcast i8* %212 to i32*
  %tail149 = load i32, i32* %213, align 4
  %eqtmpX150 = icmp eq i32 %i148, %tail149
  br i1 %eqtmpX150, label %cond_jump_then151, label %cond_end152

cond_jump_then151:                                ; preds = %cond_end146
  %214 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %215 = bitcast i8* %214 to %list_item__intp**
  %it153 = load %list_item__intp*, %list_item__intp** %215, align 8
  %216 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %217 = bitcast i8* %216 to %list_item__intp**
  store %list_item__intp* %it153, %list_item__intp** %217, align 8
  br label %cond_end152

cond_end152:                                      ; preds = %cond_jump_then151, %cond_end146
  %andand_result_var154 = alloca i1
  %218 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %219 = bitcast i8* %218 to i32*
  %i155 = load i32, i32* %219, align 4
  %220 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %221 = bitcast i8* %220 to i32*
  %head156 = load i32, i32* %221, align 4
  %getmp157 = icmp sge i32 %i155, %head156
  store i1 %getmp157, i1* %andand_result_var154, align 1
  br i1 %getmp157, label %cond_jump_then158, label %cond_jump_end159

cond_jump_then158:                                ; preds = %cond_end152
  %222 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %223 = bitcast i8* %222 to i32*
  %i160 = load i32, i32* %223, align 4
  %224 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %225 = bitcast i8* %224 to i32*
  %tail161 = load i32, i32* %225, align 4
  %letmp162 = icmp slt i32 %i160, %tail161
  %andand163 = and i1 %getmp157, %letmp162
  store i1 %andand163, i1* %andand_result_var154, align 1
  br label %cond_jump_end159

cond_jump_end159:                                 ; preds = %cond_jump_then158, %cond_end152
  %andand_result_value164 = load i1, i1* %andand_result_var154, align 1
  br i1 %andand_result_value164, label %cond_jump_then165, label %cond_else_block166

cond_jump_then165:                                ; preds = %cond_jump_end159
  br i1 true, label %cond_jump_then168, label %cond_end169

cond_else_block166:                               ; preds = %cond_jump_end159
  %226 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %227 = bitcast i8* %226 to %list_item__intp**
  %it186 = load %list_item__intp*, %list_item__intp** %227, align 8
  %228 = getelementptr inbounds %list_item__intp, %list_item__intp* %it186, i32 0, i32 2
  %229 = load %list_item__intp*, %list_item__intp** %228, align 8
  %230 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %231 = bitcast i8* %230 to %list_item__intp**
  store %list_item__intp* %229, %list_item__intp** %231, align 8
  %232 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %233 = bitcast i8* %232 to i32*
  %i187 = load i32, i32* %233, align 4
  %addtmp188 = add nsw i32 %i187, 1
  %234 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %235 = bitcast i8* %234 to i32*
  store i32 %addtmp188, i32* %235, align 4
  %subttmp189 = sub nsw i32 %addtmp188, 1
  br label %cond_end167

cond_end167:                                      ; preds = %cond_else_block166, %cond_end181
  br label %loop_top_block137

cond_jump_then168:                                ; preds = %cond_jump_then165
  %236 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %237 = bitcast i8* %236 to %list_item__intp**
  %it170 = load %list_item__intp*, %list_item__intp** %237, align 8
  %238 = getelementptr inbounds %list_item__intp, %list_item__intp* %it170, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32*, i32** %238, align 8
  %241 = ptrtoint i32* %240 to i64
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %cond_then_block171, label %cond_end172

cond_end169:                                      ; preds = %cond_end172, %cond_jump_then165
  %243 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %244 = bitcast i8* %243 to %list_item__intp**
  %it173 = load %list_item__intp*, %list_item__intp** %244, align 8
  %prev_it174 = alloca %list_item__intp*
  %245 = bitcast %list_item__intp** %prev_it174 to i8*
  store i8* %245, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 391), align 8
  store %list_item__intp* %it173, %list_item__intp** %prev_it174, align 8
  %246 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %247 = bitcast i8* %246 to %list_item__intp**
  %it175 = load %list_item__intp*, %list_item__intp** %247, align 8
  %248 = getelementptr inbounds %list_item__intp, %list_item__intp* %it175, i32 0, i32 2
  %249 = load %list_item__intp*, %list_item__intp** %248, align 8
  %250 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %251 = bitcast i8* %250 to %list_item__intp**
  store %list_item__intp* %249, %list_item__intp** %251, align 8
  %252 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %253 = bitcast i8* %252 to i32*
  %i176 = load i32, i32* %253, align 4
  %addtmp177 = add nsw i32 %i176, 1
  %254 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 390), align 8
  %255 = bitcast i8* %254 to i32*
  store i32 %addtmp177, i32* %255, align 4
  %subttmp178 = sub nsw i32 %addtmp177, 1
  %prev_it179 = load %list_item__intp*, %list_item__intp** %prev_it174, align 8
  %256 = load %list_item__intp*, %list_item__intp** %prev_it174, align 8
  %257 = ptrtoint %list_item__intp* %256 to i64
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %cond_then_block180, label %cond_end181

cond_then_block171:                               ; preds = %cond_jump_then168
  br label %cond_end172

cond_end172:                                      ; preds = %cond_then_block171, %cond_jump_then168
  %259 = bitcast i32* %240 to i8*
  call void @xfree(i8* %259)
  br label %cond_end169

cond_then_block180:                               ; preds = %cond_end169
  br label %cond_end181

cond_end181:                                      ; preds = %cond_then_block180, %cond_end169
  %260 = bitcast %list_item__intp* %256 to i8*
  call void @xfree(i8* %260)
  %261 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %262 = bitcast i8* %261 to %list__intp**
  %self182 = load %list__intp*, %list__intp** %262, align 8
  %263 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %264 = bitcast i8* %263 to %list__intp**
  %self183 = load %list__intp*, %list__intp** %264, align 8
  %265 = getelementptr inbounds %list__intp, %list__intp* %self183, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %subttmp184 = sub nsw i32 %266, 1
  %267 = getelementptr inbounds %list__intp, %list__intp* %self182, i32 0, i32 2
  store i32 %subttmp184, i32* %267, align 4
  %addtmp185 = add nsw i32 %subttmp184, 1
  br label %cond_end167

cond_jump_then192:                                ; preds = %cond_end_block141
  %268 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %269 = bitcast i8* %268 to %list_item__intp**
  %head_prev_it194 = load %list_item__intp*, %list_item__intp** %269, align 8
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %271 = bitcast i8* %270 to %list_item__intp**
  %tail_it195 = load %list_item__intp*, %list_item__intp** %271, align 8
  %272 = getelementptr inbounds %list_item__intp, %list_item__intp* %head_prev_it194, i32 0, i32 2
  store %list_item__intp* %tail_it195, %list_item__intp** %272, align 8
  br label %cond_end193

cond_end193:                                      ; preds = %cond_jump_then192, %cond_end_block141
  %tail_it196 = load %list_item__intp*, %list_item__intp** %tail_it, align 8
  %noteqtmp197 = icmp ne %list_item__intp* %tail_it196, null
  br i1 %noteqtmp197, label %cond_jump_then198, label %cond_end199

cond_jump_then198:                                ; preds = %cond_end193
  %273 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  %274 = bitcast i8* %273 to %list_item__intp**
  %tail_it200 = load %list_item__intp*, %list_item__intp** %274, align 8
  %275 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %276 = bitcast i8* %275 to %list_item__intp**
  %head_prev_it201 = load %list_item__intp*, %list_item__intp** %276, align 8
  %277 = getelementptr inbounds %list_item__intp, %list_item__intp* %tail_it200, i32 0, i32 1
  store %list_item__intp* %head_prev_it201, %list_item__intp** %277, align 8
  br label %cond_end199

cond_end199:                                      ; preds = %cond_jump_then198, %cond_end193
  br label %cond_end47
}

define void @"list_reset_intp1_vi++10edit"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 0
  %4 = load %list_item__intp*, %list_item__intp** %3, align 8
  %it = alloca %list_item__intp*
  %5 = bitcast %list_item__intp** %it to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  store %list_item__intp* %4, %list_item__intp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end11, %entry
  %it3 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it3, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %self12 = load %list__intp*, %list__intp** %self1, align 8
  %6 = getelementptr inbounds %list__intp, %list__intp* %self12, i32 0, i32 0
  store %list_item__intp* null, %list_item__intp** %6, align 8
  %self13 = load %list__intp*, %list__intp** %self1, align 8
  %7 = getelementptr inbounds %list__intp, %list__intp* %self13, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %7, align 8
  %self14 = load %list__intp*, %list__intp** %self1, align 8
  %8 = getelementptr inbounds %list__intp, %list__intp* %self14, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it4 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it4, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %cond_then_block5, label %cond_end6

cond_end:                                         ; preds = %cond_end6, %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %19 = bitcast i8* %18 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %19, align 8
  %prev_it = alloca %list_item__intp*
  %20 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 389), align 8
  store %list_item__intp* %it7, %list_item__intp** %prev_it, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %22 = bitcast i8* %21 to %list_item__intp**
  %it8 = load %list_item__intp*, %list_item__intp** %22, align 8
  %23 = getelementptr inbounds %list_item__intp, %list_item__intp* %it8, i32 0, i32 2
  %24 = load %list_item__intp*, %list_item__intp** %23, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 388), align 8
  %26 = bitcast i8* %25 to %list_item__intp**
  store %list_item__intp* %24, %list_item__intp** %26, align 8
  %prev_it9 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %27 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %28 = ptrtoint %list_item__intp* %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %cond_then_block10, label %cond_end11

cond_then_block5:                                 ; preds = %cond_jump_then
  br label %cond_end6

cond_end6:                                        ; preds = %cond_then_block5, %cond_jump_then
  %30 = bitcast i32* %15 to i8*
  call void @xfree(i8* %30)
  br label %cond_end

cond_then_block10:                                ; preds = %cond_end
  br label %cond_end11

cond_end11:                                       ; preds = %cond_then_block10, %cond_end
  %31 = bitcast %list_item__intp* %27 to i8*
  call void @xfree(i8* %31)
  br label %loop_top_block
}

define i32* @"list_item_intp6_vi++10edit"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @"list_reset_intp7_vi++10edit"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 0
  %4 = load %list_item__intp*, %list_item__intp** %3, align 8
  %it = alloca %list_item__intp*
  %5 = bitcast %list_item__intp** %it to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store %list_item__intp* %4, %list_item__intp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end11, %entry
  %it3 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it3, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %self12 = load %list__intp*, %list__intp** %self1, align 8
  %6 = getelementptr inbounds %list__intp, %list__intp* %self12, i32 0, i32 0
  store %list_item__intp* null, %list_item__intp** %6, align 8
  %self13 = load %list__intp*, %list__intp** %self1, align 8
  %7 = getelementptr inbounds %list__intp, %list__intp* %self13, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %7, align 8
  %self14 = load %list__intp*, %list__intp** %self1, align 8
  %8 = getelementptr inbounds %list__intp, %list__intp* %self14, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it4 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it4, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %cond_then_block5, label %cond_end6

cond_end:                                         ; preds = %cond_end6, %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %19 = bitcast i8* %18 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %19, align 8
  %prev_it = alloca %list_item__intp*
  %20 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %it7, %list_item__intp** %prev_it, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %22 = bitcast i8* %21 to %list_item__intp**
  %it8 = load %list_item__intp*, %list_item__intp** %22, align 8
  %23 = getelementptr inbounds %list_item__intp, %list_item__intp* %it8, i32 0, i32 2
  %24 = load %list_item__intp*, %list_item__intp** %23, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %26 = bitcast i8* %25 to %list_item__intp**
  store %list_item__intp* %24, %list_item__intp** %26, align 8
  %prev_it9 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %27 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %28 = ptrtoint %list_item__intp* %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %cond_then_block10, label %cond_end11

cond_then_block5:                                 ; preds = %cond_jump_then
  br label %cond_end6

cond_end6:                                        ; preds = %cond_then_block5, %cond_jump_then
  %30 = bitcast i32* %15 to i8*
  call void @xfree(i8* %30)
  br label %cond_end

cond_then_block10:                                ; preds = %cond_end
  br label %cond_end11

cond_end11:                                       ; preds = %cond_then_block10, %cond_end
  %31 = bitcast %list_item__intp* %27 to i8*
  call void @xfree(i8* %31)
  br label %loop_top_block
}

define void @"list_push_back_intp9_vi++10edit"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
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
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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

define void @"list_delete_intp10_vi++10edit"(%list__intp* %self, i32 %position) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %position3 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position3, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %5 = bitcast i8* %4 to i32*
  %position4 = load i32, i32* %5, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %7 = bitcast i8* %6 to %list__intp**
  %self5 = load %list__intp*, %list__intp** %7, align 8
  %8 = getelementptr inbounds %list__intp, %list__intp* %self5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %addtmp = add nsw i32 %9, 1
  %addtmp6 = add nsw i32 %position4, %addtmp
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %11 = bitcast i8* %10 to i32*
  store i32 %addtmp6, i32* %11, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %13 = bitcast i8* %12 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %13, align 8
  %14 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %addtmp8 = add nsw i32 %15, 1
  %subttmp = sub nsw i32 %addtmp6, %addtmp8
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %andand_result_var = alloca i1
  %position9 = load i32, i32* %position2, align 4
  %getmp = icmp sge i32 %position9, 0
  store i1 %getmp, i1* %andand_result_var, align 1
  br i1 %getmp, label %cond_jump_then10, label %cond_jump_end

cond_jump_then10:                                 ; preds = %cond_end
  %position11 = load i32, i32* %position2, align 4
  %self12 = load %list__intp*, %list__intp** %self1, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self12, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %letmp13 = icmp slt i32 %position11, %17
  %andand = and i1 %getmp, %letmp13
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then10, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then14, label %cond_end15

cond_jump_then14:                                 ; preds = %cond_jump_end
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %19 = bitcast i8* %18 to %list__intp**
  %self16 = load %list__intp*, %list__intp** %19, align 8
  %20 = getelementptr inbounds %list__intp, %list__intp* %self16, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX = icmp eq i32 %21, 1
  br i1 %eqtmpX, label %cond_jump_then17, label %"cond_jump_elif0\0A"

cond_end15:                                       ; preds = %cond_end18, %cond_jump_end
  %22 = bitcast [8192 x i8*]* %lvtable to i8*
  %23 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %22, i64 65536)
  ret void

cond_jump_then17:                                 ; preds = %cond_jump_then14
  br i1 true, label %cond_jump_then19, label %cond_end20

"cond_jump_elif0\0A":                             ; preds = %cond_jump_then14
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %25 = bitcast i8* %24 to %list__intp**
  %self29 = load %list__intp*, %list__intp** %25, align 8
  %26 = getelementptr inbounds %list__intp, %list__intp* %self29, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %eqtmpX30 = icmp eq i32 %27, 2
  br i1 %eqtmpX30, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %29 = bitcast i8* %28 to i32*
  %position31 = load i32, i32* %29, align 4
  %eqtmpX32 = icmp eq i32 %position31, 0
  br i1 %eqtmpX32, label %cond_jump_then33, label %cond_else_block34

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %31 = bitcast i8* %30 to %list__intp**
  %self73 = load %list__intp*, %list__intp** %31, align 8
  %32 = getelementptr inbounds %list__intp, %list__intp* %self73, i32 0, i32 0
  %33 = load %list_item__intp*, %list_item__intp** %32, align 8
  %it74 = alloca %list_item__intp*
  %34 = bitcast %list_item__intp** %it74 to i8*
  store i8* %34, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %33, %list_item__intp** %it74, align 8
  %i = alloca i32
  %35 = bitcast i32* %i to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end18:                                       ; preds = %cond_end_block, %cond_end35, %cond_end25
  br label %cond_end15

cond_jump_then19:                                 ; preds = %cond_jump_then17
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %37 = bitcast i8* %36 to %list__intp**
  %self21 = load %list__intp*, %list__intp** %37, align 8
  %38 = getelementptr inbounds %list__intp, %list__intp* %self21, i32 0, i32 0
  %39 = load %list_item__intp*, %list_item__intp** %38, align 8
  %40 = getelementptr inbounds %list_item__intp, %list_item__intp* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %40, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %cond_then_block, label %cond_end22

cond_end20:                                       ; preds = %cond_end22, %cond_jump_then17
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %46 = bitcast i8* %45 to %list__intp**
  %self23 = load %list__intp*, %list__intp** %46, align 8
  %47 = getelementptr inbounds %list__intp, %list__intp* %self23, i32 0, i32 0
  %48 = load %list_item__intp*, %list_item__intp** %47, align 8
  %49 = load %list_item__intp*, %list_item__intp** %47, align 8
  %50 = ptrtoint %list_item__intp* %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %cond_then_block24, label %cond_end25

cond_then_block:                                  ; preds = %cond_jump_then19
  br label %cond_end22

cond_end22:                                       ; preds = %cond_then_block, %cond_jump_then19
  %52 = bitcast i32* %42 to i8*
  call void @xfree(i8* %52)
  br label %cond_end20

cond_then_block24:                                ; preds = %cond_end20
  br label %cond_end25

cond_end25:                                       ; preds = %cond_then_block24, %cond_end20
  %53 = bitcast %list_item__intp* %49 to i8*
  call void @xfree(i8* %53)
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self26 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self26, i32 0, i32 0
  store %list_item__intp* null, %list_item__intp** %56, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %58 = bitcast i8* %57 to %list__intp**
  %self27 = load %list__intp*, %list__intp** %58, align 8
  %59 = getelementptr inbounds %list__intp, %list__intp* %self27, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %59, align 8
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %61 = bitcast i8* %60 to %list__intp**
  %self28 = load %list__intp*, %list__intp** %61, align 8
  %62 = getelementptr inbounds %list__intp, %list__intp* %self28, i32 0, i32 2
  store i32 0, i32* %62, align 4
  br label %cond_end18

cond_jump_then33:                                 ; preds = %"cond_jump_elif_then0\0A"
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %64 = bitcast i8* %63 to %list__intp**
  %self36 = load %list__intp*, %list__intp** %64, align 8
  %65 = getelementptr inbounds %list__intp, %list__intp* %self36, i32 0, i32 0
  %66 = load %list_item__intp*, %list_item__intp** %65, align 8
  %it = alloca %list_item__intp*
  %67 = bitcast %list_item__intp** %it to i8*
  store i8* %67, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %66, %list_item__intp** %it, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %69 = bitcast i8* %68 to %list__intp**
  %self37 = load %list__intp*, %list__intp** %69, align 8
  %it38 = load %list_item__intp*, %list_item__intp** %it, align 8
  %70 = getelementptr inbounds %list_item__intp, %list_item__intp* %it38, i32 0, i32 2
  %71 = load %list_item__intp*, %list_item__intp** %70, align 8
  %72 = getelementptr inbounds %list__intp, %list__intp* %self37, i32 0, i32 0
  store %list_item__intp* %71, %list_item__intp** %72, align 8
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %74 = bitcast i8* %73 to %list__intp**
  %self39 = load %list__intp*, %list__intp** %74, align 8
  %75 = getelementptr inbounds %list__intp, %list__intp* %self39, i32 0, i32 0
  %76 = load %list_item__intp*, %list_item__intp** %75, align 8
  %77 = getelementptr inbounds %list_item__intp, %list_item__intp* %76, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %77, align 8
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %79 = bitcast i8* %78 to %list__intp**
  %self40 = load %list__intp*, %list__intp** %79, align 8
  %80 = getelementptr inbounds %list__intp, %list__intp* %self40, i32 0, i32 0
  %81 = load %list_item__intp*, %list_item__intp** %80, align 8
  %82 = getelementptr inbounds %list_item__intp, %list_item__intp* %81, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %82, align 8
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %84 = bitcast i8* %83 to %list__intp**
  %self41 = load %list__intp*, %list__intp** %84, align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %86 = bitcast i8* %85 to %list__intp**
  %self42 = load %list__intp*, %list__intp** %86, align 8
  %87 = getelementptr inbounds %list__intp, %list__intp* %self42, i32 0, i32 0
  %88 = load %list_item__intp*, %list_item__intp** %87, align 8
  %89 = getelementptr inbounds %list__intp, %list__intp* %self41, i32 0, i32 1
  store %list_item__intp* %88, %list_item__intp** %89, align 8
  br i1 true, label %cond_jump_then43, label %cond_end44

cond_else_block34:                                ; preds = %"cond_jump_elif_then0\0A"
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %91 = bitcast i8* %90 to %list__intp**
  %self55 = load %list__intp*, %list__intp** %91, align 8
  %92 = getelementptr inbounds %list__intp, %list__intp* %self55, i32 0, i32 1
  %93 = load %list_item__intp*, %list_item__intp** %92, align 8
  %it56 = alloca %list_item__intp*
  %94 = bitcast %list_item__intp** %it56 to i8*
  store i8* %94, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %93, %list_item__intp** %it56, align 8
  %95 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %96 = bitcast i8* %95 to %list__intp**
  %self57 = load %list__intp*, %list__intp** %96, align 8
  %97 = getelementptr inbounds %list__intp, %list__intp* %self57, i32 0, i32 0
  %98 = load %list_item__intp*, %list_item__intp** %97, align 8
  %99 = getelementptr inbounds %list_item__intp, %list_item__intp* %98, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %99, align 8
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %101 = bitcast i8* %100 to %list__intp**
  %self58 = load %list__intp*, %list__intp** %101, align 8
  %102 = getelementptr inbounds %list__intp, %list__intp* %self58, i32 0, i32 0
  %103 = load %list_item__intp*, %list_item__intp** %102, align 8
  %104 = getelementptr inbounds %list_item__intp, %list_item__intp* %103, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %104, align 8
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %106 = bitcast i8* %105 to %list__intp**
  %self59 = load %list__intp*, %list__intp** %106, align 8
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %108 = bitcast i8* %107 to %list__intp**
  %self60 = load %list__intp*, %list__intp** %108, align 8
  %109 = getelementptr inbounds %list__intp, %list__intp* %self60, i32 0, i32 0
  %110 = load %list_item__intp*, %list_item__intp** %109, align 8
  %111 = getelementptr inbounds %list__intp, %list__intp* %self59, i32 0, i32 1
  store %list_item__intp* %110, %list_item__intp** %111, align 8
  br i1 true, label %cond_jump_then61, label %cond_end62

cond_end35:                                       ; preds = %cond_end68, %cond_end50
  br label %cond_end18

cond_jump_then43:                                 ; preds = %cond_jump_then33
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %113 = bitcast i8* %112 to %list_item__intp**
  %it45 = load %list_item__intp*, %list_item__intp** %113, align 8
  %114 = getelementptr inbounds %list_item__intp, %list_item__intp* %it45, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32*, i32** %114, align 8
  %117 = ptrtoint i32* %116 to i64
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %cond_then_block46, label %cond_end47

cond_end44:                                       ; preds = %cond_end47, %cond_jump_then33
  %it48 = load %list_item__intp*, %list_item__intp** %it, align 8
  %119 = load %list_item__intp*, %list_item__intp** %it, align 8
  %120 = ptrtoint %list_item__intp* %119 to i64
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %cond_then_block49, label %cond_end50

cond_then_block46:                                ; preds = %cond_jump_then43
  br label %cond_end47

cond_end47:                                       ; preds = %cond_then_block46, %cond_jump_then43
  %122 = bitcast i32* %116 to i8*
  call void @xfree(i8* %122)
  br label %cond_end44

cond_then_block49:                                ; preds = %cond_end44
  br label %cond_end50

cond_end50:                                       ; preds = %cond_then_block49, %cond_end44
  %123 = bitcast %list_item__intp* %119 to i8*
  call void @xfree(i8* %123)
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %125 = bitcast i8* %124 to %list__intp**
  %self51 = load %list__intp*, %list__intp** %125, align 8
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %127 = bitcast i8* %126 to %list__intp**
  %self52 = load %list__intp*, %list__intp** %127, align 8
  %128 = getelementptr inbounds %list__intp, %list__intp* %self52, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %subttmp53 = sub nsw i32 %129, 1
  %130 = getelementptr inbounds %list__intp, %list__intp* %self51, i32 0, i32 2
  store i32 %subttmp53, i32* %130, align 4
  %addtmp54 = add nsw i32 %subttmp53, 1
  br label %cond_end35

cond_jump_then61:                                 ; preds = %cond_else_block34
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %132 = bitcast i8* %131 to %list_item__intp**
  %it63 = load %list_item__intp*, %list_item__intp** %132, align 8
  %133 = getelementptr inbounds %list_item__intp, %list_item__intp* %it63, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %133, align 8
  %136 = ptrtoint i32* %135 to i64
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %cond_then_block64, label %cond_end65

cond_end62:                                       ; preds = %cond_end65, %cond_else_block34
  %it66 = load %list_item__intp*, %list_item__intp** %it56, align 8
  %138 = load %list_item__intp*, %list_item__intp** %it56, align 8
  %139 = ptrtoint %list_item__intp* %138 to i64
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %cond_then_block67, label %cond_end68

cond_then_block64:                                ; preds = %cond_jump_then61
  br label %cond_end65

cond_end65:                                       ; preds = %cond_then_block64, %cond_jump_then61
  %141 = bitcast i32* %135 to i8*
  call void @xfree(i8* %141)
  br label %cond_end62

cond_then_block67:                                ; preds = %cond_end62
  br label %cond_end68

cond_end68:                                       ; preds = %cond_then_block67, %cond_end62
  %142 = bitcast %list_item__intp* %138 to i8*
  call void @xfree(i8* %142)
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %144 = bitcast i8* %143 to %list__intp**
  %self69 = load %list__intp*, %list__intp** %144, align 8
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %146 = bitcast i8* %145 to %list__intp**
  %self70 = load %list__intp*, %list__intp** %146, align 8
  %147 = getelementptr inbounds %list__intp, %list__intp* %self70, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %subttmp71 = sub nsw i32 %148, 1
  %149 = getelementptr inbounds %list__intp, %list__intp* %self69, i32 0, i32 2
  store i32 %subttmp71, i32* %149, align 4
  %addtmp72 = add nsw i32 %subttmp71, 1
  br label %cond_end35

loop_top_block:                                   ; preds = %cond_end81, %cond_else_block
  %it75 = load %list_item__intp*, %list_item__intp** %it74, align 8
  %noteqtmp = icmp ne %list_item__intp* %it75, null
  br i1 %noteqtmp, label %cond_then_block76, label %cond_end_block

cond_then_block76:                                ; preds = %loop_top_block
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %151 = bitcast i8* %150 to i32*
  %position77 = load i32, i32* %151, align 4
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %153 = bitcast i8* %152 to i32*
  %i78 = load i32, i32* %153, align 4
  %eqtmpX79 = icmp eq i32 %position77, %i78
  br i1 %eqtmpX79, label %cond_jump_then80, label %cond_end81

cond_end_block:                                   ; preds = %cond_end88, %loop_top_block
  br label %cond_end18

cond_jump_then80:                                 ; preds = %cond_then_block76
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %155 = bitcast i8* %154 to i32*
  %i82 = load i32, i32* %155, align 4
  %eqtmpX83 = icmp eq i32 %i82, 0
  br i1 %eqtmpX83, label %cond_jump_then84, label %"cond_jump_elif0\0A85"

cond_end81:                                       ; preds = %after_break, %cond_then_block76
  %156 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %157 = bitcast i8* %156 to %list_item__intp**
  %it139 = load %list_item__intp*, %list_item__intp** %157, align 8
  %158 = getelementptr inbounds %list_item__intp, %list_item__intp* %it139, i32 0, i32 2
  %159 = load %list_item__intp*, %list_item__intp** %158, align 8
  %160 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %161 = bitcast i8* %160 to %list_item__intp**
  store %list_item__intp* %159, %list_item__intp** %161, align 8
  %162 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %163 = bitcast i8* %162 to i32*
  %i140 = load i32, i32* %163, align 4
  %addtmp141 = add nsw i32 %i140, 1
  %164 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %165 = bitcast i8* %164 to i32*
  store i32 %addtmp141, i32* %165, align 4
  %subttmp142 = sub nsw i32 %addtmp141, 1
  br label %loop_top_block

cond_jump_then84:                                 ; preds = %cond_jump_then80
  %166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %167 = bitcast i8* %166 to %list__intp**
  %self89 = load %list__intp*, %list__intp** %167, align 8
  %168 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %169 = bitcast i8* %168 to %list_item__intp**
  %it90 = load %list_item__intp*, %list_item__intp** %169, align 8
  %170 = getelementptr inbounds %list_item__intp, %list_item__intp* %it90, i32 0, i32 2
  %171 = load %list_item__intp*, %list_item__intp** %170, align 8
  %172 = getelementptr inbounds %list__intp, %list__intp* %self89, i32 0, i32 0
  store %list_item__intp* %171, %list_item__intp** %172, align 8
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %174 = bitcast i8* %173 to %list__intp**
  %self91 = load %list__intp*, %list__intp** %174, align 8
  %175 = getelementptr inbounds %list__intp, %list__intp* %self91, i32 0, i32 0
  %176 = load %list_item__intp*, %list_item__intp** %175, align 8
  %177 = getelementptr inbounds %list_item__intp, %list_item__intp* %176, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %177, align 8
  br i1 true, label %cond_jump_then92, label %cond_end93

"cond_jump_elif0\0A85":                           ; preds = %cond_jump_then80
  %178 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %179 = bitcast i8* %178 to i32*
  %i104 = load i32, i32* %179, align 4
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %181 = bitcast i8* %180 to %list__intp**
  %self105 = load %list__intp*, %list__intp** %181, align 8
  %182 = getelementptr inbounds %list__intp, %list__intp* %self105, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %subttmp106 = sub nsw i32 %183, 1
  %eqtmpX107 = icmp eq i32 %i104, %subttmp106
  br i1 %eqtmpX107, label %"cond_jump_elif_then0\0A86", label %cond_else_block87

"cond_jump_elif_then0\0A86":                      ; preds = %"cond_jump_elif0\0A85"
  %184 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %185 = bitcast i8* %184 to %list__intp**
  %self108 = load %list__intp*, %list__intp** %185, align 8
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %187 = bitcast i8* %186 to %list_item__intp**
  %it109 = load %list_item__intp*, %list_item__intp** %187, align 8
  %188 = getelementptr inbounds %list_item__intp, %list_item__intp* %it109, i32 0, i32 1
  %189 = load %list_item__intp*, %list_item__intp** %188, align 8
  %190 = getelementptr inbounds %list__intp, %list__intp* %self108, i32 0, i32 1
  store %list_item__intp* %189, %list_item__intp** %190, align 8
  %191 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %192 = bitcast i8* %191 to %list__intp**
  %self110 = load %list__intp*, %list__intp** %192, align 8
  %193 = getelementptr inbounds %list__intp, %list__intp* %self110, i32 0, i32 1
  %194 = load %list_item__intp*, %list_item__intp** %193, align 8
  %195 = getelementptr inbounds %list_item__intp, %list_item__intp* %194, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %195, align 8
  br i1 true, label %cond_jump_then111, label %cond_end112

cond_else_block87:                                ; preds = %"cond_jump_elif0\0A85"
  %196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %197 = bitcast i8* %196 to %list_item__intp**
  %it123 = load %list_item__intp*, %list_item__intp** %197, align 8
  %198 = getelementptr inbounds %list_item__intp, %list_item__intp* %it123, i32 0, i32 1
  %199 = load %list_item__intp*, %list_item__intp** %198, align 8
  %200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %201 = bitcast i8* %200 to %list_item__intp**
  %it124 = load %list_item__intp*, %list_item__intp** %201, align 8
  %202 = getelementptr inbounds %list_item__intp, %list_item__intp* %it124, i32 0, i32 2
  %203 = load %list_item__intp*, %list_item__intp** %202, align 8
  %204 = getelementptr inbounds %list_item__intp, %list_item__intp* %199, i32 0, i32 2
  store %list_item__intp* %203, %list_item__intp** %204, align 8
  %205 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %206 = bitcast i8* %205 to %list_item__intp**
  %it125 = load %list_item__intp*, %list_item__intp** %206, align 8
  %207 = getelementptr inbounds %list_item__intp, %list_item__intp* %it125, i32 0, i32 2
  %208 = load %list_item__intp*, %list_item__intp** %207, align 8
  %209 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %210 = bitcast i8* %209 to %list_item__intp**
  %it126 = load %list_item__intp*, %list_item__intp** %210, align 8
  %211 = getelementptr inbounds %list_item__intp, %list_item__intp* %it126, i32 0, i32 1
  %212 = load %list_item__intp*, %list_item__intp** %211, align 8
  %213 = getelementptr inbounds %list_item__intp, %list_item__intp* %208, i32 0, i32 1
  store %list_item__intp* %212, %list_item__intp** %213, align 8
  br i1 true, label %cond_jump_then127, label %cond_end128

cond_end88:                                       ; preds = %cond_end134, %cond_end118, %cond_end99
  br label %cond_end_block

cond_jump_then92:                                 ; preds = %cond_jump_then84
  %214 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %215 = bitcast i8* %214 to %list_item__intp**
  %it94 = load %list_item__intp*, %list_item__intp** %215, align 8
  %216 = getelementptr inbounds %list_item__intp, %list_item__intp* %it94, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32*, i32** %216, align 8
  %219 = ptrtoint i32* %218 to i64
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %cond_then_block95, label %cond_end96

cond_end93:                                       ; preds = %cond_end96, %cond_jump_then84
  %221 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %222 = bitcast i8* %221 to %list_item__intp**
  %it97 = load %list_item__intp*, %list_item__intp** %222, align 8
  %223 = load %list_item__intp*, %list_item__intp** %222, align 8
  %224 = ptrtoint %list_item__intp* %223 to i64
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %cond_then_block98, label %cond_end99

cond_then_block95:                                ; preds = %cond_jump_then92
  br label %cond_end96

cond_end96:                                       ; preds = %cond_then_block95, %cond_jump_then92
  %226 = bitcast i32* %218 to i8*
  call void @xfree(i8* %226)
  br label %cond_end93

cond_then_block98:                                ; preds = %cond_end93
  br label %cond_end99

cond_end99:                                       ; preds = %cond_then_block98, %cond_end93
  %227 = bitcast %list_item__intp* %223 to i8*
  call void @xfree(i8* %227)
  %228 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %229 = bitcast i8* %228 to %list__intp**
  %self100 = load %list__intp*, %list__intp** %229, align 8
  %230 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %231 = bitcast i8* %230 to %list__intp**
  %self101 = load %list__intp*, %list__intp** %231, align 8
  %232 = getelementptr inbounds %list__intp, %list__intp* %self101, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %subttmp102 = sub nsw i32 %233, 1
  %234 = getelementptr inbounds %list__intp, %list__intp* %self100, i32 0, i32 2
  store i32 %subttmp102, i32* %234, align 4
  %addtmp103 = add nsw i32 %subttmp102, 1
  br label %cond_end88

cond_jump_then111:                                ; preds = %"cond_jump_elif_then0\0A86"
  %235 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %236 = bitcast i8* %235 to %list_item__intp**
  %it113 = load %list_item__intp*, %list_item__intp** %236, align 8
  %237 = getelementptr inbounds %list_item__intp, %list_item__intp* %it113, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32*, i32** %237, align 8
  %240 = ptrtoint i32* %239 to i64
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %cond_then_block114, label %cond_end115

cond_end112:                                      ; preds = %cond_end115, %"cond_jump_elif_then0\0A86"
  %242 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %243 = bitcast i8* %242 to %list_item__intp**
  %it116 = load %list_item__intp*, %list_item__intp** %243, align 8
  %244 = load %list_item__intp*, %list_item__intp** %243, align 8
  %245 = ptrtoint %list_item__intp* %244 to i64
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %cond_then_block117, label %cond_end118

cond_then_block114:                               ; preds = %cond_jump_then111
  br label %cond_end115

cond_end115:                                      ; preds = %cond_then_block114, %cond_jump_then111
  %247 = bitcast i32* %239 to i8*
  call void @xfree(i8* %247)
  br label %cond_end112

cond_then_block117:                               ; preds = %cond_end112
  br label %cond_end118

cond_end118:                                      ; preds = %cond_then_block117, %cond_end112
  %248 = bitcast %list_item__intp* %244 to i8*
  call void @xfree(i8* %248)
  %249 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %250 = bitcast i8* %249 to %list__intp**
  %self119 = load %list__intp*, %list__intp** %250, align 8
  %251 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %252 = bitcast i8* %251 to %list__intp**
  %self120 = load %list__intp*, %list__intp** %252, align 8
  %253 = getelementptr inbounds %list__intp, %list__intp* %self120, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %subttmp121 = sub nsw i32 %254, 1
  %255 = getelementptr inbounds %list__intp, %list__intp* %self119, i32 0, i32 2
  store i32 %subttmp121, i32* %255, align 4
  %addtmp122 = add nsw i32 %subttmp121, 1
  br label %cond_end88

cond_jump_then127:                                ; preds = %cond_else_block87
  %256 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %257 = bitcast i8* %256 to %list_item__intp**
  %it129 = load %list_item__intp*, %list_item__intp** %257, align 8
  %258 = getelementptr inbounds %list_item__intp, %list_item__intp* %it129, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32*, i32** %258, align 8
  %261 = ptrtoint i32* %260 to i64
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %cond_then_block130, label %cond_end131

cond_end128:                                      ; preds = %cond_end131, %cond_else_block87
  %263 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %264 = bitcast i8* %263 to %list_item__intp**
  %it132 = load %list_item__intp*, %list_item__intp** %264, align 8
  %265 = load %list_item__intp*, %list_item__intp** %264, align 8
  %266 = ptrtoint %list_item__intp* %265 to i64
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %cond_then_block133, label %cond_end134

cond_then_block130:                               ; preds = %cond_jump_then127
  br label %cond_end131

cond_end131:                                      ; preds = %cond_then_block130, %cond_jump_then127
  %268 = bitcast i32* %260 to i8*
  call void @xfree(i8* %268)
  br label %cond_end128

cond_then_block133:                               ; preds = %cond_end128
  br label %cond_end134

cond_end134:                                      ; preds = %cond_then_block133, %cond_end128
  %269 = bitcast %list_item__intp* %265 to i8*
  call void @xfree(i8* %269)
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %271 = bitcast i8* %270 to %list__intp**
  %self135 = load %list__intp*, %list__intp** %271, align 8
  %272 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %273 = bitcast i8* %272 to %list__intp**
  %self136 = load %list__intp*, %list__intp** %273, align 8
  %274 = getelementptr inbounds %list__intp, %list__intp* %self136, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %subttmp137 = sub nsw i32 %275, 1
  %276 = getelementptr inbounds %list__intp, %list__intp* %self135, i32 0, i32 2
  store i32 %subttmp137, i32* %276, align 4
  %addtmp138 = add nsw i32 %subttmp137, 1
  br label %cond_end88

after_break:                                      ; No predecessors!
  br label %cond_end81
}

define void @ViWin_deleteAfterCursor-10(%ViWin* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self2)
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %3 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 1
  %4 = load %list__intp*, %list__intp** %3, align 8
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 8
  %6 = load i32, i32* %5, align 4
  %self5 = load %ViWin*, %ViWin** %self1, align 8
  %7 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %addtmp = add nsw i32 %6, %8
  %9 = call i32* @"list_item_intp17_vi++10edit"(%list__intp* %4, i32 %addtmp, i32* null)
  %line = alloca i32*
  %10 = bitcast i32** %line to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32* %9, i32** %line, align 8
  %line6 = load i32*, i32** %line, align 8
  %noteqtmp = icmp ne i32* %line6, null
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %12 = bitcast i8* %11 to %ViWin**
  %self7 = load %ViWin*, %ViWin** %12, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self7)
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %14 = bitcast i8* %13 to i32**
  %line8 = load i32*, i32** %14, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %16 = bitcast i8* %15 to %ViWin**
  %self9 = load %ViWin*, %ViWin** %16, align 8
  %17 = getelementptr inbounds %ViWin, %ViWin* %self9, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @wstring_delete_range(i32* %line8, i32 %18, i32 -1)
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %21 = bitcast i8* %20 to %ViWin**
  %self10 = load %ViWin*, %ViWin** %21, align 8
  call void @ViWin_modifyCursorOnDeleting-10(%ViWin* %self10)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %22 = bitcast [8192 x i8*]* %lvtable to i8*
  %23 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %22, i64 65536)
  ret void
}

define i32* @"list_item_intp17_vi++10edit"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @ViWin_deleteWord-10(%ViWin* %self, %Vi* %nvi) {
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
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self3)
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %4 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 1
  %5 = load %list__intp*, %list__intp** %4, align 8
  %self5 = load %ViWin*, %ViWin** %self1, align 8
  %6 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %self6 = load %ViWin*, %ViWin** %self1, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %addtmp = add nsw i32 %7, %9
  %10 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.12, i32 0, i32 0))
  %11 = call i32* @"list_item_intp18_vi++10edit"(%list__intp* %5, i32 %addtmp, i32* %10)
  %line = alloca i32*
  %12 = bitcast i32** %line to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %11, i32** %line, align 8
  %line7 = load i32*, i32** %line, align 8
  %13 = call i64 @wcslen(i32* %line7)
  %eqtmpX = icmp eq i64 %13, 0
  %14 = ptrtoint i32* %10 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %cond_then_block, label %cond_end8

cond_jump_then:                                   ; preds = %cond_end8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %17 = bitcast i8* %16 to %ViWin**
  %self9 = load %ViWin*, %ViWin** %17, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %19 = bitcast i8* %18 to %Vi**
  %nvi10 = load %Vi*, %Vi** %19, align 8
  call void @ViWin_deleteOneLine-10(%ViWin* %self9, %Vi* %nvi10)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_end8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %21 = bitcast i8* %20 to %ViWin**
  %self11 = load %ViWin*, %ViWin** %21, align 8
  %22 = getelementptr inbounds %ViWin, %ViWin* %self11, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %x = alloca i32
  %24 = bitcast i32* %x to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i32 %23, i32* %x, align 4
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %26 = bitcast i8* %25 to i32**
  %line12 = load i32*, i32** %26, align 8
  %x13 = load i32, i32* %x, align 4
  %27 = ptrtoint i32* %line12 to i64
  %sext1 = sext i32 %x13 to i64
  %multtmp = mul nsw i64 %sext1, 4
  %addtmp14 = add nsw i64 %27, %multtmp
  %28 = inttoptr i64 %addtmp14 to i32*
  %p = alloca i32*
  %29 = bitcast i32** %p to i8*
  store i8* %29, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  store i32* %28, i32** %p, align 8
  %oror_result_var = alloca i1
  %oror_result_var15 = alloca i1
  %andand_result_var = alloca i1
  %p16 = load i32*, i32** %p, align 8
  %derefference_value = load i32, i32* %p16, align 8
  %getmp = icmp sge i32 %derefference_value, 97
  store i1 %getmp, i1* %andand_result_var, align 1
  br i1 %getmp, label %cond_jump_then17, label %cond_jump_end

cond_end:                                         ; preds = %cond_end41, %cond_jump_then
  %30 = bitcast [8192 x i8*]* %lvtable to i8*
  %31 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %30, i64 65536)
  ret void

cond_then_block:                                  ; preds = %entry
  br label %cond_end8

cond_end8:                                        ; preds = %cond_then_block, %entry
  %32 = bitcast i32* %10 to i8*
  call void @xfree(i8* %32)
  br i1 %eqtmpX, label %cond_jump_then, label %cond_else_block

cond_jump_then17:                                 ; preds = %cond_else_block
  %p18 = load i32*, i32** %p, align 8
  %derefference_value19 = load i32, i32* %p18, align 8
  %leeqtmp = icmp sle i32 %derefference_value19, 122
  %andand = and i1 %getmp, %leeqtmp
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then17, %cond_else_block
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  store i1 %andand_result_value, i1* %oror_result_var15, align 1
  br i1 %andand_result_value, label %cond_jump_end21, label %cond_jump_then20

cond_jump_then20:                                 ; preds = %cond_jump_end
  %andand_result_var22 = alloca i1
  %p23 = load i32*, i32** %p, align 8
  %derefference_value24 = load i32, i32* %p23, align 8
  %getmp25 = icmp sge i32 %derefference_value24, 65
  store i1 %getmp25, i1* %andand_result_var22, align 1
  br i1 %getmp25, label %cond_jump_then26, label %cond_jump_end27

cond_jump_end21:                                  ; preds = %cond_jump_end27, %cond_jump_end
  %oror_result_value = load i1, i1* %oror_result_var15, align 1
  store i1 %oror_result_value, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_end34, label %cond_jump_then33

cond_jump_then26:                                 ; preds = %cond_jump_then20
  %p28 = load i32*, i32** %p, align 8
  %derefference_value29 = load i32, i32* %p28, align 8
  %leeqtmp30 = icmp sle i32 %derefference_value29, 90
  %andand31 = and i1 %getmp25, %leeqtmp30
  store i1 %andand31, i1* %andand_result_var22, align 1
  br label %cond_jump_end27

cond_jump_end27:                                  ; preds = %cond_jump_then26, %cond_jump_then20
  %andand_result_value32 = load i1, i1* %andand_result_var22, align 1
  %oror = or i1 %andand_result_value, %andand_result_value32
  store i1 %oror, i1* %oror_result_var15, align 1
  br label %cond_jump_end21

cond_jump_then33:                                 ; preds = %cond_jump_end21
  %p35 = load i32*, i32** %p, align 8
  %derefference_value36 = load i32, i32* %p35, align 8
  %eqtmpX37 = icmp eq i32 %derefference_value36, 95
  %oror38 = or i1 %oror_result_value, %eqtmpX37
  store i1 %oror38, i1* %oror_result_var, align 1
  br label %cond_jump_end34

cond_jump_end34:                                  ; preds = %cond_jump_then33, %cond_jump_end21
  %oror_result_value39 = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value39, label %cond_jump_then40, label %"cond_jump_elif0\0A"

cond_jump_then40:                                 ; preds = %cond_jump_end34
  br label %loop_top_block

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end34
  %oror_result_var87 = alloca i1
  %oror_result_var88 = alloca i1
  %andand_result_var89 = alloca i1
  %p90 = load i32*, i32** %p, align 8
  %derefference_value91 = load i32, i32* %p90, align 8
  %getmp92 = icmp sge i32 %derefference_value91, 33
  store i1 %getmp92, i1* %andand_result_var89, align 1
  br i1 %getmp92, label %cond_jump_then93, label %cond_jump_end94

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end116
  br label %loop_top_block130

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end116
  %p188 = load i32*, i32** %p, align 8
  %derefference_value189 = load i32, i32* %p188, align 8
  %33 = call i32 @iswalpha(i32 %derefference_value189)
  %34 = trunc i32 %33 to i1
  br i1 %34, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

"cond_jump_elif_then1\0A":                        ; preds = %"cond_jump_elif1\0A"
  br label %loop_top_block190

"cond_jump_elif2\0A":                             ; preds = %"cond_jump_elif1\0A"
  %p207 = load i32*, i32** %p, align 8
  %derefference_value208 = load i32, i32* %p207, align 8
  %35 = call i32 @iswblank(i32 %derefference_value208)
  %36 = trunc i32 %35 to i1
  br i1 %36, label %"cond_jump_elif_then2\0A", label %"cond_jump_elif3\0A"

"cond_jump_elif_then2\0A":                        ; preds = %"cond_jump_elif2\0A"
  br label %loop_top_block209

"cond_jump_elif3\0A":                             ; preds = %"cond_jump_elif2\0A"
  %p226 = load i32*, i32** %p, align 8
  %derefference_value227 = load i32, i32* %p226, align 8
  %37 = call i32 @iswdigit(i32 %derefference_value227)
  %38 = trunc i32 %37 to i1
  br i1 %38, label %"cond_jump_elif_then3\0A", label %cond_end41

"cond_jump_elif_then3\0A":                        ; preds = %"cond_jump_elif3\0A"
  br label %loop_top_block228

cond_end41:                                       ; preds = %cond_end_block232, %"cond_jump_elif3\0A", %cond_end_block213, %cond_end_block194, %cond_end_block175, %cond_end_block
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %40 = bitcast i8* %39 to %Vi**
  %nvi245 = load %Vi*, %Vi** %40, align 8
  %41 = getelementptr inbounds %Vi, %Vi* %nvi245, i32 0, i32 6
  %42 = load %list__intp*, %list__intp** %41, align 8
  call void @"list_reset_intp19_vi++10edit"(%list__intp* %42)
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %44 = bitcast i8* %43 to %Vi**
  %nvi246 = load %Vi*, %Vi** %44, align 8
  %45 = getelementptr inbounds %Vi, %Vi* %nvi246, i32 0, i32 6
  %46 = load %list__intp*, %list__intp** %45, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %48 = bitcast i8* %47 to i32**
  %line247 = load i32*, i32** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %50 = bitcast i8* %49 to %ViWin**
  %self248 = load %ViWin*, %ViWin** %50, align 8
  %51 = getelementptr inbounds %ViWin, %ViWin* %self248, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %x249 = load i32, i32* %x, align 4
  %53 = call i32* @wstring_substring(i32* %line247, i32 %52, i32 %x249)
  call void @"list_push_back_intp21_vi++10edit"(%list__intp* %46, i32* %53)
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %55 = bitcast i8* %54 to %Vi**
  %nvi250 = load %Vi*, %Vi** %55, align 8
  %56 = getelementptr inbounds %Vi, %Vi* %nvi250, i32 0, i32 7
  store i32 1, i32* %56, align 4
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %58 = bitcast i8* %57 to i32**
  %line251 = load i32*, i32** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %60 = bitcast i8* %59 to %ViWin**
  %self252 = load %ViWin*, %ViWin** %60, align 8
  %61 = getelementptr inbounds %ViWin, %ViWin* %self252, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %x253 = load i32, i32* %x, align 4
  %63 = call i32* @wstring_delete_range(i32* %line251, i32 %62, i32 %x253)
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %65 = bitcast i8* %64 to %ViWin**
  %self254 = load %ViWin*, %ViWin** %65, align 8
  call void @ViWin_modifyCursorOnDeleting-10(%ViWin* %self254)
  br label %cond_end

loop_top_block:                                   ; preds = %cond_end86, %cond_jump_then40
  %oror_result_var42 = alloca i1
  %oror_result_var43 = alloca i1
  %andand_result_var44 = alloca i1
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %67 = bitcast i8* %66 to i32**
  %p45 = load i32*, i32** %67, align 8
  %derefference_value46 = load i32, i32* %p45, align 8
  %getmp47 = icmp sge i32 %derefference_value46, 97
  store i1 %getmp47, i1* %andand_result_var44, align 1
  br i1 %getmp47, label %cond_jump_then48, label %cond_jump_end49

cond_jump_then48:                                 ; preds = %loop_top_block
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %69 = bitcast i8* %68 to i32**
  %p50 = load i32*, i32** %69, align 8
  %derefference_value51 = load i32, i32* %p50, align 8
  %leeqtmp52 = icmp sle i32 %derefference_value51, 122
  %andand53 = and i1 %getmp47, %leeqtmp52
  store i1 %andand53, i1* %andand_result_var44, align 1
  br label %cond_jump_end49

cond_jump_end49:                                  ; preds = %cond_jump_then48, %loop_top_block
  %andand_result_value54 = load i1, i1* %andand_result_var44, align 1
  store i1 %andand_result_value54, i1* %oror_result_var43, align 1
  br i1 %andand_result_value54, label %cond_jump_end56, label %cond_jump_then55

cond_jump_then55:                                 ; preds = %cond_jump_end49
  %andand_result_var57 = alloca i1
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %71 = bitcast i8* %70 to i32**
  %p58 = load i32*, i32** %71, align 8
  %derefference_value59 = load i32, i32* %p58, align 8
  %getmp60 = icmp sge i32 %derefference_value59, 65
  store i1 %getmp60, i1* %andand_result_var57, align 1
  br i1 %getmp60, label %cond_jump_then61, label %cond_jump_end62

cond_jump_end56:                                  ; preds = %cond_jump_end62, %cond_jump_end49
  %oror_result_value69 = load i1, i1* %oror_result_var43, align 1
  store i1 %oror_result_value69, i1* %oror_result_var42, align 1
  br i1 %oror_result_value69, label %cond_jump_end71, label %cond_jump_then70

cond_jump_then61:                                 ; preds = %cond_jump_then55
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %73 = bitcast i8* %72 to i32**
  %p63 = load i32*, i32** %73, align 8
  %derefference_value64 = load i32, i32* %p63, align 8
  %leeqtmp65 = icmp sle i32 %derefference_value64, 90
  %andand66 = and i1 %getmp60, %leeqtmp65
  store i1 %andand66, i1* %andand_result_var57, align 1
  br label %cond_jump_end62

cond_jump_end62:                                  ; preds = %cond_jump_then61, %cond_jump_then55
  %andand_result_value67 = load i1, i1* %andand_result_var57, align 1
  %oror68 = or i1 %andand_result_value54, %andand_result_value67
  store i1 %oror68, i1* %oror_result_var43, align 1
  br label %cond_jump_end56

cond_jump_then70:                                 ; preds = %cond_jump_end56
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %75 = bitcast i8* %74 to i32**
  %p72 = load i32*, i32** %75, align 8
  %derefference_value73 = load i32, i32* %p72, align 8
  %eqtmpX74 = icmp eq i32 %derefference_value73, 95
  %oror75 = or i1 %oror_result_value69, %eqtmpX74
  store i1 %oror75, i1* %oror_result_var42, align 1
  br label %cond_jump_end71

cond_jump_end71:                                  ; preds = %cond_jump_then70, %cond_jump_end56
  %oror_result_value76 = load i1, i1* %oror_result_var42, align 1
  br i1 %oror_result_value76, label %cond_then_block77, label %cond_end_block

cond_then_block77:                                ; preds = %cond_jump_end71
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %77 = bitcast i8* %76 to i32**
  %p78 = load i32*, i32** %77, align 8
  %78 = ptrtoint i32* %p78 to i64
  %addtmp79 = add nsw i64 %78, 4
  %79 = inttoptr i64 %addtmp79 to i32*
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %81 = bitcast i8* %80 to i32**
  store i32* %79, i32** %81, align 8
  %82 = ptrtoint i32* %79 to i64
  %subtmp = sub nsw i64 %82, 4
  %83 = inttoptr i64 %subtmp to i32*
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %85 = bitcast i8* %84 to i32*
  %x80 = load i32, i32* %85, align 4
  %addtmp81 = add nsw i32 %x80, 1
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %87 = bitcast i8* %86 to i32*
  store i32 %addtmp81, i32* %87, align 4
  %subttmp = sub nsw i32 %addtmp81, 1
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %89 = bitcast i8* %88 to i32*
  %x82 = load i32, i32* %89, align 4
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %91 = bitcast i8* %90 to i32**
  %line83 = load i32*, i32** %91, align 8
  %92 = call i32 @wstring_length(i32* %line83)
  %getmp84 = icmp sge i32 %x82, %92
  br i1 %getmp84, label %cond_jump_then85, label %cond_end86

cond_end_block:                                   ; preds = %cond_jump_then85, %cond_jump_end71
  br label %cond_end41

cond_jump_then85:                                 ; preds = %cond_then_block77
  br label %cond_end_block

cond_end86:                                       ; preds = %after_break, %cond_then_block77
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end86

cond_jump_then93:                                 ; preds = %"cond_jump_elif0\0A"
  %p95 = load i32*, i32** %p, align 8
  %derefference_value96 = load i32, i32* %p95, align 8
  %leeqtmp97 = icmp sle i32 %derefference_value96, 47
  %andand98 = and i1 %getmp92, %leeqtmp97
  store i1 %andand98, i1* %andand_result_var89, align 1
  br label %cond_jump_end94

cond_jump_end94:                                  ; preds = %cond_jump_then93, %"cond_jump_elif0\0A"
  %andand_result_value99 = load i1, i1* %andand_result_var89, align 1
  store i1 %andand_result_value99, i1* %oror_result_var88, align 1
  br i1 %andand_result_value99, label %cond_jump_end101, label %cond_jump_then100

cond_jump_then100:                                ; preds = %cond_jump_end94
  %andand_result_var102 = alloca i1
  %p103 = load i32*, i32** %p, align 8
  %derefference_value104 = load i32, i32* %p103, align 8
  %getmp105 = icmp sge i32 %derefference_value104, 58
  store i1 %getmp105, i1* %andand_result_var102, align 1
  br i1 %getmp105, label %cond_jump_then106, label %cond_jump_end107

cond_jump_end101:                                 ; preds = %cond_jump_end107, %cond_jump_end94
  %oror_result_value114 = load i1, i1* %oror_result_var88, align 1
  store i1 %oror_result_value114, i1* %oror_result_var87, align 1
  br i1 %oror_result_value114, label %cond_jump_end116, label %cond_jump_then115

cond_jump_then106:                                ; preds = %cond_jump_then100
  %p108 = load i32*, i32** %p, align 8
  %derefference_value109 = load i32, i32* %p108, align 8
  %leeqtmp110 = icmp sle i32 %derefference_value109, 64
  %andand111 = and i1 %getmp105, %leeqtmp110
  store i1 %andand111, i1* %andand_result_var102, align 1
  br label %cond_jump_end107

cond_jump_end107:                                 ; preds = %cond_jump_then106, %cond_jump_then100
  %andand_result_value112 = load i1, i1* %andand_result_var102, align 1
  %oror113 = or i1 %andand_result_value99, %andand_result_value112
  store i1 %oror113, i1* %oror_result_var88, align 1
  br label %cond_jump_end101

cond_jump_then115:                                ; preds = %cond_jump_end101
  %andand_result_var117 = alloca i1
  %p118 = load i32*, i32** %p, align 8
  %derefference_value119 = load i32, i32* %p118, align 8
  %getmp120 = icmp sge i32 %derefference_value119, 123
  store i1 %getmp120, i1* %andand_result_var117, align 1
  br i1 %getmp120, label %cond_jump_then121, label %cond_jump_end122

cond_jump_end116:                                 ; preds = %cond_jump_end122, %cond_jump_end101
  %oror_result_value129 = load i1, i1* %oror_result_var87, align 1
  br i1 %oror_result_value129, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

cond_jump_then121:                                ; preds = %cond_jump_then115
  %p123 = load i32*, i32** %p, align 8
  %derefference_value124 = load i32, i32* %p123, align 8
  %leeqtmp125 = icmp sle i32 %derefference_value124, 126
  %andand126 = and i1 %getmp120, %leeqtmp125
  store i1 %andand126, i1* %andand_result_var117, align 1
  br label %cond_jump_end122

cond_jump_end122:                                 ; preds = %cond_jump_then121, %cond_jump_then115
  %andand_result_value127 = load i1, i1* %andand_result_var117, align 1
  %oror128 = or i1 %oror_result_value114, %andand_result_value127
  store i1 %oror128, i1* %oror_result_var87, align 1
  br label %cond_jump_end116

loop_top_block130:                                ; preds = %cond_end186, %"cond_jump_elif_then0\0A"
  %oror_result_var131 = alloca i1
  %oror_result_var132 = alloca i1
  %andand_result_var133 = alloca i1
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %94 = bitcast i8* %93 to i32**
  %p134 = load i32*, i32** %94, align 8
  %derefference_value135 = load i32, i32* %p134, align 8
  %getmp136 = icmp sge i32 %derefference_value135, 33
  store i1 %getmp136, i1* %andand_result_var133, align 1
  br i1 %getmp136, label %cond_jump_then137, label %cond_jump_end138

cond_jump_then137:                                ; preds = %loop_top_block130
  %95 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %96 = bitcast i8* %95 to i32**
  %p139 = load i32*, i32** %96, align 8
  %derefference_value140 = load i32, i32* %p139, align 8
  %leeqtmp141 = icmp sle i32 %derefference_value140, 47
  %andand142 = and i1 %getmp136, %leeqtmp141
  store i1 %andand142, i1* %andand_result_var133, align 1
  br label %cond_jump_end138

cond_jump_end138:                                 ; preds = %cond_jump_then137, %loop_top_block130
  %andand_result_value143 = load i1, i1* %andand_result_var133, align 1
  store i1 %andand_result_value143, i1* %oror_result_var132, align 1
  br i1 %andand_result_value143, label %cond_jump_end145, label %cond_jump_then144

cond_jump_then144:                                ; preds = %cond_jump_end138
  %andand_result_var146 = alloca i1
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %98 = bitcast i8* %97 to i32**
  %p147 = load i32*, i32** %98, align 8
  %derefference_value148 = load i32, i32* %p147, align 8
  %getmp149 = icmp sge i32 %derefference_value148, 58
  store i1 %getmp149, i1* %andand_result_var146, align 1
  br i1 %getmp149, label %cond_jump_then150, label %cond_jump_end151

cond_jump_end145:                                 ; preds = %cond_jump_end151, %cond_jump_end138
  %oror_result_value158 = load i1, i1* %oror_result_var132, align 1
  store i1 %oror_result_value158, i1* %oror_result_var131, align 1
  br i1 %oror_result_value158, label %cond_jump_end160, label %cond_jump_then159

cond_jump_then150:                                ; preds = %cond_jump_then144
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %100 = bitcast i8* %99 to i32**
  %p152 = load i32*, i32** %100, align 8
  %derefference_value153 = load i32, i32* %p152, align 8
  %leeqtmp154 = icmp sle i32 %derefference_value153, 64
  %andand155 = and i1 %getmp149, %leeqtmp154
  store i1 %andand155, i1* %andand_result_var146, align 1
  br label %cond_jump_end151

cond_jump_end151:                                 ; preds = %cond_jump_then150, %cond_jump_then144
  %andand_result_value156 = load i1, i1* %andand_result_var146, align 1
  %oror157 = or i1 %andand_result_value143, %andand_result_value156
  store i1 %oror157, i1* %oror_result_var132, align 1
  br label %cond_jump_end145

cond_jump_then159:                                ; preds = %cond_jump_end145
  %andand_result_var161 = alloca i1
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %102 = bitcast i8* %101 to i32**
  %p162 = load i32*, i32** %102, align 8
  %derefference_value163 = load i32, i32* %p162, align 8
  %getmp164 = icmp sge i32 %derefference_value163, 123
  store i1 %getmp164, i1* %andand_result_var161, align 1
  br i1 %getmp164, label %cond_jump_then165, label %cond_jump_end166

cond_jump_end160:                                 ; preds = %cond_jump_end166, %cond_jump_end145
  %oror_result_value173 = load i1, i1* %oror_result_var131, align 1
  br i1 %oror_result_value173, label %cond_then_block174, label %cond_end_block175

cond_jump_then165:                                ; preds = %cond_jump_then159
  %103 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %104 = bitcast i8* %103 to i32**
  %p167 = load i32*, i32** %104, align 8
  %derefference_value168 = load i32, i32* %p167, align 8
  %leeqtmp169 = icmp sle i32 %derefference_value168, 126
  %andand170 = and i1 %getmp164, %leeqtmp169
  store i1 %andand170, i1* %andand_result_var161, align 1
  br label %cond_jump_end166

cond_jump_end166:                                 ; preds = %cond_jump_then165, %cond_jump_then159
  %andand_result_value171 = load i1, i1* %andand_result_var161, align 1
  %oror172 = or i1 %oror_result_value158, %andand_result_value171
  store i1 %oror172, i1* %oror_result_var131, align 1
  br label %cond_jump_end160

cond_then_block174:                               ; preds = %cond_jump_end160
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %106 = bitcast i8* %105 to i32**
  %p176 = load i32*, i32** %106, align 8
  %107 = ptrtoint i32* %p176 to i64
  %addtmp177 = add nsw i64 %107, 4
  %108 = inttoptr i64 %addtmp177 to i32*
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %110 = bitcast i8* %109 to i32**
  store i32* %108, i32** %110, align 8
  %111 = ptrtoint i32* %108 to i64
  %subtmp178 = sub nsw i64 %111, 4
  %112 = inttoptr i64 %subtmp178 to i32*
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %114 = bitcast i8* %113 to i32*
  %x179 = load i32, i32* %114, align 4
  %addtmp180 = add nsw i32 %x179, 1
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %116 = bitcast i8* %115 to i32*
  store i32 %addtmp180, i32* %116, align 4
  %subttmp181 = sub nsw i32 %addtmp180, 1
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %118 = bitcast i8* %117 to i32*
  %x182 = load i32, i32* %118, align 4
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %120 = bitcast i8* %119 to i32**
  %line183 = load i32*, i32** %120, align 8
  %121 = call i32 @wstring_length(i32* %line183)
  %getmp184 = icmp sge i32 %x182, %121
  br i1 %getmp184, label %cond_jump_then185, label %cond_end186

cond_end_block175:                                ; preds = %cond_jump_then185, %cond_jump_end160
  br label %cond_end41

cond_jump_then185:                                ; preds = %cond_then_block174
  br label %cond_end_block175

cond_end186:                                      ; preds = %after_break187, %cond_then_block174
  br label %loop_top_block130

after_break187:                                   ; No predecessors!
  br label %cond_end186

loop_top_block190:                                ; preds = %cond_end205, %"cond_jump_elif_then1\0A"
  %122 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %123 = bitcast i8* %122 to i32**
  %p191 = load i32*, i32** %123, align 8
  %derefference_value192 = load i32, i32* %p191, align 8
  %124 = call i32 @iswalpha(i32 %derefference_value192)
  %125 = trunc i32 %124 to i1
  br i1 %125, label %cond_then_block193, label %cond_end_block194

cond_then_block193:                               ; preds = %loop_top_block190
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %127 = bitcast i8* %126 to i32**
  %p195 = load i32*, i32** %127, align 8
  %128 = ptrtoint i32* %p195 to i64
  %addtmp196 = add nsw i64 %128, 4
  %129 = inttoptr i64 %addtmp196 to i32*
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %131 = bitcast i8* %130 to i32**
  store i32* %129, i32** %131, align 8
  %132 = ptrtoint i32* %129 to i64
  %subtmp197 = sub nsw i64 %132, 4
  %133 = inttoptr i64 %subtmp197 to i32*
  %134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %135 = bitcast i8* %134 to i32*
  %x198 = load i32, i32* %135, align 4
  %addtmp199 = add nsw i32 %x198, 1
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %137 = bitcast i8* %136 to i32*
  store i32 %addtmp199, i32* %137, align 4
  %subttmp200 = sub nsw i32 %addtmp199, 1
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %139 = bitcast i8* %138 to i32*
  %x201 = load i32, i32* %139, align 4
  %140 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %141 = bitcast i8* %140 to i32**
  %line202 = load i32*, i32** %141, align 8
  %142 = call i32 @wstring_length(i32* %line202)
  %getmp203 = icmp sge i32 %x201, %142
  br i1 %getmp203, label %cond_jump_then204, label %cond_end205

cond_end_block194:                                ; preds = %cond_jump_then204, %loop_top_block190
  br label %cond_end41

cond_jump_then204:                                ; preds = %cond_then_block193
  br label %cond_end_block194

cond_end205:                                      ; preds = %after_break206, %cond_then_block193
  br label %loop_top_block190

after_break206:                                   ; No predecessors!
  br label %cond_end205

loop_top_block209:                                ; preds = %cond_end224, %"cond_jump_elif_then2\0A"
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %144 = bitcast i8* %143 to i32**
  %p210 = load i32*, i32** %144, align 8
  %derefference_value211 = load i32, i32* %p210, align 8
  %145 = call i32 @iswblank(i32 %derefference_value211)
  %146 = trunc i32 %145 to i1
  br i1 %146, label %cond_then_block212, label %cond_end_block213

cond_then_block212:                               ; preds = %loop_top_block209
  %147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %148 = bitcast i8* %147 to i32**
  %p214 = load i32*, i32** %148, align 8
  %149 = ptrtoint i32* %p214 to i64
  %addtmp215 = add nsw i64 %149, 4
  %150 = inttoptr i64 %addtmp215 to i32*
  %151 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %152 = bitcast i8* %151 to i32**
  store i32* %150, i32** %152, align 8
  %153 = ptrtoint i32* %150 to i64
  %subtmp216 = sub nsw i64 %153, 4
  %154 = inttoptr i64 %subtmp216 to i32*
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %156 = bitcast i8* %155 to i32*
  %x217 = load i32, i32* %156, align 4
  %addtmp218 = add nsw i32 %x217, 1
  %157 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %158 = bitcast i8* %157 to i32*
  store i32 %addtmp218, i32* %158, align 4
  %subttmp219 = sub nsw i32 %addtmp218, 1
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %160 = bitcast i8* %159 to i32*
  %x220 = load i32, i32* %160, align 4
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %162 = bitcast i8* %161 to i32**
  %line221 = load i32*, i32** %162, align 8
  %163 = call i32 @wstring_length(i32* %line221)
  %getmp222 = icmp sge i32 %x220, %163
  br i1 %getmp222, label %cond_jump_then223, label %cond_end224

cond_end_block213:                                ; preds = %cond_jump_then223, %loop_top_block209
  br label %cond_end41

cond_jump_then223:                                ; preds = %cond_then_block212
  br label %cond_end_block213

cond_end224:                                      ; preds = %after_break225, %cond_then_block212
  br label %loop_top_block209

after_break225:                                   ; No predecessors!
  br label %cond_end224

loop_top_block228:                                ; preds = %cond_end243, %"cond_jump_elif_then3\0A"
  %164 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %165 = bitcast i8* %164 to i32**
  %p229 = load i32*, i32** %165, align 8
  %derefference_value230 = load i32, i32* %p229, align 8
  %166 = call i32 @iswdigit(i32 %derefference_value230)
  %167 = trunc i32 %166 to i1
  br i1 %167, label %cond_then_block231, label %cond_end_block232

cond_then_block231:                               ; preds = %loop_top_block228
  %168 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %169 = bitcast i8* %168 to i32**
  %p233 = load i32*, i32** %169, align 8
  %170 = ptrtoint i32* %p233 to i64
  %addtmp234 = add nsw i64 %170, 4
  %171 = inttoptr i64 %addtmp234 to i32*
  %172 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %173 = bitcast i8* %172 to i32**
  store i32* %171, i32** %173, align 8
  %174 = ptrtoint i32* %171 to i64
  %subtmp235 = sub nsw i64 %174, 4
  %175 = inttoptr i64 %subtmp235 to i32*
  %176 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %177 = bitcast i8* %176 to i32*
  %x236 = load i32, i32* %177, align 4
  %addtmp237 = add nsw i32 %x236, 1
  %178 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %179 = bitcast i8* %178 to i32*
  store i32 %addtmp237, i32* %179, align 4
  %subttmp238 = sub nsw i32 %addtmp237, 1
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %181 = bitcast i8* %180 to i32*
  %x239 = load i32, i32* %181, align 4
  %182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %183 = bitcast i8* %182 to i32**
  %line240 = load i32*, i32** %183, align 8
  %184 = call i32 @wstring_length(i32* %line240)
  %getmp241 = icmp sge i32 %x239, %184
  br i1 %getmp241, label %cond_jump_then242, label %cond_end243

cond_end_block232:                                ; preds = %cond_jump_then242, %loop_top_block228
  br label %cond_end41

cond_jump_then242:                                ; preds = %cond_then_block231
  br label %cond_end_block232

cond_end243:                                      ; preds = %after_break244, %cond_then_block231
  br label %loop_top_block228

after_break244:                                   ; No predecessors!
  br label %cond_end243
}

define i32* @"list_item_intp18_vi++10edit"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @"list_reset_intp19_vi++10edit"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 0
  %4 = load %list_item__intp*, %list_item__intp** %3, align 8
  %it = alloca %list_item__intp*
  %5 = bitcast %list_item__intp** %it to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store %list_item__intp* %4, %list_item__intp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end11, %entry
  %it3 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it3, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %self12 = load %list__intp*, %list__intp** %self1, align 8
  %6 = getelementptr inbounds %list__intp, %list__intp* %self12, i32 0, i32 0
  store %list_item__intp* null, %list_item__intp** %6, align 8
  %self13 = load %list__intp*, %list__intp** %self1, align 8
  %7 = getelementptr inbounds %list__intp, %list__intp* %self13, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %7, align 8
  %self14 = load %list__intp*, %list__intp** %self1, align 8
  %8 = getelementptr inbounds %list__intp, %list__intp* %self14, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to %list_item__intp**
  %it4 = load %list_item__intp*, %list_item__intp** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %it4, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %cond_then_block5, label %cond_end6

cond_end:                                         ; preds = %cond_end6, %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %19 = bitcast i8* %18 to %list_item__intp**
  %it7 = load %list_item__intp*, %list_item__intp** %19, align 8
  %prev_it = alloca %list_item__intp*
  %20 = bitcast %list_item__intp** %prev_it to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store %list_item__intp* %it7, %list_item__intp** %prev_it, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %22 = bitcast i8* %21 to %list_item__intp**
  %it8 = load %list_item__intp*, %list_item__intp** %22, align 8
  %23 = getelementptr inbounds %list_item__intp, %list_item__intp* %it8, i32 0, i32 2
  %24 = load %list_item__intp*, %list_item__intp** %23, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %26 = bitcast i8* %25 to %list_item__intp**
  store %list_item__intp* %24, %list_item__intp** %26, align 8
  %prev_it9 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %27 = load %list_item__intp*, %list_item__intp** %prev_it, align 8
  %28 = ptrtoint %list_item__intp* %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %cond_then_block10, label %cond_end11

cond_then_block5:                                 ; preds = %cond_jump_then
  br label %cond_end6

cond_end6:                                        ; preds = %cond_then_block5, %cond_jump_then
  %30 = bitcast i32* %15 to i8*
  call void @xfree(i8* %30)
  br label %cond_end

cond_then_block10:                                ; preds = %cond_end
  br label %cond_end11

cond_end11:                                       ; preds = %cond_then_block10, %cond_end
  %31 = bitcast %list_item__intp* %27 to i8*
  call void @xfree(i8* %31)
  br label %loop_top_block
}

define void @"list_push_back_intp21_vi++10edit"(%list__intp* %self, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %item2 = alloca i32*
  store i32* %item, i32** %item2, align 8
  %3 = bitcast i32** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %self3 = load %list__intp*, %list__intp** %self1, align 8
  %4 = getelementptr inbounds %list__intp, %list__intp* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.14, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.16, i32 0, i32 0))
  %7 = bitcast i8* %6 to %list_item__intp*
  %litem = alloca %list_item__intp*
  %8 = bitcast %list_item__intp** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store %list_item__intp* %7, %list_item__intp** %litem, align 8
  %litem4 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %9 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem4, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %9, align 8
  %litem5 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %10 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem5, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %10, align 8
  %litem6 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %12 = bitcast i8* %11 to i32**
  %item7 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem6, i32 0, i32 0
  store i32* %item7, i32** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %15 = bitcast i8* %14 to %list__intp**
  %self8 = load %list__intp*, %list__intp** %15, align 8
  %litem9 = load %list_item__intp*, %list_item__intp** %litem, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self8, i32 0, i32 1
  store %list_item__intp* %litem9, %list_item__intp** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  %22 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.18, i32 0, i32 0), i32 702, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.20, i32 0, i32 0))
  %23 = bitcast i8* %22 to %list_item__intp*
  %litem14 = alloca %list_item__intp*
  %24 = bitcast %list_item__intp** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store %list_item__intp* %23, %list_item__intp** %litem14, align 8
  %litem15 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %32 = bitcast i8* %31 to i32**
  %item19 = load i32*, i32** %32, align 8
  %33 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem18, i32 0, i32 0
  store i32* %item19, i32** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %35 = bitcast i8* %34 to %list__intp**
  %self20 = load %list__intp*, %list__intp** %35, align 8
  %litem21 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %36 = getelementptr inbounds %list__intp, %list__intp* %self20, i32 0, i32 1
  store %list_item__intp* %litem21, %list_item__intp** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %38 = bitcast i8* %37 to %list__intp**
  %self22 = load %list__intp*, %list__intp** %38, align 8
  %39 = getelementptr inbounds %list__intp, %list__intp* %self22, i32 0, i32 0
  %40 = load %list_item__intp*, %list_item__intp** %39, align 8
  %litem23 = load %list_item__intp*, %list_item__intp** %litem14, align 8
  %41 = getelementptr inbounds %list_item__intp, %list_item__intp* %40, i32 0, i32 2
  store %list_item__intp* %litem23, %list_item__intp** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.22, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.23, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.24, i32 0, i32 0))
  %43 = bitcast i8* %42 to %list_item__intp*
  %litem24 = alloca %list_item__intp*
  %44 = bitcast %list_item__intp** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store %list_item__intp* %43, %list_item__intp** %litem24, align 8
  %litem25 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %52 = bitcast i8* %51 to i32**
  %item29 = load i32*, i32** %52, align 8
  %53 = getelementptr inbounds %list_item__intp, %list_item__intp* %litem28, i32 0, i32 0
  store i32* %item29, i32** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self30 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self30, i32 0, i32 1
  %57 = load %list_item__intp*, %list_item__intp** %56, align 8
  %litem31 = load %list_item__intp*, %list_item__intp** %litem24, align 8
  %58 = getelementptr inbounds %list_item__intp, %list_item__intp* %57, i32 0, i32 2
  store %list_item__intp* %litem31, %list_item__intp** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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

define void @ViWin_deleteCursorCharactor-10(%ViWin* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self2)
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %3 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 1
  %4 = load %list__intp*, %list__intp** %3, align 8
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 8
  %6 = load i32, i32* %5, align 4
  %self5 = load %ViWin*, %ViWin** %self1, align 8
  %7 = getelementptr inbounds %ViWin, %ViWin* %self5, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %addtmp = add nsw i32 %6, %8
  %9 = call i32* @"list_item_intp22_vi++10edit"(%list__intp* %4, i32 %addtmp, i32* null)
  %line = alloca i32*
  %10 = bitcast i32** %line to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32* %9, i32** %line, align 8
  %line6 = load i32*, i32** %line, align 8
  %self7 = load %ViWin*, %ViWin** %self1, align 8
  %11 = getelementptr inbounds %ViWin, %ViWin* %self7, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @wstring_delete(i32* %line6, i32 %12)
  %self8 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_modifyOverCursorXValue-2(%ViWin* %self8)
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret void
}

define i32* @"list_item_intp22_vi++10edit"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @ViWin_joinLines-10(%ViWin* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %ViWin*
  store %ViWin* %self, %ViWin** %self1, align 8
  %2 = bitcast %ViWin** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_pushUndo-5(%ViWin* %self2)
  %self3 = load %ViWin*, %ViWin** %self1, align 8
  %3 = getelementptr inbounds %ViWin, %ViWin* %self3, i32 0, i32 8
  %4 = load i32, i32* %3, align 4
  %self4 = load %ViWin*, %ViWin** %self1, align 8
  %5 = getelementptr inbounds %ViWin, %ViWin* %self4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %addtmp = add nsw i32 %4, %6
  %addtmp5 = add nsw i32 %addtmp, 1
  %self6 = load %ViWin*, %ViWin** %self1, align 8
  %7 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 1
  %8 = load %list__intp*, %list__intp** %7, align 8
  %9 = call i32 @"list_length_intp23_vi++10edit"(%list__intp* %8)
  %letmp = icmp slt i32 %addtmp5, %9
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %11 = bitcast i8* %10 to %ViWin**
  %self7 = load %ViWin*, %ViWin** %11, align 8
  %12 = getelementptr inbounds %ViWin, %ViWin* %self7, i32 0, i32 1
  %13 = load %list__intp*, %list__intp** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %15 = bitcast i8* %14 to %ViWin**
  %self8 = load %ViWin*, %ViWin** %15, align 8
  %16 = getelementptr inbounds %ViWin, %ViWin* %self8, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %19 = bitcast i8* %18 to %ViWin**
  %self9 = load %ViWin*, %ViWin** %19, align 8
  %20 = getelementptr inbounds %ViWin, %ViWin* %self9, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %addtmp10 = add nsw i32 %17, %21
  %22 = call i32* @"list_item_intp24_vi++10edit"(%list__intp* %13, i32 %addtmp10, i32* null)
  %line = alloca i32*
  %23 = bitcast i32** %line to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32* %22, i32** %line, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %25 = bitcast i8* %24 to %ViWin**
  %self11 = load %ViWin*, %ViWin** %25, align 8
  %26 = getelementptr inbounds %ViWin, %ViWin* %self11, i32 0, i32 1
  %27 = load %list__intp*, %list__intp** %26, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %29 = bitcast i8* %28 to %ViWin**
  %self12 = load %ViWin*, %ViWin** %29, align 8
  %30 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %33 = bitcast i8* %32 to %ViWin**
  %self13 = load %ViWin*, %ViWin** %33, align 8
  %34 = getelementptr inbounds %ViWin, %ViWin* %self13, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %addtmp14 = add nsw i32 %31, %35
  %addtmp15 = add nsw i32 %addtmp14, 1
  %36 = call i32* @"list_item_intp25_vi++10edit"(%list__intp* %27, i32 %addtmp15, i32* null)
  %next_line = alloca i32*
  %37 = bitcast i32** %next_line to i8*
  store i8* %37, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %36, i32** %next_line, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %39 = bitcast i8* %38 to %ViWin**
  %self16 = load %ViWin*, %ViWin** %39, align 8
  %40 = getelementptr inbounds %ViWin, %ViWin* %self16, i32 0, i32 1
  %41 = load %list__intp*, %list__intp** %40, align 8
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %43 = bitcast i8* %42 to %ViWin**
  %self17 = load %ViWin*, %ViWin** %43, align 8
  %44 = getelementptr inbounds %ViWin, %ViWin* %self17, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %47 = bitcast i8* %46 to %ViWin**
  %self18 = load %ViWin*, %ViWin** %47, align 8
  %48 = getelementptr inbounds %ViWin, %ViWin* %self18, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %addtmp19 = add nsw i32 %45, %49
  %line20 = load i32*, i32** %line, align 8
  %next_line21 = load i32*, i32** %next_line, align 8
  %50 = call i32* @op_add_wstring_wstring(i32* %line20, i32* %next_line21)
  call void @"list_replace_intp26_vi++10edit"(%list__intp* %41, i32 %addtmp19, i32* %50)
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %52 = bitcast i8* %51 to %ViWin**
  %self22 = load %ViWin*, %ViWin** %52, align 8
  %53 = getelementptr inbounds %ViWin, %ViWin* %self22, i32 0, i32 1
  %54 = load %list__intp*, %list__intp** %53, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %56 = bitcast i8* %55 to %ViWin**
  %self23 = load %ViWin*, %ViWin** %56, align 8
  %57 = getelementptr inbounds %ViWin, %ViWin* %self23, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %60 = bitcast i8* %59 to %ViWin**
  %self24 = load %ViWin*, %ViWin** %60, align 8
  %61 = getelementptr inbounds %ViWin, %ViWin* %self24, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %addtmp25 = add nsw i32 %58, %62
  %addtmp26 = add nsw i32 %addtmp25, 1
  call void @"list_delete_intp27_vi++10edit"(%list__intp* %54, i32 %addtmp26)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %self27 = load %ViWin*, %ViWin** %self1, align 8
  call void @ViWin_modifyOverCursorXValue-2(%ViWin* %self27)
  %63 = bitcast [8192 x i8*]* %lvtable to i8*
  %64 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %63, i64 65536)
  ret void
}

define i32 @"list_length_intp23_vi++10edit"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp24_vi++10edit"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define i32* @"list_item_intp25_vi++10edit"(%list__intp* %self, i32 %position, i32* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %default_value3 = alloca i32*
  store i32* %default_value, i32** %default_value3, align 8
  %4 = bitcast i32** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it14 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it14, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast [8192 x i8*]* %lvtable to i8*
  %32 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %31, i64 65536)
  ret i32* %30

cond_end13:                                       ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %34 = bitcast i8* %33 to %list_item__intp**
  %it15 = load %list_item__intp*, %list_item__intp** %34, align 8
  %35 = getelementptr inbounds %list_item__intp, %list_item__intp* %it15, i32 0, i32 2
  %36 = load %list_item__intp*, %list_item__intp** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  store %list_item__intp* %36, %list_item__intp** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %40 = bitcast i8* %39 to i32*
  %i16 = load i32, i32* %40, align 4
  %addtmp17 = add nsw i32 %i16, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp17, i32* %42, align 4
  %subttmp18 = sub nsw i32 %addtmp17, 1
  br label %loop_top_block
}

define void @"list_replace_intp26_vi++10edit"(%list__intp* %self, i32 %position, i32* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %item3 = alloca i32*
  store i32* %item, i32** %item3, align 8
  %4 = bitcast i32** %item3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %position4 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %6 = bitcast i8* %5 to i32*
  %position5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %8 = bitcast i8* %7 to %list__intp**
  %self6 = load %list__intp*, %list__intp** %8, align 8
  %9 = getelementptr inbounds %list__intp, %list__intp* %self6, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %position5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store %list_item__intp* %18, %list_item__intp** %it, align 8
  %i = alloca i32
  %20 = bitcast i32* %i to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  %it9 = load %list_item__intp*, %list_item__intp** %it, align 8
  %noteqtmp = icmp ne %list_item__intp* %it9, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %22 = bitcast i8* %21 to i32*
  %position10 = load i32, i32* %22, align 4
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
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
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %28 = bitcast i8* %27 to %list_item__intp**
  %it21 = load %list_item__intp*, %list_item__intp** %28, align 8
  %29 = getelementptr inbounds %list_item__intp, %list_item__intp* %it21, i32 0, i32 2
  %30 = load %list_item__intp*, %list_item__intp** %29, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %32 = bitcast i8* %31 to %list_item__intp**
  store %list_item__intp* %30, %list_item__intp** %32, align 8
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %34 = bitcast i8* %33 to i32*
  %i22 = load i32, i32* %34, align 4
  %addtmp23 = add nsw i32 %i22, 1
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 387), align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %addtmp23, i32* %36, align 4
  %subttmp24 = sub nsw i32 %addtmp23, 1
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then12
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %38 = bitcast i8* %37 to %list_item__intp**
  %it16 = load %list_item__intp*, %list_item__intp** %38, align 8
  %39 = getelementptr inbounds %list_item__intp, %list_item__intp* %it16, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %39, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %cond_then_block17, label %cond_end18

cond_end15:                                       ; preds = %cond_end18, %cond_jump_then12
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %45 = bitcast i8* %44 to %list_item__intp**
  %it19 = load %list_item__intp*, %list_item__intp** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
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

define void @"list_delete_intp27_vi++10edit"(%list__intp* %self, i32 %position) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %position2 = alloca i32
  store i32 %position, i32* %position2, align 4
  %3 = bitcast i32* %position2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %position3 = load i32, i32* %position2, align 4
  %letmp = icmp slt i32 %position3, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %5 = bitcast i8* %4 to i32*
  %position4 = load i32, i32* %5, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %7 = bitcast i8* %6 to %list__intp**
  %self5 = load %list__intp*, %list__intp** %7, align 8
  %8 = getelementptr inbounds %list__intp, %list__intp* %self5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %addtmp = add nsw i32 %9, 1
  %addtmp6 = add nsw i32 %position4, %addtmp
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %11 = bitcast i8* %10 to i32*
  store i32 %addtmp6, i32* %11, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %13 = bitcast i8* %12 to %list__intp**
  %self7 = load %list__intp*, %list__intp** %13, align 8
  %14 = getelementptr inbounds %list__intp, %list__intp* %self7, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %addtmp8 = add nsw i32 %15, 1
  %subttmp = sub nsw i32 %addtmp6, %addtmp8
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %andand_result_var = alloca i1
  %position9 = load i32, i32* %position2, align 4
  %getmp = icmp sge i32 %position9, 0
  store i1 %getmp, i1* %andand_result_var, align 1
  br i1 %getmp, label %cond_jump_then10, label %cond_jump_end

cond_jump_then10:                                 ; preds = %cond_end
  %position11 = load i32, i32* %position2, align 4
  %self12 = load %list__intp*, %list__intp** %self1, align 8
  %16 = getelementptr inbounds %list__intp, %list__intp* %self12, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %letmp13 = icmp slt i32 %position11, %17
  %andand = and i1 %getmp, %letmp13
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then10, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then14, label %cond_end15

cond_jump_then14:                                 ; preds = %cond_jump_end
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %19 = bitcast i8* %18 to %list__intp**
  %self16 = load %list__intp*, %list__intp** %19, align 8
  %20 = getelementptr inbounds %list__intp, %list__intp* %self16, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmpX = icmp eq i32 %21, 1
  br i1 %eqtmpX, label %cond_jump_then17, label %"cond_jump_elif0\0A"

cond_end15:                                       ; preds = %cond_end18, %cond_jump_end
  %22 = bitcast [8192 x i8*]* %lvtable to i8*
  %23 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %22, i64 65536)
  ret void

cond_jump_then17:                                 ; preds = %cond_jump_then14
  br i1 true, label %cond_jump_then19, label %cond_end20

"cond_jump_elif0\0A":                             ; preds = %cond_jump_then14
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %25 = bitcast i8* %24 to %list__intp**
  %self29 = load %list__intp*, %list__intp** %25, align 8
  %26 = getelementptr inbounds %list__intp, %list__intp* %self29, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %eqtmpX30 = icmp eq i32 %27, 2
  br i1 %eqtmpX30, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %29 = bitcast i8* %28 to i32*
  %position31 = load i32, i32* %29, align 4
  %eqtmpX32 = icmp eq i32 %position31, 0
  br i1 %eqtmpX32, label %cond_jump_then33, label %cond_else_block34

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %31 = bitcast i8* %30 to %list__intp**
  %self73 = load %list__intp*, %list__intp** %31, align 8
  %32 = getelementptr inbounds %list__intp, %list__intp* %self73, i32 0, i32 0
  %33 = load %list_item__intp*, %list_item__intp** %32, align 8
  %it74 = alloca %list_item__intp*
  %34 = bitcast %list_item__intp** %it74 to i8*
  store i8* %34, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %33, %list_item__intp** %it74, align 8
  %i = alloca i32
  %35 = bitcast i32* %i to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end18:                                       ; preds = %cond_end_block, %cond_end35, %cond_end25
  br label %cond_end15

cond_jump_then19:                                 ; preds = %cond_jump_then17
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %37 = bitcast i8* %36 to %list__intp**
  %self21 = load %list__intp*, %list__intp** %37, align 8
  %38 = getelementptr inbounds %list__intp, %list__intp* %self21, i32 0, i32 0
  %39 = load %list_item__intp*, %list_item__intp** %38, align 8
  %40 = getelementptr inbounds %list_item__intp, %list_item__intp* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %40, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %cond_then_block, label %cond_end22

cond_end20:                                       ; preds = %cond_end22, %cond_jump_then17
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %46 = bitcast i8* %45 to %list__intp**
  %self23 = load %list__intp*, %list__intp** %46, align 8
  %47 = getelementptr inbounds %list__intp, %list__intp* %self23, i32 0, i32 0
  %48 = load %list_item__intp*, %list_item__intp** %47, align 8
  %49 = load %list_item__intp*, %list_item__intp** %47, align 8
  %50 = ptrtoint %list_item__intp* %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %cond_then_block24, label %cond_end25

cond_then_block:                                  ; preds = %cond_jump_then19
  br label %cond_end22

cond_end22:                                       ; preds = %cond_then_block, %cond_jump_then19
  %52 = bitcast i32* %42 to i8*
  call void @xfree(i8* %52)
  br label %cond_end20

cond_then_block24:                                ; preds = %cond_end20
  br label %cond_end25

cond_end25:                                       ; preds = %cond_then_block24, %cond_end20
  %53 = bitcast %list_item__intp* %49 to i8*
  call void @xfree(i8* %53)
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %55 = bitcast i8* %54 to %list__intp**
  %self26 = load %list__intp*, %list__intp** %55, align 8
  %56 = getelementptr inbounds %list__intp, %list__intp* %self26, i32 0, i32 0
  store %list_item__intp* null, %list_item__intp** %56, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %58 = bitcast i8* %57 to %list__intp**
  %self27 = load %list__intp*, %list__intp** %58, align 8
  %59 = getelementptr inbounds %list__intp, %list__intp* %self27, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %59, align 8
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %61 = bitcast i8* %60 to %list__intp**
  %self28 = load %list__intp*, %list__intp** %61, align 8
  %62 = getelementptr inbounds %list__intp, %list__intp* %self28, i32 0, i32 2
  store i32 0, i32* %62, align 4
  br label %cond_end18

cond_jump_then33:                                 ; preds = %"cond_jump_elif_then0\0A"
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %64 = bitcast i8* %63 to %list__intp**
  %self36 = load %list__intp*, %list__intp** %64, align 8
  %65 = getelementptr inbounds %list__intp, %list__intp* %self36, i32 0, i32 0
  %66 = load %list_item__intp*, %list_item__intp** %65, align 8
  %it = alloca %list_item__intp*
  %67 = bitcast %list_item__intp** %it to i8*
  store i8* %67, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %66, %list_item__intp** %it, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %69 = bitcast i8* %68 to %list__intp**
  %self37 = load %list__intp*, %list__intp** %69, align 8
  %it38 = load %list_item__intp*, %list_item__intp** %it, align 8
  %70 = getelementptr inbounds %list_item__intp, %list_item__intp* %it38, i32 0, i32 2
  %71 = load %list_item__intp*, %list_item__intp** %70, align 8
  %72 = getelementptr inbounds %list__intp, %list__intp* %self37, i32 0, i32 0
  store %list_item__intp* %71, %list_item__intp** %72, align 8
  %73 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %74 = bitcast i8* %73 to %list__intp**
  %self39 = load %list__intp*, %list__intp** %74, align 8
  %75 = getelementptr inbounds %list__intp, %list__intp* %self39, i32 0, i32 0
  %76 = load %list_item__intp*, %list_item__intp** %75, align 8
  %77 = getelementptr inbounds %list_item__intp, %list_item__intp* %76, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %77, align 8
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %79 = bitcast i8* %78 to %list__intp**
  %self40 = load %list__intp*, %list__intp** %79, align 8
  %80 = getelementptr inbounds %list__intp, %list__intp* %self40, i32 0, i32 0
  %81 = load %list_item__intp*, %list_item__intp** %80, align 8
  %82 = getelementptr inbounds %list_item__intp, %list_item__intp* %81, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %82, align 8
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %84 = bitcast i8* %83 to %list__intp**
  %self41 = load %list__intp*, %list__intp** %84, align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %86 = bitcast i8* %85 to %list__intp**
  %self42 = load %list__intp*, %list__intp** %86, align 8
  %87 = getelementptr inbounds %list__intp, %list__intp* %self42, i32 0, i32 0
  %88 = load %list_item__intp*, %list_item__intp** %87, align 8
  %89 = getelementptr inbounds %list__intp, %list__intp* %self41, i32 0, i32 1
  store %list_item__intp* %88, %list_item__intp** %89, align 8
  br i1 true, label %cond_jump_then43, label %cond_end44

cond_else_block34:                                ; preds = %"cond_jump_elif_then0\0A"
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %91 = bitcast i8* %90 to %list__intp**
  %self55 = load %list__intp*, %list__intp** %91, align 8
  %92 = getelementptr inbounds %list__intp, %list__intp* %self55, i32 0, i32 1
  %93 = load %list_item__intp*, %list_item__intp** %92, align 8
  %it56 = alloca %list_item__intp*
  %94 = bitcast %list_item__intp** %it56 to i8*
  store i8* %94, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  store %list_item__intp* %93, %list_item__intp** %it56, align 8
  %95 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %96 = bitcast i8* %95 to %list__intp**
  %self57 = load %list__intp*, %list__intp** %96, align 8
  %97 = getelementptr inbounds %list__intp, %list__intp* %self57, i32 0, i32 0
  %98 = load %list_item__intp*, %list_item__intp** %97, align 8
  %99 = getelementptr inbounds %list_item__intp, %list_item__intp* %98, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %99, align 8
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %101 = bitcast i8* %100 to %list__intp**
  %self58 = load %list__intp*, %list__intp** %101, align 8
  %102 = getelementptr inbounds %list__intp, %list__intp* %self58, i32 0, i32 0
  %103 = load %list_item__intp*, %list_item__intp** %102, align 8
  %104 = getelementptr inbounds %list_item__intp, %list_item__intp* %103, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %104, align 8
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %106 = bitcast i8* %105 to %list__intp**
  %self59 = load %list__intp*, %list__intp** %106, align 8
  %107 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %108 = bitcast i8* %107 to %list__intp**
  %self60 = load %list__intp*, %list__intp** %108, align 8
  %109 = getelementptr inbounds %list__intp, %list__intp* %self60, i32 0, i32 0
  %110 = load %list_item__intp*, %list_item__intp** %109, align 8
  %111 = getelementptr inbounds %list__intp, %list__intp* %self59, i32 0, i32 1
  store %list_item__intp* %110, %list_item__intp** %111, align 8
  br i1 true, label %cond_jump_then61, label %cond_end62

cond_end35:                                       ; preds = %cond_end68, %cond_end50
  br label %cond_end18

cond_jump_then43:                                 ; preds = %cond_jump_then33
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %113 = bitcast i8* %112 to %list_item__intp**
  %it45 = load %list_item__intp*, %list_item__intp** %113, align 8
  %114 = getelementptr inbounds %list_item__intp, %list_item__intp* %it45, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32*, i32** %114, align 8
  %117 = ptrtoint i32* %116 to i64
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %cond_then_block46, label %cond_end47

cond_end44:                                       ; preds = %cond_end47, %cond_jump_then33
  %it48 = load %list_item__intp*, %list_item__intp** %it, align 8
  %119 = load %list_item__intp*, %list_item__intp** %it, align 8
  %120 = ptrtoint %list_item__intp* %119 to i64
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %cond_then_block49, label %cond_end50

cond_then_block46:                                ; preds = %cond_jump_then43
  br label %cond_end47

cond_end47:                                       ; preds = %cond_then_block46, %cond_jump_then43
  %122 = bitcast i32* %116 to i8*
  call void @xfree(i8* %122)
  br label %cond_end44

cond_then_block49:                                ; preds = %cond_end44
  br label %cond_end50

cond_end50:                                       ; preds = %cond_then_block49, %cond_end44
  %123 = bitcast %list_item__intp* %119 to i8*
  call void @xfree(i8* %123)
  %124 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %125 = bitcast i8* %124 to %list__intp**
  %self51 = load %list__intp*, %list__intp** %125, align 8
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %127 = bitcast i8* %126 to %list__intp**
  %self52 = load %list__intp*, %list__intp** %127, align 8
  %128 = getelementptr inbounds %list__intp, %list__intp* %self52, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %subttmp53 = sub nsw i32 %129, 1
  %130 = getelementptr inbounds %list__intp, %list__intp* %self51, i32 0, i32 2
  store i32 %subttmp53, i32* %130, align 4
  %addtmp54 = add nsw i32 %subttmp53, 1
  br label %cond_end35

cond_jump_then61:                                 ; preds = %cond_else_block34
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %132 = bitcast i8* %131 to %list_item__intp**
  %it63 = load %list_item__intp*, %list_item__intp** %132, align 8
  %133 = getelementptr inbounds %list_item__intp, %list_item__intp* %it63, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %133, align 8
  %136 = ptrtoint i32* %135 to i64
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %cond_then_block64, label %cond_end65

cond_end62:                                       ; preds = %cond_end65, %cond_else_block34
  %it66 = load %list_item__intp*, %list_item__intp** %it56, align 8
  %138 = load %list_item__intp*, %list_item__intp** %it56, align 8
  %139 = ptrtoint %list_item__intp* %138 to i64
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %cond_then_block67, label %cond_end68

cond_then_block64:                                ; preds = %cond_jump_then61
  br label %cond_end65

cond_end65:                                       ; preds = %cond_then_block64, %cond_jump_then61
  %141 = bitcast i32* %135 to i8*
  call void @xfree(i8* %141)
  br label %cond_end62

cond_then_block67:                                ; preds = %cond_end62
  br label %cond_end68

cond_end68:                                       ; preds = %cond_then_block67, %cond_end62
  %142 = bitcast %list_item__intp* %138 to i8*
  call void @xfree(i8* %142)
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %144 = bitcast i8* %143 to %list__intp**
  %self69 = load %list__intp*, %list__intp** %144, align 8
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %146 = bitcast i8* %145 to %list__intp**
  %self70 = load %list__intp*, %list__intp** %146, align 8
  %147 = getelementptr inbounds %list__intp, %list__intp* %self70, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %subttmp71 = sub nsw i32 %148, 1
  %149 = getelementptr inbounds %list__intp, %list__intp* %self69, i32 0, i32 2
  store i32 %subttmp71, i32* %149, align 4
  %addtmp72 = add nsw i32 %subttmp71, 1
  br label %cond_end35

loop_top_block:                                   ; preds = %cond_end81, %cond_else_block
  %it75 = load %list_item__intp*, %list_item__intp** %it74, align 8
  %noteqtmp = icmp ne %list_item__intp* %it75, null
  br i1 %noteqtmp, label %cond_then_block76, label %cond_end_block

cond_then_block76:                                ; preds = %loop_top_block
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 384), align 8
  %151 = bitcast i8* %150 to i32*
  %position77 = load i32, i32* %151, align 4
  %152 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %153 = bitcast i8* %152 to i32*
  %i78 = load i32, i32* %153, align 4
  %eqtmpX79 = icmp eq i32 %position77, %i78
  br i1 %eqtmpX79, label %cond_jump_then80, label %cond_end81

cond_end_block:                                   ; preds = %cond_end88, %loop_top_block
  br label %cond_end18

cond_jump_then80:                                 ; preds = %cond_then_block76
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %155 = bitcast i8* %154 to i32*
  %i82 = load i32, i32* %155, align 4
  %eqtmpX83 = icmp eq i32 %i82, 0
  br i1 %eqtmpX83, label %cond_jump_then84, label %"cond_jump_elif0\0A85"

cond_end81:                                       ; preds = %after_break, %cond_then_block76
  %156 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %157 = bitcast i8* %156 to %list_item__intp**
  %it139 = load %list_item__intp*, %list_item__intp** %157, align 8
  %158 = getelementptr inbounds %list_item__intp, %list_item__intp* %it139, i32 0, i32 2
  %159 = load %list_item__intp*, %list_item__intp** %158, align 8
  %160 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %161 = bitcast i8* %160 to %list_item__intp**
  store %list_item__intp* %159, %list_item__intp** %161, align 8
  %162 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %163 = bitcast i8* %162 to i32*
  %i140 = load i32, i32* %163, align 4
  %addtmp141 = add nsw i32 %i140, 1
  %164 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %165 = bitcast i8* %164 to i32*
  store i32 %addtmp141, i32* %165, align 4
  %subttmp142 = sub nsw i32 %addtmp141, 1
  br label %loop_top_block

cond_jump_then84:                                 ; preds = %cond_jump_then80
  %166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %167 = bitcast i8* %166 to %list__intp**
  %self89 = load %list__intp*, %list__intp** %167, align 8
  %168 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %169 = bitcast i8* %168 to %list_item__intp**
  %it90 = load %list_item__intp*, %list_item__intp** %169, align 8
  %170 = getelementptr inbounds %list_item__intp, %list_item__intp* %it90, i32 0, i32 2
  %171 = load %list_item__intp*, %list_item__intp** %170, align 8
  %172 = getelementptr inbounds %list__intp, %list__intp* %self89, i32 0, i32 0
  store %list_item__intp* %171, %list_item__intp** %172, align 8
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %174 = bitcast i8* %173 to %list__intp**
  %self91 = load %list__intp*, %list__intp** %174, align 8
  %175 = getelementptr inbounds %list__intp, %list__intp* %self91, i32 0, i32 0
  %176 = load %list_item__intp*, %list_item__intp** %175, align 8
  %177 = getelementptr inbounds %list_item__intp, %list_item__intp* %176, i32 0, i32 1
  store %list_item__intp* null, %list_item__intp** %177, align 8
  br i1 true, label %cond_jump_then92, label %cond_end93

"cond_jump_elif0\0A85":                           ; preds = %cond_jump_then80
  %178 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 386), align 8
  %179 = bitcast i8* %178 to i32*
  %i104 = load i32, i32* %179, align 4
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %181 = bitcast i8* %180 to %list__intp**
  %self105 = load %list__intp*, %list__intp** %181, align 8
  %182 = getelementptr inbounds %list__intp, %list__intp* %self105, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %subttmp106 = sub nsw i32 %183, 1
  %eqtmpX107 = icmp eq i32 %i104, %subttmp106
  br i1 %eqtmpX107, label %"cond_jump_elif_then0\0A86", label %cond_else_block87

"cond_jump_elif_then0\0A86":                      ; preds = %"cond_jump_elif0\0A85"
  %184 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %185 = bitcast i8* %184 to %list__intp**
  %self108 = load %list__intp*, %list__intp** %185, align 8
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %187 = bitcast i8* %186 to %list_item__intp**
  %it109 = load %list_item__intp*, %list_item__intp** %187, align 8
  %188 = getelementptr inbounds %list_item__intp, %list_item__intp* %it109, i32 0, i32 1
  %189 = load %list_item__intp*, %list_item__intp** %188, align 8
  %190 = getelementptr inbounds %list__intp, %list__intp* %self108, i32 0, i32 1
  store %list_item__intp* %189, %list_item__intp** %190, align 8
  %191 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %192 = bitcast i8* %191 to %list__intp**
  %self110 = load %list__intp*, %list__intp** %192, align 8
  %193 = getelementptr inbounds %list__intp, %list__intp* %self110, i32 0, i32 1
  %194 = load %list_item__intp*, %list_item__intp** %193, align 8
  %195 = getelementptr inbounds %list_item__intp, %list_item__intp* %194, i32 0, i32 2
  store %list_item__intp* null, %list_item__intp** %195, align 8
  br i1 true, label %cond_jump_then111, label %cond_end112

cond_else_block87:                                ; preds = %"cond_jump_elif0\0A85"
  %196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %197 = bitcast i8* %196 to %list_item__intp**
  %it123 = load %list_item__intp*, %list_item__intp** %197, align 8
  %198 = getelementptr inbounds %list_item__intp, %list_item__intp* %it123, i32 0, i32 1
  %199 = load %list_item__intp*, %list_item__intp** %198, align 8
  %200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %201 = bitcast i8* %200 to %list_item__intp**
  %it124 = load %list_item__intp*, %list_item__intp** %201, align 8
  %202 = getelementptr inbounds %list_item__intp, %list_item__intp* %it124, i32 0, i32 2
  %203 = load %list_item__intp*, %list_item__intp** %202, align 8
  %204 = getelementptr inbounds %list_item__intp, %list_item__intp* %199, i32 0, i32 2
  store %list_item__intp* %203, %list_item__intp** %204, align 8
  %205 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %206 = bitcast i8* %205 to %list_item__intp**
  %it125 = load %list_item__intp*, %list_item__intp** %206, align 8
  %207 = getelementptr inbounds %list_item__intp, %list_item__intp* %it125, i32 0, i32 2
  %208 = load %list_item__intp*, %list_item__intp** %207, align 8
  %209 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %210 = bitcast i8* %209 to %list_item__intp**
  %it126 = load %list_item__intp*, %list_item__intp** %210, align 8
  %211 = getelementptr inbounds %list_item__intp, %list_item__intp* %it126, i32 0, i32 1
  %212 = load %list_item__intp*, %list_item__intp** %211, align 8
  %213 = getelementptr inbounds %list_item__intp, %list_item__intp* %208, i32 0, i32 1
  store %list_item__intp* %212, %list_item__intp** %213, align 8
  br i1 true, label %cond_jump_then127, label %cond_end128

cond_end88:                                       ; preds = %cond_end134, %cond_end118, %cond_end99
  br label %cond_end_block

cond_jump_then92:                                 ; preds = %cond_jump_then84
  %214 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %215 = bitcast i8* %214 to %list_item__intp**
  %it94 = load %list_item__intp*, %list_item__intp** %215, align 8
  %216 = getelementptr inbounds %list_item__intp, %list_item__intp* %it94, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32*, i32** %216, align 8
  %219 = ptrtoint i32* %218 to i64
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %cond_then_block95, label %cond_end96

cond_end93:                                       ; preds = %cond_end96, %cond_jump_then84
  %221 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %222 = bitcast i8* %221 to %list_item__intp**
  %it97 = load %list_item__intp*, %list_item__intp** %222, align 8
  %223 = load %list_item__intp*, %list_item__intp** %222, align 8
  %224 = ptrtoint %list_item__intp* %223 to i64
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %cond_then_block98, label %cond_end99

cond_then_block95:                                ; preds = %cond_jump_then92
  br label %cond_end96

cond_end96:                                       ; preds = %cond_then_block95, %cond_jump_then92
  %226 = bitcast i32* %218 to i8*
  call void @xfree(i8* %226)
  br label %cond_end93

cond_then_block98:                                ; preds = %cond_end93
  br label %cond_end99

cond_end99:                                       ; preds = %cond_then_block98, %cond_end93
  %227 = bitcast %list_item__intp* %223 to i8*
  call void @xfree(i8* %227)
  %228 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %229 = bitcast i8* %228 to %list__intp**
  %self100 = load %list__intp*, %list__intp** %229, align 8
  %230 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %231 = bitcast i8* %230 to %list__intp**
  %self101 = load %list__intp*, %list__intp** %231, align 8
  %232 = getelementptr inbounds %list__intp, %list__intp* %self101, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %subttmp102 = sub nsw i32 %233, 1
  %234 = getelementptr inbounds %list__intp, %list__intp* %self100, i32 0, i32 2
  store i32 %subttmp102, i32* %234, align 4
  %addtmp103 = add nsw i32 %subttmp102, 1
  br label %cond_end88

cond_jump_then111:                                ; preds = %"cond_jump_elif_then0\0A86"
  %235 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %236 = bitcast i8* %235 to %list_item__intp**
  %it113 = load %list_item__intp*, %list_item__intp** %236, align 8
  %237 = getelementptr inbounds %list_item__intp, %list_item__intp* %it113, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32*, i32** %237, align 8
  %240 = ptrtoint i32* %239 to i64
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %cond_then_block114, label %cond_end115

cond_end112:                                      ; preds = %cond_end115, %"cond_jump_elif_then0\0A86"
  %242 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %243 = bitcast i8* %242 to %list_item__intp**
  %it116 = load %list_item__intp*, %list_item__intp** %243, align 8
  %244 = load %list_item__intp*, %list_item__intp** %243, align 8
  %245 = ptrtoint %list_item__intp* %244 to i64
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %cond_then_block117, label %cond_end118

cond_then_block114:                               ; preds = %cond_jump_then111
  br label %cond_end115

cond_end115:                                      ; preds = %cond_then_block114, %cond_jump_then111
  %247 = bitcast i32* %239 to i8*
  call void @xfree(i8* %247)
  br label %cond_end112

cond_then_block117:                               ; preds = %cond_end112
  br label %cond_end118

cond_end118:                                      ; preds = %cond_then_block117, %cond_end112
  %248 = bitcast %list_item__intp* %244 to i8*
  call void @xfree(i8* %248)
  %249 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %250 = bitcast i8* %249 to %list__intp**
  %self119 = load %list__intp*, %list__intp** %250, align 8
  %251 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %252 = bitcast i8* %251 to %list__intp**
  %self120 = load %list__intp*, %list__intp** %252, align 8
  %253 = getelementptr inbounds %list__intp, %list__intp* %self120, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %subttmp121 = sub nsw i32 %254, 1
  %255 = getelementptr inbounds %list__intp, %list__intp* %self119, i32 0, i32 2
  store i32 %subttmp121, i32* %255, align 4
  %addtmp122 = add nsw i32 %subttmp121, 1
  br label %cond_end88

cond_jump_then127:                                ; preds = %cond_else_block87
  %256 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %257 = bitcast i8* %256 to %list_item__intp**
  %it129 = load %list_item__intp*, %list_item__intp** %257, align 8
  %258 = getelementptr inbounds %list_item__intp, %list_item__intp* %it129, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32*, i32** %258, align 8
  %261 = ptrtoint i32* %260 to i64
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %cond_then_block130, label %cond_end131

cond_end128:                                      ; preds = %cond_end131, %cond_else_block87
  %263 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 385), align 8
  %264 = bitcast i8* %263 to %list_item__intp**
  %it132 = load %list_item__intp*, %list_item__intp** %264, align 8
  %265 = load %list_item__intp*, %list_item__intp** %264, align 8
  %266 = ptrtoint %list_item__intp* %265 to i64
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %cond_then_block133, label %cond_end134

cond_then_block130:                               ; preds = %cond_jump_then127
  br label %cond_end131

cond_end131:                                      ; preds = %cond_then_block130, %cond_jump_then127
  %268 = bitcast i32* %260 to i8*
  call void @xfree(i8* %268)
  br label %cond_end128

cond_then_block133:                               ; preds = %cond_end128
  br label %cond_end134

cond_end134:                                      ; preds = %cond_then_block133, %cond_end128
  %269 = bitcast %list_item__intp* %265 to i8*
  call void @xfree(i8* %269)
  %270 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %271 = bitcast i8* %270 to %list__intp**
  %self135 = load %list__intp*, %list__intp** %271, align 8
  %272 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %273 = bitcast i8* %272 to %list__intp**
  %self136 = load %list__intp*, %list__intp** %273, align 8
  %274 = getelementptr inbounds %list__intp, %list__intp* %self136, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %subttmp137 = sub nsw i32 %275, 1
  %276 = getelementptr inbounds %list__intp, %list__intp* %self135, i32 0, i32 2
  store i32 %subttmp137, i32* %276, align 4
  %addtmp138 = add nsw i32 %subttmp137, 1
  br label %cond_end88

after_break:                                      ; No predecessors!
  br label %cond_end81
}

define void @"vi++10edit_lambda0"(%Vi* %self, i32 %key) {
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
  %6 = call i32 @ViWin_getKey-14(%ViWin* %5)
  %key24 = alloca i32
  %7 = bitcast i32* %key24 to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i32 %6, i32* %key24, align 4
  %key25 = load i32, i32* %key24, align 4
  %eqtmpY = icmp eq i32 %key25, 100
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block12, %cond_then_block9, %cond_then_block
  %self18 = load %Vi*, %Vi** %self1, align 8
  %8 = getelementptr inbounds %Vi, %Vi* %self18, i32 0, i32 1
  %9 = load %ViWin*, %ViWin** %8, align 8
  call void @ViWin_saveInputedKey-14(%ViWin* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

cond_then_block:                                  ; preds = %entry
  %self6 = load %Vi*, %Vi** %self1, align 8
  %12 = getelementptr inbounds %Vi, %Vi* %self6, i32 0, i32 1
  %13 = load %ViWin*, %ViWin** %12, align 8
  %self7 = load %Vi*, %Vi** %self1, align 8
  call void @ViWin_deleteOneLine-10(%ViWin* %13, %Vi* %self7)
  %self8 = load %Vi*, %Vi** %self1, align 8
  %14 = getelementptr inbounds %Vi, %Vi* %self8, i32 0, i32 1
  %15 = load %ViWin*, %ViWin** %14, align 8
  %16 = getelementptr inbounds %ViWin, %ViWin* %15, i32 0, i32 15
  store i1 true, i1* %16, align 1
  br label %end_block

cond_else_block:                                  ; preds = %after_break, %entry
  %eqtmpY11 = icmp eq i32 %key25, 119
  br i1 %eqtmpY11, label %cond_then_block9, label %cond_else_block10

after_break:                                      ; No predecessors!
  br label %cond_else_block

cond_then_block9:                                 ; preds = %cond_else_block10, %cond_else_block
  %self14 = load %Vi*, %Vi** %self1, align 8
  %17 = getelementptr inbounds %Vi, %Vi* %self14, i32 0, i32 1
  %18 = load %ViWin*, %ViWin** %17, align 8
  %self15 = load %Vi*, %Vi** %self1, align 8
  call void @ViWin_deleteWord-10(%ViWin* %18, %Vi* %self15)
  %self16 = load %Vi*, %Vi** %self1, align 8
  %19 = getelementptr inbounds %Vi, %Vi* %self16, i32 0, i32 1
  %20 = load %ViWin*, %ViWin** %19, align 8
  %21 = getelementptr inbounds %ViWin, %ViWin* %20, i32 0, i32 15
  store i1 true, i1* %21, align 1
  br label %end_block

cond_else_block10:                                ; preds = %cond_else_block
  %eqtmpY13 = icmp eq i32 %key25, 101
  br i1 %eqtmpY13, label %cond_then_block9, label %cond_else_block12

cond_else_block12:                                ; preds = %after_break17, %cond_else_block10
  br label %end_block

after_break17:                                    ; No predecessors!
  br label %cond_else_block12
}

define i1 @"vector_replace_lambdap34_vi++10edit"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++10edit_lambda1"(%Vi* %self, i32 %key) {
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
  %6 = call i32 @ViWin_getKey-14(%ViWin* %5)
  %key24 = alloca i32
  %7 = bitcast i32* %key24 to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  store i32 %6, i32* %key24, align 4
  %key25 = load i32, i32* %key24, align 4
  %eqtmpY = icmp eq i32 %key25, 119
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block6, %cond_then_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_then_block:                                  ; preds = %cond_else_block, %entry
  %self8 = load %Vi*, %Vi** %self1, align 8
  %10 = getelementptr inbounds %Vi, %Vi* %self8, i32 0, i32 1
  %11 = load %ViWin*, %ViWin** %10, align 8
  %self9 = load %Vi*, %Vi** %self1, align 8
  call void @ViWin_deleteWord-10(%ViWin* %11, %Vi* %self9)
  %self10 = load %Vi*, %Vi** %self1, align 8
  call void @Vi_enterInsertMode-5(%Vi* %self10)
  %self11 = load %Vi*, %Vi** %self1, align 8
  %12 = getelementptr inbounds %Vi, %Vi* %self11, i32 0, i32 1
  %13 = load %ViWin*, %ViWin** %12, align 8
  %14 = getelementptr inbounds %ViWin, %ViWin* %13, i32 0, i32 15
  store i1 true, i1* %14, align 1
  br label %end_block

cond_else_block:                                  ; preds = %entry
  %eqtmpY7 = icmp eq i32 %key25, 101
  br i1 %eqtmpY7, label %cond_then_block, label %cond_else_block6

cond_else_block6:                                 ; preds = %after_break, %cond_else_block
  br label %end_block

after_break:                                      ; No predecessors!
  br label %cond_else_block6
}

define i1 @"vector_replace_lambdap35_vi++10edit"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++10edit_lambda2"(%Vi* %self, i32 %key) {
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
  call void @ViWin_deleteAfterCursor-10(%ViWin* %5)
  %self4 = load %Vi*, %Vi** %self1, align 8
  call void @Vi_enterInsertMode-5(%Vi* %self4)
  %self5 = load %Vi*, %Vi** %self1, align 8
  %6 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 1
  %7 = load %ViWin*, %ViWin** %6, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %7, i32 0, i32 15
  store i1 true, i1* %8, align 1
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap36_vi++10edit"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++10edit_lambda3"(%Vi* %self, i32 %key) {
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
  call void @ViWin_deleteAfterCursor-10(%ViWin* %5)
  %self4 = load %Vi*, %Vi** %self1, align 8
  %6 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 1
  %7 = load %ViWin*, %ViWin** %6, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %7, i32 0, i32 15
  store i1 true, i1* %8, align 1
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap37_vi++10edit"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++10edit_lambda4"(%Vi* %self, i32 %key) {
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
  call void @ViWin_deleteCursorCharactor-10(%ViWin* %5)
  %self4 = load %Vi*, %Vi** %self1, align 8
  %6 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 1
  %7 = load %ViWin*, %ViWin** %6, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %7, i32 0, i32 15
  store i1 true, i1* %8, align 1
  %self5 = load %Vi*, %Vi** %self1, align 8
  %9 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 1
  %10 = load %ViWin*, %ViWin** %9, align 8
  call void @ViWin_saveInputedKey-14(%ViWin* %10)
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap38_vi++10edit"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++10edit_lambda5"(%Vi* %self, i32 %key) {
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
  call void @ViWin_joinLines-10(%ViWin* %5)
  %self4 = load %Vi*, %Vi** %self1, align 8
  %6 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 1
  %7 = load %ViWin*, %ViWin** %6, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %7, i32 0, i32 15
  store i1 true, i1* %8, align 1
  %self5 = load %Vi*, %Vi** %self1, align 8
  %9 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 1
  %10 = load %ViWin*, %ViWin** %9, align 8
  call void @ViWin_saveInputedKey-14(%ViWin* %10)
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap39_vi++10edit"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++10edit_lambda6"(%Vi* %self, i32 %key) {
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
  call void @ViWin_deleteAfterCursor-10(%ViWin* %5)
  %self4 = load %Vi*, %Vi** %self1, align 8
  %6 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 1
  %7 = load %ViWin*, %ViWin** %6, align 8
  %8 = getelementptr inbounds %ViWin, %ViWin* %7, i32 0, i32 15
  store i1 true, i1* %8, align 1
  %self5 = load %Vi*, %Vi** %self1, align 8
  %9 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 1
  %10 = load %ViWin*, %ViWin** %9, align 8
  call void @ViWin_saveInputedKey-14(%ViWin* %10)
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap40_vi++10edit"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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
