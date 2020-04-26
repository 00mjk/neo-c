; ModuleID = 'Module parser'
source_filename = "Module parser"

%_IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %_IO_marker*, %_IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %_IO_codecvt*, %_IO_wide_data*, %_IO_FILE*, i8*, i64, i32, [20 x i8] }
%_IO_marker = type opaque
%_IO_codecvt = type opaque
%_IO_wide_data = type opaque
%pcre_callout_block = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%pcre16_callout_block = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%pcre32_callout_block = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%map__charp_sCLClassp = type { i8**, i1*, %sCLClass**, i32, i32 }
%sCLClass = type opaque
%__locale_struct = type { [13 x %__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%__locale_data = type opaque
%anon0 = type { i32, %anon1 }
%anon1 = type { i32 }
%__builtin_va_list.0 = type { i8* }
%tm = type opaque
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
%real_pcre = type opaque
%real_pcre16 = type opaque
%real_pcre32 = type opaque
%pcre_extra = type { i64, i8*, i64, i8*, i8*, i64, i8**, i8* }
%pcre16_extra = type { i64, i8*, i64, i8*, i8*, i64, i16**, i8* }
%pcre32_extra = type { i64, i8*, i64, i8*, i8*, i64, i32**, i8* }
%real_pcre_jit_stack = type opaque
%real_pcre16_jit_stack = type opaque
%real_pcre32_jit_stack = type opaque
%buffer = type { i8*, i32, i32 }
%regex_struct = type { i8*, %real_pcre*, i1, i1, i1, i1, i1, i1, i1, i1 }
%list__charp = type { %list_item__charp*, %list_item__charp*, i32 }
%list_item__charp = type { i8*, %list_item__charp*, %list_item__charp* }
%stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %timespec, %timespec, %timespec, [3 x i64] }
%lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%sCLType = type { i8*, %sCLClass*, i32, [32 x %sCLType*], i1, %sCLBlockType* }
%sCLBlockType = type { [32 x %sCLType*], i32, %sCLType* }
%sCompileInfo = type { [4096 x i8], i32, i32, %sParserInfo*, %buffer*, %vector__sCLTypep*, %sCLType* }
%sParserInfo = type { [4096 x i8], i32, i32, i32, i8*, %vector__sCLNodep* }
%vector__sCLNodep = type { %sCLNode**, i32, i32 }
%sCLNode = type { i32, [4096 x i8], i32, %anon73, %sCLNode*, %sCLNode*, %sCLNode* }
%anon73 = type { i32 }
%vector__sCLTypep = type { %sCLType**, i32, i32 }

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
@global_string = private constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@global_string.1 = private constant [24 x i8] c"overflow node of number\00", align 1
@global_string.2 = private constant [28 x i8] c"require digits after + or -\00", align 1
@global_string.3 = private constant [26 x i8] c"require right value for -\00", align 1
@global_string.4 = private constant [26 x i8] c"require right value for +\00", align 1
@global_string.5 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.6 = private constant [35 x i8] c"require right value for operator -\00", align 1

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

declare %sCLType* @create_type(i8*, %sCompileInfo*)

declare i1 @type_identify(%sCLType*, %sCLType*)

declare i1 @type_identify_with_class_name(%sCLType*, i8*, %sCompileInfo*)

declare void @show_type(%sCLType*)

define i1 @expression(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info3)
  %node4 = load %sCLNode**, %sCLNode*** %node1, align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call i1 @expression_add_sub(%sCLNode** %node4, %sParserInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 true
}

declare i1 @compile(%sCLNode*, %sCompileInfo*)

declare %sCLNode* @sNodeTree_create_add(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_int_value(i32, %sParserInfo*)

define void @parser_err_msg(%sParserInfo* %info, i8* %msg) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %msg2 = alloca i8*
  store i8* %msg, i8** %msg2, align 8
  %3 = bitcast i8** %msg2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %4 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 0
  %info4 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %5 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %msg5 = load i8*, i8** %msg2, align 8
  %7 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string, i32 0, i32 0), [4096 x i8]* %4, i32 %6, i8* %msg5)
  %info6 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %info7 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %addtmp = add nsw i32 %9, 1
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 2
  store i32 %addtmp, i32* %10, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
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
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %oror_result_var = alloca i1
  %3 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %4 = bitcast i8* %3 to %sParserInfo**
  %info2 = load %sParserInfo*, %sParserInfo** %4, align 8
  %5 = getelementptr inbounds %sParserInfo, %sParserInfo* %info2, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %derefference_value = load i8, i8* %6, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 32
  store i1 %eqtmpX, i1* %oror_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_end, label %cond_jump_then

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %10 = bitcast i8* %9 to %sParserInfo**
  %info3 = load %sParserInfo*, %sParserInfo** %10, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %derefference_value4 = load i8, i8* %12, align 8
  %eqtmpX5 = icmp eq i8 %derefference_value4, 9
  %oror = or i1 %eqtmpX, %eqtmpX5
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %cond_then_block
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_then6, label %"cond_jump_elif0\0A"

