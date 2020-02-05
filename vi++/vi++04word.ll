; ModuleID = 'Module vi++04word'
source_filename = "Module vi++04word"

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
@global_string = private constant [1 x i8] zeroinitializer, align 1
@global_string.1 = private constant [1 x i8] zeroinitializer, align 1
@global_string.2 = private constant [1 x i8] zeroinitializer, align 1
@global_string.3 = private constant [1 x i8] zeroinitializer, align 1
@global_string.4 = private constant [1 x i8] zeroinitializer, align 1
@global_string.5 = private constant [1 x i8] zeroinitializer, align 1
@global_string.6 = private constant [1 x i8] zeroinitializer, align 1
@global_string.7 = private constant [1 x i8] zeroinitializer, align 1
@global_string.8 = private constant [1 x i8] zeroinitializer, align 1
@global_string.9 = private constant [1 x i8] zeroinitializer, align 1
@global_string.10 = private constant [1 x i8] zeroinitializer, align 1
@global_string.11 = private constant [1 x i8] zeroinitializer, align 1
@global_string.12 = private constant [1 x i8] zeroinitializer, align 1
@global_string.13 = private constant [1 x i8] zeroinitializer, align 1
@global_string.14 = private constant [1 x i8] zeroinitializer, align 1
@global_string.15 = private constant [1 x i8] zeroinitializer, align 1
@global_string.16 = private constant [1 x i8] zeroinitializer, align 1
@global_string.17 = private constant [1 x i8] zeroinitializer, align 1
@global_string.18 = private constant [1 x i8] zeroinitializer, align 1
@global_string.19 = private constant [1 x i8] zeroinitializer, align 1
@global_string.20 = private constant [1 x i8] zeroinitializer, align 1

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

define void @ViWin_forwardWord-4(%ViWin* %self) {
entry:
  %result_variable518 = alloca i32
  %str513 = alloca i32*
  %result_variable484 = alloca i32
  %str481 = alloca i32*
  %result_variable451 = alloca i32
  %str446 = alloca i32*
  %result_variable417 = alloca i32
  %str414 = alloca i32*
  %result_variable384 = alloca i32
  %str379 = alloca i32*
  %result_variable350 = alloca i32
  %str347 = alloca i32*
  %result_variable317 = alloca i32
  %str312 = alloca i32*
  %result_variable283 = alloca i32
  %str280 = alloca i32*
  %result_variable136 = alloca i32
  %str131 = alloca i32*
  %result_variable = alloca i32
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
  %9 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string, i32 0, i32 0))
  %10 = call i32* @"list_item_intp0_vi++04word"(%list__intp* %4, i32 %addtmp, i32* %9)
  %line = alloca i32*
  %11 = bitcast i32** %line to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32* %10, i32** %line, align 8
  %line5 = load i32*, i32** %line, align 8
  %self6 = load %ViWin*, %ViWin** %self1, align 8
  %12 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = ptrtoint i32* %line5 to i64
  %sext1 = sext i32 %13 to i64
  %multtmp = mul nsw i64 %sext1, 4
  %addtmp7 = add nsw i64 %14, %multtmp
  %15 = inttoptr i64 %addtmp7 to i32*
  %p = alloca i32*
  %16 = bitcast i32** %p to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %15, i32** %p, align 8
  %self8 = load %ViWin*, %ViWin** %self1, align 8
  %17 = getelementptr inbounds %ViWin, %ViWin* %self8, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %line9 = load i32*, i32** %line, align 8
  %19 = call i64 @wcslen(i32* %line9)
  %20 = trunc i64 %19 to i32
  %eqtmpX = icmp eq i32 %18, %20
  %21 = ptrtoint i32* %9 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block, label %cond_end10

cond_jump_then:                                   ; preds = %cond_end10
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %24 = bitcast i8* %23 to %ViWin**
  %self11 = load %ViWin*, %ViWin** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %26 = bitcast i8* %25 to %ViWin**
  %self12 = load %ViWin*, %ViWin** %26, align 8
  %27 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %addtmp13 = add nsw i32 %28, 1
  %29 = getelementptr inbounds %ViWin, %ViWin* %self11, i32 0, i32 6
  store i32 %addtmp13, i32* %29, align 4
  %subttmp = sub nsw i32 %addtmp13, 1
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %31 = bitcast i8* %30 to %ViWin**
  %self14 = load %ViWin*, %ViWin** %31, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self14)
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %33 = bitcast i8* %32 to %ViWin**
  %self15 = load %ViWin*, %ViWin** %33, align 8
  %34 = getelementptr inbounds %ViWin, %ViWin* %self15, i32 0, i32 1
  %35 = load %list__intp*, %list__intp** %34, align 8
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %37 = bitcast i8* %36 to %ViWin**
  %self16 = load %ViWin*, %ViWin** %37, align 8
  %38 = getelementptr inbounds %ViWin, %ViWin* %self16, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %41 = bitcast i8* %40 to %ViWin**
  %self17 = load %ViWin*, %ViWin** %41, align 8
  %42 = getelementptr inbounds %ViWin, %ViWin* %self17, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %addtmp18 = add nsw i32 %39, %43
  %44 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.1, i32 0, i32 0))
  %45 = call i32* @"list_item_intp1_vi++04word"(%list__intp* %35, i32 %addtmp18, i32* %44)
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %47 = bitcast i8* %46 to i32**
  store i32* %45, i32** %47, align 8
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %49 = bitcast i8* %48 to %ViWin**
  %self19 = load %ViWin*, %ViWin** %49, align 8
  %50 = getelementptr inbounds %ViWin, %ViWin* %self19, i32 0, i32 7
  store i32 0, i32* %50, align 4
  %51 = ptrtoint i32* %44 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %cond_then_block20, label %cond_end21

cond_end:                                         ; preds = %cond_end21, %cond_end10
  %line22 = load i32*, i32** %line, align 8
  %53 = call i64 @wcslen(i32* %line22)
  %eqtmpX23 = icmp eq i64 %53, 0
  br i1 %eqtmpX23, label %cond_jump_then24, label %"cond_jump_elif0\0A"

cond_then_block:                                  ; preds = %entry
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block, %entry
  %54 = bitcast i32* %9 to i8*
  call void @xfree(i8* %54)
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_then_block20:                                ; preds = %cond_jump_then
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_jump_then
  %55 = bitcast i32* %44 to i8*
  call void @xfree(i8* %55)
  br label %cond_end

cond_jump_then24:                                 ; preds = %cond_end
  br label %loop_top_block

"cond_jump_elif0\0A":                             ; preds = %cond_end
  %oror_result_var = alloca i1
  %andand_result_var = alloca i1
  %p48 = load i32*, i32** %p, align 8
  %derefference_value = load i32, i32* %p48, align 8
  %getmp49 = icmp sge i32 %derefference_value, 97
  store i1 %getmp49, i1* %andand_result_var, align 1
  br i1 %getmp49, label %cond_jump_then50, label %cond_jump_end

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end54
  br label %loop_top_block66

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end54
  %oror_result_var150 = alloca i1
  %oror_result_var151 = alloca i1
  %oror_result_var152 = alloca i1
  %andand_result_var153 = alloca i1
  %p154 = load i32*, i32** %p, align 8
  %derefference_value155 = load i32, i32* %p154, align 8
  %getmp156 = icmp sge i32 %derefference_value155, 33
  store i1 %getmp156, i1* %andand_result_var153, align 1
  br i1 %getmp156, label %cond_jump_then157, label %cond_jump_end158

"cond_jump_elif_then1\0A":                        ; preds = %cond_jump_end195
  br label %loop_top_block209

"cond_jump_elif2\0A":                             ; preds = %cond_jump_end195
  %p331 = load i32*, i32** %p, align 8
  %derefference_value332 = load i32, i32* %p331, align 8
  %56 = call i32 @iswalpha(i32 %derefference_value332)
  %57 = trunc i32 %56 to i1
  br i1 %57, label %"cond_jump_elif_then2\0A", label %"cond_jump_elif3\0A"

"cond_jump_elif_then2\0A":                        ; preds = %"cond_jump_elif2\0A"
  br label %loop_top_block333

"cond_jump_elif3\0A":                             ; preds = %"cond_jump_elif2\0A"
  %p398 = load i32*, i32** %p, align 8
  %derefference_value399 = load i32, i32* %p398, align 8
  %58 = call i32 @iswblank(i32 %derefference_value399)
  %59 = trunc i32 %58 to i1
  br i1 %59, label %"cond_jump_elif_then3\0A", label %"cond_jump_elif4\0A"

"cond_jump_elif_then3\0A":                        ; preds = %"cond_jump_elif3\0A"
  br label %loop_top_block400

"cond_jump_elif4\0A":                             ; preds = %"cond_jump_elif3\0A"
  %p465 = load i32*, i32** %p, align 8
  %derefference_value466 = load i32, i32* %p465, align 8
  %60 = call i32 @iswdigit(i32 %derefference_value466)
  %61 = trunc i32 %60 to i1
  br i1 %61, label %"cond_jump_elif_then4\0A", label %cond_end25

"cond_jump_elif_then4\0A":                        ; preds = %"cond_jump_elif4\0A"
  br label %loop_top_block467

cond_end25:                                       ; preds = %cond_end_block471, %"cond_jump_elif4\0A", %cond_end_block404, %cond_end_block337, %cond_end_block270, %cond_end_block95, %cond_end_block
  %62 = bitcast [8192 x i8*]* %lvtable to i8*
  %63 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %62, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end46, %cond_jump_then24
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %65 = bitcast i8* %64 to i32**
  %line26 = load i32*, i32** %65, align 8
  %66 = call i64 @wcslen(i32* %line26)
  %eqtmpX27 = icmp eq i64 %66, 0
  br i1 %eqtmpX27, label %cond_then_block28, label %cond_end_block

cond_then_block28:                                ; preds = %loop_top_block
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %68 = bitcast i8* %67 to %ViWin**
  %self29 = load %ViWin*, %ViWin** %68, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %70 = bitcast i8* %69 to %ViWin**
  %self30 = load %ViWin*, %ViWin** %70, align 8
  %71 = getelementptr inbounds %ViWin, %ViWin* %self30, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %addtmp31 = add nsw i32 %72, 1
  %73 = getelementptr inbounds %ViWin, %ViWin* %self29, i32 0, i32 6
  store i32 %addtmp31, i32* %73, align 4
  %subttmp32 = sub nsw i32 %addtmp31, 1
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %75 = bitcast i8* %74 to %ViWin**
  %self33 = load %ViWin*, %ViWin** %75, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self33)
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %77 = bitcast i8* %76 to %ViWin**
  %self34 = load %ViWin*, %ViWin** %77, align 8
  %78 = getelementptr inbounds %ViWin, %ViWin* %self34, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %81 = bitcast i8* %80 to %ViWin**
  %self35 = load %ViWin*, %ViWin** %81, align 8
  %82 = getelementptr inbounds %ViWin, %ViWin* %self35, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %addtmp36 = add nsw i32 %79, %83
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %85 = bitcast i8* %84 to %ViWin**
  %self37 = load %ViWin*, %ViWin** %85, align 8
  %86 = getelementptr inbounds %ViWin, %ViWin* %self37, i32 0, i32 1
  %87 = load %list__intp*, %list__intp** %86, align 8
  %88 = call i32 @"list_length_intp2_vi++04word"(%list__intp* %87)
  %subttmp38 = sub nsw i32 %88, 1
  %getmp = icmp sge i32 %addtmp36, %subttmp38
  br i1 %getmp, label %cond_jump_then39, label %cond_end40

cond_end_block:                                   ; preds = %cond_jump_then39, %loop_top_block
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %90 = bitcast i8* %89 to %ViWin**
  %self47 = load %ViWin*, %ViWin** %90, align 8
  %91 = getelementptr inbounds %ViWin, %ViWin* %self47, i32 0, i32 7
  store i32 0, i32* %91, align 4
  br label %cond_end25

cond_jump_then39:                                 ; preds = %cond_then_block28
  br label %cond_end_block

cond_end40:                                       ; preds = %after_break, %cond_then_block28
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %93 = bitcast i8* %92 to %ViWin**
  %self41 = load %ViWin*, %ViWin** %93, align 8
  %94 = getelementptr inbounds %ViWin, %ViWin* %self41, i32 0, i32 1
  %95 = load %list__intp*, %list__intp** %94, align 8
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %97 = bitcast i8* %96 to %ViWin**
  %self42 = load %ViWin*, %ViWin** %97, align 8
  %98 = getelementptr inbounds %ViWin, %ViWin* %self42, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %101 = bitcast i8* %100 to %ViWin**
  %self43 = load %ViWin*, %ViWin** %101, align 8
  %102 = getelementptr inbounds %ViWin, %ViWin* %self43, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %addtmp44 = add nsw i32 %99, %103
  %104 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.2, i32 0, i32 0))
  %105 = call i32* @"list_item_intp3_vi++04word"(%list__intp* %95, i32 %addtmp44, i32* %104)
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %107 = bitcast i8* %106 to i32**
  store i32* %105, i32** %107, align 8
  %108 = ptrtoint i32* %104 to i64
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %cond_then_block45, label %cond_end46

after_break:                                      ; No predecessors!
  br label %cond_end40

cond_then_block45:                                ; preds = %cond_end40
  br label %cond_end46

cond_end46:                                       ; preds = %cond_then_block45, %cond_end40
  %110 = bitcast i32* %104 to i8*
  call void @xfree(i8* %110)
  br label %loop_top_block

cond_jump_then50:                                 ; preds = %"cond_jump_elif0\0A"
  %p51 = load i32*, i32** %p, align 8
  %derefference_value52 = load i32, i32* %p51, align 8
  %leeqtmp = icmp sle i32 %derefference_value52, 122
  %andand = and i1 %getmp49, %leeqtmp
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then50, %"cond_jump_elif0\0A"
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  store i1 %andand_result_value, i1* %oror_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_end54, label %cond_jump_then53

cond_jump_then53:                                 ; preds = %cond_jump_end
  %andand_result_var55 = alloca i1
  %p56 = load i32*, i32** %p, align 8
  %derefference_value57 = load i32, i32* %p56, align 8
  %getmp58 = icmp sge i32 %derefference_value57, 65
  store i1 %getmp58, i1* %andand_result_var55, align 1
  br i1 %getmp58, label %cond_jump_then59, label %cond_jump_end60

cond_jump_end54:                                  ; preds = %cond_jump_end60, %cond_jump_end
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

cond_jump_then59:                                 ; preds = %cond_jump_then53
  %p61 = load i32*, i32** %p, align 8
  %derefference_value62 = load i32, i32* %p61, align 8
  %leeqtmp63 = icmp sle i32 %derefference_value62, 90
  %andand64 = and i1 %getmp58, %leeqtmp63
  store i1 %andand64, i1* %andand_result_var55, align 1
  br label %cond_jump_end60

cond_jump_end60:                                  ; preds = %cond_jump_then59, %cond_jump_then53
  %andand_result_value65 = load i1, i1* %andand_result_var55, align 1
  %oror = or i1 %andand_result_value, %andand_result_value65
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end54

loop_top_block66:                                 ; preds = %cond_end108, %"cond_jump_elif_then0\0A"
  %oror_result_var67 = alloca i1
  %andand_result_var68 = alloca i1
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %112 = bitcast i8* %111 to i32**
  %p69 = load i32*, i32** %112, align 8
  %derefference_value70 = load i32, i32* %p69, align 8
  %getmp71 = icmp sge i32 %derefference_value70, 97
  store i1 %getmp71, i1* %andand_result_var68, align 1
  br i1 %getmp71, label %cond_jump_then72, label %cond_jump_end73

cond_jump_then72:                                 ; preds = %loop_top_block66
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %114 = bitcast i8* %113 to i32**
  %p74 = load i32*, i32** %114, align 8
  %derefference_value75 = load i32, i32* %p74, align 8
  %leeqtmp76 = icmp sle i32 %derefference_value75, 122
  %andand77 = and i1 %getmp71, %leeqtmp76
  store i1 %andand77, i1* %andand_result_var68, align 1
  br label %cond_jump_end73

cond_jump_end73:                                  ; preds = %cond_jump_then72, %loop_top_block66
  %andand_result_value78 = load i1, i1* %andand_result_var68, align 1
  store i1 %andand_result_value78, i1* %oror_result_var67, align 1
  br i1 %andand_result_value78, label %cond_jump_end80, label %cond_jump_then79

cond_jump_then79:                                 ; preds = %cond_jump_end73
  %andand_result_var81 = alloca i1
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %116 = bitcast i8* %115 to i32**
  %p82 = load i32*, i32** %116, align 8
  %derefference_value83 = load i32, i32* %p82, align 8
  %getmp84 = icmp sge i32 %derefference_value83, 65
  store i1 %getmp84, i1* %andand_result_var81, align 1
  br i1 %getmp84, label %cond_jump_then85, label %cond_jump_end86

cond_jump_end80:                                  ; preds = %cond_jump_end86, %cond_jump_end73
  %oror_result_value93 = load i1, i1* %oror_result_var67, align 1
  br i1 %oror_result_value93, label %cond_then_block94, label %cond_end_block95

cond_jump_then85:                                 ; preds = %cond_jump_then79
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %118 = bitcast i8* %117 to i32**
  %p87 = load i32*, i32** %118, align 8
  %derefference_value88 = load i32, i32* %p87, align 8
  %leeqtmp89 = icmp sle i32 %derefference_value88, 90
  %andand90 = and i1 %getmp84, %leeqtmp89
  store i1 %andand90, i1* %andand_result_var81, align 1
  br label %cond_jump_end86

cond_jump_end86:                                  ; preds = %cond_jump_then85, %cond_jump_then79
  %andand_result_value91 = load i1, i1* %andand_result_var81, align 1
  %oror92 = or i1 %andand_result_value78, %andand_result_value91
  store i1 %oror92, i1* %oror_result_var67, align 1
  br label %cond_jump_end80

cond_then_block94:                                ; preds = %cond_jump_end80
  %119 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %120 = bitcast i8* %119 to i32**
  %p96 = load i32*, i32** %120, align 8
  %121 = ptrtoint i32* %p96 to i64
  %addtmp97 = add nsw i64 %121, 4
  %122 = inttoptr i64 %addtmp97 to i32*
  %123 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %124 = bitcast i8* %123 to i32**
  store i32* %122, i32** %124, align 8
  %125 = ptrtoint i32* %122 to i64
  %subtmp = sub nsw i64 %125, 4
  %126 = inttoptr i64 %subtmp to i32*
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %128 = bitcast i8* %127 to %ViWin**
  %self98 = load %ViWin*, %ViWin** %128, align 8
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %130 = bitcast i8* %129 to %ViWin**
  %self99 = load %ViWin*, %ViWin** %130, align 8
  %131 = getelementptr inbounds %ViWin, %ViWin* %self99, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %addtmp100 = add nsw i32 %132, 1
  %133 = getelementptr inbounds %ViWin, %ViWin* %self98, i32 0, i32 7
  store i32 %addtmp100, i32* %133, align 4
  %subttmp101 = sub nsw i32 %addtmp100, 1
  %134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %135 = bitcast i8* %134 to %ViWin**
  %self102 = load %ViWin*, %ViWin** %135, align 8
  %136 = getelementptr inbounds %ViWin, %ViWin* %self102, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %139 = bitcast i8* %138 to i32**
  %line103 = load i32*, i32** %139, align 8
  store i32* %line103, i32** %str, align 8
  br label %length

cond_end_block95:                                 ; preds = %inline_func_end135, %cond_jump_end80
  br label %cond_end25

