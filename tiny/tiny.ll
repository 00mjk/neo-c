; ModuleID = 'Module tiny'
source_filename = "Module tiny"

%_IO_FILE_plus = type {}
%_IO_FILE = type opaque
%anon27 = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%anon28 = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%anon29 = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
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
%TinyParser = type { i8*, i32, %buffer*, i8*, i32 }
%TinyNode = type { i32, %anon61, %TinyNode*, %TinyNode*, %TinyNode* }
%anon61 = type { i32 }
%TinyVM = type { %TinyParser*, %vector__TinyNodep*, %vector__TVALUE* }
%vector__TinyNodep = type { %TinyNode**, i32, i32 }
%vector__TVALUE = type { %TVALUE*, i32, i32 }
%TVALUE = type { i32 }

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
@global_string = private constant [8 x i8] c"TinyVM%\00", align 1
@global_string.1 = private constant [8 x i8] c"tiny.nc\00", align 1
@global_string.2 = private constant [5 x i8] c"main\00", align 1
@global_string.3 = private constant [5 x i8] c"main\00", align 1
@global_string.4 = private constant [8 x i8] c"test.ti\00", align 1

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

declare %TinyParser* @TinyParser_initialize(%TinyParser*, i8*)

declare void @TinyParser_debug(%TinyParser*)

declare void @TinyParser_errMessage-2(%TinyParser*, i8*)

declare void @TinyParser_skipSpaces-2(%TinyParser*)

declare %TinyNode* @TinyParser_node-2(%TinyParser*)

declare %TinyNode* @TinyParser_plus_minus-2(%TinyParser*)

declare %TinyNode* @TinyParser_mult_div-2(%TinyParser*)

declare %TinyNode* @TinyParser_expression-2(%TinyParser*)

declare void @TinyNode_finalize(%TinyNode*)

declare %TinyVM* @TinyVM_initialize(%TinyVM*, i8*)

declare i1 @TinyVM_parser(%TinyVM*)

declare i1 @TinyVM_compile(%TinyVM*, %TinyNode*)

declare i1 @TinyVM_run(%TinyVM*)

define i32 @main(i32 %argc, i8** %argv) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %argc1 = alloca i32
  store i32 %argc, i32* %argc1, align 4
  %2 = bitcast i32* %argc1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %argv2 = alloca i8**
  store i8** %argv, i8*** %argv2, align 8
  %3 = bitcast i8*** %argv2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %4 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.1, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.3, i32 0, i32 0))
  %5 = bitcast i8* %4 to %TinyVM*
  %6 = call %TinyVM* @TinyVM_initialize(%TinyVM* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.4, i32 0, i32 0))
  %vm = alloca %TinyVM*
  %7 = bitcast %TinyVM** %vm to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  store %TinyVM* %6, %TinyVM** %vm, align 8
  %vm3 = load %TinyVM*, %TinyVM** %vm, align 8
  %8 = call i1 @TinyVM_parser(%TinyVM* %vm3)
  %LOGICAL_DIANEAL = icmp eq i1 %8, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  %11 = load %TinyVM*, %TinyVM** %vm, align 8
  %12 = ptrtoint %TinyVM* %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %cond_then_block, label %cond_end4

cond_end:                                         ; preds = %entry
  %vm15 = load %TinyVM*, %TinyVM** %vm, align 8
  %14 = call i1 @TinyVM_run(%TinyVM* %vm15)
  %LOGICAL_DIANEAL16 = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL16, label %cond_jump_then17, label %cond_end18

cond_then_block:                                  ; preds = %cond_jump_then
  %15 = getelementptr inbounds %TinyVM, %TinyVM* %11, i32 0, i32 0
  %16 = load %TinyParser*, %TinyParser** %15, align 8
  %17 = ptrtoint %TinyParser* %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %cond_then_block5, label %cond_end6

cond_end4:                                        ; preds = %cond_end14, %cond_jump_then
  %19 = bitcast %TinyVM* %11 to i8*
  call void @xfree(i8* %19)
  call void @debug_show_none_freed_heap_memory()
  ret i32 1

cond_then_block5:                                 ; preds = %cond_then_block
  %20 = getelementptr inbounds %TinyParser, %TinyParser* %16, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %cond_then_block7, label %cond_end8

cond_end6:                                        ; preds = %cond_end10, %cond_then_block
  %24 = bitcast %TinyParser* %16 to i8*
  call void @xfree(i8* %24)
  %25 = getelementptr inbounds %TinyVM, %TinyVM* %11, i32 0, i32 1
  %26 = load %vector__TinyNodep*, %vector__TinyNodep** %25, align 8
  %27 = ptrtoint %vector__TinyNodep* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block11, label %cond_end12

cond_then_block7:                                 ; preds = %cond_then_block5
  br label %cond_end8