cond_jump_then6:                                  ; preds = %cond_jump_end
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %14 = bitcast i8* %13 to %sParserInfo**
  %info7 = load %sParserInfo*, %sParserInfo** %14, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %16 = bitcast i8* %15 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %16, align 8
  %17 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %addtmp = add nsw i64 %19, 1
  %20 = inttoptr i64 %addtmp to i8*
  %21 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = ptrtoint i8* %20 to i64
  %subtmp = sub nsw i64 %22, 1
  %23 = inttoptr i64 %subtmp to i8*
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %25 = bitcast i8* %24 to %sParserInfo**
  %info9 = load %sParserInfo*, %sParserInfo** %25, align 8
  %26 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %derefference_value10 = load i8, i8* %27, align 8
  %eqtmpX11 = icmp eq i8 %derefference_value10, 10
  br i1 %eqtmpX11, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %29 = bitcast i8* %28 to %sParserInfo**
  %info12 = load %sParserInfo*, %sParserInfo** %29, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info13 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i64
  %addtmp14 = add nsw i64 %34, 1
  %35 = inttoptr i64 %addtmp14 to i8*
  %36 = getelementptr inbounds %sParserInfo, %sParserInfo* %info12, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = ptrtoint i8* %35 to i64
  %subtmp15 = sub nsw i64 %37, 1
  %38 = inttoptr i64 %subtmp15 to i8*
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %40 = bitcast i8* %39 to %sParserInfo**
  %info16 = load %sParserInfo*, %sParserInfo** %40, align 8
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info17 = load %sParserInfo*, %sParserInfo** %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %info17, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %addtmp18 = add nsw i32 %44, 1
  %45 = getelementptr inbounds %sParserInfo, %sParserInfo* %info16, i32 0, i32 1
  store i32 %addtmp18, i32* %45, align 4
  %subttmp = sub nsw i32 %addtmp18, 1
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %"cond_jump_elif_then0\0A", %cond_jump_then6
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @skip_spaces(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %oror_result_var = alloca i1
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = getelementptr inbounds %sParserInfo, %sParserInfo* %info2, i32 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %derefference_value = load i8, i8* %4, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 32
  store i1 %eqtmpX, i1* %oror_result_var, align 1
  br i1 %eqtmpX, label %cond_jump_end, label %cond_jump_then

cond_jump_then:                                   ; preds = %loop_top_block
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %5 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %derefference_value4 = load i8, i8* %6, align 8
  %eqtmpX5 = icmp eq i8 %derefference_value4, 9
  %oror = or i1 %eqtmpX, %eqtmpX5
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %loop_top_block
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %cond_jump_end
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %8 = bitcast i8* %7 to %sParserInfo**
  %info6 = load %sParserInfo*, %sParserInfo** %8, align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %10 = bitcast i8* %9 to %sParserInfo**
  %info7 = load %sParserInfo*, %sParserInfo** %10, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %addtmp = add nsw i64 %13, 1
  %14 = inttoptr i64 %addtmp to i8*
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 4
  store i8* %14, i8** %15, align 8
  %16 = ptrtoint i8* %14 to i64
  %subtmp = sub nsw i64 %16, 1
  %17 = inttoptr i64 %subtmp to i8*
  br label %loop_top_block

cond_end_block:                                   ; preds = %cond_jump_end
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
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %node2 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node2, align 8
  %3 = bitcast %sCLNode*** %node2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %buf_size = alloca i32
  %5 = bitcast i32* %buf_size to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  store i32 128, i32* %buf_size, align 4
  %buf = alloca [129 x i8]
  %6 = bitcast [129 x i8]* %buf to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %buf4 = load [129 x i8], [129 x i8]* %buf, align 1
  %7 = bitcast [129 x i8]* %buf to i8*
  %p2 = alloca i8*
  %8 = bitcast i8** %p2 to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  store i8* %7, i8** %p2, align 8
  %minus5 = load i1, i1* %minus1, align 1
  br i1 %minus5, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %10 = bitcast i8* %9 to i8**
  %p26 = load i8*, i8** %10, align 8
  store i8 45, i8* %p26, align 1
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %12 = bitcast i8* %11 to i8**
  %p27 = load i8*, i8** %12, align 8
  %13 = ptrtoint i8* %p27 to i64
  %addtmp = add nsw i64 %13, 1
  %14 = inttoptr i64 %addtmp to i8*
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %16 = bitcast i8* %15 to i8**
  store i8* %14, i8** %16, align 8
  %17 = ptrtoint i8* %14 to i64
  %subtmp = sub nsw i64 %17, 1
  %18 = inttoptr i64 %subtmp to i8*
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %19 = call i16** @__ctype_b_loc()
  %derefference_value = load i16*, i16** %19, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %20 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %derefference_value9 = load i8, i8* %21, align 8
  %sext13 = sext i8 %derefference_value9 to i32
  %element_address = getelementptr i16, i16* %derefference_value, i32 %sext13
  %element = load i16, i16* %element_address, align 2
  %andtmp = and i16 %element, 2048
  %22 = icmp ne i16 %andtmp, 0
  br i1 %22, label %cond_jump_then10, label %cond_else_block

cond_jump_then10:                                 ; preds = %cond_end
  br label %loop_top_block

cond_else_block:                                  ; preds = %cond_end
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %24 = bitcast i8* %23 to %sParserInfo**
  %info53 = load %sParserInfo*, %sParserInfo** %24, align 8
  call void @parser_err_msg(%sParserInfo* %info53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.2, i32 0, i32 0))
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %26 = bitcast i8* %25 to %sParserInfo**
  %info54 = load %sParserInfo*, %sParserInfo** %26, align 8
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %28 = bitcast i8* %27 to %sParserInfo**
  %info55 = load %sParserInfo*, %sParserInfo** %28, align 8
  %29 = getelementptr inbounds %sParserInfo, %sParserInfo* %info55, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %addtmp56 = add nsw i32 %30, 1
  %31 = getelementptr inbounds %sParserInfo, %sParserInfo* %info54, i32 0, i32 3
  store i32 %addtmp56, i32* %31, align 4
  %subttmp = sub nsw i32 %addtmp56, 1
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %33 = bitcast i8* %32 to %sCLNode***
  %node57 = load %sCLNode**, %sCLNode*** %33, align 8
  store %sCLNode* null, %sCLNode** %node57, align 8
  br label %cond_end11