length:                                           ; preds = %cond_then_block94
  %140 = bitcast i32** %str to i8*
  store i8* %140, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str104 = load i32*, i32** %str, align 8
  %141 = call i64 @wcslen(i32* %str104)
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %result_variable, align 4
  br label %inline_func_end

inline_func_end:                                  ; preds = %length
  %result_variable105 = load i32, i32* %result_variable, align 4
  %getmp106 = icmp sge i32 %137, %result_variable105
  br i1 %getmp106, label %cond_jump_then107, label %cond_end108

cond_jump_then107:                                ; preds = %inline_func_end
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %144 = bitcast i8* %143 to %ViWin**
  %self109 = load %ViWin*, %ViWin** %144, align 8
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %146 = bitcast i8* %145 to %ViWin**
  %self110 = load %ViWin*, %ViWin** %146, align 8
  %147 = getelementptr inbounds %ViWin, %ViWin* %self110, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %addtmp111 = add nsw i32 %148, 1
  %149 = getelementptr inbounds %ViWin, %ViWin* %self109, i32 0, i32 6
  store i32 %addtmp111, i32* %149, align 4
  %subttmp112 = sub nsw i32 %addtmp111, 1
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %151 = bitcast i8* %150 to %ViWin**
  %self113 = load %ViWin*, %ViWin** %151, align 8
  %152 = getelementptr inbounds %ViWin, %ViWin* %self113, i32 0, i32 8
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %155 = bitcast i8* %154 to %ViWin**
  %self114 = load %ViWin*, %ViWin** %155, align 8
  %156 = getelementptr inbounds %ViWin, %ViWin* %self114, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %addtmp115 = add nsw i32 %153, %157
  %158 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %159 = bitcast i8* %158 to %ViWin**
  %self116 = load %ViWin*, %ViWin** %159, align 8
  %160 = getelementptr inbounds %ViWin, %ViWin* %self116, i32 0, i32 1
  %161 = load %list__intp*, %list__intp** %160, align 8
  %162 = call i32 @"list_length_intp4_vi++04word"(%list__intp* %161)
  %subttmp117 = sub nsw i32 %162, 1
  %gttmp = icmp sgt i32 %addtmp115, %subttmp117
  br i1 %gttmp, label %cond_jump_then118, label %cond_end119

cond_end108:                                      ; preds = %cond_end149, %inline_func_end
  br label %loop_top_block66

cond_jump_then118:                                ; preds = %cond_jump_then107
  %163 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %164 = bitcast i8* %163 to %ViWin**
  %self120 = load %ViWin*, %ViWin** %164, align 8
  %165 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %166 = bitcast i8* %165 to %ViWin**
  %self121 = load %ViWin*, %ViWin** %166, align 8
  %167 = getelementptr inbounds %ViWin, %ViWin* %self121, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %subttmp122 = sub nsw i32 %168, 1
  %169 = getelementptr inbounds %ViWin, %ViWin* %self120, i32 0, i32 6
  store i32 %subttmp122, i32* %169, align 4
  %addtmp123 = add nsw i32 %subttmp122, 1
  %170 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %171 = bitcast i8* %170 to %ViWin**
  %self124 = load %ViWin*, %ViWin** %171, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self124)
  %172 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %173 = bitcast i8* %172 to %ViWin**
  %self125 = load %ViWin*, %ViWin** %173, align 8
  %174 = getelementptr inbounds %ViWin, %ViWin* %self125, i32 0, i32 1
  %175 = load %list__intp*, %list__intp** %174, align 8
  %176 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %177 = bitcast i8* %176 to %ViWin**
  %self126 = load %ViWin*, %ViWin** %177, align 8
  %178 = getelementptr inbounds %ViWin, %ViWin* %self126, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %181 = bitcast i8* %180 to %ViWin**
  %self127 = load %ViWin*, %ViWin** %181, align 8
  %182 = getelementptr inbounds %ViWin, %ViWin* %self127, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %addtmp128 = add nsw i32 %179, %183
  %184 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.3, i32 0, i32 0))
  %185 = call i32* @"list_item_intp5_vi++04word"(%list__intp* %175, i32 %addtmp128, i32* %184)
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %187 = bitcast i8* %186 to i32**
  store i32* %185, i32** %187, align 8
  %188 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %189 = bitcast i8* %188 to %ViWin**
  %self129 = load %ViWin*, %ViWin** %189, align 8
  %190 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %191 = bitcast i8* %190 to i32**
  %line130 = load i32*, i32** %191, align 8
  store i32* %line130, i32** %str131, align 8
  %192 = ptrtoint i32* %184 to i64
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %cond_then_block133, label %cond_end134

cond_end119:                                      ; preds = %after_break140, %cond_jump_then107
  %194 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %195 = bitcast i8* %194 to %ViWin**
  %self141 = load %ViWin*, %ViWin** %195, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self141)
  %196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %197 = bitcast i8* %196 to %ViWin**
  %self142 = load %ViWin*, %ViWin** %197, align 8
  %198 = getelementptr inbounds %ViWin, %ViWin* %self142, i32 0, i32 1
  %199 = load %list__intp*, %list__intp** %198, align 8
  %200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %201 = bitcast i8* %200 to %ViWin**
  %self143 = load %ViWin*, %ViWin** %201, align 8
  %202 = getelementptr inbounds %ViWin, %ViWin* %self143, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %205 = bitcast i8* %204 to %ViWin**
  %self144 = load %ViWin*, %ViWin** %205, align 8
  %206 = getelementptr inbounds %ViWin, %ViWin* %self144, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %addtmp145 = add nsw i32 %203, %207
  %208 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.4, i32 0, i32 0))
  %209 = call i32* @"list_item_intp6_vi++04word"(%list__intp* %199, i32 %addtmp145, i32* %208)
  %210 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %211 = bitcast i8* %210 to i32**
  store i32* %209, i32** %211, align 8
  %212 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %213 = bitcast i8* %212 to i32**
  %line146 = load i32*, i32** %213, align 8
  %214 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %215 = bitcast i8* %214 to i32**
  store i32* %line146, i32** %215, align 8
  %216 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %217 = bitcast i8* %216 to %ViWin**
  %self147 = load %ViWin*, %ViWin** %217, align 8
  %218 = getelementptr inbounds %ViWin, %ViWin* %self147, i32 0, i32 7
  store i32 0, i32* %218, align 4
  %219 = ptrtoint i32* %208 to i64
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %cond_then_block148, label %cond_end149

length132:                                        ; preds = %cond_end134
  %221 = bitcast i32** %str131 to i8*
  store i8* %221, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str137 = load i32*, i32** %str131, align 8
  %222 = call i64 @wcslen(i32* %str137)
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %result_variable136, align 4
  br label %inline_func_end135

cond_then_block133:                               ; preds = %cond_jump_then118
  br label %cond_end134

cond_end134:                                      ; preds = %cond_then_block133, %cond_jump_then118
  %224 = bitcast i32* %184 to i8*
  call void @xfree(i8* %224)
  br label %length132

inline_func_end135:                               ; preds = %length132
  %result_variable138 = load i32, i32* %result_variable136, align 4
  %subttmp139 = sub nsw i32 %result_variable138, 1
  %225 = getelementptr inbounds %ViWin, %ViWin* %self129, i32 0, i32 7
  store i32 %subttmp139, i32* %225, align 4
  br label %cond_end_block95

after_break140:                                   ; No predecessors!
  br label %cond_end119

cond_then_block148:                               ; preds = %cond_end119
  br label %cond_end149

cond_end149:                                      ; preds = %cond_then_block148, %cond_end119
  %226 = bitcast i32* %208 to i8*
  call void @xfree(i8* %226)
  br label %cond_end108

cond_jump_then157:                                ; preds = %"cond_jump_elif1\0A"
  %p159 = load i32*, i32** %p, align 8
  %derefference_value160 = load i32, i32* %p159, align 8
  %leeqtmp161 = icmp sle i32 %derefference_value160, 47
  %andand162 = and i1 %getmp156, %leeqtmp161
  store i1 %andand162, i1* %andand_result_var153, align 1
  br label %cond_jump_end158

cond_jump_end158:                                 ; preds = %cond_jump_then157, %"cond_jump_elif1\0A"
  %andand_result_value163 = load i1, i1* %andand_result_var153, align 1
  store i1 %andand_result_value163, i1* %oror_result_var152, align 1
  br i1 %andand_result_value163, label %cond_jump_end165, label %cond_jump_then164

cond_jump_then164:                                ; preds = %cond_jump_end158
  %andand_result_var166 = alloca i1
  %p167 = load i32*, i32** %p, align 8
  %derefference_value168 = load i32, i32* %p167, align 8
  %getmp169 = icmp sge i32 %derefference_value168, 58
  store i1 %getmp169, i1* %andand_result_var166, align 1
  br i1 %getmp169, label %cond_jump_then170, label %cond_jump_end171

cond_jump_end165:                                 ; preds = %cond_jump_end171, %cond_jump_end158
  %oror_result_value178 = load i1, i1* %oror_result_var152, align 1
  store i1 %oror_result_value178, i1* %oror_result_var151, align 1
  br i1 %oror_result_value178, label %cond_jump_end180, label %cond_jump_then179

cond_jump_then170:                                ; preds = %cond_jump_then164
  %p172 = load i32*, i32** %p, align 8
  %derefference_value173 = load i32, i32* %p172, align 8
  %leeqtmp174 = icmp sle i32 %derefference_value173, 64
  %andand175 = and i1 %getmp169, %leeqtmp174
  store i1 %andand175, i1* %andand_result_var166, align 1
  br label %cond_jump_end171

cond_jump_end171:                                 ; preds = %cond_jump_then170, %cond_jump_then164
  %andand_result_value176 = load i1, i1* %andand_result_var166, align 1
  %oror177 = or i1 %andand_result_value163, %andand_result_value176
  store i1 %oror177, i1* %oror_result_var152, align 1
  br label %cond_jump_end165

cond_jump_then179:                                ; preds = %cond_jump_end165
  %andand_result_var181 = alloca i1
  %p182 = load i32*, i32** %p, align 8
  %derefference_value183 = load i32, i32* %p182, align 8
  %getmp184 = icmp sge i32 %derefference_value183, 123
  store i1 %getmp184, i1* %andand_result_var181, align 1
  br i1 %getmp184, label %cond_jump_then185, label %cond_jump_end186

cond_jump_end180:                                 ; preds = %cond_jump_end186, %cond_jump_end165
  %oror_result_value193 = load i1, i1* %oror_result_var151, align 1
  store i1 %oror_result_value193, i1* %oror_result_var150, align 1
  br i1 %oror_result_value193, label %cond_jump_end195, label %cond_jump_then194

cond_jump_then185:                                ; preds = %cond_jump_then179
  %p187 = load i32*, i32** %p, align 8
  %derefference_value188 = load i32, i32* %p187, align 8
  %leeqtmp189 = icmp sle i32 %derefference_value188, 126
  %andand190 = and i1 %getmp184, %leeqtmp189
  store i1 %andand190, i1* %andand_result_var181, align 1
  br label %cond_jump_end186

cond_jump_end186:                                 ; preds = %cond_jump_then185, %cond_jump_then179
  %andand_result_value191 = load i1, i1* %andand_result_var181, align 1
  %oror192 = or i1 %oror_result_value178, %andand_result_value191
  store i1 %oror192, i1* %oror_result_var151, align 1
  br label %cond_jump_end180

cond_jump_then194:                                ; preds = %cond_jump_end180
  %andand_result_var196 = alloca i1
  %p197 = load i32*, i32** %p, align 8
  %derefference_value198 = load i32, i32* %p197, align 8
  %getmp199 = icmp sge i32 %derefference_value198, 91
  store i1 %getmp199, i1* %andand_result_var196, align 1
  br i1 %getmp199, label %cond_jump_then200, label %cond_jump_end201

cond_jump_end195:                                 ; preds = %cond_jump_end201, %cond_jump_end180
  %oror_result_value208 = load i1, i1* %oror_result_var150, align 1
  br i1 %oror_result_value208, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

cond_jump_then200:                                ; preds = %cond_jump_then194
  %p202 = load i32*, i32** %p, align 8
  %derefference_value203 = load i32, i32* %p202, align 8
  %leeqtmp204 = icmp sle i32 %derefference_value203, 96
  %andand205 = and i1 %getmp199, %leeqtmp204
  store i1 %andand205, i1* %andand_result_var196, align 1
  br label %cond_jump_end201

cond_jump_end201:                                 ; preds = %cond_jump_then200, %cond_jump_then194
  %andand_result_value206 = load i1, i1* %andand_result_var196, align 1
  %oror207 = or i1 %oror_result_value193, %andand_result_value206
  store i1 %oror207, i1* %oror_result_var150, align 1
  br label %cond_jump_end195

loop_top_block209:                                ; preds = %cond_end288, %"cond_jump_elif_then1\0A"
  %oror_result_var210 = alloca i1
  %oror_result_var211 = alloca i1
  %oror_result_var212 = alloca i1
  %andand_result_var213 = alloca i1
  %227 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %228 = bitcast i8* %227 to i32**
  %p214 = load i32*, i32** %228, align 8
  %derefference_value215 = load i32, i32* %p214, align 8
  %getmp216 = icmp sge i32 %derefference_value215, 33
  store i1 %getmp216, i1* %andand_result_var213, align 1
  br i1 %getmp216, label %cond_jump_then217, label %cond_jump_end218

cond_jump_then217:                                ; preds = %loop_top_block209
  %229 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %230 = bitcast i8* %229 to i32**
  %p219 = load i32*, i32** %230, align 8
  %derefference_value220 = load i32, i32* %p219, align 8
  %leeqtmp221 = icmp sle i32 %derefference_value220, 47
  %andand222 = and i1 %getmp216, %leeqtmp221
  store i1 %andand222, i1* %andand_result_var213, align 1
  br label %cond_jump_end218

cond_jump_end218:                                 ; preds = %cond_jump_then217, %loop_top_block209
  %andand_result_value223 = load i1, i1* %andand_result_var213, align 1
  store i1 %andand_result_value223, i1* %oror_result_var212, align 1
  br i1 %andand_result_value223, label %cond_jump_end225, label %cond_jump_then224

cond_jump_then224:                                ; preds = %cond_jump_end218
  %andand_result_var226 = alloca i1
  %231 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %232 = bitcast i8* %231 to i32**
  %p227 = load i32*, i32** %232, align 8
  %derefference_value228 = load i32, i32* %p227, align 8
  %getmp229 = icmp sge i32 %derefference_value228, 58
  store i1 %getmp229, i1* %andand_result_var226, align 1
  br i1 %getmp229, label %cond_jump_then230, label %cond_jump_end231

cond_jump_end225:                                 ; preds = %cond_jump_end231, %cond_jump_end218
  %oror_result_value238 = load i1, i1* %oror_result_var212, align 1
  store i1 %oror_result_value238, i1* %oror_result_var211, align 1
  br i1 %oror_result_value238, label %cond_jump_end240, label %cond_jump_then239

cond_jump_then230:                                ; preds = %cond_jump_then224
  %233 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %234 = bitcast i8* %233 to i32**
  %p232 = load i32*, i32** %234, align 8
  %derefference_value233 = load i32, i32* %p232, align 8
  %leeqtmp234 = icmp sle i32 %derefference_value233, 64
  %andand235 = and i1 %getmp229, %leeqtmp234
  store i1 %andand235, i1* %andand_result_var226, align 1
  br label %cond_jump_end231

cond_jump_end231:                                 ; preds = %cond_jump_then230, %cond_jump_then224
  %andand_result_value236 = load i1, i1* %andand_result_var226, align 1
  %oror237 = or i1 %andand_result_value223, %andand_result_value236
  store i1 %oror237, i1* %oror_result_var212, align 1
  br label %cond_jump_end225

cond_jump_then239:                                ; preds = %cond_jump_end225
  %andand_result_var241 = alloca i1
  %235 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %236 = bitcast i8* %235 to i32**
  %p242 = load i32*, i32** %236, align 8
  %derefference_value243 = load i32, i32* %p242, align 8
  %getmp244 = icmp sge i32 %derefference_value243, 123
  store i1 %getmp244, i1* %andand_result_var241, align 1
  br i1 %getmp244, label %cond_jump_then245, label %cond_jump_end246

cond_jump_end240:                                 ; preds = %cond_jump_end246, %cond_jump_end225
  %oror_result_value253 = load i1, i1* %oror_result_var211, align 1
  store i1 %oror_result_value253, i1* %oror_result_var210, align 1
  br i1 %oror_result_value253, label %cond_jump_end255, label %cond_jump_then254

cond_jump_then245:                                ; preds = %cond_jump_then239
  %237 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %238 = bitcast i8* %237 to i32**
  %p247 = load i32*, i32** %238, align 8
  %derefference_value248 = load i32, i32* %p247, align 8
  %leeqtmp249 = icmp sle i32 %derefference_value248, 126
  %andand250 = and i1 %getmp244, %leeqtmp249
  store i1 %andand250, i1* %andand_result_var241, align 1
  br label %cond_jump_end246

cond_jump_end246:                                 ; preds = %cond_jump_then245, %cond_jump_then239
  %andand_result_value251 = load i1, i1* %andand_result_var241, align 1
  %oror252 = or i1 %oror_result_value238, %andand_result_value251
  store i1 %oror252, i1* %oror_result_var211, align 1
  br label %cond_jump_end240

cond_jump_then254:                                ; preds = %cond_jump_end240
  %andand_result_var256 = alloca i1
  %239 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %240 = bitcast i8* %239 to i32**
  %p257 = load i32*, i32** %240, align 8
  %derefference_value258 = load i32, i32* %p257, align 8
  %getmp259 = icmp sge i32 %derefference_value258, 91
  store i1 %getmp259, i1* %andand_result_var256, align 1
  br i1 %getmp259, label %cond_jump_then260, label %cond_jump_end261

cond_jump_end255:                                 ; preds = %cond_jump_end261, %cond_jump_end240
  %oror_result_value268 = load i1, i1* %oror_result_var210, align 1
  br i1 %oror_result_value268, label %cond_then_block269, label %cond_end_block270

cond_jump_then260:                                ; preds = %cond_jump_then254
  %241 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %242 = bitcast i8* %241 to i32**
  %p262 = load i32*, i32** %242, align 8
  %derefference_value263 = load i32, i32* %p262, align 8
  %leeqtmp264 = icmp sle i32 %derefference_value263, 96
  %andand265 = and i1 %getmp259, %leeqtmp264
  store i1 %andand265, i1* %andand_result_var256, align 1
  br label %cond_jump_end261

cond_jump_end261:                                 ; preds = %cond_jump_then260, %cond_jump_then254
  %andand_result_value266 = load i1, i1* %andand_result_var256, align 1
  %oror267 = or i1 %oror_result_value253, %andand_result_value266
  store i1 %oror267, i1* %oror_result_var210, align 1
  br label %cond_jump_end255

