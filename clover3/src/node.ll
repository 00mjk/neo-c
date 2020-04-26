; ModuleID = 'Module node'
source_filename = "Module node"

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
@global_string.11 = private constant [65 x i8] c"The different type between left type and rigt type at + operator\00", align 1
@global_string.12 = private constant [14 x i8] c"left type -->\00", align 1
@global_string.13 = private constant [15 x i8] c"right type -->\00", align 1
@global_string.14 = private constant [4 x i8] c"int\00", align 1
@global_string.15 = private constant [4 x i8] c"int\00", align 1
@global_string.16 = private constant [37 x i8] c"This type is invalid for operator + \00", align 1
@global_string.17 = private constant [22 x i8] c"unexpected node type.\00", align 1

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

declare i1 @expression(%sCLNode**, %sParserInfo*)

define i1 @compile(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %eqtmpY = icmp eq i32 %5, 0
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block16, %cond_then_block15, %cond_end13, %cond_end
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret i1 true

cond_then_block:                                  ; preds = %entry
  %node4 = load %sCLNode*, %sCLNode** %node1, align 8
  %info5 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %8 = call i1 @compile_int_value(%sCLNode* %node4, %sCompileInfo* %info5)
  %LOGICAL_DIANEAL = icmp eq i1 %8, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_else_block:                                  ; preds = %after_break, %entry
  %eqtmpY8 = icmp eq i32 %5, 1
  br i1 %eqtmpY8, label %cond_then_block6, label %cond_else_block7

cond_jump_then:                                   ; preds = %cond_then_block
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %cond_then_block
  br label %end_block

after_break:                                      ; No predecessors!
  br label %cond_else_block

cond_then_block6:                                 ; preds = %cond_else_block
  %node9 = load %sCLNode*, %sCLNode** %node1, align 8
  %info10 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %11 = call i1 @compile_add(%sCLNode* %node9, %sCompileInfo* %info10)
  %LOGICAL_DIANEAL11 = icmp eq i1 %11, false
  br i1 %LOGICAL_DIANEAL11, label %cond_jump_then12, label %cond_end13

cond_else_block7:                                 ; preds = %after_break14, %cond_else_block
  br label %cond_then_block15

cond_jump_then12:                                 ; preds = %cond_then_block6
  %12 = bitcast [8192 x i8*]* %lvtable to i8*
  %13 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %12, i64 65536)
  ret i1 false

cond_end13:                                       ; preds = %cond_then_block6
  br label %end_block

after_break14:                                    ; No predecessors!
  br label %cond_else_block7

cond_then_block15:                                ; preds = %cond_else_block7
  %info17 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.17, i32 0, i32 0))
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret i1 false
  br label %end_block

cond_else_block16:                                ; preds = %after_break18
  br label %end_block

after_break18:                                    ; No predecessors!
  br label %cond_else_block16
}