cond_end11:                                       ; preds = %cond_else_block, %cond_end_block
  %34 = bitcast [8192 x i8*]* %lvtable to i8*
  %35 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %34, i64 65536)
  ret i1 true

loop_top_block:                                   ; preds = %cond_end46, %cond_jump_then10
  %oror_result_var = alloca i1
  %36 = call i16** @__ctype_b_loc()
  %derefference_value12 = load i16*, i16** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %38 = bitcast i8* %37 to %sParserInfo**
  %info13 = load %sParserInfo*, %sParserInfo** %38, align 8
  %39 = getelementptr inbounds %sParserInfo, %sParserInfo* %info13, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %derefference_value14 = load i8, i8* %40, align 8
  %sext1315 = sext i8 %derefference_value14 to i32
  %element_address16 = getelementptr i16, i16* %derefference_value12, i32 %sext1315
  %element17 = load i16, i16* %element_address16, align 2
  %andtmp18 = and i16 %element17, 2048
  %41 = icmp ne i16 %andtmp18, 0
  store i1 %41, i1* %oror_result_var, align 1
  br i1 %41, label %cond_jump_end, label %cond_jump_then19

cond_jump_then19:                                 ; preds = %loop_top_block
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %43 = bitcast i8* %42 to %sParserInfo**
  %info20 = load %sParserInfo*, %sParserInfo** %43, align 8
  %44 = getelementptr inbounds %sParserInfo, %sParserInfo* %info20, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %derefference_value21 = load i8, i8* %45, align 8
  %eqtmpX = icmp eq i8 %derefference_value21, 95
  %oror = or i1 %41, %eqtmpX
  store i1 %oror, i1* %oror_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then19, %loop_top_block
  %oror_result_value = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %cond_jump_end
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %47 = bitcast i8* %46 to %sParserInfo**
  %info22 = load %sParserInfo*, %sParserInfo** %47, align 8
  %48 = getelementptr inbounds %sParserInfo, %sParserInfo* %info22, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %derefference_value23 = load i8, i8* %49, align 8
  %eqtmpX24 = icmp eq i8 %derefference_value23, 95
  br i1 %eqtmpX24, label %cond_jump_then25, label %cond_else_block26

cond_end_block:                                   ; preds = %cond_jump_end
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %51 = bitcast i8* %50 to i8**
  %p248 = load i8*, i8** %51, align 8
  store i8 0, i8* %p248, align 1
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %53 = bitcast i8* %52 to %sParserInfo**
  %info49 = load %sParserInfo*, %sParserInfo** %53, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info49)
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %55 = bitcast i8* %54 to %sCLNode***
  %node50 = load %sCLNode**, %sCLNode*** %55, align 8
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %57 = bitcast i8* %56 to [129 x i8]*
  %buf51 = load [129 x i8], [129 x i8]* %57, align 1
  %58 = bitcast [129 x i8]* %57 to i8*
  %59 = call i32 @atoi(i8* %58)
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %61 = bitcast i8* %60 to %sParserInfo**
  %info52 = load %sParserInfo*, %sParserInfo** %61, align 8
  %62 = call %sCLNode* @sNodeTree_create_int_value(i32 %59, %sParserInfo* %info52)
  store %sCLNode* %62, %sCLNode** %node50, align 8
  br label %cond_end11

cond_jump_then25:                                 ; preds = %cond_then_block
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %64 = bitcast i8* %63 to %sParserInfo**
  %info28 = load %sParserInfo*, %sParserInfo** %64, align 8
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %66 = bitcast i8* %65 to %sParserInfo**
  %info29 = load %sParserInfo*, %sParserInfo** %66, align 8
  %67 = getelementptr inbounds %sParserInfo, %sParserInfo* %info29, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i64
  %addtmp30 = add nsw i64 %69, 1
  %70 = inttoptr i64 %addtmp30 to i8*
  %71 = getelementptr inbounds %sParserInfo, %sParserInfo* %info28, i32 0, i32 4
  store i8* %70, i8** %71, align 8
  %72 = ptrtoint i8* %70 to i64
  %subtmp31 = sub nsw i64 %72, 1
  %73 = inttoptr i64 %subtmp31 to i8*
  br label %cond_end27