cond_then_block269:                               ; preds = %cond_jump_end255
  %243 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %244 = bitcast i8* %243 to i32**
  %p271 = load i32*, i32** %244, align 8
  %245 = ptrtoint i32* %p271 to i64
  %addtmp272 = add nsw i64 %245, 4
  %246 = inttoptr i64 %addtmp272 to i32*
  %247 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %248 = bitcast i8* %247 to i32**
  store i32* %246, i32** %248, align 8
  %249 = ptrtoint i32* %246 to i64
  %subtmp273 = sub nsw i64 %249, 4
  %250 = inttoptr i64 %subtmp273 to i32*
  %251 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %252 = bitcast i8* %251 to %ViWin**
  %self274 = load %ViWin*, %ViWin** %252, align 8
  %253 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %254 = bitcast i8* %253 to %ViWin**
  %self275 = load %ViWin*, %ViWin** %254, align 8
  %255 = getelementptr inbounds %ViWin, %ViWin* %self275, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %addtmp276 = add nsw i32 %256, 1
  %257 = getelementptr inbounds %ViWin, %ViWin* %self274, i32 0, i32 7
  store i32 %addtmp276, i32* %257, align 4
  %subttmp277 = sub nsw i32 %addtmp276, 1
  %258 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %259 = bitcast i8* %258 to %ViWin**
  %self278 = load %ViWin*, %ViWin** %259, align 8
  %260 = getelementptr inbounds %ViWin, %ViWin* %self278, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %263 = bitcast i8* %262 to i32**
  %line279 = load i32*, i32** %263, align 8
  store i32* %line279, i32** %str280, align 8
  br label %length281

cond_end_block270:                                ; preds = %inline_func_end316, %cond_jump_end255
  br label %cond_end25

length281:                                        ; preds = %cond_then_block269
  %264 = bitcast i32** %str280 to i8*
  store i8* %264, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str284 = load i32*, i32** %str280, align 8
  %265 = call i64 @wcslen(i32* %str284)
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %result_variable283, align 4
  br label %inline_func_end282

inline_func_end282:                               ; preds = %length281
  %result_variable285 = load i32, i32* %result_variable283, align 4
  %getmp286 = icmp sge i32 %261, %result_variable285
  br i1 %getmp286, label %cond_jump_then287, label %cond_end288

cond_jump_then287:                                ; preds = %inline_func_end282
  %267 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %268 = bitcast i8* %267 to %ViWin**
  %self289 = load %ViWin*, %ViWin** %268, align 8
  %269 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %270 = bitcast i8* %269 to %ViWin**
  %self290 = load %ViWin*, %ViWin** %270, align 8
  %271 = getelementptr inbounds %ViWin, %ViWin* %self290, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %addtmp291 = add nsw i32 %272, 1
  %273 = getelementptr inbounds %ViWin, %ViWin* %self289, i32 0, i32 6
  store i32 %addtmp291, i32* %273, align 4
  %subttmp292 = sub nsw i32 %addtmp291, 1
  %274 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %275 = bitcast i8* %274 to %ViWin**
  %self293 = load %ViWin*, %ViWin** %275, align 8
  %276 = getelementptr inbounds %ViWin, %ViWin* %self293, i32 0, i32 8
  %277 = load i32, i32* %276, align 4
  %278 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %279 = bitcast i8* %278 to %ViWin**
  %self294 = load %ViWin*, %ViWin** %279, align 8
  %280 = getelementptr inbounds %ViWin, %ViWin* %self294, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %addtmp295 = add nsw i32 %277, %281
  %282 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %283 = bitcast i8* %282 to %ViWin**
  %self296 = load %ViWin*, %ViWin** %283, align 8
  %284 = getelementptr inbounds %ViWin, %ViWin* %self296, i32 0, i32 1
  %285 = load %list__intp*, %list__intp** %284, align 8
  %286 = call i32 @"list_length_intp7_vi++04word"(%list__intp* %285)
  %subttmp297 = sub nsw i32 %286, 1
  %gttmp298 = icmp sgt i32 %addtmp295, %subttmp297
  br i1 %gttmp298, label %cond_jump_then299, label %cond_end300

cond_end288:                                      ; preds = %cond_end330, %inline_func_end282
  br label %loop_top_block209

cond_jump_then299:                                ; preds = %cond_jump_then287
  %287 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %288 = bitcast i8* %287 to %ViWin**
  %self301 = load %ViWin*, %ViWin** %288, align 8
  %289 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %290 = bitcast i8* %289 to %ViWin**
  %self302 = load %ViWin*, %ViWin** %290, align 8
  %291 = getelementptr inbounds %ViWin, %ViWin* %self302, i32 0, i32 6
  %292 = load i32, i32* %291, align 4
  %subttmp303 = sub nsw i32 %292, 1
  %293 = getelementptr inbounds %ViWin, %ViWin* %self301, i32 0, i32 6
  store i32 %subttmp303, i32* %293, align 4
  %addtmp304 = add nsw i32 %subttmp303, 1
  %294 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %295 = bitcast i8* %294 to %ViWin**
  %self305 = load %ViWin*, %ViWin** %295, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self305)
  %296 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %297 = bitcast i8* %296 to %ViWin**
  %self306 = load %ViWin*, %ViWin** %297, align 8
  %298 = getelementptr inbounds %ViWin, %ViWin* %self306, i32 0, i32 1
  %299 = load %list__intp*, %list__intp** %298, align 8
  %300 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %301 = bitcast i8* %300 to %ViWin**
  %self307 = load %ViWin*, %ViWin** %301, align 8
  %302 = getelementptr inbounds %ViWin, %ViWin* %self307, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %305 = bitcast i8* %304 to %ViWin**
  %self308 = load %ViWin*, %ViWin** %305, align 8
  %306 = getelementptr inbounds %ViWin, %ViWin* %self308, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %addtmp309 = add nsw i32 %303, %307
  %308 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.5, i32 0, i32 0))
  %309 = call i32* @"list_item_intp8_vi++04word"(%list__intp* %299, i32 %addtmp309, i32* %308)
  %310 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %311 = bitcast i8* %310 to i32**
  store i32* %309, i32** %311, align 8
  %312 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %313 = bitcast i8* %312 to %ViWin**
  %self310 = load %ViWin*, %ViWin** %313, align 8
  %314 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %315 = bitcast i8* %314 to i32**
  %line311 = load i32*, i32** %315, align 8
  store i32* %line311, i32** %str312, align 8
  %316 = ptrtoint i32* %308 to i64
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %cond_then_block314, label %cond_end315

cond_end300:                                      ; preds = %after_break321, %cond_jump_then287
  %318 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %319 = bitcast i8* %318 to %ViWin**
  %self322 = load %ViWin*, %ViWin** %319, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self322)
  %320 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %321 = bitcast i8* %320 to %ViWin**
  %self323 = load %ViWin*, %ViWin** %321, align 8
  %322 = getelementptr inbounds %ViWin, %ViWin* %self323, i32 0, i32 1
  %323 = load %list__intp*, %list__intp** %322, align 8
  %324 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %325 = bitcast i8* %324 to %ViWin**
  %self324 = load %ViWin*, %ViWin** %325, align 8
  %326 = getelementptr inbounds %ViWin, %ViWin* %self324, i32 0, i32 8
  %327 = load i32, i32* %326, align 4
  %328 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %329 = bitcast i8* %328 to %ViWin**
  %self325 = load %ViWin*, %ViWin** %329, align 8
  %330 = getelementptr inbounds %ViWin, %ViWin* %self325, i32 0, i32 6
  %331 = load i32, i32* %330, align 4
  %addtmp326 = add nsw i32 %327, %331
  %332 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.6, i32 0, i32 0))
  %333 = call i32* @"list_item_intp9_vi++04word"(%list__intp* %323, i32 %addtmp326, i32* %332)
  %334 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %335 = bitcast i8* %334 to i32**
  store i32* %333, i32** %335, align 8
  %336 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %337 = bitcast i8* %336 to i32**
  %line327 = load i32*, i32** %337, align 8
  %338 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %339 = bitcast i8* %338 to i32**
  store i32* %line327, i32** %339, align 8
  %340 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %341 = bitcast i8* %340 to %ViWin**
  %self328 = load %ViWin*, %ViWin** %341, align 8
  %342 = getelementptr inbounds %ViWin, %ViWin* %self328, i32 0, i32 7
  store i32 0, i32* %342, align 4
  %343 = ptrtoint i32* %332 to i64
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %cond_then_block329, label %cond_end330

length313:                                        ; preds = %cond_end315
  %345 = bitcast i32** %str312 to i8*
  store i8* %345, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str318 = load i32*, i32** %str312, align 8
  %346 = call i64 @wcslen(i32* %str318)
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %result_variable317, align 4
  br label %inline_func_end316

cond_then_block314:                               ; preds = %cond_jump_then299
  br label %cond_end315

cond_end315:                                      ; preds = %cond_then_block314, %cond_jump_then299
  %348 = bitcast i32* %308 to i8*
  call void @xfree(i8* %348)
  br label %length313

inline_func_end316:                               ; preds = %length313
  %result_variable319 = load i32, i32* %result_variable317, align 4
  %subttmp320 = sub nsw i32 %result_variable319, 1
  %349 = getelementptr inbounds %ViWin, %ViWin* %self310, i32 0, i32 7
  store i32 %subttmp320, i32* %349, align 4
  br label %cond_end_block270

after_break321:                                   ; No predecessors!
  br label %cond_end300

cond_then_block329:                               ; preds = %cond_end300
  br label %cond_end330

cond_end330:                                      ; preds = %cond_then_block329, %cond_end300
  %350 = bitcast i32* %332 to i8*
  call void @xfree(i8* %350)
  br label %cond_end288

loop_top_block333:                                ; preds = %cond_end355, %"cond_jump_elif_then2\0A"
  %351 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %352 = bitcast i8* %351 to i32**
  %p334 = load i32*, i32** %352, align 8
  %derefference_value335 = load i32, i32* %p334, align 8
  %353 = call i32 @iswalpha(i32 %derefference_value335)
  %354 = trunc i32 %353 to i1
  br i1 %354, label %cond_then_block336, label %cond_end_block337

cond_then_block336:                               ; preds = %loop_top_block333
  %355 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %356 = bitcast i8* %355 to i32**
  %p338 = load i32*, i32** %356, align 8
  %357 = ptrtoint i32* %p338 to i64
  %addtmp339 = add nsw i64 %357, 4
  %358 = inttoptr i64 %addtmp339 to i32*
  %359 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %360 = bitcast i8* %359 to i32**
  store i32* %358, i32** %360, align 8
  %361 = ptrtoint i32* %358 to i64
  %subtmp340 = sub nsw i64 %361, 4
  %362 = inttoptr i64 %subtmp340 to i32*
  %363 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %364 = bitcast i8* %363 to %ViWin**
  %self341 = load %ViWin*, %ViWin** %364, align 8
  %365 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %366 = bitcast i8* %365 to %ViWin**
  %self342 = load %ViWin*, %ViWin** %366, align 8
  %367 = getelementptr inbounds %ViWin, %ViWin* %self342, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  %addtmp343 = add nsw i32 %368, 1
  %369 = getelementptr inbounds %ViWin, %ViWin* %self341, i32 0, i32 7
  store i32 %addtmp343, i32* %369, align 4
  %subttmp344 = sub nsw i32 %addtmp343, 1
  %370 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %371 = bitcast i8* %370 to %ViWin**
  %self345 = load %ViWin*, %ViWin** %371, align 8
  %372 = getelementptr inbounds %ViWin, %ViWin* %self345, i32 0, i32 7
  %373 = load i32, i32* %372, align 4
  %374 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %375 = bitcast i8* %374 to i32**
  %line346 = load i32*, i32** %375, align 8
  store i32* %line346, i32** %str347, align 8
  br label %length348

cond_end_block337:                                ; preds = %inline_func_end383, %loop_top_block333
  br label %cond_end25

length348:                                        ; preds = %cond_then_block336
  %376 = bitcast i32** %str347 to i8*
  store i8* %376, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str351 = load i32*, i32** %str347, align 8
  %377 = call i64 @wcslen(i32* %str351)
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %result_variable350, align 4
  br label %inline_func_end349

inline_func_end349:                               ; preds = %length348
  %result_variable352 = load i32, i32* %result_variable350, align 4
  %getmp353 = icmp sge i32 %373, %result_variable352
  br i1 %getmp353, label %cond_jump_then354, label %cond_end355

cond_jump_then354:                                ; preds = %inline_func_end349
  %379 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %380 = bitcast i8* %379 to %ViWin**
  %self356 = load %ViWin*, %ViWin** %380, align 8
  %381 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %382 = bitcast i8* %381 to %ViWin**
  %self357 = load %ViWin*, %ViWin** %382, align 8
  %383 = getelementptr inbounds %ViWin, %ViWin* %self357, i32 0, i32 6
  %384 = load i32, i32* %383, align 4
  %addtmp358 = add nsw i32 %384, 1
  %385 = getelementptr inbounds %ViWin, %ViWin* %self356, i32 0, i32 6
  store i32 %addtmp358, i32* %385, align 4
  %subttmp359 = sub nsw i32 %addtmp358, 1
  %386 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %387 = bitcast i8* %386 to %ViWin**
  %self360 = load %ViWin*, %ViWin** %387, align 8
  %388 = getelementptr inbounds %ViWin, %ViWin* %self360, i32 0, i32 8
  %389 = load i32, i32* %388, align 4
  %390 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %391 = bitcast i8* %390 to %ViWin**
  %self361 = load %ViWin*, %ViWin** %391, align 8
  %392 = getelementptr inbounds %ViWin, %ViWin* %self361, i32 0, i32 6
  %393 = load i32, i32* %392, align 4
  %addtmp362 = add nsw i32 %389, %393
  %394 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %395 = bitcast i8* %394 to %ViWin**
  %self363 = load %ViWin*, %ViWin** %395, align 8
  %396 = getelementptr inbounds %ViWin, %ViWin* %self363, i32 0, i32 1
  %397 = load %list__intp*, %list__intp** %396, align 8
  %398 = call i32 @"list_length_intp10_vi++04word"(%list__intp* %397)
  %subttmp364 = sub nsw i32 %398, 1
  %gttmp365 = icmp sgt i32 %addtmp362, %subttmp364
  br i1 %gttmp365, label %cond_jump_then366, label %cond_end367

cond_end355:                                      ; preds = %cond_end397, %inline_func_end349
  br label %loop_top_block333

cond_jump_then366:                                ; preds = %cond_jump_then354
  %399 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %400 = bitcast i8* %399 to %ViWin**
  %self368 = load %ViWin*, %ViWin** %400, align 8
  %401 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %402 = bitcast i8* %401 to %ViWin**
  %self369 = load %ViWin*, %ViWin** %402, align 8
  %403 = getelementptr inbounds %ViWin, %ViWin* %self369, i32 0, i32 6
  %404 = load i32, i32* %403, align 4
  %subttmp370 = sub nsw i32 %404, 1
  %405 = getelementptr inbounds %ViWin, %ViWin* %self368, i32 0, i32 6
  store i32 %subttmp370, i32* %405, align 4
  %addtmp371 = add nsw i32 %subttmp370, 1
  %406 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %407 = bitcast i8* %406 to %ViWin**
  %self372 = load %ViWin*, %ViWin** %407, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self372)
  %408 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %409 = bitcast i8* %408 to %ViWin**
  %self373 = load %ViWin*, %ViWin** %409, align 8
  %410 = getelementptr inbounds %ViWin, %ViWin* %self373, i32 0, i32 1
  %411 = load %list__intp*, %list__intp** %410, align 8
  %412 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %413 = bitcast i8* %412 to %ViWin**
  %self374 = load %ViWin*, %ViWin** %413, align 8
  %414 = getelementptr inbounds %ViWin, %ViWin* %self374, i32 0, i32 8
  %415 = load i32, i32* %414, align 4
  %416 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %417 = bitcast i8* %416 to %ViWin**
  %self375 = load %ViWin*, %ViWin** %417, align 8
  %418 = getelementptr inbounds %ViWin, %ViWin* %self375, i32 0, i32 6
  %419 = load i32, i32* %418, align 4
  %addtmp376 = add nsw i32 %415, %419
  %420 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.7, i32 0, i32 0))
  %421 = call i32* @"list_item_intp11_vi++04word"(%list__intp* %411, i32 %addtmp376, i32* %420)
  %422 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %423 = bitcast i8* %422 to i32**
  store i32* %421, i32** %423, align 8
  %424 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %425 = bitcast i8* %424 to %ViWin**
  %self377 = load %ViWin*, %ViWin** %425, align 8
  %426 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %427 = bitcast i8* %426 to i32**
  %line378 = load i32*, i32** %427, align 8
  store i32* %line378, i32** %str379, align 8
  %428 = ptrtoint i32* %420 to i64
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %cond_then_block381, label %cond_end382

cond_end367:                                      ; preds = %after_break388, %cond_jump_then354
  %430 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %431 = bitcast i8* %430 to %ViWin**
  %self389 = load %ViWin*, %ViWin** %431, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self389)
  %432 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %433 = bitcast i8* %432 to %ViWin**
  %self390 = load %ViWin*, %ViWin** %433, align 8
  %434 = getelementptr inbounds %ViWin, %ViWin* %self390, i32 0, i32 1
  %435 = load %list__intp*, %list__intp** %434, align 8
  %436 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %437 = bitcast i8* %436 to %ViWin**
  %self391 = load %ViWin*, %ViWin** %437, align 8
  %438 = getelementptr inbounds %ViWin, %ViWin* %self391, i32 0, i32 8
  %439 = load i32, i32* %438, align 4
  %440 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %441 = bitcast i8* %440 to %ViWin**
  %self392 = load %ViWin*, %ViWin** %441, align 8
  %442 = getelementptr inbounds %ViWin, %ViWin* %self392, i32 0, i32 6
  %443 = load i32, i32* %442, align 4
  %addtmp393 = add nsw i32 %439, %443
  %444 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.8, i32 0, i32 0))
  %445 = call i32* @"list_item_intp12_vi++04word"(%list__intp* %435, i32 %addtmp393, i32* %444)
  %446 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %447 = bitcast i8* %446 to i32**
  store i32* %445, i32** %447, align 8
  %448 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %449 = bitcast i8* %448 to i32**
  %line394 = load i32*, i32** %449, align 8
  %450 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %451 = bitcast i8* %450 to i32**
  store i32* %line394, i32** %451, align 8
  %452 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %453 = bitcast i8* %452 to %ViWin**
  %self395 = load %ViWin*, %ViWin** %453, align 8
  %454 = getelementptr inbounds %ViWin, %ViWin* %self395, i32 0, i32 7
  store i32 0, i32* %454, align 4
  %455 = ptrtoint i32* %444 to i64
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %cond_then_block396, label %cond_end397

length380:                                        ; preds = %cond_end382
  %457 = bitcast i32** %str379 to i8*
  store i8* %457, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str385 = load i32*, i32** %str379, align 8
  %458 = call i64 @wcslen(i32* %str385)
  %459 = trunc i64 %458 to i32
  store i32 %459, i32* %result_variable384, align 4
  br label %inline_func_end383

cond_then_block381:                               ; preds = %cond_jump_then366
  br label %cond_end382

cond_end382:                                      ; preds = %cond_then_block381, %cond_jump_then366
  %460 = bitcast i32* %420 to i8*
  call void @xfree(i8* %460)
  br label %length380

inline_func_end383:                               ; preds = %length380
  %result_variable386 = load i32, i32* %result_variable384, align 4
  %subttmp387 = sub nsw i32 %result_variable386, 1
  %461 = getelementptr inbounds %ViWin, %ViWin* %self377, i32 0, i32 7
  store i32 %subttmp387, i32* %461, align 4
  br label %cond_end_block337

after_break388:                                   ; No predecessors!
  br label %cond_end367

cond_then_block396:                               ; preds = %cond_end367
  br label %cond_end397

cond_end397:                                      ; preds = %cond_then_block396, %cond_end367
  %462 = bitcast i32* %444 to i8*
  call void @xfree(i8* %462)
  br label %cond_end355