cond_end8:                                        ; preds = %cond_then_block7, %cond_then_block5
  call void @xfree(i8* %21)
  %29 = getelementptr inbounds %TinyParser, %TinyParser* %16, i32 0, i32 2
  %30 = load %buffer*, %buffer** %29, align 8
  %31 = ptrtoint %buffer* %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %cond_then_block9, label %cond_end10

cond_then_block9:                                 ; preds = %cond_end8
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_end8
  call void @buffer_finalize(%buffer* %30)
  %33 = bitcast %buffer* %30 to i8*
  call void @xfree(i8* %33)
  br label %cond_end6

cond_then_block11:                                ; preds = %cond_end6
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_end6
  call void @vector_finalize_TinyNodep0_tiny(%vector__TinyNodep* %26)
  %34 = bitcast %vector__TinyNodep* %26 to i8*
  call void @xfree(i8* %34)
  %35 = getelementptr inbounds %TinyVM, %TinyVM* %11, i32 0, i32 2
  %36 = load %vector__TVALUE*, %vector__TVALUE** %35, align 8
  %37 = ptrtoint %vector__TVALUE* %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %cond_then_block13, label %cond_end14

cond_then_block13:                                ; preds = %cond_end12
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end12
  call void @vector_finalize_TVALUE1_tiny(%vector__TVALUE* %36)
  %39 = bitcast %vector__TVALUE* %36 to i8*
  call void @xfree(i8* %39)
  br label %cond_end4

cond_jump_then17:                                 ; preds = %cond_end
  %40 = bitcast [8192 x i8*]* %lvtable to i8*
  %41 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %40, i64 65536)
  %42 = load %TinyVM*, %TinyVM** %vm, align 8
  %43 = ptrtoint %TinyVM* %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %cond_then_block19, label %cond_end20

cond_end18:                                       ; preds = %cond_end
  %45 = load %TinyVM*, %TinyVM** %vm, align 8
  %46 = ptrtoint %TinyVM* %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %cond_then_block31, label %cond_end32

cond_then_block19:                                ; preds = %cond_jump_then17
  %48 = getelementptr inbounds %TinyVM, %TinyVM* %42, i32 0, i32 0
  %49 = load %TinyParser*, %TinyParser** %48, align 8
  %50 = ptrtoint %TinyParser* %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %cond_then_block21, label %cond_end22

cond_end20:                                       ; preds = %cond_end30, %cond_jump_then17
  %52 = bitcast %TinyVM* %42 to i8*
  call void @xfree(i8* %52)
  call void @debug_show_none_freed_heap_memory()
  ret i32 1

cond_then_block21:                                ; preds = %cond_then_block19
  %53 = getelementptr inbounds %TinyParser, %TinyParser* %49, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %cond_then_block23, label %cond_end24

cond_end22:                                       ; preds = %cond_end26, %cond_then_block19
  %57 = bitcast %TinyParser* %49 to i8*
  call void @xfree(i8* %57)
  %58 = getelementptr inbounds %TinyVM, %TinyVM* %42, i32 0, i32 1
  %59 = load %vector__TinyNodep*, %vector__TinyNodep** %58, align 8
  %60 = ptrtoint %vector__TinyNodep* %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %cond_then_block27, label %cond_end28

cond_then_block23:                                ; preds = %cond_then_block21
  br label %cond_end24

cond_end24:                                       ; preds = %cond_then_block23, %cond_then_block21
  call void @xfree(i8* %54)
  %62 = getelementptr inbounds %TinyParser, %TinyParser* %49, i32 0, i32 2
  %63 = load %buffer*, %buffer** %62, align 8
  %64 = ptrtoint %buffer* %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %cond_then_block25, label %cond_end26

cond_then_block25:                                ; preds = %cond_end24
  br label %cond_end26

cond_end26:                                       ; preds = %cond_then_block25, %cond_end24
  call void @buffer_finalize(%buffer* %63)
  %66 = bitcast %buffer* %63 to i8*
  call void @xfree(i8* %66)
  br label %cond_end22

cond_then_block27:                                ; preds = %cond_end22
  br label %cond_end28

cond_end28:                                       ; preds = %cond_then_block27, %cond_end22
  call void @vector_finalize_TinyNodep2_tiny(%vector__TinyNodep* %59)
  %67 = bitcast %vector__TinyNodep* %59 to i8*
  call void @xfree(i8* %67)
  %68 = getelementptr inbounds %TinyVM, %TinyVM* %42, i32 0, i32 2
  %69 = load %vector__TVALUE*, %vector__TVALUE** %68, align 8
  %70 = ptrtoint %vector__TVALUE* %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %cond_then_block29, label %cond_end30