cond_else_block26:                                ; preds = %cond_then_block
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %75 = bitcast i8* %74 to i8**
  %p232 = load i8*, i8** %75, align 8
  %76 = ptrtoint i8* %p232 to i64
  %addtmp33 = add nsw i64 %76, 1
  %77 = inttoptr i64 %addtmp33 to i8*
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %79 = bitcast i8* %78 to i8**
  store i8* %77, i8** %79, align 8
  %80 = ptrtoint i8* %77 to i64
  %subtmp34 = sub nsw i64 %80, 1
  %81 = inttoptr i64 %subtmp34 to i8*
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %83 = bitcast i8* %82 to %sParserInfo**
  %info35 = load %sParserInfo*, %sParserInfo** %83, align 8
  %84 = getelementptr inbounds %sParserInfo, %sParserInfo* %info35, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %derefference_value36 = load i8, i8* %85, align 8
  store i8 %derefference_value36, i8* %81, align 1
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %87 = bitcast i8* %86 to %sParserInfo**
  %info37 = load %sParserInfo*, %sParserInfo** %87, align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %89 = bitcast i8* %88 to %sParserInfo**
  %info38 = load %sParserInfo*, %sParserInfo** %89, align 8
  %90 = getelementptr inbounds %sParserInfo, %sParserInfo* %info38, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %91 to i64
  %addtmp39 = add nsw i64 %92, 1
  %93 = inttoptr i64 %addtmp39 to i8*
  %94 = getelementptr inbounds %sParserInfo, %sParserInfo* %info37, i32 0, i32 4
  store i8* %93, i8** %94, align 8
  %95 = ptrtoint i8* %93 to i64
  %subtmp40 = sub nsw i64 %95, 1
  %96 = inttoptr i64 %subtmp40 to i8*
  br label %cond_end27

cond_end27:                                       ; preds = %cond_else_block26, %cond_jump_then25
  %97 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %98 = bitcast i8* %97 to i8**
  %p241 = load i8*, i8** %98, align 8
  %99 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %100 = bitcast i8* %99 to [129 x i8]*
  %buf42 = load [129 x i8], [129 x i8]* %100, align 1
  %101 = bitcast [129 x i8]* %100 to i8*
  %102 = ptrtoint i8* %p241 to i64
  %103 = ptrtoint i8* %101 to i64
  %subtmp43 = sub nsw i64 %102, %103
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %105 = bitcast i8* %104 to i32*
  %buf_size44 = load i32, i32* %105, align 4
  %sext14 = sext i32 %buf_size44 to i64
  %getmp = icmp sge i64 %subtmp43, %sext14
  br i1 %getmp, label %cond_jump_then45, label %cond_end46

cond_jump_then45:                                 ; preds = %cond_end27
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %107 = bitcast i8* %106 to %sParserInfo**
  %info47 = load %sParserInfo*, %sParserInfo** %107, align 8
  call void @parser_err_msg(%sParserInfo* %info47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_string.1, i32 0, i32 0))
  %108 = bitcast [8192 x i8*]* %lvtable to i8*
  %109 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %108, i64 65536)
  ret i1 false

cond_end46:                                       ; preds = %cond_end27
  br label %loop_top_block
}

define i1 @expression_node(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %num_method_chains = alloca i32
  %4 = bitcast i32* %num_method_chains to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
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
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %30 = bitcast i8* %29 to %sParserInfo**
  %info48 = load %sParserInfo*, %sParserInfo** %30, align 8
  %31 = getelementptr inbounds %sParserInfo, %sParserInfo* %info48, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %derefference_value49 = load i8, i8* %32, align 8
  %eqtmpX50 = icmp eq i8 %derefference_value49, 45
  br i1 %eqtmpX50, label %cond_jump_then51, label %"cond_jump_elif0\0A52"

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end25
  %33 = call i16** @__ctype_b_loc()
  %derefference_value120 = load i16*, i16** %33, align 8
  %info121 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %34 = getelementptr inbounds %sParserInfo, %sParserInfo* %info121, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %derefference_value122 = load i8, i8* %35, align 8
  %sext13123 = sext i8 %derefference_value122 to i32
  %element_address124 = getelementptr i16, i16* %derefference_value120, i32 %sext13123
  %element125 = load i16, i16* %element_address124, align 2
  %andtmp126 = and i16 %element125, 2048
  %36 = icmp ne i16 %andtmp126, 0
  br i1 %36, label %"cond_jump_elif_then0\0A", label %cond_end

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %38 = bitcast i8* %37 to %sCLNode***
  %node127 = load %sCLNode**, %sCLNode*** %38, align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %40 = bitcast i8* %39 to %sParserInfo**
  %info128 = load %sParserInfo*, %sParserInfo** %40, align 8
  %41 = call i1 @get_number(i1 false, %sCLNode** %node127, %sParserInfo* %info128)
  %LOGICAL_DIANEAL129 = icmp eq i1 %41, false
  br i1 %LOGICAL_DIANEAL129, label %cond_jump_then130, label %cond_end131

cond_end:                                         ; preds = %cond_end131, %"cond_jump_elif0\0A", %cond_end54
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

cond_jump_then51:                                 ; preds = %cond_jump_then47
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %45 = bitcast i8* %44 to %sParserInfo**
  %info55 = load %sParserInfo*, %sParserInfo** %45, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %47 = bitcast i8* %46 to %sParserInfo**
  %info56 = load %sParserInfo*, %sParserInfo** %47, align 8
  %48 = getelementptr inbounds %sParserInfo, %sParserInfo* %info56, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i64
  %addtmp57 = add nsw i64 %50, 1
  %51 = inttoptr i64 %addtmp57 to i8*
  %52 = getelementptr inbounds %sParserInfo, %sParserInfo* %info55, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = ptrtoint i8* %51 to i64
  %subtmp = sub nsw i64 %53, 1
  %54 = inttoptr i64 %subtmp to i8*
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %56 = bitcast i8* %55 to %sParserInfo**
  %info58 = load %sParserInfo*, %sParserInfo** %56, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info58)
  %57 = call i16** @__ctype_b_loc()
  %derefference_value59 = load i16*, i16** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %59 = bitcast i8* %58 to %sParserInfo**
  %info60 = load %sParserInfo*, %sParserInfo** %59, align 8
  %60 = getelementptr inbounds %sParserInfo, %sParserInfo* %info60, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %derefference_value61 = load i8, i8* %61, align 8
  %sext13 = sext i8 %derefference_value61 to i32
  %element_address = getelementptr i16, i16* %derefference_value59, i32 %sext13
  %element = load i16, i16* %element_address, align 2
  %andtmp = and i16 %element, 2048
  %62 = icmp ne i16 %andtmp, 0
  br i1 %62, label %cond_jump_then62, label %cond_else_block