loop_top_block400:                                ; preds = %cond_end422, %"cond_jump_elif_then3\0A"
  %463 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %464 = bitcast i8* %463 to i32**
  %p401 = load i32*, i32** %464, align 8
  %derefference_value402 = load i32, i32* %p401, align 8
  %465 = call i32 @iswblank(i32 %derefference_value402)
  %466 = trunc i32 %465 to i1
  br i1 %466, label %cond_then_block403, label %cond_end_block404

cond_then_block403:                               ; preds = %loop_top_block400
  %467 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %468 = bitcast i8* %467 to i32**
  %p405 = load i32*, i32** %468, align 8
  %469 = ptrtoint i32* %p405 to i64
  %addtmp406 = add nsw i64 %469, 4
  %470 = inttoptr i64 %addtmp406 to i32*
  %471 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %472 = bitcast i8* %471 to i32**
  store i32* %470, i32** %472, align 8
  %473 = ptrtoint i32* %470 to i64
  %subtmp407 = sub nsw i64 %473, 4
  %474 = inttoptr i64 %subtmp407 to i32*
  %475 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %476 = bitcast i8* %475 to %ViWin**
  %self408 = load %ViWin*, %ViWin** %476, align 8
  %477 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %478 = bitcast i8* %477 to %ViWin**
  %self409 = load %ViWin*, %ViWin** %478, align 8
  %479 = getelementptr inbounds %ViWin, %ViWin* %self409, i32 0, i32 7
  %480 = load i32, i32* %479, align 4
  %addtmp410 = add nsw i32 %480, 1
  %481 = getelementptr inbounds %ViWin, %ViWin* %self408, i32 0, i32 7
  store i32 %addtmp410, i32* %481, align 4
  %subttmp411 = sub nsw i32 %addtmp410, 1
  %482 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %483 = bitcast i8* %482 to %ViWin**
  %self412 = load %ViWin*, %ViWin** %483, align 8
  %484 = getelementptr inbounds %ViWin, %ViWin* %self412, i32 0, i32 7
  %485 = load i32, i32* %484, align 4
  %486 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %487 = bitcast i8* %486 to i32**
  %line413 = load i32*, i32** %487, align 8
  store i32* %line413, i32** %str414, align 8
  br label %length415

cond_end_block404:                                ; preds = %inline_func_end450, %loop_top_block400
  br label %cond_end25

length415:                                        ; preds = %cond_then_block403
  %488 = bitcast i32** %str414 to i8*
  store i8* %488, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str418 = load i32*, i32** %str414, align 8
  %489 = call i64 @wcslen(i32* %str418)
  %490 = trunc i64 %489 to i32
  store i32 %490, i32* %result_variable417, align 4
  br label %inline_func_end416

inline_func_end416:                               ; preds = %length415
  %result_variable419 = load i32, i32* %result_variable417, align 4
  %getmp420 = icmp sge i32 %485, %result_variable419
  br i1 %getmp420, label %cond_jump_then421, label %cond_end422

cond_jump_then421:                                ; preds = %inline_func_end416
  %491 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %492 = bitcast i8* %491 to %ViWin**
  %self423 = load %ViWin*, %ViWin** %492, align 8
  %493 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %494 = bitcast i8* %493 to %ViWin**
  %self424 = load %ViWin*, %ViWin** %494, align 8
  %495 = getelementptr inbounds %ViWin, %ViWin* %self424, i32 0, i32 6
  %496 = load i32, i32* %495, align 4
  %addtmp425 = add nsw i32 %496, 1
  %497 = getelementptr inbounds %ViWin, %ViWin* %self423, i32 0, i32 6
  store i32 %addtmp425, i32* %497, align 4
  %subttmp426 = sub nsw i32 %addtmp425, 1
  %498 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %499 = bitcast i8* %498 to %ViWin**
  %self427 = load %ViWin*, %ViWin** %499, align 8
  %500 = getelementptr inbounds %ViWin, %ViWin* %self427, i32 0, i32 8
  %501 = load i32, i32* %500, align 4
  %502 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %503 = bitcast i8* %502 to %ViWin**
  %self428 = load %ViWin*, %ViWin** %503, align 8
  %504 = getelementptr inbounds %ViWin, %ViWin* %self428, i32 0, i32 6
  %505 = load i32, i32* %504, align 4
  %addtmp429 = add nsw i32 %501, %505
  %506 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %507 = bitcast i8* %506 to %ViWin**
  %self430 = load %ViWin*, %ViWin** %507, align 8
  %508 = getelementptr inbounds %ViWin, %ViWin* %self430, i32 0, i32 1
  %509 = load %list__intp*, %list__intp** %508, align 8
  %510 = call i32 @"list_length_intp13_vi++04word"(%list__intp* %509)
  %subttmp431 = sub nsw i32 %510, 1
  %gttmp432 = icmp sgt i32 %addtmp429, %subttmp431
  br i1 %gttmp432, label %cond_jump_then433, label %cond_end434

cond_end422:                                      ; preds = %cond_end464, %inline_func_end416
  br label %loop_top_block400

cond_jump_then433:                                ; preds = %cond_jump_then421
  %511 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %512 = bitcast i8* %511 to %ViWin**
  %self435 = load %ViWin*, %ViWin** %512, align 8
  %513 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %514 = bitcast i8* %513 to %ViWin**
  %self436 = load %ViWin*, %ViWin** %514, align 8
  %515 = getelementptr inbounds %ViWin, %ViWin* %self436, i32 0, i32 6
  %516 = load i32, i32* %515, align 4
  %subttmp437 = sub nsw i32 %516, 1
  %517 = getelementptr inbounds %ViWin, %ViWin* %self435, i32 0, i32 6
  store i32 %subttmp437, i32* %517, align 4
  %addtmp438 = add nsw i32 %subttmp437, 1
  %518 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %519 = bitcast i8* %518 to %ViWin**
  %self439 = load %ViWin*, %ViWin** %519, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self439)
  %520 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %521 = bitcast i8* %520 to %ViWin**
  %self440 = load %ViWin*, %ViWin** %521, align 8
  %522 = getelementptr inbounds %ViWin, %ViWin* %self440, i32 0, i32 1
  %523 = load %list__intp*, %list__intp** %522, align 8
  %524 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %525 = bitcast i8* %524 to %ViWin**
  %self441 = load %ViWin*, %ViWin** %525, align 8
  %526 = getelementptr inbounds %ViWin, %ViWin* %self441, i32 0, i32 8
  %527 = load i32, i32* %526, align 4
  %528 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %529 = bitcast i8* %528 to %ViWin**
  %self442 = load %ViWin*, %ViWin** %529, align 8
  %530 = getelementptr inbounds %ViWin, %ViWin* %self442, i32 0, i32 6
  %531 = load i32, i32* %530, align 4
  %addtmp443 = add nsw i32 %527, %531
  %532 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.9, i32 0, i32 0))
  %533 = call i32* @"list_item_intp14_vi++04word"(%list__intp* %523, i32 %addtmp443, i32* %532)
  %534 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %535 = bitcast i8* %534 to i32**
  store i32* %533, i32** %535, align 8
  %536 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %537 = bitcast i8* %536 to %ViWin**
  %self444 = load %ViWin*, %ViWin** %537, align 8
  %538 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %539 = bitcast i8* %538 to i32**
  %line445 = load i32*, i32** %539, align 8
  store i32* %line445, i32** %str446, align 8
  %540 = ptrtoint i32* %532 to i64
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %cond_then_block448, label %cond_end449

cond_end434:                                      ; preds = %after_break455, %cond_jump_then421
  %542 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %543 = bitcast i8* %542 to %ViWin**
  %self456 = load %ViWin*, %ViWin** %543, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self456)
  %544 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %545 = bitcast i8* %544 to %ViWin**
  %self457 = load %ViWin*, %ViWin** %545, align 8
  %546 = getelementptr inbounds %ViWin, %ViWin* %self457, i32 0, i32 1
  %547 = load %list__intp*, %list__intp** %546, align 8
  %548 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %549 = bitcast i8* %548 to %ViWin**
  %self458 = load %ViWin*, %ViWin** %549, align 8
  %550 = getelementptr inbounds %ViWin, %ViWin* %self458, i32 0, i32 8
  %551 = load i32, i32* %550, align 4
  %552 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %553 = bitcast i8* %552 to %ViWin**
  %self459 = load %ViWin*, %ViWin** %553, align 8
  %554 = getelementptr inbounds %ViWin, %ViWin* %self459, i32 0, i32 6
  %555 = load i32, i32* %554, align 4
  %addtmp460 = add nsw i32 %551, %555
  %556 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.10, i32 0, i32 0))
  %557 = call i32* @"list_item_intp15_vi++04word"(%list__intp* %547, i32 %addtmp460, i32* %556)
  %558 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %559 = bitcast i8* %558 to i32**
  store i32* %557, i32** %559, align 8
  %560 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %561 = bitcast i8* %560 to i32**
  %line461 = load i32*, i32** %561, align 8
  %562 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %563 = bitcast i8* %562 to i32**
  store i32* %line461, i32** %563, align 8
  %564 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %565 = bitcast i8* %564 to %ViWin**
  %self462 = load %ViWin*, %ViWin** %565, align 8
  %566 = getelementptr inbounds %ViWin, %ViWin* %self462, i32 0, i32 7
  store i32 0, i32* %566, align 4
  %567 = ptrtoint i32* %556 to i64
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %cond_then_block463, label %cond_end464

length447:                                        ; preds = %cond_end449
  %569 = bitcast i32** %str446 to i8*
  store i8* %569, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str452 = load i32*, i32** %str446, align 8
  %570 = call i64 @wcslen(i32* %str452)
  %571 = trunc i64 %570 to i32
  store i32 %571, i32* %result_variable451, align 4
  br label %inline_func_end450

cond_then_block448:                               ; preds = %cond_jump_then433
  br label %cond_end449

cond_end449:                                      ; preds = %cond_then_block448, %cond_jump_then433
  %572 = bitcast i32* %532 to i8*
  call void @xfree(i8* %572)
  br label %length447

inline_func_end450:                               ; preds = %length447
  %result_variable453 = load i32, i32* %result_variable451, align 4
  %subttmp454 = sub nsw i32 %result_variable453, 1
  %573 = getelementptr inbounds %ViWin, %ViWin* %self444, i32 0, i32 7
  store i32 %subttmp454, i32* %573, align 4
  br label %cond_end_block404

after_break455:                                   ; No predecessors!
  br label %cond_end434

cond_then_block463:                               ; preds = %cond_end434
  br label %cond_end464

cond_end464:                                      ; preds = %cond_then_block463, %cond_end434
  %574 = bitcast i32* %556 to i8*
  call void @xfree(i8* %574)
  br label %cond_end422

loop_top_block467:                                ; preds = %cond_end489, %"cond_jump_elif_then4\0A"
  %575 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %576 = bitcast i8* %575 to i32**
  %p468 = load i32*, i32** %576, align 8
  %derefference_value469 = load i32, i32* %p468, align 8
  %577 = call i32 @iswdigit(i32 %derefference_value469)
  %578 = trunc i32 %577 to i1
  br i1 %578, label %cond_then_block470, label %cond_end_block471

cond_then_block470:                               ; preds = %loop_top_block467
  %579 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %580 = bitcast i8* %579 to i32**
  %p472 = load i32*, i32** %580, align 8
  %581 = ptrtoint i32* %p472 to i64
  %addtmp473 = add nsw i64 %581, 4
  %582 = inttoptr i64 %addtmp473 to i32*
  %583 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %584 = bitcast i8* %583 to i32**
  store i32* %582, i32** %584, align 8
  %585 = ptrtoint i32* %582 to i64
  %subtmp474 = sub nsw i64 %585, 4
  %586 = inttoptr i64 %subtmp474 to i32*
  %587 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %588 = bitcast i8* %587 to %ViWin**
  %self475 = load %ViWin*, %ViWin** %588, align 8
  %589 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %590 = bitcast i8* %589 to %ViWin**
  %self476 = load %ViWin*, %ViWin** %590, align 8
  %591 = getelementptr inbounds %ViWin, %ViWin* %self476, i32 0, i32 7
  %592 = load i32, i32* %591, align 4
  %addtmp477 = add nsw i32 %592, 1
  %593 = getelementptr inbounds %ViWin, %ViWin* %self475, i32 0, i32 7
  store i32 %addtmp477, i32* %593, align 4
  %subttmp478 = sub nsw i32 %addtmp477, 1
  %594 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %595 = bitcast i8* %594 to %ViWin**
  %self479 = load %ViWin*, %ViWin** %595, align 8
  %596 = getelementptr inbounds %ViWin, %ViWin* %self479, i32 0, i32 7
  %597 = load i32, i32* %596, align 4
  %598 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %599 = bitcast i8* %598 to i32**
  %line480 = load i32*, i32** %599, align 8
  store i32* %line480, i32** %str481, align 8
  br label %length482

cond_end_block471:                                ; preds = %inline_func_end517, %loop_top_block467
  br label %cond_end25

length482:                                        ; preds = %cond_then_block470
  %600 = bitcast i32** %str481 to i8*
  store i8* %600, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str485 = load i32*, i32** %str481, align 8
  %601 = call i64 @wcslen(i32* %str485)
  %602 = trunc i64 %601 to i32
  store i32 %602, i32* %result_variable484, align 4
  br label %inline_func_end483

inline_func_end483:                               ; preds = %length482
  %result_variable486 = load i32, i32* %result_variable484, align 4
  %getmp487 = icmp sge i32 %597, %result_variable486
  br i1 %getmp487, label %cond_jump_then488, label %cond_end489

cond_jump_then488:                                ; preds = %inline_func_end483
  %603 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %604 = bitcast i8* %603 to %ViWin**
  %self490 = load %ViWin*, %ViWin** %604, align 8
  %605 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %606 = bitcast i8* %605 to %ViWin**
  %self491 = load %ViWin*, %ViWin** %606, align 8
  %607 = getelementptr inbounds %ViWin, %ViWin* %self491, i32 0, i32 6
  %608 = load i32, i32* %607, align 4
  %addtmp492 = add nsw i32 %608, 1
  %609 = getelementptr inbounds %ViWin, %ViWin* %self490, i32 0, i32 6
  store i32 %addtmp492, i32* %609, align 4
  %subttmp493 = sub nsw i32 %addtmp492, 1
  %610 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %611 = bitcast i8* %610 to %ViWin**
  %self494 = load %ViWin*, %ViWin** %611, align 8
  %612 = getelementptr inbounds %ViWin, %ViWin* %self494, i32 0, i32 8
  %613 = load i32, i32* %612, align 4
  %614 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %615 = bitcast i8* %614 to %ViWin**
  %self495 = load %ViWin*, %ViWin** %615, align 8
  %616 = getelementptr inbounds %ViWin, %ViWin* %self495, i32 0, i32 6
  %617 = load i32, i32* %616, align 4
  %addtmp496 = add nsw i32 %613, %617
  %618 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %619 = bitcast i8* %618 to %ViWin**
  %self497 = load %ViWin*, %ViWin** %619, align 8
  %620 = getelementptr inbounds %ViWin, %ViWin* %self497, i32 0, i32 1
  %621 = load %list__intp*, %list__intp** %620, align 8
  %622 = call i32 @"list_length_intp16_vi++04word"(%list__intp* %621)
  %subttmp498 = sub nsw i32 %622, 1
  %gttmp499 = icmp sgt i32 %addtmp496, %subttmp498
  br i1 %gttmp499, label %cond_jump_then500, label %cond_end501

cond_end489:                                      ; preds = %cond_end531, %inline_func_end483
  br label %loop_top_block467

cond_jump_then500:                                ; preds = %cond_jump_then488
  %623 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %624 = bitcast i8* %623 to %ViWin**
  %self502 = load %ViWin*, %ViWin** %624, align 8
  %625 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %626 = bitcast i8* %625 to %ViWin**
  %self503 = load %ViWin*, %ViWin** %626, align 8
  %627 = getelementptr inbounds %ViWin, %ViWin* %self503, i32 0, i32 6
  %628 = load i32, i32* %627, align 4
  %subttmp504 = sub nsw i32 %628, 1
  %629 = getelementptr inbounds %ViWin, %ViWin* %self502, i32 0, i32 6
  store i32 %subttmp504, i32* %629, align 4
  %addtmp505 = add nsw i32 %subttmp504, 1
  %630 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %631 = bitcast i8* %630 to %ViWin**
  %self506 = load %ViWin*, %ViWin** %631, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self506)
  %632 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %633 = bitcast i8* %632 to %ViWin**
  %self507 = load %ViWin*, %ViWin** %633, align 8
  %634 = getelementptr inbounds %ViWin, %ViWin* %self507, i32 0, i32 1
  %635 = load %list__intp*, %list__intp** %634, align 8
  %636 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %637 = bitcast i8* %636 to %ViWin**
  %self508 = load %ViWin*, %ViWin** %637, align 8
  %638 = getelementptr inbounds %ViWin, %ViWin* %self508, i32 0, i32 8
  %639 = load i32, i32* %638, align 4
  %640 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %641 = bitcast i8* %640 to %ViWin**
  %self509 = load %ViWin*, %ViWin** %641, align 8
  %642 = getelementptr inbounds %ViWin, %ViWin* %self509, i32 0, i32 6
  %643 = load i32, i32* %642, align 4
  %addtmp510 = add nsw i32 %639, %643
  %644 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.11, i32 0, i32 0))
  %645 = call i32* @"list_item_intp17_vi++04word"(%list__intp* %635, i32 %addtmp510, i32* %644)
  %646 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %647 = bitcast i8* %646 to i32**
  store i32* %645, i32** %647, align 8
  %648 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %649 = bitcast i8* %648 to %ViWin**
  %self511 = load %ViWin*, %ViWin** %649, align 8
  %650 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %651 = bitcast i8* %650 to i32**
  %line512 = load i32*, i32** %651, align 8
  store i32* %line512, i32** %str513, align 8
  %652 = ptrtoint i32* %644 to i64
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %cond_then_block515, label %cond_end516

cond_end501:                                      ; preds = %after_break522, %cond_jump_then488
  %654 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %655 = bitcast i8* %654 to %ViWin**
  %self523 = load %ViWin*, %ViWin** %655, align 8
  call void @ViWin_modifyOverCursorYValue-2(%ViWin* %self523)
  %656 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %657 = bitcast i8* %656 to %ViWin**
  %self524 = load %ViWin*, %ViWin** %657, align 8
  %658 = getelementptr inbounds %ViWin, %ViWin* %self524, i32 0, i32 1
  %659 = load %list__intp*, %list__intp** %658, align 8
  %660 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %661 = bitcast i8* %660 to %ViWin**
  %self525 = load %ViWin*, %ViWin** %661, align 8
  %662 = getelementptr inbounds %ViWin, %ViWin* %self525, i32 0, i32 8
  %663 = load i32, i32* %662, align 4
  %664 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %665 = bitcast i8* %664 to %ViWin**
  %self526 = load %ViWin*, %ViWin** %665, align 8
  %666 = getelementptr inbounds %ViWin, %ViWin* %self526, i32 0, i32 6
  %667 = load i32, i32* %666, align 4
  %addtmp527 = add nsw i32 %663, %667
  %668 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.12, i32 0, i32 0))
  %669 = call i32* @"list_item_intp18_vi++04word"(%list__intp* %659, i32 %addtmp527, i32* %668)
  %670 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %671 = bitcast i8* %670 to i32**
  store i32* %669, i32** %671, align 8
  %672 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %673 = bitcast i8* %672 to i32**
  %line528 = load i32*, i32** %673, align 8
  %674 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %675 = bitcast i8* %674 to i32**
  store i32* %line528, i32** %675, align 8
  %676 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %677 = bitcast i8* %676 to %ViWin**
  %self529 = load %ViWin*, %ViWin** %677, align 8
  %678 = getelementptr inbounds %ViWin, %ViWin* %self529, i32 0, i32 7
  store i32 0, i32* %678, align 4
  %679 = ptrtoint i32* %668 to i64
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %cond_then_block530, label %cond_end531