define %sCLNode* @sNodeTree_create_add(%sCLNode* %left, %sCLNode* %right, %sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %left1 = alloca %sCLNode*
  store %sCLNode* %left, %sCLNode** %left1, align 8
  %2 = bitcast %sCLNode** %left1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %right2 = alloca %sCLNode*
  store %sCLNode* %right, %sCLNode** %right2, align 8
  %3 = bitcast %sCLNode** %right2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %info3 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info3, align 8
  %4 = bitcast %sParserInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %5 = call %sCLNode* @alloc_node(%sParserInfo* %info4)
  %result = alloca %sCLNode*
  %6 = bitcast %sCLNode** %result to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  store %sCLNode* %5, %sCLNode** %result, align 8
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %result6 = load %sCLNode*, %sCLNode** %result, align 8
  %8 = getelementptr inbounds %sCLNode, %sCLNode* %result6, i32 0, i32 1
  %info7 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 0
  %10 = bitcast [4096 x i8]* %8 to i8*
  %11 = bitcast [4096 x i8]* %9 to i8*
  %12 = call i8* @xstrncpy(i8* %10, i8* %11, i32 4096)
  %result8 = load %sCLNode*, %sCLNode** %result, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info3, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %result10 = load %sCLNode*, %sCLNode** %result, align 8
  %left11 = load %sCLNode*, %sCLNode** %left1, align 8
  %16 = getelementptr inbounds %sCLNode, %sCLNode* %result10, i32 0, i32 4
  store %sCLNode* %left11, %sCLNode** %16, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %right13 = load %sCLNode*, %sCLNode** %right2, align 8
  %17 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 6
  store %sCLNode* %right13, %sCLNode** %17, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result14, i32 0, i32 5
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
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %info2 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info2, align 8
  %3 = bitcast %sParserInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %4 = call %sCLNode* @alloc_node(%sParserInfo* %info3)
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %result4 = load %sCLNode*, %sCLNode** %result, align 8
  %6 = getelementptr inbounds %sCLNode, %sCLNode* %result4, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %result5 = load %sCLNode*, %sCLNode** %result, align 8
  %7 = getelementptr inbounds %sCLNode, %sCLNode* %result5, i32 0, i32 1
  %info6 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %8 = getelementptr inbounds %sParserInfo, %sParserInfo* %info6, i32 0, i32 0
  %9 = bitcast [4096 x i8]* %7 to i8*
  %10 = bitcast [4096 x i8]* %8 to i8*
  %11 = call i8* @xstrncpy(i8* %9, i8* %10, i32 4096)
  %result7 = load %sCLNode*, %sCLNode** %result, align 8
  %info8 = load %sParserInfo*, %sParserInfo** %info2, align 8
  %12 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %sCLNode, %sCLNode* %result7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %result9 = load %sCLNode*, %sCLNode** %result, align 8
  %15 = getelementptr inbounds %sCLNode, %sCLNode* %result9, i32 0, i32 3
  %16 = load %anon73, %anon73* %15, align 8
  %value10 = load i32, i32* %value1, align 4
  %17 = bitcast %anon73* %15 to i32*
  store i32 %value10, i32* %17, align 4
  %result11 = load %sCLNode*, %sCLNode** %result, align 8
  %18 = getelementptr inbounds %sCLNode, %sCLNode* %result11, i32 0, i32 4
  store %sCLNode* null, %sCLNode** %18, align 8
  %result12 = load %sCLNode*, %sCLNode** %result, align 8
  %19 = getelementptr inbounds %sCLNode, %sCLNode* %result12, i32 0, i32 6
  store %sCLNode* null, %sCLNode** %19, align 8
  %result13 = load %sCLNode*, %sCLNode** %result, align 8
  %20 = getelementptr inbounds %sCLNode, %sCLNode* %result13, i32 0, i32 5
  store %sCLNode* null, %sCLNode** %20, align 8
  %result14 = load %sCLNode*, %sCLNode** %result, align 8
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret %sCLNode* %result14
}

define void @compile_err_msg(%sCompileInfo* %info, i8* %msg) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info1, align 8
  %2 = bitcast %sCompileInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %msg2 = alloca i8*
  store i8* %msg, i8** %msg2, align 8
  %3 = bitcast i8** %msg2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 0
  %info4 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %5 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %msg5 = load i8*, i8** %msg2, align 8
  %7 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string, i32 0, i32 0), [4096 x i8]* %4, i32 %6, i8* %msg5)
  %info6 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %info7 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %addtmp = add nsw i32 %9, 1
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 2
  store i32 %addtmp, i32* %10, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %info8 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %info9 = load %sCompileInfo*, %sCompileInfo** %info1, align 8
  %11 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.1, i32 0, i32 0), %sCompileInfo* %info9)
  %12 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info8, i32 0, i32 6
  store %sCLType* %11, %sCLType** %12, align 8
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret void
}