"cond_jump_elif0\0A52":                           ; preds = %cond_jump_then47
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %64 = bitcast i8* %63 to %sParserInfo**
  %info82 = load %sParserInfo*, %sParserInfo** %64, align 8
  %65 = getelementptr inbounds %sParserInfo, %sParserInfo* %info82, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %derefference_value83 = load i8, i8* %66, align 8
  %eqtmpX84 = icmp eq i8 %derefference_value83, 43
  br i1 %eqtmpX84, label %"cond_jump_elif_then0\0A53", label %cond_end54

"cond_jump_elif_then0\0A53":                      ; preds = %"cond_jump_elif0\0A52"
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %68 = bitcast i8* %67 to %sParserInfo**
  %info85 = load %sParserInfo*, %sParserInfo** %68, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %70 = bitcast i8* %69 to %sParserInfo**
  %info86 = load %sParserInfo*, %sParserInfo** %70, align 8
  %71 = getelementptr inbounds %sParserInfo, %sParserInfo* %info86, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %72 to i64
  %addtmp87 = add nsw i64 %73, 1
  %74 = inttoptr i64 %addtmp87 to i8*
  %75 = getelementptr inbounds %sParserInfo, %sParserInfo* %info85, i32 0, i32 4
  store i8* %74, i8** %75, align 8
  %76 = ptrtoint i8* %74 to i64
  %subtmp88 = sub nsw i64 %76, 1
  %77 = inttoptr i64 %subtmp88 to i8*
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %79 = bitcast i8* %78 to %sParserInfo**
  %info89 = load %sParserInfo*, %sParserInfo** %79, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info89)
  %80 = call i16** @__ctype_b_loc()
  %derefference_value90 = load i16*, i16** %80, align 8
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %82 = bitcast i8* %81 to %sParserInfo**
  %info91 = load %sParserInfo*, %sParserInfo** %82, align 8
  %83 = getelementptr inbounds %sParserInfo, %sParserInfo* %info91, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %derefference_value92 = load i8, i8* %84, align 8
  %sext1393 = sext i8 %derefference_value92 to i32
  %element_address94 = getelementptr i16, i16* %derefference_value90, i32 %sext1393
  %element95 = load i16, i16* %element_address94, align 2
  %andtmp96 = and i16 %element95, 2048
  %85 = icmp ne i16 %andtmp96, 0
  br i1 %85, label %cond_jump_then97, label %cond_else_block98

cond_end54:                                       ; preds = %cond_end99, %"cond_jump_elif0\0A52", %cond_end63
  br label %cond_end

cond_jump_then62:                                 ; preds = %cond_jump_then51
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %87 = bitcast i8* %86 to %sCLNode***
  %node64 = load %sCLNode**, %sCLNode*** %87, align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %89 = bitcast i8* %88 to %sParserInfo**
  %info65 = load %sParserInfo*, %sParserInfo** %89, align 8
  %90 = call i1 @get_number(i1 true, %sCLNode** %node64, %sParserInfo* %info65)
  %LOGICAL_DIANEAL = icmp eq i1 %90, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then66, label %cond_end67

cond_else_block:                                  ; preds = %cond_jump_then51
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %92 = bitcast i8* %91 to %sCLNode***
  %node68 = load %sCLNode**, %sCLNode*** %92, align 8
  %93 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %94 = bitcast i8* %93 to %sParserInfo**
  %info69 = load %sParserInfo*, %sParserInfo** %94, align 8
  %95 = call i1 @expression_node(%sCLNode** %node68, %sParserInfo* %info69)
  %LOGICAL_DIANEAL70 = icmp eq i1 %95, false
  br i1 %LOGICAL_DIANEAL70, label %cond_jump_then71, label %cond_end72

cond_end63:                                       ; preds = %cond_end77, %cond_end67
  br label %cond_end54

cond_jump_then66:                                 ; preds = %cond_jump_then62
  %96 = bitcast [8192 x i8*]* %lvtable to i8*
  %97 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %96, i64 65536)
  ret i1 false

cond_end67:                                       ; preds = %cond_jump_then62
  br label %cond_end63

cond_jump_then71:                                 ; preds = %cond_else_block
  %98 = bitcast [8192 x i8*]* %lvtable to i8*
  %99 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %98, i64 65536)
  ret i1 false