length514:                                        ; preds = %cond_end516
  %681 = bitcast i32** %str513 to i8*
  store i8* %681, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %str519 = load i32*, i32** %str513, align 8
  %682 = call i64 @wcslen(i32* %str519)
  %683 = trunc i64 %682 to i32
  store i32 %683, i32* %result_variable518, align 4
  br label %inline_func_end517

cond_then_block515:                               ; preds = %cond_jump_then500
  br label %cond_end516

cond_end516:                                      ; preds = %cond_then_block515, %cond_jump_then500
  %684 = bitcast i32* %644 to i8*
  call void @xfree(i8* %684)
  br label %length514

inline_func_end517:                               ; preds = %length514
  %result_variable520 = load i32, i32* %result_variable518, align 4
  %subttmp521 = sub nsw i32 %result_variable520, 1
  %685 = getelementptr inbounds %ViWin, %ViWin* %self511, i32 0, i32 7
  store i32 %subttmp521, i32* %685, align 4
  br label %cond_end_block471

after_break522:                                   ; No predecessors!
  br label %cond_end501

cond_then_block530:                               ; preds = %cond_end501
  br label %cond_end531

cond_end531:                                      ; preds = %cond_then_block530, %cond_end501
  %686 = bitcast i32* %668 to i8*
  call void @xfree(i8* %686)
  br label %cond_end489
}

define void @ViWin_backwardWord-4(%ViWin* %self) {
entry:
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
  %9 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.13, i32 0, i32 0))
  %10 = call i32* @"list_item_intp19_vi++04word"(%list__intp* %4, i32 %addtmp, i32* %9)
  %line = alloca i32*
  %11 = bitcast i32** %line to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  store i32* %10, i32** %line, align 8
  %line5 = load i32*, i32** %line, align 8
  %self6 = load %ViWin*, %ViWin** %self1, align 8
  %12 = getelementptr inbounds %ViWin, %ViWin* %self6, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = ptrtoint i32* %line5 to i64
  %sext1 = sext i32 %13 to i64
  %multtmp = mul nsw i64 %sext1, 4
  %addtmp7 = add nsw i64 %14, %multtmp
  %15 = inttoptr i64 %addtmp7 to i32*
  %p = alloca i32*
  %16 = bitcast i32** %p to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  store i32* %15, i32** %p, align 8
  %self8 = load %ViWin*, %ViWin** %self1, align 8
  %17 = getelementptr inbounds %ViWin, %ViWin* %self8, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %line9 = load i32*, i32** %line, align 8
  %19 = call i64 @wcslen(i32* %line9)
  %20 = trunc i64 %19 to i32
  %eqtmpX = icmp eq i32 %18, %20
  %21 = ptrtoint i32* %9 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block, label %cond_end10

cond_jump_then:                                   ; preds = %cond_end10
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %24 = bitcast i8* %23 to %ViWin**
  %self11 = load %ViWin*, %ViWin** %24, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %26 = bitcast i8* %25 to %ViWin**
  %self12 = load %ViWin*, %ViWin** %26, align 8
  %27 = getelementptr inbounds %ViWin, %ViWin* %self12, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %subttmp = sub nsw i32 %28, 1
  %29 = getelementptr inbounds %ViWin, %ViWin* %self11, i32 0, i32 7
  store i32 %subttmp, i32* %29, align 4
  %addtmp13 = add nsw i32 %subttmp, 1
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %31 = bitcast i8* %30 to i32**
  %p14 = load i32*, i32** %31, align 8
  %32 = ptrtoint i32* %p14 to i64
  %subtmp = sub nsw i64 %32, 4
  %33 = inttoptr i64 %subtmp to i32*
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %35 = bitcast i8* %34 to i32**
  store i32* %33, i32** %35, align 8
  %36 = ptrtoint i32* %33 to i64
  %addtmp15 = add nsw i64 %36, 4
  %37 = inttoptr i64 %addtmp15 to i32*
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %39 = bitcast i8* %38 to %ViWin**
  %self16 = load %ViWin*, %ViWin** %39, align 8
  %40 = getelementptr inbounds %ViWin, %ViWin* %self16, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %letmp = icmp slt i32 %41, 0
  br i1 %letmp, label %cond_jump_then17, label %cond_end18

cond_end:                                         ; preds = %cond_end18, %cond_end10
  %line26 = load i32*, i32** %line, align 8
  %42 = call i64 @wcslen(i32* %line26)
  %eqtmpX27 = icmp eq i64 %42, 0
  br i1 %eqtmpX27, label %cond_jump_then28, label %"cond_jump_elif0\0A"

cond_then_block:                                  ; preds = %entry
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block, %entry
  %43 = bitcast i32* %9 to i8*
  call void @xfree(i8* %43)
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then17:                                 ; preds = %cond_jump_then
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %45 = bitcast i8* %44 to %ViWin**
  %self19 = load %ViWin*, %ViWin** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %47 = bitcast i8* %46 to %ViWin**
  %self20 = load %ViWin*, %ViWin** %47, align 8
  %48 = getelementptr inbounds %ViWin, %ViWin* %self20, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %addtmp21 = add nsw i32 %49, 1
  %50 = getelementptr inbounds %ViWin, %ViWin* %self19, i32 0, i32 7
  store i32 %addtmp21, i32* %50, align 4
  %subttmp22 = sub nsw i32 %addtmp21, 1
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %52 = bitcast i8* %51 to i32**
  %p23 = load i32*, i32** %52, align 8
  %53 = ptrtoint i32* %p23 to i64
  %addtmp24 = add nsw i64 %53, 4
  %54 = inttoptr i64 %addtmp24 to i32*
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %56 = bitcast i8* %55 to i32**
  store i32* %54, i32** %56, align 8
  %57 = ptrtoint i32* %54 to i64
  %subtmp25 = sub nsw i64 %57, 4
  %58 = inttoptr i64 %subtmp25 to i32*
  br label %cond_end18

cond_end18:                                       ; preds = %cond_jump_then17, %cond_jump_then
  br label %cond_end

cond_jump_then28:                                 ; preds = %cond_end
  br label %loop_top_block

"cond_jump_elif0\0A":                             ; preds = %cond_end
  %oror_result_var = alloca i1
  %oror_result_var64 = alloca i1
  %oror_result_var65 = alloca i1
  %andand_result_var66 = alloca i1
  %p67 = load i32*, i32** %p, align 8
  %derefference_value = load i32, i32* %p67, align 8
  %getmp = icmp sge i32 %derefference_value, 33
  store i1 %getmp, i1* %andand_result_var66, align 1
  br i1 %getmp, label %cond_jump_then68, label %cond_jump_end69

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end103
  br label %loop_top_block117

"cond_jump_elif1\0A":                             ; preds = %cond_jump_end103
  %oror_result_var225 = alloca i1
  %andand_result_var226 = alloca i1
  %p227 = load i32*, i32** %p, align 8
  %derefference_value228 = load i32, i32* %p227, align 8
  %getmp229 = icmp sge i32 %derefference_value228, 97
  store i1 %getmp229, i1* %andand_result_var226, align 1
  br i1 %getmp229, label %cond_jump_then230, label %cond_jump_end231

"cond_jump_elif_then1\0A":                        ; preds = %cond_jump_end238
  br label %loop_top_block252

"cond_jump_elif2\0A":                             ; preds = %cond_jump_end238
  %p329 = load i32*, i32** %p, align 8
  %derefference_value330 = load i32, i32* %p329, align 8
  %59 = call i32 @iswalpha(i32 %derefference_value330)
  %60 = trunc i32 %59 to i1
  br i1 %60, label %"cond_jump_elif_then2\0A", label %"cond_jump_elif3\0A"

"cond_jump_elif_then2\0A":                        ; preds = %"cond_jump_elif2\0A"
  br label %loop_top_block331

"cond_jump_elif3\0A":                             ; preds = %"cond_jump_elif2\0A"
  %p383 = load i32*, i32** %p, align 8
  %derefference_value384 = load i32, i32* %p383, align 8
  %61 = call i32 @iswdigit(i32 %derefference_value384)
  %62 = trunc i32 %61 to i1
  br i1 %62, label %"cond_jump_elif_then3\0A", label %"cond_jump_elif4\0A"

"cond_jump_elif_then3\0A":                        ; preds = %"cond_jump_elif3\0A"
  br label %loop_top_block385

"cond_jump_elif4\0A":                             ; preds = %"cond_jump_elif3\0A"
  %p437 = load i32*, i32** %p, align 8
  %derefference_value438 = load i32, i32* %p437, align 8
  %63 = call i32 @iswblank(i32 %derefference_value438)
  %64 = trunc i32 %63 to i1
  br i1 %64, label %"cond_jump_elif_then4\0A", label %cond_end29

"cond_jump_elif_then4\0A":                        ; preds = %"cond_jump_elif4\0A"
  br label %loop_top_block439

cond_end29:                                       ; preds = %cond_end_block443, %"cond_jump_elif4\0A", %cond_end_block389, %cond_end_block335, %cond_end_block281, %cond_end_block178, %cond_end60
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end50, %cond_jump_then28
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %68 = bitcast i8* %67 to i32**
  %line30 = load i32*, i32** %68, align 8
  %69 = call i64 @wcslen(i32* %line30)
  %eqtmpX31 = icmp eq i64 %69, 0
  br i1 %eqtmpX31, label %cond_then_block32, label %cond_end_block

cond_then_block32:                                ; preds = %loop_top_block
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %71 = bitcast i8* %70 to %ViWin**
  %self33 = load %ViWin*, %ViWin** %71, align 8
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %73 = bitcast i8* %72 to %ViWin**
  %self34 = load %ViWin*, %ViWin** %73, align 8
  %74 = getelementptr inbounds %ViWin, %ViWin* %self34, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %subttmp35 = sub nsw i32 %75, 1
  %76 = getelementptr inbounds %ViWin, %ViWin* %self33, i32 0, i32 6
  store i32 %subttmp35, i32* %76, align 4
  %addtmp36 = add nsw i32 %subttmp35, 1
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %78 = bitcast i8* %77 to %ViWin**
  %self37 = load %ViWin*, %ViWin** %78, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self37)
  %andand_result_var = alloca i1
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %80 = bitcast i8* %79 to %ViWin**
  %self38 = load %ViWin*, %ViWin** %80, align 8
  %81 = getelementptr inbounds %ViWin, %ViWin* %self38, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %eqtmpX39 = icmp eq i32 %82, 0
  store i1 %eqtmpX39, i1* %andand_result_var, align 1
  br i1 %eqtmpX39, label %cond_jump_then40, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_jump_then43, %loop_top_block
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %84 = bitcast i8* %83 to %ViWin**
  %self51 = load %ViWin*, %ViWin** %84, align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %86 = bitcast i8* %85 to %ViWin**
  %self52 = load %ViWin*, %ViWin** %86, align 8
  %87 = getelementptr inbounds %ViWin, %ViWin* %self52, i32 0, i32 1
  %88 = load %list__intp*, %list__intp** %87, align 8
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %90 = bitcast i8* %89 to %ViWin**
  %self53 = load %ViWin*, %ViWin** %90, align 8
  %91 = getelementptr inbounds %ViWin, %ViWin* %self53, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %94 = bitcast i8* %93 to %ViWin**
  %self54 = load %ViWin*, %ViWin** %94, align 8
  %95 = getelementptr inbounds %ViWin, %ViWin* %self54, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %addtmp55 = add nsw i32 %92, %96
  %97 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.15, i32 0, i32 0))
  %98 = call i32* @"list_item_intp21_vi++04word"(%list__intp* %88, i32 %addtmp55, i32* %97)
  %99 = call i64 @wcslen(i32* %98)
  %subttmp56 = sub nsw i64 %99, 1
  %100 = trunc i64 %subttmp56 to i32
  %101 = getelementptr inbounds %ViWin, %ViWin* %self51, i32 0, i32 7
  store i32 %100, i32* %101, align 4
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %103 = bitcast i8* %102 to %ViWin**
  %self57 = load %ViWin*, %ViWin** %103, align 8
  %104 = getelementptr inbounds %ViWin, %ViWin* %self57, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %letmp58 = icmp slt i32 %105, 0
  %106 = ptrtoint i32* %97 to i64
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %cond_then_block61, label %cond_end62

cond_jump_then40:                                 ; preds = %cond_then_block32
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %109 = bitcast i8* %108 to %ViWin**
  %self41 = load %ViWin*, %ViWin** %109, align 8
  %110 = getelementptr inbounds %ViWin, %ViWin* %self41, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %eqtmpX42 = icmp eq i32 %111, 0
  %andand = and i1 %eqtmpX39, %eqtmpX42
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then40, %cond_then_block32
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then43, label %cond_end44

cond_jump_then43:                                 ; preds = %cond_jump_end
  br label %cond_end_block

cond_end44:                                       ; preds = %after_break, %cond_jump_end
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %113 = bitcast i8* %112 to %ViWin**
  %self45 = load %ViWin*, %ViWin** %113, align 8
  %114 = getelementptr inbounds %ViWin, %ViWin* %self45, i32 0, i32 1
  %115 = load %list__intp*, %list__intp** %114, align 8
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %117 = bitcast i8* %116 to %ViWin**
  %self46 = load %ViWin*, %ViWin** %117, align 8
  %118 = getelementptr inbounds %ViWin, %ViWin* %self46, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %121 = bitcast i8* %120 to %ViWin**
  %self47 = load %ViWin*, %ViWin** %121, align 8
  %122 = getelementptr inbounds %ViWin, %ViWin* %self47, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %addtmp48 = add nsw i32 %119, %123
  %124 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.14, i32 0, i32 0))
  %125 = call i32* @"list_item_intp20_vi++04word"(%list__intp* %115, i32 %addtmp48, i32* %124)
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %127 = bitcast i8* %126 to i32**
  store i32* %125, i32** %127, align 8
  %128 = ptrtoint i32* %124 to i64
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %cond_then_block49, label %cond_end50

after_break:                                      ; No predecessors!
  br label %cond_end44

cond_then_block49:                                ; preds = %cond_end44
  br label %cond_end50

cond_end50:                                       ; preds = %cond_then_block49, %cond_end44
  %130 = bitcast i32* %124 to i8*
  call void @xfree(i8* %130)
  br label %loop_top_block

cond_jump_then59:                                 ; preds = %cond_end62
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %132 = bitcast i8* %131 to %ViWin**
  %self63 = load %ViWin*, %ViWin** %132, align 8
  %133 = getelementptr inbounds %ViWin, %ViWin* %self63, i32 0, i32 7
  store i32 0, i32* %133, align 4
  br label %cond_end60

cond_end60:                                       ; preds = %cond_jump_then59, %cond_end62
  br label %cond_end29

cond_then_block61:                                ; preds = %cond_end_block
  br label %cond_end62

cond_end62:                                       ; preds = %cond_then_block61, %cond_end_block
  %134 = bitcast i32* %97 to i8*
  call void @xfree(i8* %134)
  br i1 %letmp58, label %cond_jump_then59, label %cond_end60

cond_jump_then68:                                 ; preds = %"cond_jump_elif0\0A"
  %p70 = load i32*, i32** %p, align 8
  %derefference_value71 = load i32, i32* %p70, align 8
  %leeqtmp = icmp sle i32 %derefference_value71, 47
  %andand72 = and i1 %getmp, %leeqtmp
  store i1 %andand72, i1* %andand_result_var66, align 1
  br label %cond_jump_end69

cond_jump_end69:                                  ; preds = %cond_jump_then68, %"cond_jump_elif0\0A"
  %andand_result_value73 = load i1, i1* %andand_result_var66, align 1
  store i1 %andand_result_value73, i1* %oror_result_var65, align 1
  br i1 %andand_result_value73, label %cond_jump_end75, label %cond_jump_then74

cond_jump_then74:                                 ; preds = %cond_jump_end69
  %andand_result_var76 = alloca i1
  %p77 = load i32*, i32** %p, align 8
  %derefference_value78 = load i32, i32* %p77, align 8
  %getmp79 = icmp sge i32 %derefference_value78, 58
  store i1 %getmp79, i1* %andand_result_var76, align 1
  br i1 %getmp79, label %cond_jump_then80, label %cond_jump_end81

cond_jump_end75:                                  ; preds = %cond_jump_end81, %cond_jump_end69
  %oror_result_value = load i1, i1* %oror_result_var65, align 1
  store i1 %oror_result_value, i1* %oror_result_var64, align 1
  br i1 %oror_result_value, label %cond_jump_end88, label %cond_jump_then87

cond_jump_then80:                                 ; preds = %cond_jump_then74
  %p82 = load i32*, i32** %p, align 8
  %derefference_value83 = load i32, i32* %p82, align 8
  %leeqtmp84 = icmp sle i32 %derefference_value83, 64
  %andand85 = and i1 %getmp79, %leeqtmp84
  store i1 %andand85, i1* %andand_result_var76, align 1
  br label %cond_jump_end81

cond_jump_end81:                                  ; preds = %cond_jump_then80, %cond_jump_then74
  %andand_result_value86 = load i1, i1* %andand_result_var76, align 1
  %oror = or i1 %andand_result_value73, %andand_result_value86
  store i1 %oror, i1* %oror_result_var65, align 1
  br label %cond_jump_end75

cond_jump_then87:                                 ; preds = %cond_jump_end75
  %andand_result_var89 = alloca i1
  %p90 = load i32*, i32** %p, align 8
  %derefference_value91 = load i32, i32* %p90, align 8
  %getmp92 = icmp sge i32 %derefference_value91, 123
  store i1 %getmp92, i1* %andand_result_var89, align 1
  br i1 %getmp92, label %cond_jump_then93, label %cond_jump_end94

cond_jump_end88:                                  ; preds = %cond_jump_end94, %cond_jump_end75
  %oror_result_value101 = load i1, i1* %oror_result_var64, align 1
  store i1 %oror_result_value101, i1* %oror_result_var, align 1
  br i1 %oror_result_value101, label %cond_jump_end103, label %cond_jump_then102

cond_jump_then93:                                 ; preds = %cond_jump_then87
  %p95 = load i32*, i32** %p, align 8
  %derefference_value96 = load i32, i32* %p95, align 8
  %leeqtmp97 = icmp sle i32 %derefference_value96, 126
  %andand98 = and i1 %getmp92, %leeqtmp97
  store i1 %andand98, i1* %andand_result_var89, align 1
  br label %cond_jump_end94

cond_jump_end94:                                  ; preds = %cond_jump_then93, %cond_jump_then87
  %andand_result_value99 = load i1, i1* %andand_result_var89, align 1
  %oror100 = or i1 %oror_result_value, %andand_result_value99
  store i1 %oror100, i1* %oror_result_var64, align 1
  br label %cond_jump_end88

cond_jump_then102:                                ; preds = %cond_jump_end88
  %andand_result_var104 = alloca i1
  %p105 = load i32*, i32** %p, align 8
  %derefference_value106 = load i32, i32* %p105, align 8
  %getmp107 = icmp sge i32 %derefference_value106, 91
  store i1 %getmp107, i1* %andand_result_var104, align 1
  br i1 %getmp107, label %cond_jump_then108, label %cond_jump_end109

cond_jump_end103:                                 ; preds = %cond_jump_end109, %cond_jump_end88
  %oror_result_value116 = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value116, label %"cond_jump_elif_then0\0A", label %"cond_jump_elif1\0A"