cond_then_block29:                                ; preds = %cond_end28
  br label %cond_end30

cond_end30:                                       ; preds = %cond_then_block29, %cond_end28
  call void @vector_finalize_TVALUE3_tiny(%vector__TVALUE* %69)
  %72 = bitcast %vector__TVALUE* %69 to i8*
  call void @xfree(i8* %72)
  br label %cond_end20

cond_then_block31:                                ; preds = %cond_end18
  %73 = getelementptr inbounds %TinyVM, %TinyVM* %45, i32 0, i32 0
  %74 = load %TinyParser*, %TinyParser** %73, align 8
  %75 = ptrtoint %TinyParser* %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %cond_then_block33, label %cond_end34

cond_end32:                                       ; preds = %cond_end42, %cond_end18
  %77 = bitcast %TinyVM* %45 to i8*
  call void @xfree(i8* %77)
  call void @debug_show_none_freed_heap_memory()
  %78 = bitcast [8192 x i8*]* %lvtable to i8*
  %79 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %78, i64 65536)
  ret i32 0

cond_then_block33:                                ; preds = %cond_then_block31
  %80 = getelementptr inbounds %TinyParser, %TinyParser* %74, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %cond_then_block35, label %cond_end36

cond_end34:                                       ; preds = %cond_end38, %cond_then_block31
  %84 = bitcast %TinyParser* %74 to i8*
  call void @xfree(i8* %84)
  %85 = getelementptr inbounds %TinyVM, %TinyVM* %45, i32 0, i32 1
  %86 = load %vector__TinyNodep*, %vector__TinyNodep** %85, align 8
  %87 = ptrtoint %vector__TinyNodep* %86 to i64
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %cond_then_block39, label %cond_end40

cond_then_block35:                                ; preds = %cond_then_block33
  br label %cond_end36

cond_end36:                                       ; preds = %cond_then_block35, %cond_then_block33
  call void @xfree(i8* %81)
  %89 = getelementptr inbounds %TinyParser, %TinyParser* %74, i32 0, i32 2
  %90 = load %buffer*, %buffer** %89, align 8
  %91 = ptrtoint %buffer* %90 to i64
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %cond_then_block37, label %cond_end38

cond_then_block37:                                ; preds = %cond_end36
  br label %cond_end38

cond_end38:                                       ; preds = %cond_then_block37, %cond_end36
  call void @buffer_finalize(%buffer* %90)
  %93 = bitcast %buffer* %90 to i8*
  call void @xfree(i8* %93)
  br label %cond_end34

cond_then_block39:                                ; preds = %cond_end34
  br label %cond_end40

cond_end40:                                       ; preds = %cond_then_block39, %cond_end34
  call void @vector_finalize_TinyNodep4_tiny(%vector__TinyNodep* %86)
  %94 = bitcast %vector__TinyNodep* %86 to i8*
  call void @xfree(i8* %94)
  %95 = getelementptr inbounds %TinyVM, %TinyVM* %45, i32 0, i32 2
  %96 = load %vector__TVALUE*, %vector__TVALUE** %95, align 8
  %97 = ptrtoint %vector__TVALUE* %96 to i64
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %cond_then_block41, label %cond_end42

cond_then_block41:                                ; preds = %cond_end40
  br label %cond_end42

cond_end42:                                       ; preds = %cond_then_block41, %cond_end40
  call void @vector_finalize_TVALUE5_tiny(%vector__TVALUE* %96)
  %99 = bitcast %vector__TVALUE* %96 to i8*
  call void @xfree(i8* %99)
  br label %cond_end32
}