cond_end72:                                       ; preds = %cond_else_block
  %100 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %101 = bitcast i8* %100 to %sCLNode***
  %node73 = load %sCLNode**, %sCLNode*** %101, align 8
  %derefference_value74 = load %sCLNode*, %sCLNode** %node73, align 8
  %eqtmpX75 = icmp eq %sCLNode* %derefference_value74, null
  br i1 %eqtmpX75, label %cond_jump_then76, label %cond_end77

cond_jump_then76:                                 ; preds = %cond_end72
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %103 = bitcast i8* %102 to %sParserInfo**
  %info78 = load %sParserInfo*, %sParserInfo** %103, align 8
  call void @parser_err_msg(%sParserInfo* %info78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.3, i32 0, i32 0))
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %105 = bitcast i8* %104 to %sParserInfo**
  %info79 = load %sParserInfo*, %sParserInfo** %105, align 8
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %107 = bitcast i8* %106 to %sParserInfo**
  %info80 = load %sParserInfo*, %sParserInfo** %107, align 8
  %108 = getelementptr inbounds %sParserInfo, %sParserInfo* %info80, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %addtmp81 = add nsw i32 %109, 1
  %110 = getelementptr inbounds %sParserInfo, %sParserInfo* %info79, i32 0, i32 3
  store i32 %addtmp81, i32* %110, align 4
  %subttmp = sub nsw i32 %addtmp81, 1
  br label %cond_end77

cond_end77:                                       ; preds = %cond_jump_then76, %cond_end72
  br label %cond_end63

cond_jump_then97:                                 ; preds = %"cond_jump_elif_then0\0A53"
  %111 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %112 = bitcast i8* %111 to %sCLNode***
  %node100 = load %sCLNode**, %sCLNode*** %112, align 8
  %113 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %114 = bitcast i8* %113 to %sParserInfo**
  %info101 = load %sParserInfo*, %sParserInfo** %114, align 8
  %115 = call i1 @get_number(i1 false, %sCLNode** %node100, %sParserInfo* %info101)
  %LOGICAL_DIANEAL102 = icmp eq i1 %115, false
  br i1 %LOGICAL_DIANEAL102, label %cond_jump_then103, label %cond_end104

cond_else_block98:                                ; preds = %"cond_jump_elif_then0\0A53"
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %117 = bitcast i8* %116 to %sCLNode***
  %node105 = load %sCLNode**, %sCLNode*** %117, align 8
  %118 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %119 = bitcast i8* %118 to %sParserInfo**
  %info106 = load %sParserInfo*, %sParserInfo** %119, align 8
  %120 = call i1 @expression_node(%sCLNode** %node105, %sParserInfo* %info106)
  %LOGICAL_DIANEAL107 = icmp eq i1 %120, false
  br i1 %LOGICAL_DIANEAL107, label %cond_jump_then108, label %cond_end109

cond_end99:                                       ; preds = %cond_end114, %cond_end104
  br label %cond_end54

cond_jump_then103:                                ; preds = %cond_jump_then97
  %121 = bitcast [8192 x i8*]* %lvtable to i8*
  %122 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %121, i64 65536)
  ret i1 false

cond_end104:                                      ; preds = %cond_jump_then97
  br label %cond_end99

cond_jump_then108:                                ; preds = %cond_else_block98
  %123 = bitcast [8192 x i8*]* %lvtable to i8*
  %124 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %123, i64 65536)
  ret i1 false

cond_end109:                                      ; preds = %cond_else_block98
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %126 = bitcast i8* %125 to %sCLNode***
  %node110 = load %sCLNode**, %sCLNode*** %126, align 8
  %derefference_value111 = load %sCLNode*, %sCLNode** %node110, align 8
  %eqtmpX112 = icmp eq %sCLNode* %derefference_value111, null
  br i1 %eqtmpX112, label %cond_jump_then113, label %cond_end114

cond_jump_then113:                                ; preds = %cond_end109
  %127 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %128 = bitcast i8* %127 to %sParserInfo**
  %info115 = load %sParserInfo*, %sParserInfo** %128, align 8
  call void @parser_err_msg(%sParserInfo* %info115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_string.4, i32 0, i32 0))
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %130 = bitcast i8* %129 to %sParserInfo**
  %info116 = load %sParserInfo*, %sParserInfo** %130, align 8
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %132 = bitcast i8* %131 to %sParserInfo**
  %info117 = load %sParserInfo*, %sParserInfo** %132, align 8
  %133 = getelementptr inbounds %sParserInfo, %sParserInfo* %info117, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %addtmp118 = add nsw i32 %134, 1
  %135 = getelementptr inbounds %sParserInfo, %sParserInfo* %info116, i32 0, i32 3
  store i32 %addtmp118, i32* %135, align 4
  %subttmp119 = sub nsw i32 %addtmp118, 1
  br label %cond_end114

cond_end114:                                      ; preds = %cond_jump_then113, %cond_end109
  br label %cond_end99

cond_jump_then130:                                ; preds = %"cond_jump_elif_then0\0A"
  %136 = bitcast [8192 x i8*]* %lvtable to i8*
  %137 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %136, i64 65536)
  ret i1 false

cond_end131:                                      ; preds = %"cond_jump_elif_then0\0A"
  br label %cond_end
}