cond_jump_then108:                                ; preds = %cond_jump_then102
  %p110 = load i32*, i32** %p, align 8
  %derefference_value111 = load i32, i32* %p110, align 8
  %leeqtmp112 = icmp sle i32 %derefference_value111, 96
  %andand113 = and i1 %getmp107, %leeqtmp112
  store i1 %andand113, i1* %andand_result_var104, align 1
  br label %cond_jump_end109

cond_jump_end109:                                 ; preds = %cond_jump_then108, %cond_jump_then102
  %andand_result_value114 = load i1, i1* %andand_result_var104, align 1
  %oror115 = or i1 %oror_result_value101, %andand_result_value114
  store i1 %oror115, i1* %oror_result_var, align 1
  br label %cond_jump_end103

loop_top_block117:                                ; preds = %cond_end189, %"cond_jump_elif_then0\0A"
  %oror_result_var118 = alloca i1
  %oror_result_var119 = alloca i1
  %oror_result_var120 = alloca i1
  %andand_result_var121 = alloca i1
  %135 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %136 = bitcast i8* %135 to i32**
  %p122 = load i32*, i32** %136, align 8
  %derefference_value123 = load i32, i32* %p122, align 8
  %getmp124 = icmp sge i32 %derefference_value123, 33
  store i1 %getmp124, i1* %andand_result_var121, align 1
  br i1 %getmp124, label %cond_jump_then125, label %cond_jump_end126

cond_jump_then125:                                ; preds = %loop_top_block117
  %137 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %138 = bitcast i8* %137 to i32**
  %p127 = load i32*, i32** %138, align 8
  %derefference_value128 = load i32, i32* %p127, align 8
  %leeqtmp129 = icmp sle i32 %derefference_value128, 47
  %andand130 = and i1 %getmp124, %leeqtmp129
  store i1 %andand130, i1* %andand_result_var121, align 1
  br label %cond_jump_end126

cond_jump_end126:                                 ; preds = %cond_jump_then125, %loop_top_block117
  %andand_result_value131 = load i1, i1* %andand_result_var121, align 1
  store i1 %andand_result_value131, i1* %oror_result_var120, align 1
  br i1 %andand_result_value131, label %cond_jump_end133, label %cond_jump_then132

cond_jump_then132:                                ; preds = %cond_jump_end126
  %andand_result_var134 = alloca i1
  %139 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %140 = bitcast i8* %139 to i32**
  %p135 = load i32*, i32** %140, align 8
  %derefference_value136 = load i32, i32* %p135, align 8
  %getmp137 = icmp sge i32 %derefference_value136, 58
  store i1 %getmp137, i1* %andand_result_var134, align 1
  br i1 %getmp137, label %cond_jump_then138, label %cond_jump_end139

cond_jump_end133:                                 ; preds = %cond_jump_end139, %cond_jump_end126
  %oror_result_value146 = load i1, i1* %oror_result_var120, align 1
  store i1 %oror_result_value146, i1* %oror_result_var119, align 1
  br i1 %oror_result_value146, label %cond_jump_end148, label %cond_jump_then147

cond_jump_then138:                                ; preds = %cond_jump_then132
  %141 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %142 = bitcast i8* %141 to i32**
  %p140 = load i32*, i32** %142, align 8
  %derefference_value141 = load i32, i32* %p140, align 8
  %leeqtmp142 = icmp sle i32 %derefference_value141, 64
  %andand143 = and i1 %getmp137, %leeqtmp142
  store i1 %andand143, i1* %andand_result_var134, align 1
  br label %cond_jump_end139

cond_jump_end139:                                 ; preds = %cond_jump_then138, %cond_jump_then132
  %andand_result_value144 = load i1, i1* %andand_result_var134, align 1
  %oror145 = or i1 %andand_result_value131, %andand_result_value144
  store i1 %oror145, i1* %oror_result_var120, align 1
  br label %cond_jump_end133

cond_jump_then147:                                ; preds = %cond_jump_end133
  %andand_result_var149 = alloca i1
  %143 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %144 = bitcast i8* %143 to i32**
  %p150 = load i32*, i32** %144, align 8
  %derefference_value151 = load i32, i32* %p150, align 8
  %getmp152 = icmp sge i32 %derefference_value151, 123
  store i1 %getmp152, i1* %andand_result_var149, align 1
  br i1 %getmp152, label %cond_jump_then153, label %cond_jump_end154

cond_jump_end148:                                 ; preds = %cond_jump_end154, %cond_jump_end133
  %oror_result_value161 = load i1, i1* %oror_result_var119, align 1
  store i1 %oror_result_value161, i1* %oror_result_var118, align 1
  br i1 %oror_result_value161, label %cond_jump_end163, label %cond_jump_then162

cond_jump_then153:                                ; preds = %cond_jump_then147
  %145 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %146 = bitcast i8* %145 to i32**
  %p155 = load i32*, i32** %146, align 8
  %derefference_value156 = load i32, i32* %p155, align 8
  %leeqtmp157 = icmp sle i32 %derefference_value156, 126
  %andand158 = and i1 %getmp152, %leeqtmp157
  store i1 %andand158, i1* %andand_result_var149, align 1
  br label %cond_jump_end154

cond_jump_end154:                                 ; preds = %cond_jump_then153, %cond_jump_then147
  %andand_result_value159 = load i1, i1* %andand_result_var149, align 1
  %oror160 = or i1 %oror_result_value146, %andand_result_value159
  store i1 %oror160, i1* %oror_result_var119, align 1
  br label %cond_jump_end148

cond_jump_then162:                                ; preds = %cond_jump_end148
  %andand_result_var164 = alloca i1
  %147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %148 = bitcast i8* %147 to i32**
  %p165 = load i32*, i32** %148, align 8
  %derefference_value166 = load i32, i32* %p165, align 8
  %getmp167 = icmp sge i32 %derefference_value166, 91
  store i1 %getmp167, i1* %andand_result_var164, align 1
  br i1 %getmp167, label %cond_jump_then168, label %cond_jump_end169

cond_jump_end163:                                 ; preds = %cond_jump_end169, %cond_jump_end148
  %oror_result_value176 = load i1, i1* %oror_result_var118, align 1
  br i1 %oror_result_value176, label %cond_then_block177, label %cond_end_block178

cond_jump_then168:                                ; preds = %cond_jump_then162
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %150 = bitcast i8* %149 to i32**
  %p170 = load i32*, i32** %150, align 8
  %derefference_value171 = load i32, i32* %p170, align 8
  %leeqtmp172 = icmp sle i32 %derefference_value171, 96
  %andand173 = and i1 %getmp167, %leeqtmp172
  store i1 %andand173, i1* %andand_result_var164, align 1
  br label %cond_jump_end169

cond_jump_end169:                                 ; preds = %cond_jump_then168, %cond_jump_then162
  %andand_result_value174 = load i1, i1* %andand_result_var164, align 1
  %oror175 = or i1 %oror_result_value161, %andand_result_value174
  store i1 %oror175, i1* %oror_result_var118, align 1
  br label %cond_jump_end163

cond_then_block177:                               ; preds = %cond_jump_end163
  %151 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %152 = bitcast i8* %151 to i32**
  %p179 = load i32*, i32** %152, align 8
  %153 = ptrtoint i32* %p179 to i64
  %subtmp180 = sub nsw i64 %153, 4
  %154 = inttoptr i64 %subtmp180 to i32*
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %156 = bitcast i8* %155 to i32**
  store i32* %154, i32** %156, align 8
  %157 = ptrtoint i32* %154 to i64
  %addtmp181 = add nsw i64 %157, 4
  %158 = inttoptr i64 %addtmp181 to i32*
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %160 = bitcast i8* %159 to %ViWin**
  %self182 = load %ViWin*, %ViWin** %160, align 8
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %162 = bitcast i8* %161 to %ViWin**
  %self183 = load %ViWin*, %ViWin** %162, align 8
  %163 = getelementptr inbounds %ViWin, %ViWin* %self183, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %subttmp184 = sub nsw i32 %164, 1
  %165 = getelementptr inbounds %ViWin, %ViWin* %self182, i32 0, i32 7
  store i32 %subttmp184, i32* %165, align 4
  %addtmp185 = add nsw i32 %subttmp184, 1
  %166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %167 = bitcast i8* %166 to %ViWin**
  %self186 = load %ViWin*, %ViWin** %167, align 8
  %168 = getelementptr inbounds %ViWin, %ViWin* %self186, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %letmp187 = icmp slt i32 %169, 0
  br i1 %letmp187, label %cond_jump_then188, label %cond_end189

cond_end_block178:                                ; preds = %cond_jump_then200, %cond_jump_end163
  br label %cond_end29

cond_jump_then188:                                ; preds = %cond_then_block177
  %170 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %171 = bitcast i8* %170 to %ViWin**
  %self190 = load %ViWin*, %ViWin** %171, align 8
  %172 = getelementptr inbounds %ViWin, %ViWin* %self190, i32 0, i32 7
  store i32 0, i32* %172, align 4
  %173 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %174 = bitcast i8* %173 to %ViWin**
  %self191 = load %ViWin*, %ViWin** %174, align 8
  %175 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %176 = bitcast i8* %175 to %ViWin**
  %self192 = load %ViWin*, %ViWin** %176, align 8
  %177 = getelementptr inbounds %ViWin, %ViWin* %self192, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %subttmp193 = sub nsw i32 %178, 1
  %179 = getelementptr inbounds %ViWin, %ViWin* %self191, i32 0, i32 6
  store i32 %subttmp193, i32* %179, align 4
  %addtmp194 = add nsw i32 %subttmp193, 1
  %180 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %181 = bitcast i8* %180 to %ViWin**
  %self195 = load %ViWin*, %ViWin** %181, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self195)
  %182 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %183 = bitcast i8* %182 to %ViWin**
  %self196 = load %ViWin*, %ViWin** %183, align 8
  %184 = getelementptr inbounds %ViWin, %ViWin* %self196, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %187 = bitcast i8* %186 to %ViWin**
  %self197 = load %ViWin*, %ViWin** %187, align 8
  %188 = getelementptr inbounds %ViWin, %ViWin* %self197, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %addtmp198 = add nsw i32 %185, %189
  %leeqtmp199 = icmp sle i32 %addtmp198, 0
  br i1 %leeqtmp199, label %cond_jump_then200, label %cond_end201

cond_end189:                                      ; preds = %cond_end212, %cond_then_block177
  br label %loop_top_block117

cond_jump_then200:                                ; preds = %cond_jump_then188
  %190 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %191 = bitcast i8* %190 to %ViWin**
  %self202 = load %ViWin*, %ViWin** %191, align 8
  %192 = getelementptr inbounds %ViWin, %ViWin* %self202, i32 0, i32 6
  store i32 0, i32* %192, align 4
  %193 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %194 = bitcast i8* %193 to %ViWin**
  %self203 = load %ViWin*, %ViWin** %194, align 8
  %195 = getelementptr inbounds %ViWin, %ViWin* %self203, i32 0, i32 8
  store i32 0, i32* %195, align 4
  br label %cond_end_block178

cond_end201:                                      ; preds = %after_break204, %cond_jump_then188
  %196 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %197 = bitcast i8* %196 to %ViWin**
  %self205 = load %ViWin*, %ViWin** %197, align 8
  %198 = getelementptr inbounds %ViWin, %ViWin* %self205, i32 0, i32 1
  %199 = load %list__intp*, %list__intp** %198, align 8
  %200 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %201 = bitcast i8* %200 to %ViWin**
  %self206 = load %ViWin*, %ViWin** %201, align 8
  %202 = getelementptr inbounds %ViWin, %ViWin* %self206, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %205 = bitcast i8* %204 to %ViWin**
  %self207 = load %ViWin*, %ViWin** %205, align 8
  %206 = getelementptr inbounds %ViWin, %ViWin* %self207, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %addtmp208 = add nsw i32 %203, %207
  %208 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.16, i32 0, i32 0))
  %209 = call i32* @"list_item_intp22_vi++04word"(%list__intp* %199, i32 %addtmp208, i32* %208)
  %210 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %211 = bitcast i8* %210 to i32**
  store i32* %209, i32** %211, align 8
  %212 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %213 = bitcast i8* %212 to i32**
  %line209 = load i32*, i32** %213, align 8
  %214 = call i64 @wcslen(i32* %line209)
  %eqtmpX210 = icmp eq i64 %214, 0
  %215 = ptrtoint i32* %208 to i64
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %cond_then_block213, label %cond_end214

after_break204:                                   ; No predecessors!
  br label %cond_end201

cond_jump_then211:                                ; preds = %cond_end214
  %217 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %218 = bitcast i8* %217 to i32**
  %line215 = load i32*, i32** %218, align 8
  %219 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %220 = bitcast i8* %219 to i32**
  store i32* %line215, i32** %220, align 8
  %221 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %222 = bitcast i8* %221 to %ViWin**
  %self216 = load %ViWin*, %ViWin** %222, align 8
  %223 = getelementptr inbounds %ViWin, %ViWin* %self216, i32 0, i32 7
  store i32 0, i32* %223, align 4
  br label %cond_end212

cond_else_block:                                  ; preds = %cond_end214
  %224 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %225 = bitcast i8* %224 to %ViWin**
  %self217 = load %ViWin*, %ViWin** %225, align 8
  %226 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %227 = bitcast i8* %226 to i32**
  %line218 = load i32*, i32** %227, align 8
  %228 = call i64 @wcslen(i32* %line218)
  %subttmp219 = sub nsw i64 %228, 1
  %229 = trunc i64 %subttmp219 to i32
  %230 = getelementptr inbounds %ViWin, %ViWin* %self217, i32 0, i32 7
  store i32 %229, i32* %230, align 4
  %231 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %232 = bitcast i8* %231 to i32**
  %line220 = load i32*, i32** %232, align 8
  %233 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %234 = bitcast i8* %233 to %ViWin**
  %self221 = load %ViWin*, %ViWin** %234, align 8
  %235 = getelementptr inbounds %ViWin, %ViWin* %self221, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = ptrtoint i32* %line220 to i64
  %sext1222 = sext i32 %236 to i64
  %multtmp223 = mul nsw i64 %sext1222, 4
  %addtmp224 = add nsw i64 %237, %multtmp223
  %238 = inttoptr i64 %addtmp224 to i32*
  %239 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %240 = bitcast i8* %239 to i32**
  store i32* %238, i32** %240, align 8
  br label %cond_end212

cond_end212:                                      ; preds = %cond_else_block, %cond_jump_then211
  br label %cond_end189

cond_then_block213:                               ; preds = %cond_end201
  br label %cond_end214

cond_end214:                                      ; preds = %cond_then_block213, %cond_end201
  %241 = bitcast i32* %208 to i8*
  call void @xfree(i8* %241)
  br i1 %eqtmpX210, label %cond_jump_then211, label %cond_else_block

cond_jump_then230:                                ; preds = %"cond_jump_elif1\0A"
  %p232 = load i32*, i32** %p, align 8
  %derefference_value233 = load i32, i32* %p232, align 8
  %leeqtmp234 = icmp sle i32 %derefference_value233, 122
  %andand235 = and i1 %getmp229, %leeqtmp234
  store i1 %andand235, i1* %andand_result_var226, align 1
  br label %cond_jump_end231

cond_jump_end231:                                 ; preds = %cond_jump_then230, %"cond_jump_elif1\0A"
  %andand_result_value236 = load i1, i1* %andand_result_var226, align 1
  store i1 %andand_result_value236, i1* %oror_result_var225, align 1
  br i1 %andand_result_value236, label %cond_jump_end238, label %cond_jump_then237

cond_jump_then237:                                ; preds = %cond_jump_end231
  %andand_result_var239 = alloca i1
  %p240 = load i32*, i32** %p, align 8
  %derefference_value241 = load i32, i32* %p240, align 8
  %getmp242 = icmp sge i32 %derefference_value241, 65
  store i1 %getmp242, i1* %andand_result_var239, align 1
  br i1 %getmp242, label %cond_jump_then243, label %cond_jump_end244

cond_jump_end238:                                 ; preds = %cond_jump_end244, %cond_jump_end231
  %oror_result_value251 = load i1, i1* %oror_result_var225, align 1
  br i1 %oror_result_value251, label %"cond_jump_elif_then1\0A", label %"cond_jump_elif2\0A"

cond_jump_then243:                                ; preds = %cond_jump_then237
  %p245 = load i32*, i32** %p, align 8
  %derefference_value246 = load i32, i32* %p245, align 8
  %leeqtmp247 = icmp sle i32 %derefference_value246, 90
  %andand248 = and i1 %getmp242, %leeqtmp247
  store i1 %andand248, i1* %andand_result_var239, align 1
  br label %cond_jump_end244

cond_jump_end244:                                 ; preds = %cond_jump_then243, %cond_jump_then237
  %andand_result_value249 = load i1, i1* %andand_result_var239, align 1
  %oror250 = or i1 %andand_result_value236, %andand_result_value249
  store i1 %oror250, i1* %oror_result_var225, align 1
  br label %cond_jump_end238

loop_top_block252:                                ; preds = %cond_end292, %"cond_jump_elif_then1\0A"
  %oror_result_var253 = alloca i1
  %andand_result_var254 = alloca i1
  %242 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %243 = bitcast i8* %242 to i32**
  %p255 = load i32*, i32** %243, align 8
  %derefference_value256 = load i32, i32* %p255, align 8
  %getmp257 = icmp sge i32 %derefference_value256, 97
  store i1 %getmp257, i1* %andand_result_var254, align 1
  br i1 %getmp257, label %cond_jump_then258, label %cond_jump_end259

cond_jump_then258:                                ; preds = %loop_top_block252
  %244 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %245 = bitcast i8* %244 to i32**
  %p260 = load i32*, i32** %245, align 8
  %derefference_value261 = load i32, i32* %p260, align 8
  %leeqtmp262 = icmp sle i32 %derefference_value261, 122
  %andand263 = and i1 %getmp257, %leeqtmp262
  store i1 %andand263, i1* %andand_result_var254, align 1
  br label %cond_jump_end259

cond_jump_end259:                                 ; preds = %cond_jump_then258, %loop_top_block252
  %andand_result_value264 = load i1, i1* %andand_result_var254, align 1
  store i1 %andand_result_value264, i1* %oror_result_var253, align 1
  br i1 %andand_result_value264, label %cond_jump_end266, label %cond_jump_then265

cond_jump_then265:                                ; preds = %cond_jump_end259
  %andand_result_var267 = alloca i1
  %246 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %247 = bitcast i8* %246 to i32**
  %p268 = load i32*, i32** %247, align 8
  %derefference_value269 = load i32, i32* %p268, align 8
  %getmp270 = icmp sge i32 %derefference_value269, 65
  store i1 %getmp270, i1* %andand_result_var267, align 1
  br i1 %getmp270, label %cond_jump_then271, label %cond_jump_end272

cond_jump_end266:                                 ; preds = %cond_jump_end272, %cond_jump_end259
  %oror_result_value279 = load i1, i1* %oror_result_var253, align 1
  br i1 %oror_result_value279, label %cond_then_block280, label %cond_end_block281

cond_jump_then271:                                ; preds = %cond_jump_then265
  %248 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %249 = bitcast i8* %248 to i32**
  %p273 = load i32*, i32** %249, align 8
  %derefference_value274 = load i32, i32* %p273, align 8
  %leeqtmp275 = icmp sle i32 %derefference_value274, 90
  %andand276 = and i1 %getmp270, %leeqtmp275
  store i1 %andand276, i1* %andand_result_var267, align 1
  br label %cond_jump_end272