define %sCLNode* @alloc_node(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 4136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.3, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.5, i32 0, i32 0))
  %4 = bitcast i8* %3 to %sCLNode*
  %result = alloca %sCLNode*
  %5 = bitcast %sCLNode** %result to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  store %sCLNode* %4, %sCLNode** %result, align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %6 = getelementptr inbounds %sParserInfo, %sParserInfo* %info2, i32 0, i32 5
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
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %item2 = alloca %sCLNode*
  store %sCLNode* %item, %sCLNode** %item2, align 8
  %3 = bitcast %sCLNode** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %self3 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %9 = bitcast i8* %8 to %vector__sCLNodep**
  %self5 = load %vector__sCLNodep*, %vector__sCLNodep** %9, align 8
  %10 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %14 = bitcast i8* %13 to %vector__sCLNodep**
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %14, align 8
  %15 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self6, i32 0, i32 0
  %16 = load %sCLNode**, %sCLNode*** %15, align 8
  %items = alloca %sCLNode**
  %17 = bitcast %sCLNode*** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  store %sCLNode** %16, %sCLNode*** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %19 = bitcast i8* %18 to %vector__sCLNodep**
  %self7 = load %vector__sCLNodep*, %vector__sCLNodep** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.7, i32 0, i32 0), i32 498, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.9, i32 0, i32 0))
  %21 = bitcast i8* %20 to %sCLNode**
  %22 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self7, i32 0, i32 0
  store %sCLNode** %21, %sCLNode*** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
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
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %38 = bitcast i8* %37 to %vector__sCLNodep**
  %self10 = load %vector__sCLNodep*, %vector__sCLNodep** %38, align 8
  %39 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %42 = bitcast i8* %41 to %vector__sCLNodep**
  %self11 = load %vector__sCLNodep*, %vector__sCLNodep** %42, align 8
  %43 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self11, i32 0, i32 0
  %44 = load %sCLNode**, %sCLNode*** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %48 = bitcast i8* %47 to %sCLNode***
  %items13 = load %sCLNode**, %sCLNode*** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %items13, i32 %i14
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %element_address15 = getelementptr %sCLNode*, %sCLNode** %44, i32 %i12
  store %sCLNode* %element, %sCLNode** %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
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
  %value9 = alloca i32
  %self8 = alloca %buffer*
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %info3 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %4 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info3, i32 0, i32 4
  %5 = load %buffer*, %buffer** %4, align 8
  store %buffer* %5, %buffer** %self, align 8
  store i32 1, i32* %value, align 4
  br label %append_int

append_int:                                       ; preds = %entry
  %6 = bitcast %buffer** %self to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %7 = bitcast i32* %value to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %self4 = load %buffer*, %buffer** %self, align 8
  %value5 = load i32, i32* %value, align 4
  %8 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self4, i8* %8, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %info6 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %9 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info6, i32 0, i32 4
  %10 = load %buffer*, %buffer** %9, align 8
  %node7 = load %sCLNode*, %sCLNode** %node1, align 8
  %11 = getelementptr inbounds %sCLNode, %sCLNode* %node7, i32 0, i32 3
  %12 = load %anon73, %anon73* %11, align 8
  %13 = bitcast %anon73* %11 to i32*
  %14 = load i32, i32* %13, align 4
  store %buffer* %10, %buffer** %self8, align 8
  store i32 %14, i32* %value9, align 4
  br label %append_int10

append_int10:                                     ; preds = %inline_func_end
  %15 = bitcast %buffer** %self8 to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %16 = bitcast i32* %value9 to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %self12 = load %buffer*, %buffer** %self8, align 8
  %value13 = load i32, i32* %value9, align 4
  %17 = bitcast i32* %value9 to i8*
  call void @buffer_append(%buffer* %self12, i8* %17, i64 4)
  br label %inline_func_end11

inline_func_end11:                                ; preds = %append_int10
  %info14 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %info15 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %18 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.10, i32 0, i32 0), %sCompileInfo* %info15)
  %19 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info14, i32 0, i32 6
  store %sCLType* %18, %sCLType** %19, align 8
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret i1 true
}

define i1 @compile_add(%sCLNode* %node, %sCompileInfo* %info) {
entry:
  %value = alloca i32
  %self = alloca %buffer*
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %node1 = alloca %sCLNode*
  store %sCLNode* %node, %sCLNode** %node1, align 8
  %2 = bitcast %sCLNode** %node1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 349), align 8
  %info2 = alloca %sCompileInfo*
  store %sCompileInfo* %info, %sCompileInfo** %info2, align 8
  %3 = bitcast %sCompileInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %node3 = load %sCLNode*, %sCLNode** %node1, align 8
  %4 = getelementptr inbounds %sCLNode, %sCLNode* %node3, i32 0, i32 4
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
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  store %sCLType* %10, %sCLType** %left_type, align 8
  %node6 = load %sCLNode*, %sCLNode** %node1, align 8
  %12 = getelementptr inbounds %sCLNode, %sCLNode* %node6, i32 0, i32 6
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
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  store %sCLType* %18, %sCLType** %right_type, align 8
  %left_type12 = load %sCLType*, %sCLType** %left_type, align 8
  %right_type13 = load %sCLType*, %sCLType** %right_type, align 8
  %20 = call i1 @type_identify(%sCLType* %left_type12, %sCLType* %right_type13)
  %LOGICAL_DIANEAL14 = icmp eq i1 %20, false
  br i1 %LOGICAL_DIANEAL14, label %cond_jump_then15, label %cond_end16