define i1 @expression_add_sub(%sCLNode** %node, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode**
  store %sCLNode** %node, %sCLNode*** %node1, align 8
  %2 = bitcast %sCLNode*** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
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
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
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
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
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
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
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
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %31 = bitcast i8* %30 to %sParserInfo**
  %info27 = load %sParserInfo*, %sParserInfo** %31, align 8
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
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
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %42 = bitcast i8* %41 to %sParserInfo**
  %info30 = load %sParserInfo*, %sParserInfo** %42, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info30)
  %right = alloca %sCLNode*
  %43 = bitcast %sCLNode** %right to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  store %sCLNode* null, %sCLNode** %right, align 8
  %right31 = load %sCLNode*, %sCLNode** %right, align 8
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %45 = bitcast i8* %44 to %sParserInfo**
  %info32 = load %sParserInfo*, %sParserInfo** %45, align 8
  %46 = call i1 @expression_node(%sCLNode** %right, %sParserInfo* %info32)
  %LOGICAL_DIANEAL33 = icmp eq i1 %46, false
  br i1 %LOGICAL_DIANEAL33, label %cond_jump_then34, label %cond_end35

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end18
  %andand_result_var49 = alloca i1
  %andand_result_var50 = alloca i1
  %andand_result_var51 = alloca i1
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %48 = bitcast i8* %47 to %sParserInfo**
  %info52 = load %sParserInfo*, %sParserInfo** %48, align 8
  %49 = getelementptr inbounds %sParserInfo, %sParserInfo* %info52, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %derefference_value53 = load i8, i8* %50, align 8
  %eqtmpX54 = icmp eq i8 %derefference_value53, 45
  store i1 %eqtmpX54, i1* %andand_result_var51, align 1
  br i1 %eqtmpX54, label %cond_jump_then55, label %cond_jump_end56

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end72
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %52 = bitcast i8* %51 to %sParserInfo**
  %info79 = load %sParserInfo*, %sParserInfo** %52, align 8
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %54 = bitcast i8* %53 to %sParserInfo**
  %info80 = load %sParserInfo*, %sParserInfo** %54, align 8
  %55 = getelementptr inbounds %sParserInfo, %sParserInfo* %info80, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i64
  %addtmp81 = add nsw i64 %57, 1
  %58 = inttoptr i64 %addtmp81 to i8*
  %59 = getelementptr inbounds %sParserInfo, %sParserInfo* %info79, i32 0, i32 4
  store i8* %58, i8** %59, align 8
  %60 = ptrtoint i8* %58 to i64
  %subtmp82 = sub nsw i64 %60, 1
  %61 = inttoptr i64 %subtmp82 to i8*
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %63 = bitcast i8* %62 to %sParserInfo**
  %info83 = load %sParserInfo*, %sParserInfo** %63, align 8
  call void @skip_spaces_and_lf(%sParserInfo* %info83)
  %right84 = alloca %sCLNode*
  %64 = bitcast %sCLNode** %right84 to i8*
  store i8* %64, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  store %sCLNode* null, %sCLNode** %right84, align 8
  %right85 = load %sCLNode*, %sCLNode** %right84, align 8
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %66 = bitcast i8* %65 to %sParserInfo**
  %info86 = load %sParserInfo*, %sParserInfo** %66, align 8
  %67 = call i1 @expression_node(%sCLNode** %right84, %sParserInfo* %info86)
  %LOGICAL_DIANEAL87 = icmp eq i1 %67, false
  br i1 %LOGICAL_DIANEAL87, label %cond_jump_then88, label %cond_end89

cond_else_block:                                  ; preds = %cond_jump_end72
  br label %cond_end_block

cond_end26:                                       ; preds = %after_break, %cond_end93, %cond_end39
  br label %loop_top_block

cond_jump_then34:                                 ; preds = %cond_jump_then25
  %68 = bitcast [8192 x i8*]* %lvtable to i8*
  %69 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %68, i64 65536)
  ret i1 false

cond_end35:                                       ; preds = %cond_jump_then25
  %right36 = load %sCLNode*, %sCLNode** %right, align 8
  %eqtmpX37 = icmp eq %sCLNode* %right36, null
  br i1 %eqtmpX37, label %cond_jump_then38, label %cond_end39

cond_jump_then38:                                 ; preds = %cond_end35
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %71 = bitcast i8* %70 to %sParserInfo**
  %info40 = load %sParserInfo*, %sParserInfo** %71, align 8
  call void @parser_err_msg(%sParserInfo* %info40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.5, i32 0, i32 0))
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %73 = bitcast i8* %72 to %sParserInfo**
  %info41 = load %sParserInfo*, %sParserInfo** %73, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %75 = bitcast i8* %74 to %sParserInfo**
  %info42 = load %sParserInfo*, %sParserInfo** %75, align 8
  %76 = getelementptr inbounds %sParserInfo, %sParserInfo* %info42, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %addtmp43 = add nsw i32 %77, 1
  %78 = getelementptr inbounds %sParserInfo, %sParserInfo* %info41, i32 0, i32 3
  store i32 %addtmp43, i32* %78, align 4
  %subttmp = sub nsw i32 %addtmp43, 1
  br label %cond_end39

cond_end39:                                       ; preds = %cond_jump_then38, %cond_end35
  %79 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %80 = bitcast i8* %79 to %sCLNode***
  %node44 = load %sCLNode**, %sCLNode*** %80, align 8
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %82 = bitcast i8* %81 to %sCLNode***
  %node45 = load %sCLNode**, %sCLNode*** %82, align 8
  %derefference_value46 = load %sCLNode*, %sCLNode** %node45, align 8
  %right47 = load %sCLNode*, %sCLNode** %right, align 8
  %83 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %84 = bitcast i8* %83 to %sParserInfo**
  %info48 = load %sParserInfo*, %sParserInfo** %84, align 8
  %85 = call %sCLNode* @sNodeTree_create_add(%sCLNode* %derefference_value46, %sCLNode* %right47, %sParserInfo* %info48)
  store %sCLNode* %85, %sCLNode** %node44, align 8
  br label %cond_end26