cond_jump_end272:                                 ; preds = %cond_jump_then271, %cond_jump_then265
  %andand_result_value277 = load i1, i1* %andand_result_var267, align 1
  %oror278 = or i1 %andand_result_value264, %andand_result_value277
  store i1 %oror278, i1* %oror_result_var253, align 1
  br label %cond_jump_end266

cond_then_block280:                               ; preds = %cond_jump_end266
  %250 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %251 = bitcast i8* %250 to i32**
  %p282 = load i32*, i32** %251, align 8
  %252 = ptrtoint i32* %p282 to i64
  %subtmp283 = sub nsw i64 %252, 4
  %253 = inttoptr i64 %subtmp283 to i32*
  %254 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %255 = bitcast i8* %254 to i32**
  store i32* %253, i32** %255, align 8
  %256 = ptrtoint i32* %253 to i64
  %addtmp284 = add nsw i64 %256, 4
  %257 = inttoptr i64 %addtmp284 to i32*
  %258 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %259 = bitcast i8* %258 to %ViWin**
  %self285 = load %ViWin*, %ViWin** %259, align 8
  %260 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %261 = bitcast i8* %260 to %ViWin**
  %self286 = load %ViWin*, %ViWin** %261, align 8
  %262 = getelementptr inbounds %ViWin, %ViWin* %self286, i32 0, i32 7
  %263 = load i32, i32* %262, align 4
  %subttmp287 = sub nsw i32 %263, 1
  %264 = getelementptr inbounds %ViWin, %ViWin* %self285, i32 0, i32 7
  store i32 %subttmp287, i32* %264, align 4
  %addtmp288 = add nsw i32 %subttmp287, 1
  %265 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %266 = bitcast i8* %265 to %ViWin**
  %self289 = load %ViWin*, %ViWin** %266, align 8
  %267 = getelementptr inbounds %ViWin, %ViWin* %self289, i32 0, i32 7
  %268 = load i32, i32* %267, align 4
  %letmp290 = icmp slt i32 %268, 0
  br i1 %letmp290, label %cond_jump_then291, label %cond_end292

cond_end_block281:                                ; preds = %cond_jump_then303, %cond_jump_end266
  br label %cond_end29

cond_jump_then291:                                ; preds = %cond_then_block280
  %269 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %270 = bitcast i8* %269 to %ViWin**
  %self293 = load %ViWin*, %ViWin** %270, align 8
  %271 = getelementptr inbounds %ViWin, %ViWin* %self293, i32 0, i32 7
  store i32 0, i32* %271, align 4
  %272 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %273 = bitcast i8* %272 to %ViWin**
  %self294 = load %ViWin*, %ViWin** %273, align 8
  %274 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %275 = bitcast i8* %274 to %ViWin**
  %self295 = load %ViWin*, %ViWin** %275, align 8
  %276 = getelementptr inbounds %ViWin, %ViWin* %self295, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %subttmp296 = sub nsw i32 %277, 1
  %278 = getelementptr inbounds %ViWin, %ViWin* %self294, i32 0, i32 6
  store i32 %subttmp296, i32* %278, align 4
  %addtmp297 = add nsw i32 %subttmp296, 1
  %279 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %280 = bitcast i8* %279 to %ViWin**
  %self298 = load %ViWin*, %ViWin** %280, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self298)
  %281 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %282 = bitcast i8* %281 to %ViWin**
  %self299 = load %ViWin*, %ViWin** %282, align 8
  %283 = getelementptr inbounds %ViWin, %ViWin* %self299, i32 0, i32 8
  %284 = load i32, i32* %283, align 4
  %285 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %286 = bitcast i8* %285 to %ViWin**
  %self300 = load %ViWin*, %ViWin** %286, align 8
  %287 = getelementptr inbounds %ViWin, %ViWin* %self300, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %addtmp301 = add nsw i32 %284, %288
  %leeqtmp302 = icmp sle i32 %addtmp301, 0
  br i1 %leeqtmp302, label %cond_jump_then303, label %cond_end304

cond_end292:                                      ; preds = %cond_end316, %cond_then_block280
  br label %loop_top_block252

cond_jump_then303:                                ; preds = %cond_jump_then291
  %289 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %290 = bitcast i8* %289 to %ViWin**
  %self305 = load %ViWin*, %ViWin** %290, align 8
  %291 = getelementptr inbounds %ViWin, %ViWin* %self305, i32 0, i32 6
  store i32 0, i32* %291, align 4
  %292 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %293 = bitcast i8* %292 to %ViWin**
  %self306 = load %ViWin*, %ViWin** %293, align 8
  %294 = getelementptr inbounds %ViWin, %ViWin* %self306, i32 0, i32 8
  store i32 0, i32* %294, align 4
  br label %cond_end_block281

cond_end304:                                      ; preds = %after_break307, %cond_jump_then291
  %295 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %296 = bitcast i8* %295 to %ViWin**
  %self308 = load %ViWin*, %ViWin** %296, align 8
  %297 = getelementptr inbounds %ViWin, %ViWin* %self308, i32 0, i32 1
  %298 = load %list__intp*, %list__intp** %297, align 8
  %299 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %300 = bitcast i8* %299 to %ViWin**
  %self309 = load %ViWin*, %ViWin** %300, align 8
  %301 = getelementptr inbounds %ViWin, %ViWin* %self309, i32 0, i32 8
  %302 = load i32, i32* %301, align 4
  %303 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %304 = bitcast i8* %303 to %ViWin**
  %self310 = load %ViWin*, %ViWin** %304, align 8
  %305 = getelementptr inbounds %ViWin, %ViWin* %self310, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %addtmp311 = add nsw i32 %302, %306
  %307 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.17, i32 0, i32 0))
  %308 = call i32* @"list_item_intp23_vi++04word"(%list__intp* %298, i32 %addtmp311, i32* %307)
  %309 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %310 = bitcast i8* %309 to i32**
  store i32* %308, i32** %310, align 8
  %311 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %312 = bitcast i8* %311 to i32**
  %line312 = load i32*, i32** %312, align 8
  %313 = call i64 @wcslen(i32* %line312)
  %eqtmpX313 = icmp eq i64 %313, 0
  %314 = ptrtoint i32* %307 to i64
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %cond_then_block317, label %cond_end318

after_break307:                                   ; No predecessors!
  br label %cond_end304

cond_jump_then314:                                ; preds = %cond_end318
  %316 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %317 = bitcast i8* %316 to i32**
  %line319 = load i32*, i32** %317, align 8
  %318 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %319 = bitcast i8* %318 to i32**
  store i32* %line319, i32** %319, align 8
  %320 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %321 = bitcast i8* %320 to %ViWin**
  %self320 = load %ViWin*, %ViWin** %321, align 8
  %322 = getelementptr inbounds %ViWin, %ViWin* %self320, i32 0, i32 7
  store i32 0, i32* %322, align 4
  br label %cond_end316

cond_else_block315:                               ; preds = %cond_end318
  %323 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %324 = bitcast i8* %323 to %ViWin**
  %self321 = load %ViWin*, %ViWin** %324, align 8
  %325 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %326 = bitcast i8* %325 to i32**
  %line322 = load i32*, i32** %326, align 8
  %327 = call i64 @wcslen(i32* %line322)
  %subttmp323 = sub nsw i64 %327, 1
  %328 = trunc i64 %subttmp323 to i32
  %329 = getelementptr inbounds %ViWin, %ViWin* %self321, i32 0, i32 7
  store i32 %328, i32* %329, align 4
  %330 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %331 = bitcast i8* %330 to i32**
  %line324 = load i32*, i32** %331, align 8
  %332 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %333 = bitcast i8* %332 to %ViWin**
  %self325 = load %ViWin*, %ViWin** %333, align 8
  %334 = getelementptr inbounds %ViWin, %ViWin* %self325, i32 0, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = ptrtoint i32* %line324 to i64
  %sext1326 = sext i32 %335 to i64
  %multtmp327 = mul nsw i64 %sext1326, 4
  %addtmp328 = add nsw i64 %336, %multtmp327
  %337 = inttoptr i64 %addtmp328 to i32*
  %338 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %339 = bitcast i8* %338 to i32**
  store i32* %337, i32** %339, align 8
  br label %cond_end316

cond_end316:                                      ; preds = %cond_else_block315, %cond_jump_then314
  br label %cond_end292

cond_then_block317:                               ; preds = %cond_end304
  br label %cond_end318

cond_end318:                                      ; preds = %cond_then_block317, %cond_end304
  %340 = bitcast i32* %307 to i8*
  call void @xfree(i8* %340)
  br i1 %eqtmpX313, label %cond_jump_then314, label %cond_else_block315

loop_top_block331:                                ; preds = %cond_end346, %"cond_jump_elif_then2\0A"
  %341 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %342 = bitcast i8* %341 to i32**
  %p332 = load i32*, i32** %342, align 8
  %derefference_value333 = load i32, i32* %p332, align 8
  %343 = call i32 @iswalpha(i32 %derefference_value333)
  %344 = trunc i32 %343 to i1
  br i1 %344, label %cond_then_block334, label %cond_end_block335

cond_then_block334:                               ; preds = %loop_top_block331
  %345 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %346 = bitcast i8* %345 to i32**
  %p336 = load i32*, i32** %346, align 8
  %347 = ptrtoint i32* %p336 to i64
  %subtmp337 = sub nsw i64 %347, 4
  %348 = inttoptr i64 %subtmp337 to i32*
  %349 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %350 = bitcast i8* %349 to i32**
  store i32* %348, i32** %350, align 8
  %351 = ptrtoint i32* %348 to i64
  %addtmp338 = add nsw i64 %351, 4
  %352 = inttoptr i64 %addtmp338 to i32*
  %353 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %354 = bitcast i8* %353 to %ViWin**
  %self339 = load %ViWin*, %ViWin** %354, align 8
  %355 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %356 = bitcast i8* %355 to %ViWin**
  %self340 = load %ViWin*, %ViWin** %356, align 8
  %357 = getelementptr inbounds %ViWin, %ViWin* %self340, i32 0, i32 7
  %358 = load i32, i32* %357, align 4
  %subttmp341 = sub nsw i32 %358, 1
  %359 = getelementptr inbounds %ViWin, %ViWin* %self339, i32 0, i32 7
  store i32 %subttmp341, i32* %359, align 4
  %addtmp342 = add nsw i32 %subttmp341, 1
  %360 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %361 = bitcast i8* %360 to %ViWin**
  %self343 = load %ViWin*, %ViWin** %361, align 8
  %362 = getelementptr inbounds %ViWin, %ViWin* %self343, i32 0, i32 7
  %363 = load i32, i32* %362, align 4
  %letmp344 = icmp slt i32 %363, 0
  br i1 %letmp344, label %cond_jump_then345, label %cond_end346

cond_end_block335:                                ; preds = %cond_jump_then357, %loop_top_block331
  br label %cond_end29

cond_jump_then345:                                ; preds = %cond_then_block334
  %364 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %365 = bitcast i8* %364 to %ViWin**
  %self347 = load %ViWin*, %ViWin** %365, align 8
  %366 = getelementptr inbounds %ViWin, %ViWin* %self347, i32 0, i32 7
  store i32 0, i32* %366, align 4
  %367 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %368 = bitcast i8* %367 to %ViWin**
  %self348 = load %ViWin*, %ViWin** %368, align 8
  %369 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %370 = bitcast i8* %369 to %ViWin**
  %self349 = load %ViWin*, %ViWin** %370, align 8
  %371 = getelementptr inbounds %ViWin, %ViWin* %self349, i32 0, i32 6
  %372 = load i32, i32* %371, align 4
  %subttmp350 = sub nsw i32 %372, 1
  %373 = getelementptr inbounds %ViWin, %ViWin* %self348, i32 0, i32 6
  store i32 %subttmp350, i32* %373, align 4
  %addtmp351 = add nsw i32 %subttmp350, 1
  %374 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %375 = bitcast i8* %374 to %ViWin**
  %self352 = load %ViWin*, %ViWin** %375, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self352)
  %376 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %377 = bitcast i8* %376 to %ViWin**
  %self353 = load %ViWin*, %ViWin** %377, align 8
  %378 = getelementptr inbounds %ViWin, %ViWin* %self353, i32 0, i32 8
  %379 = load i32, i32* %378, align 4
  %380 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %381 = bitcast i8* %380 to %ViWin**
  %self354 = load %ViWin*, %ViWin** %381, align 8
  %382 = getelementptr inbounds %ViWin, %ViWin* %self354, i32 0, i32 6
  %383 = load i32, i32* %382, align 4
  %addtmp355 = add nsw i32 %379, %383
  %leeqtmp356 = icmp sle i32 %addtmp355, 0
  br i1 %leeqtmp356, label %cond_jump_then357, label %cond_end358

cond_end346:                                      ; preds = %cond_end370, %cond_then_block334
  br label %loop_top_block331

cond_jump_then357:                                ; preds = %cond_jump_then345
  %384 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %385 = bitcast i8* %384 to %ViWin**
  %self359 = load %ViWin*, %ViWin** %385, align 8
  %386 = getelementptr inbounds %ViWin, %ViWin* %self359, i32 0, i32 6
  store i32 0, i32* %386, align 4
  %387 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %388 = bitcast i8* %387 to %ViWin**
  %self360 = load %ViWin*, %ViWin** %388, align 8
  %389 = getelementptr inbounds %ViWin, %ViWin* %self360, i32 0, i32 8
  store i32 0, i32* %389, align 4
  br label %cond_end_block335

cond_end358:                                      ; preds = %after_break361, %cond_jump_then345
  %390 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %391 = bitcast i8* %390 to %ViWin**
  %self362 = load %ViWin*, %ViWin** %391, align 8
  %392 = getelementptr inbounds %ViWin, %ViWin* %self362, i32 0, i32 1
  %393 = load %list__intp*, %list__intp** %392, align 8
  %394 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %395 = bitcast i8* %394 to %ViWin**
  %self363 = load %ViWin*, %ViWin** %395, align 8
  %396 = getelementptr inbounds %ViWin, %ViWin* %self363, i32 0, i32 8
  %397 = load i32, i32* %396, align 4
  %398 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %399 = bitcast i8* %398 to %ViWin**
  %self364 = load %ViWin*, %ViWin** %399, align 8
  %400 = getelementptr inbounds %ViWin, %ViWin* %self364, i32 0, i32 6
  %401 = load i32, i32* %400, align 4
  %addtmp365 = add nsw i32 %397, %401
  %402 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.18, i32 0, i32 0))
  %403 = call i32* @"list_item_intp24_vi++04word"(%list__intp* %393, i32 %addtmp365, i32* %402)
  %404 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %405 = bitcast i8* %404 to i32**
  store i32* %403, i32** %405, align 8
  %406 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %407 = bitcast i8* %406 to i32**
  %line366 = load i32*, i32** %407, align 8
  %408 = call i64 @wcslen(i32* %line366)
  %eqtmpX367 = icmp eq i64 %408, 0
  %409 = ptrtoint i32* %402 to i64
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %cond_then_block371, label %cond_end372

after_break361:                                   ; No predecessors!
  br label %cond_end358

cond_jump_then368:                                ; preds = %cond_end372
  %411 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %412 = bitcast i8* %411 to i32**
  %line373 = load i32*, i32** %412, align 8
  %413 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %414 = bitcast i8* %413 to i32**
  store i32* %line373, i32** %414, align 8
  %415 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %416 = bitcast i8* %415 to %ViWin**
  %self374 = load %ViWin*, %ViWin** %416, align 8
  %417 = getelementptr inbounds %ViWin, %ViWin* %self374, i32 0, i32 7
  store i32 0, i32* %417, align 4
  br label %cond_end370

cond_else_block369:                               ; preds = %cond_end372
  %418 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %419 = bitcast i8* %418 to %ViWin**
  %self375 = load %ViWin*, %ViWin** %419, align 8
  %420 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %421 = bitcast i8* %420 to i32**
  %line376 = load i32*, i32** %421, align 8
  %422 = call i64 @wcslen(i32* %line376)
  %subttmp377 = sub nsw i64 %422, 1
  %423 = trunc i64 %subttmp377 to i32
  %424 = getelementptr inbounds %ViWin, %ViWin* %self375, i32 0, i32 7
  store i32 %423, i32* %424, align 4
  %425 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %426 = bitcast i8* %425 to i32**
  %line378 = load i32*, i32** %426, align 8
  %427 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %428 = bitcast i8* %427 to %ViWin**
  %self379 = load %ViWin*, %ViWin** %428, align 8
  %429 = getelementptr inbounds %ViWin, %ViWin* %self379, i32 0, i32 7
  %430 = load i32, i32* %429, align 4
  %431 = ptrtoint i32* %line378 to i64
  %sext1380 = sext i32 %430 to i64
  %multtmp381 = mul nsw i64 %sext1380, 4
  %addtmp382 = add nsw i64 %431, %multtmp381
  %432 = inttoptr i64 %addtmp382 to i32*
  %433 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %434 = bitcast i8* %433 to i32**
  store i32* %432, i32** %434, align 8
  br label %cond_end370

cond_end370:                                      ; preds = %cond_else_block369, %cond_jump_then368
  br label %cond_end346

cond_then_block371:                               ; preds = %cond_end358
  br label %cond_end372

cond_end372:                                      ; preds = %cond_then_block371, %cond_end358
  %435 = bitcast i32* %402 to i8*
  call void @xfree(i8* %435)
  br i1 %eqtmpX367, label %cond_jump_then368, label %cond_else_block369

loop_top_block385:                                ; preds = %cond_end400, %"cond_jump_elif_then3\0A"
  %436 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %437 = bitcast i8* %436 to i32**
  %p386 = load i32*, i32** %437, align 8
  %derefference_value387 = load i32, i32* %p386, align 8
  %438 = call i32 @iswdigit(i32 %derefference_value387)
  %439 = trunc i32 %438 to i1
  br i1 %439, label %cond_then_block388, label %cond_end_block389

cond_then_block388:                               ; preds = %loop_top_block385
  %440 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %441 = bitcast i8* %440 to i32**
  %p390 = load i32*, i32** %441, align 8
  %442 = ptrtoint i32* %p390 to i64
  %subtmp391 = sub nsw i64 %442, 4
  %443 = inttoptr i64 %subtmp391 to i32*
  %444 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %445 = bitcast i8* %444 to i32**
  store i32* %443, i32** %445, align 8
  %446 = ptrtoint i32* %443 to i64
  %addtmp392 = add nsw i64 %446, 4
  %447 = inttoptr i64 %addtmp392 to i32*
  %448 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %449 = bitcast i8* %448 to %ViWin**
  %self393 = load %ViWin*, %ViWin** %449, align 8
  %450 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %451 = bitcast i8* %450 to %ViWin**
  %self394 = load %ViWin*, %ViWin** %451, align 8
  %452 = getelementptr inbounds %ViWin, %ViWin* %self394, i32 0, i32 7
  %453 = load i32, i32* %452, align 4
  %subttmp395 = sub nsw i32 %453, 1
  %454 = getelementptr inbounds %ViWin, %ViWin* %self393, i32 0, i32 7
  store i32 %subttmp395, i32* %454, align 4
  %addtmp396 = add nsw i32 %subttmp395, 1
  %455 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %456 = bitcast i8* %455 to %ViWin**
  %self397 = load %ViWin*, %ViWin** %456, align 8
  %457 = getelementptr inbounds %ViWin, %ViWin* %self397, i32 0, i32 7
  %458 = load i32, i32* %457, align 4
  %letmp398 = icmp slt i32 %458, 0
  br i1 %letmp398, label %cond_jump_then399, label %cond_end400