define void @vector_finalize_TinyNodep0_tiny(%vector__TinyNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self2 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__TinyNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self12, i32 0, i32 0
  %7 = load %TinyNode**, %TinyNode*** %6, align 8
  %8 = load %TinyNode**, %TinyNode*** %6, align 8
  %9 = bitcast %TinyNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %13 = bitcast i8* %12 to %vector__TinyNodep**
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %13, align 8
  %14 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %17 = bitcast i8* %16 to %vector__TinyNodep**
  %self7 = load %vector__TinyNodep*, %vector__TinyNodep** %17, align 8
  %18 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self7, i32 0, i32 0
  %19 = load %TinyNode**, %TinyNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %TinyNode*, %TinyNode** %19, i32 %i8
  %element = load %TinyNode*, %TinyNode** %element_address, align 8
  %20 = load %TinyNode*, %TinyNode** %element_address, align 8
  %21 = ptrtoint %TinyNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  call void @TinyNode_finalize(%TinyNode* %20)
  %23 = bitcast %TinyNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @vector_finalize_TVALUE1_tiny(%vector__TVALUE* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self2 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %eqtmpX = icmp eq %vector__TVALUE* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self10 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %6 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self10, i32 0, i32 0
  %7 = load %TVALUE*, %TVALUE** %6, align 8
  %8 = load %TVALUE*, %TVALUE** %6, align 8
  %9 = ptrtoint %TVALUE* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block11, label %cond_end12

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %12 = bitcast i8* %11 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %12, align 8
  %13 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %letmp = icmp slt i32 %i5, %14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %16 = bitcast i8* %15 to %vector__TVALUE**
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %16, align 8
  %17 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 0
  %18 = load %TVALUE*, %TVALUE** %17, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %TVALUE, %TVALUE* %18, i32 %i8
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %19 = load %TVALUE, %TVALUE* %element_address, align 8
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
  %20 = bitcast %TVALUE* %8 to i8*
  call void @xfree(i8* %20)
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

define void @vector_finalize_TinyNodep2_tiny(%vector__TinyNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self2 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__TinyNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self12, i32 0, i32 0
  %7 = load %TinyNode**, %TinyNode*** %6, align 8
  %8 = load %TinyNode**, %TinyNode*** %6, align 8
  %9 = bitcast %TinyNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %13 = bitcast i8* %12 to %vector__TinyNodep**
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %13, align 8
  %14 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %17 = bitcast i8* %16 to %vector__TinyNodep**
  %self7 = load %vector__TinyNodep*, %vector__TinyNodep** %17, align 8
  %18 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self7, i32 0, i32 0
  %19 = load %TinyNode**, %TinyNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %TinyNode*, %TinyNode** %19, i32 %i8
  %element = load %TinyNode*, %TinyNode** %element_address, align 8
  %20 = load %TinyNode*, %TinyNode** %element_address, align 8
  %21 = ptrtoint %TinyNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  call void @TinyNode_finalize(%TinyNode* %20)
  %23 = bitcast %TinyNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @vector_finalize_TVALUE3_tiny(%vector__TVALUE* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self2 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %eqtmpX = icmp eq %vector__TVALUE* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self10 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %6 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self10, i32 0, i32 0
  %7 = load %TVALUE*, %TVALUE** %6, align 8
  %8 = load %TVALUE*, %TVALUE** %6, align 8
  %9 = ptrtoint %TVALUE* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block11, label %cond_end12

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %12 = bitcast i8* %11 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %12, align 8
  %13 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %letmp = icmp slt i32 %i5, %14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %16 = bitcast i8* %15 to %vector__TVALUE**
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %16, align 8
  %17 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 0
  %18 = load %TVALUE*, %TVALUE** %17, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %TVALUE, %TVALUE* %18, i32 %i8
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %19 = load %TVALUE, %TVALUE* %element_address, align 8
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
  %20 = bitcast %TVALUE* %8 to i8*
  call void @xfree(i8* %20)
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

define void @vector_finalize_TinyNodep4_tiny(%vector__TinyNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self2 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__TinyNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self12, i32 0, i32 0
  %7 = load %TinyNode**, %TinyNode*** %6, align 8
  %8 = load %TinyNode**, %TinyNode*** %6, align 8
  %9 = bitcast %TinyNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %13 = bitcast i8* %12 to %vector__TinyNodep**
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %13, align 8
  %14 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %17 = bitcast i8* %16 to %vector__TinyNodep**
  %self7 = load %vector__TinyNodep*, %vector__TinyNodep** %17, align 8
  %18 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self7, i32 0, i32 0
  %19 = load %TinyNode**, %TinyNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %TinyNode*, %TinyNode** %19, i32 %i8
  %element = load %TinyNode*, %TinyNode** %element_address, align 8
  %20 = load %TinyNode*, %TinyNode** %element_address, align 8
  %21 = ptrtoint %TinyNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  call void @TinyNode_finalize(%TinyNode* %20)
  %23 = bitcast %TinyNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @vector_finalize_TVALUE5_tiny(%vector__TVALUE* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self2 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %eqtmpX = icmp eq %vector__TVALUE* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self10 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %6 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self10, i32 0, i32 0
  %7 = load %TVALUE*, %TVALUE** %6, align 8
  %8 = load %TVALUE*, %TVALUE** %6, align 8
  %9 = ptrtoint %TVALUE* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block11, label %cond_end12

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %12 = bitcast i8* %11 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %12, align 8
  %13 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %letmp = icmp slt i32 %i5, %14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %16 = bitcast i8* %15 to %vector__TVALUE**
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %16, align 8
  %17 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 0
  %18 = load %TVALUE*, %TVALUE** %17, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %TVALUE, %TVALUE* %18, i32 %i8
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %19 = load %TVALUE, %TVALUE* %element_address, align 8
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
  %20 = bitcast %TVALUE* %8 to i8*
  call void @xfree(i8* %20)
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret void
}

attributes #0 = { nounwind }