cond_jump_then55:                                 ; preds = %"cond_jump_elif0\0A"
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %87 = bitcast i8* %86 to %sParserInfo**
  %info57 = load %sParserInfo*, %sParserInfo** %87, align 8
  %88 = getelementptr inbounds %sParserInfo, %sParserInfo* %info57, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %89 to i64
  %addtmp58 = add nsw i64 %90, 1
  %91 = inttoptr i64 %addtmp58 to i8*
  %derefference_value59 = load i8, i8* %91, align 8
  %noteqtmp60 = icmp ne i8 %derefference_value59, 61
  %andand61 = and i1 %eqtmpX54, %noteqtmp60
  store i1 %andand61, i1* %andand_result_var51, align 1
  br label %cond_jump_end56

cond_jump_end56:                                  ; preds = %cond_jump_then55, %"cond_jump_elif0\0A"
  %andand_result_value62 = load i1, i1* %andand_result_var51, align 1
  store i1 %andand_result_value62, i1* %andand_result_var50, align 1
  br i1 %andand_result_value62, label %cond_jump_then63, label %cond_jump_end64

cond_jump_then63:                                 ; preds = %cond_jump_end56
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %93 = bitcast i8* %92 to %sParserInfo**
  %info65 = load %sParserInfo*, %sParserInfo** %93, align 8
  %94 = getelementptr inbounds %sParserInfo, %sParserInfo* %info65, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i64
  %addtmp66 = add nsw i64 %96, 1
  %97 = inttoptr i64 %addtmp66 to i8*
  %derefference_value67 = load i8, i8* %97, align 8
  %noteqtmp68 = icmp ne i8 %derefference_value67, 45
  %andand69 = and i1 %andand_result_value62, %noteqtmp68
  store i1 %andand69, i1* %andand_result_var50, align 1
  br label %cond_jump_end64

cond_jump_end64:                                  ; preds = %cond_jump_then63, %cond_jump_end56
  %andand_result_value70 = load i1, i1* %andand_result_var50, align 1
  store i1 %andand_result_value70, i1* %andand_result_var49, align 1
  br i1 %andand_result_value70, label %cond_jump_then71, label %cond_jump_end72

cond_jump_then71:                                 ; preds = %cond_jump_end64
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %99 = bitcast i8* %98 to %sParserInfo**
  %info73 = load %sParserInfo*, %sParserInfo** %99, align 8
  %100 = getelementptr inbounds %sParserInfo, %sParserInfo* %info73, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %101 to i64
  %addtmp74 = add nsw i64 %102, 1
  %103 = inttoptr i64 %addtmp74 to i8*
  %derefference_value75 = load i8, i8* %103, align 8
  %noteqtmp76 = icmp ne i8 %derefference_value75, 62
  %andand77 = and i1 %andand_result_value70, %noteqtmp76
  store i1 %andand77, i1* %andand_result_var49, align 1
  br label %cond_jump_end72

cond_jump_end72:                                  ; preds = %cond_jump_then71, %cond_jump_end64
  %andand_result_value78 = load i1, i1* %andand_result_var49, align 1
  br i1 %andand_result_value78, label %"cond_jump_elif_then0\0A", label %cond_else_block

cond_jump_then88:                                 ; preds = %"cond_jump_elif_then0\0A"
  %104 = bitcast [8192 x i8*]* %lvtable to i8*
  %105 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %104, i64 65536)
  ret i1 false

cond_end89:                                       ; preds = %"cond_jump_elif_then0\0A"
  %right90 = load %sCLNode*, %sCLNode** %right84, align 8
  %eqtmpX91 = icmp eq %sCLNode* %right90, null
  br i1 %eqtmpX91, label %cond_jump_then92, label %cond_end93

cond_jump_then92:                                 ; preds = %cond_end89
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %107 = bitcast i8* %106 to %sParserInfo**
  %info94 = load %sParserInfo*, %sParserInfo** %107, align 8
  call void @parser_err_msg(%sParserInfo* %info94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.6, i32 0, i32 0))
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %109 = bitcast i8* %108 to %sParserInfo**
  %info95 = load %sParserInfo*, %sParserInfo** %109, align 8
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %111 = bitcast i8* %110 to %sParserInfo**
  %info96 = load %sParserInfo*, %sParserInfo** %111, align 8
  %112 = getelementptr inbounds %sParserInfo, %sParserInfo* %info96, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %addtmp97 = add nsw i32 %113, 1
  %114 = getelementptr inbounds %sParserInfo, %sParserInfo* %info95, i32 0, i32 3
  store i32 %addtmp97, i32* %114, align 4
  %subttmp98 = sub nsw i32 %addtmp97, 1
  br label %cond_end93

cond_end93:                                       ; preds = %cond_jump_then92, %cond_end89
  br label %cond_end26

after_break:                                      ; No predecessors!
  br label %cond_end26
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/parser.nc", directory: "/home/ab25cq/repo/clover3")
!2 = !{}