cond_end_block389:                                ; preds = %cond_jump_then411, %loop_top_block385
  br label %cond_end29

cond_jump_then399:                                ; preds = %cond_then_block388
  %459 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %460 = bitcast i8* %459 to %ViWin**
  %self401 = load %ViWin*, %ViWin** %460, align 8
  %461 = getelementptr inbounds %ViWin, %ViWin* %self401, i32 0, i32 7
  store i32 0, i32* %461, align 4
  %462 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %463 = bitcast i8* %462 to %ViWin**
  %self402 = load %ViWin*, %ViWin** %463, align 8
  %464 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %465 = bitcast i8* %464 to %ViWin**
  %self403 = load %ViWin*, %ViWin** %465, align 8
  %466 = getelementptr inbounds %ViWin, %ViWin* %self403, i32 0, i32 6
  %467 = load i32, i32* %466, align 4
  %subttmp404 = sub nsw i32 %467, 1
  %468 = getelementptr inbounds %ViWin, %ViWin* %self402, i32 0, i32 6
  store i32 %subttmp404, i32* %468, align 4
  %addtmp405 = add nsw i32 %subttmp404, 1
  %469 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %470 = bitcast i8* %469 to %ViWin**
  %self406 = load %ViWin*, %ViWin** %470, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self406)
  %471 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %472 = bitcast i8* %471 to %ViWin**
  %self407 = load %ViWin*, %ViWin** %472, align 8
  %473 = getelementptr inbounds %ViWin, %ViWin* %self407, i32 0, i32 8
  %474 = load i32, i32* %473, align 4
  %475 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %476 = bitcast i8* %475 to %ViWin**
  %self408 = load %ViWin*, %ViWin** %476, align 8
  %477 = getelementptr inbounds %ViWin, %ViWin* %self408, i32 0, i32 6
  %478 = load i32, i32* %477, align 4
  %addtmp409 = add nsw i32 %474, %478
  %leeqtmp410 = icmp sle i32 %addtmp409, 0
  br i1 %leeqtmp410, label %cond_jump_then411, label %cond_end412

cond_end400:                                      ; preds = %cond_end424, %cond_then_block388
  br label %loop_top_block385

cond_jump_then411:                                ; preds = %cond_jump_then399
  %479 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %480 = bitcast i8* %479 to %ViWin**
  %self413 = load %ViWin*, %ViWin** %480, align 8
  %481 = getelementptr inbounds %ViWin, %ViWin* %self413, i32 0, i32 6
  store i32 0, i32* %481, align 4
  %482 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %483 = bitcast i8* %482 to %ViWin**
  %self414 = load %ViWin*, %ViWin** %483, align 8
  %484 = getelementptr inbounds %ViWin, %ViWin* %self414, i32 0, i32 8
  store i32 0, i32* %484, align 4
  br label %cond_end_block389

cond_end412:                                      ; preds = %after_break415, %cond_jump_then399
  %485 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %486 = bitcast i8* %485 to %ViWin**
  %self416 = load %ViWin*, %ViWin** %486, align 8
  %487 = getelementptr inbounds %ViWin, %ViWin* %self416, i32 0, i32 1
  %488 = load %list__intp*, %list__intp** %487, align 8
  %489 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %490 = bitcast i8* %489 to %ViWin**
  %self417 = load %ViWin*, %ViWin** %490, align 8
  %491 = getelementptr inbounds %ViWin, %ViWin* %self417, i32 0, i32 8
  %492 = load i32, i32* %491, align 4
  %493 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %494 = bitcast i8* %493 to %ViWin**
  %self418 = load %ViWin*, %ViWin** %494, align 8
  %495 = getelementptr inbounds %ViWin, %ViWin* %self418, i32 0, i32 6
  %496 = load i32, i32* %495, align 4
  %addtmp419 = add nsw i32 %492, %496
  %497 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.19, i32 0, i32 0))
  %498 = call i32* @"list_item_intp25_vi++04word"(%list__intp* %488, i32 %addtmp419, i32* %497)
  %499 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %500 = bitcast i8* %499 to i32**
  store i32* %498, i32** %500, align 8
  %501 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %502 = bitcast i8* %501 to i32**
  %line420 = load i32*, i32** %502, align 8
  %503 = call i64 @wcslen(i32* %line420)
  %eqtmpX421 = icmp eq i64 %503, 0
  %504 = ptrtoint i32* %497 to i64
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %cond_then_block425, label %cond_end426

after_break415:                                   ; No predecessors!
  br label %cond_end412

cond_jump_then422:                                ; preds = %cond_end426
  %506 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %507 = bitcast i8* %506 to i32**
  %line427 = load i32*, i32** %507, align 8
  %508 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %509 = bitcast i8* %508 to i32**
  store i32* %line427, i32** %509, align 8
  %510 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %511 = bitcast i8* %510 to %ViWin**
  %self428 = load %ViWin*, %ViWin** %511, align 8
  %512 = getelementptr inbounds %ViWin, %ViWin* %self428, i32 0, i32 7
  store i32 0, i32* %512, align 4
  br label %cond_end424

cond_else_block423:                               ; preds = %cond_end426
  %513 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %514 = bitcast i8* %513 to %ViWin**
  %self429 = load %ViWin*, %ViWin** %514, align 8
  %515 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %516 = bitcast i8* %515 to i32**
  %line430 = load i32*, i32** %516, align 8
  %517 = call i64 @wcslen(i32* %line430)
  %subttmp431 = sub nsw i64 %517, 1
  %518 = trunc i64 %subttmp431 to i32
  %519 = getelementptr inbounds %ViWin, %ViWin* %self429, i32 0, i32 7
  store i32 %518, i32* %519, align 4
  %520 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %521 = bitcast i8* %520 to i32**
  %line432 = load i32*, i32** %521, align 8
  %522 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %523 = bitcast i8* %522 to %ViWin**
  %self433 = load %ViWin*, %ViWin** %523, align 8
  %524 = getelementptr inbounds %ViWin, %ViWin* %self433, i32 0, i32 7
  %525 = load i32, i32* %524, align 4
  %526 = ptrtoint i32* %line432 to i64
  %sext1434 = sext i32 %525 to i64
  %multtmp435 = mul nsw i64 %sext1434, 4
  %addtmp436 = add nsw i64 %526, %multtmp435
  %527 = inttoptr i64 %addtmp436 to i32*
  %528 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %529 = bitcast i8* %528 to i32**
  store i32* %527, i32** %529, align 8
  br label %cond_end424

cond_end424:                                      ; preds = %cond_else_block423, %cond_jump_then422
  br label %cond_end400

cond_then_block425:                               ; preds = %cond_end412
  br label %cond_end426

cond_end426:                                      ; preds = %cond_then_block425, %cond_end412
  %530 = bitcast i32* %497 to i8*
  call void @xfree(i8* %530)
  br i1 %eqtmpX421, label %cond_jump_then422, label %cond_else_block423

loop_top_block439:                                ; preds = %cond_end454, %"cond_jump_elif_then4\0A"
  %531 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %532 = bitcast i8* %531 to i32**
  %p440 = load i32*, i32** %532, align 8
  %derefference_value441 = load i32, i32* %p440, align 8
  %533 = call i32 @iswblank(i32 %derefference_value441)
  %534 = trunc i32 %533 to i1
  br i1 %534, label %cond_then_block442, label %cond_end_block443

cond_then_block442:                               ; preds = %loop_top_block439
  %535 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %536 = bitcast i8* %535 to i32**
  %p444 = load i32*, i32** %536, align 8
  %537 = ptrtoint i32* %p444 to i64
  %subtmp445 = sub nsw i64 %537, 4
  %538 = inttoptr i64 %subtmp445 to i32*
  %539 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %540 = bitcast i8* %539 to i32**
  store i32* %538, i32** %540, align 8
  %541 = ptrtoint i32* %538 to i64
  %addtmp446 = add nsw i64 %541, 4
  %542 = inttoptr i64 %addtmp446 to i32*
  %543 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %544 = bitcast i8* %543 to %ViWin**
  %self447 = load %ViWin*, %ViWin** %544, align 8
  %545 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %546 = bitcast i8* %545 to %ViWin**
  %self448 = load %ViWin*, %ViWin** %546, align 8
  %547 = getelementptr inbounds %ViWin, %ViWin* %self448, i32 0, i32 7
  %548 = load i32, i32* %547, align 4
  %subttmp449 = sub nsw i32 %548, 1
  %549 = getelementptr inbounds %ViWin, %ViWin* %self447, i32 0, i32 7
  store i32 %subttmp449, i32* %549, align 4
  %addtmp450 = add nsw i32 %subttmp449, 1
  %550 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %551 = bitcast i8* %550 to %ViWin**
  %self451 = load %ViWin*, %ViWin** %551, align 8
  %552 = getelementptr inbounds %ViWin, %ViWin* %self451, i32 0, i32 7
  %553 = load i32, i32* %552, align 4
  %letmp452 = icmp slt i32 %553, 0
  br i1 %letmp452, label %cond_jump_then453, label %cond_end454

cond_end_block443:                                ; preds = %cond_jump_then465, %loop_top_block439
  br label %cond_end29

cond_jump_then453:                                ; preds = %cond_then_block442
  %554 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %555 = bitcast i8* %554 to %ViWin**
  %self455 = load %ViWin*, %ViWin** %555, align 8
  %556 = getelementptr inbounds %ViWin, %ViWin* %self455, i32 0, i32 7
  store i32 0, i32* %556, align 4
  %557 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %558 = bitcast i8* %557 to %ViWin**
  %self456 = load %ViWin*, %ViWin** %558, align 8
  %559 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %560 = bitcast i8* %559 to %ViWin**
  %self457 = load %ViWin*, %ViWin** %560, align 8
  %561 = getelementptr inbounds %ViWin, %ViWin* %self457, i32 0, i32 6
  %562 = load i32, i32* %561, align 4
  %subttmp458 = sub nsw i32 %562, 1
  %563 = getelementptr inbounds %ViWin, %ViWin* %self456, i32 0, i32 6
  store i32 %subttmp458, i32* %563, align 4
  %addtmp459 = add nsw i32 %subttmp458, 1
  %564 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %565 = bitcast i8* %564 to %ViWin**
  %self460 = load %ViWin*, %ViWin** %565, align 8
  call void @ViWin_modifyUnderCursorYValue-2(%ViWin* %self460)
  %566 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %567 = bitcast i8* %566 to %ViWin**
  %self461 = load %ViWin*, %ViWin** %567, align 8
  %568 = getelementptr inbounds %ViWin, %ViWin* %self461, i32 0, i32 8
  %569 = load i32, i32* %568, align 4
  %570 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %571 = bitcast i8* %570 to %ViWin**
  %self462 = load %ViWin*, %ViWin** %571, align 8
  %572 = getelementptr inbounds %ViWin, %ViWin* %self462, i32 0, i32 6
  %573 = load i32, i32* %572, align 4
  %addtmp463 = add nsw i32 %569, %573
  %leeqtmp464 = icmp sle i32 %addtmp463, 0
  br i1 %leeqtmp464, label %cond_jump_then465, label %cond_end466

cond_end454:                                      ; preds = %cond_end478, %cond_then_block442
  br label %loop_top_block439

cond_jump_then465:                                ; preds = %cond_jump_then453
  %574 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %575 = bitcast i8* %574 to %ViWin**
  %self467 = load %ViWin*, %ViWin** %575, align 8
  %576 = getelementptr inbounds %ViWin, %ViWin* %self467, i32 0, i32 6
  store i32 0, i32* %576, align 4
  %577 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %578 = bitcast i8* %577 to %ViWin**
  %self468 = load %ViWin*, %ViWin** %578, align 8
  %579 = getelementptr inbounds %ViWin, %ViWin* %self468, i32 0, i32 8
  store i32 0, i32* %579, align 4
  br label %cond_end_block443

cond_end466:                                      ; preds = %after_break469, %cond_jump_then453
  %580 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %581 = bitcast i8* %580 to %ViWin**
  %self470 = load %ViWin*, %ViWin** %581, align 8
  %582 = getelementptr inbounds %ViWin, %ViWin* %self470, i32 0, i32 1
  %583 = load %list__intp*, %list__intp** %582, align 8
  %584 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %585 = bitcast i8* %584 to %ViWin**
  %self471 = load %ViWin*, %ViWin** %585, align 8
  %586 = getelementptr inbounds %ViWin, %ViWin* %self471, i32 0, i32 8
  %587 = load i32, i32* %586, align 4
  %588 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %589 = bitcast i8* %588 to %ViWin**
  %self472 = load %ViWin*, %ViWin** %589, align 8
  %590 = getelementptr inbounds %ViWin, %ViWin* %self472, i32 0, i32 6
  %591 = load i32, i32* %590, align 4
  %addtmp473 = add nsw i32 %587, %591
  %592 = call i32* @wstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.20, i32 0, i32 0))
  %593 = call i32* @"list_item_intp26_vi++04word"(%list__intp* %583, i32 %addtmp473, i32* %592)
  %594 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %595 = bitcast i8* %594 to i32**
  store i32* %593, i32** %595, align 8
  %596 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %597 = bitcast i8* %596 to i32**
  %line474 = load i32*, i32** %597, align 8
  %598 = call i64 @wcslen(i32* %line474)
  %eqtmpX475 = icmp eq i64 %598, 0
  %599 = ptrtoint i32* %592 to i64
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %cond_then_block479, label %cond_end480

after_break469:                                   ; No predecessors!
  br label %cond_end466

cond_jump_then476:                                ; preds = %cond_end480
  %601 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %602 = bitcast i8* %601 to i32**
  %line481 = load i32*, i32** %602, align 8
  %603 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %604 = bitcast i8* %603 to i32**
  store i32* %line481, i32** %604, align 8
  %605 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %606 = bitcast i8* %605 to %ViWin**
  %self482 = load %ViWin*, %ViWin** %606, align 8
  %607 = getelementptr inbounds %ViWin, %ViWin* %self482, i32 0, i32 7
  store i32 0, i32* %607, align 4
  br label %cond_end478

cond_else_block477:                               ; preds = %cond_end480
  %608 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %609 = bitcast i8* %608 to %ViWin**
  %self483 = load %ViWin*, %ViWin** %609, align 8
  %610 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %611 = bitcast i8* %610 to i32**
  %line484 = load i32*, i32** %611, align 8
  %612 = call i64 @wcslen(i32* %line484)
  %subttmp485 = sub nsw i64 %612, 1
  %613 = trunc i64 %subttmp485 to i32
  %614 = getelementptr inbounds %ViWin, %ViWin* %self483, i32 0, i32 7
  store i32 %613, i32* %614, align 4
  %615 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 381), align 8
  %616 = bitcast i8* %615 to i32**
  %line486 = load i32*, i32** %616, align 8
  %617 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %618 = bitcast i8* %617 to %ViWin**
  %self487 = load %ViWin*, %ViWin** %618, align 8
  %619 = getelementptr inbounds %ViWin, %ViWin* %self487, i32 0, i32 7
  %620 = load i32, i32* %619, align 4
  %621 = ptrtoint i32* %line486 to i64
  %sext1488 = sext i32 %620 to i64
  %multtmp489 = mul nsw i64 %sext1488, 4
  %addtmp490 = add nsw i64 %621, %multtmp489
  %622 = inttoptr i64 %addtmp490 to i32*
  %623 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 382), align 8
  %624 = bitcast i8* %623 to i32**
  store i32* %622, i32** %624, align 8
  br label %cond_end478

cond_end478:                                      ; preds = %cond_else_block477, %cond_jump_then476
  br label %cond_end454

cond_then_block479:                               ; preds = %cond_end466
  br label %cond_end480

cond_end480:                                      ; preds = %cond_then_block479, %cond_end466
  %625 = bitcast i32* %592 to i8*
  call void @xfree(i8* %625)
  br i1 %eqtmpX475, label %cond_jump_then476, label %cond_else_block477
}

define %Vi* @Vi_initialize-4(%Vi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %Vi*
  store %Vi* %self, %Vi** %self1, align 8
  %2 = bitcast %Vi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 380), align 8
  %self2 = load %Vi*, %Vi** %self1, align 8
  %3 = call %Vi* @Vi_initialize-3(%Vi* %self2)
  %self3 = load %Vi*, %Vi** %self1, align 8
  %4 = getelementptr inbounds %Vi, %Vi* %self3, i32 0, i32 2
  %5 = load %vector__lambdap*, %vector__lambdap** %4, align 8
  %6 = call i1 @"vector_replace_lambdap27_vi++04word"(%vector__lambdap* %5, i32 119, void (%Vi*, i32)* @"vi++04word_lambda0")
  %self4 = load %Vi*, %Vi** %self1, align 8
  %7 = getelementptr inbounds %Vi, %Vi* %self4, i32 0, i32 2
  %8 = load %vector__lambdap*, %vector__lambdap** %7, align 8
  %9 = call i1 @"vector_replace_lambdap28_vi++04word"(%vector__lambdap* %8, i32 101, void (%Vi*, i32)* @"vi++04word_lambda1")
  %self5 = load %Vi*, %Vi** %self1, align 8
  %10 = getelementptr inbounds %Vi, %Vi* %self5, i32 0, i32 2
  %11 = load %vector__lambdap*, %vector__lambdap** %10, align 8
  %12 = call i1 @"vector_replace_lambdap29_vi++04word"(%vector__lambdap* %11, i32 98, void (%Vi*, i32)* @"vi++04word_lambda2")
  %self6 = load %Vi*, %Vi** %self1, align 8
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret %Vi* %self6
}

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

declare %Vi* @Vi_initialize-15(%Vi*)

declare void @Vi_activateFiler-15(%Vi*)

declare i32 @Vi_main_loop-15(%Vi*)

declare void @Vi_repositionFiler-15(%Vi*)

declare void @Vi_view-15(%Vi*)

declare void @Vi_clearView-15(%Vi*)

declare void @ViWin_textsView-15(%ViWin*, %Vi*)

declare %ViWin* @ViWin_initialize-15(%ViWin*, i32, i32, i32, i32)

define i32* @"list_item_intp0_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp1_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32 @"list_length_intp2_vi++04word"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp3_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32 @"list_length_intp4_vi++04word"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp5_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp6_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32 @"list_length_intp7_vi++04word"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp8_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp9_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32 @"list_length_intp10_vi++04word"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp11_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp12_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32 @"list_length_intp13_vi++04word"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp14_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp15_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32 @"list_length_intp16_vi++04word"(%list__intp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__intp*
  store %list__intp* %self, %list__intp** %self1, align 8
  %2 = bitcast %list__intp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 383), align 8
  %self2 = load %list__intp*, %list__intp** %self1, align 8
  %3 = getelementptr inbounds %list__intp, %list__intp* %self2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32* @"list_item_intp17_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp18_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp19_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp20_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp21_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp22_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp23_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp24_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp25_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define i32* @"list_item_intp26_vi++04word"(%list__intp* %self, i32 %position, i32* %default_value) {
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

define void @"vi++04word_lambda0"(%Vi* %self, i32 %key) {
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
  call void @ViWin_forwardWord-4(%ViWin* %5)
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap27_vi++04word"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++04word_lambda1"(%Vi* %self, i32 %key) {
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
  call void @ViWin_forwardWord-4(%ViWin* %5)
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap28_vi++04word"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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

define void @"vi++04word_lambda2"(%Vi* %self, i32 %key) {
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
  call void @ViWin_backwardWord-4(%ViWin* %5)
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret void
}

define i1 @"vector_replace_lambdap29_vi++04word"(%vector__lambdap* %self, i32 %index, void (%Vi*, i32)* %value) {
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