cond_jump_then15:                                 ; preds = %cond_end10
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %22 = bitcast i8* %21 to %sCompileInfo**
  %info17 = load %sCompileInfo*, %sCompileInfo** %22, align 8
  call void @compile_err_msg(%sCompileInfo* %info17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_string.11, i32 0, i32 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.12, i32 0, i32 0))
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %25 = bitcast i8* %24 to %sCLType**
  %left_type18 = load %sCLType*, %sCLType** %25, align 8
  call void @show_type(%sCLType* %left_type18)
  %26 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.13, i32 0, i32 0))
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %28 = bitcast i8* %27 to %sCLType**
  %right_type19 = load %sCLType*, %sCLType** %28, align 8
  call void @show_type(%sCLType* %right_type19)
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret i1 true

cond_end16:                                       ; preds = %cond_end10
  %left_type20 = load %sCLType*, %sCLType** %left_type, align 8
  %info21 = load %sCompileInfo*, %sCompileInfo** %info2, align 8
  %31 = call i1 @type_identify_with_class_name(%sCLType* %left_type20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.14, i32 0, i32 0), %sCompileInfo* %info21)
  br i1 %31, label %cond_jump_then22, label %cond_else_block

cond_jump_then22:                                 ; preds = %cond_end16
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %33 = bitcast i8* %32 to %sCompileInfo**
  %info24 = load %sCompileInfo*, %sCompileInfo** %33, align 8
  %34 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info24, i32 0, i32 4
  %35 = load %buffer*, %buffer** %34, align 8
  store %buffer* %35, %buffer** %self, align 8
  store i32 2, i32* %value, align 4
  br label %append_int

cond_else_block:                                  ; preds = %cond_end16
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %37 = bitcast i8* %36 to %sCompileInfo**
  %info29 = load %sCompileInfo*, %sCompileInfo** %37, align 8
  call void @compile_err_msg(%sCompileInfo* %info29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.16, i32 0, i32 0))
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %39 = bitcast i8* %38 to %sCLType**
  %left_type30 = load %sCLType*, %sCLType** %39, align 8
  call void @show_type(%sCLType* %left_type30)
  %40 = bitcast [8192 x i8*]* %lvtable to i8*
  %41 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %40, i64 65536)
  ret i1 true

cond_end23:                                       ; preds = %inline_func_end
  %42 = bitcast [8192 x i8*]* %lvtable to i8*
  %43 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %42, i64 65536)
  ret i1 true

append_int:                                       ; preds = %cond_jump_then22
  %44 = bitcast %buffer** %self to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %45 = bitcast i32* %value to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %self25 = load %buffer*, %buffer** %self, align 8
  %value26 = load i32, i32* %value, align 4
  %46 = bitcast i32* %value to i8*
  call void @buffer_append(%buffer* %self25, i8* %46, i64 4)
  br label %inline_func_end

inline_func_end:                                  ; preds = %append_int
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %48 = bitcast i8* %47 to %sCompileInfo**
  %info27 = load %sCompileInfo*, %sCompileInfo** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %50 = bitcast i8* %49 to %sCompileInfo**
  %info28 = load %sCompileInfo*, %sCompileInfo** %50, align 8
  %51 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.15, i32 0, i32 0), %sCompileInfo* %info28)
  %52 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %info27, i32 0, i32 6
  store %sCLType* %51, %sCLType** %52, align 8
  br label %cond_end23
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/node.nc", directory: "/home/ab25cq/repo/clover3")
!2 = !{}
