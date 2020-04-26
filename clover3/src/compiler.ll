; ModuleID = 'Module compiler'
source_filename = "Module compiler"

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
@global_string = private constant [21 x i8] c"%s doesn't exist(2)\0A\00", align 1
@global_string.1 = private constant [18 x i8] c"unexpected error\0A\00", align 1
@global_string.2 = private constant [19 x i8] c"vector%<sCLNode*%>\00", align 1
@global_string.3 = private constant [16 x i8] c"src/compiler.nc\00", align 1
@global_string.4 = private constant [15 x i8] c"compile_script\00", align 1
@global_string.5 = private constant [15 x i8] c"compile_script\00", align 1
@global_string.6 = private constant [10 x i8] c"sCLNode*%\00", align 1
@global_string.7 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.8 = private constant [34 x i8] c"initialize_sCLNodep0_src/compiler\00", align 1
@global_string.9 = private constant [41 x i8] c"vector_initialize_sCLNodep0_src/compiler\00", align 1
@global_string.10 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.11 = private constant [16 x i8] c"src/compiler.nc\00", align 1
@global_string.12 = private constant [15 x i8] c"compile_script\00", align 1
@global_string.13 = private constant [15 x i8] c"compile_script\00", align 1
@global_string.14 = private constant [19 x i8] c"vector%<sCLType*%>\00", align 1
@global_string.15 = private constant [16 x i8] c"src/compiler.nc\00", align 1
@global_string.16 = private constant [15 x i8] c"compile_script\00", align 1
@global_string.17 = private constant [15 x i8] c"compile_script\00", align 1
@global_string.18 = private constant [10 x i8] c"sCLType*%\00", align 1
@global_string.19 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.20 = private constant [34 x i8] c"initialize_sCLTypep1_src/compiler\00", align 1
@global_string.21 = private constant [41 x i8] c"vector_initialize_sCLTypep1_src/compiler\00", align 1
@global_string.22 = private constant [15 x i8] c"Compile error\0A\00", align 1
@global_string.23 = private constant [38 x i8] c"Parser error. The error number is %d\0A\00", align 1
@global_string.24 = private constant [6 x i8] c"0.0.1\00", align 1
@gVersion = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.24, i32 0, i32 0), align 8
@global_string.25 = private constant [18 x i8] c"%s doesn't exist\0A\00", align 1
@global_string.26 = private constant [8 x i8] c"buffer%\00", align 1
@global_string.27 = private constant [16 x i8] c"src/compiler.nc\00", align 1
@global_string.28 = private constant [9 x i8] c"compiler\00", align 1
@global_string.29 = private constant [9 x i8] c"compiler\00", align 1
@global_string.30 = private constant [1 x i8] zeroinitializer, align 1
@global_string.31 = private constant [1 x i8] zeroinitializer, align 1
@global_string.32 = private constant [6 x i8] c"-core\00", align 1
@global_string.33 = private constant [10 x i8] c"--version\00", align 1
@global_string.34 = private constant [9 x i8] c"-version\00", align 1
@global_string.35 = private constant [3 x i8] c"-v\00", align 1
@global_string.36 = private constant [3 x i8] c"-V\00", align 1
@global_string.37 = private constant [20 x i8] c"clover3 version %s\0A\00", align 1
@global_string.38 = private constant [6 x i8] c".clcl\00", align 1
@global_string.39 = private constant [27 x i8] c"cclover3 can't compile %s\0A\00", align 1
@global_string.40 = private constant [27 x i8] c"cclover3 can't compile %s\0A\00", align 1

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

declare i1 @compile(%sCLNode*, %sCompileInfo*)

declare %sCLNode* @sNodeTree_create_add(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_int_value(i32, %sParserInfo*)

define void @compiler_init(i1 %no_load_fudamental_classes) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %no_load_fudamental_classes1 = alloca i1
  store i1 %no_load_fudamental_classes, i1* %no_load_fudamental_classes1, align 1
  %2 = bitcast i1* %no_load_fudamental_classes1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void
}

define void @clover3_init() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %2 = bitcast [8192 x i8*]* %lvtable to i8*
  %3 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %2, i64 65536)
  ret void
}

define void @clover3_final() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %2 = bitcast [8192 x i8*]* %lvtable to i8*
  %3 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %2, i64 65536)
  ret void
}

define void @compiler_final() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %2 = bitcast [8192 x i8*]* %lvtable to i8*
  %3 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %2, i64 65536)
  ret void
}

define i1 @read_source(i8* %fname, %buffer* %source) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %fname1 = alloca i8*
  store i8* %fname, i8** %fname1, align 8
  %2 = bitcast i8** %fname1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %source2 = alloca %buffer*
  store %buffer* %source, %buffer** %source2, align 8
  %3 = bitcast %buffer** %source2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %fname3 = load i8*, i8** %fname1, align 8
  %4 = call i32 (i8*, i32, ...) @open(i8* %fname3, i32 0)
  %f = alloca i32
  %5 = bitcast i32* %f to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  store i32 %4, i32* %f, align 4
  %f4 = load i32, i32* %f, align 4
  %letmp = icmp slt i32 %f4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %7 = bitcast i8* %6 to i8**
  %fname5 = load i8*, i8** %7, align 8
  %8 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string, i32 0, i32 0), i8* %fname5)
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end22, %cond_end
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %buf = alloca i8*
  %11 = bitcast i8** %buf to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %element_memory = alloca i8, i32 8193
  store i8* %element_memory, i8** %buf, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %13 = bitcast i8* %12 to i32*
  %f6 = load i32, i32* %13, align 4
  %buf7 = load i8*, i8** %buf, align 8
  %14 = call i64 @read(i32 %f6, i8* %buf7, i64 8192)
  %15 = trunc i64 %14 to i32
  %size = alloca i32
  %16 = bitcast i32* %size to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  store i32 %15, i32* %size, align 4
  %size8 = load i32, i32* %size, align 4
  %eqtmpX = icmp eq i32 %size8, 0
  br i1 %eqtmpX, label %cond_jump_then9, label %"cond_jump_elif0\0A"

cond_end_block:                                   ; preds = %cond_jump_then21, %cond_jump_then9, %loop_top_block
  %f24 = load i32, i32* %f, align 4
  %17 = call i32 @close(i32 %f24)
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret i1 true

cond_jump_then9:                                  ; preds = %cond_then_block
  br label %cond_end_block

"cond_jump_elif0\0A":                             ; preds = %cond_then_block
  %size11 = load i32, i32* %size, align 4
  %letmp12 = icmp slt i32 %size11, 0
  br i1 %letmp12, label %"cond_jump_elif_then0\0A", label %cond_end10

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %stderr13 = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %20 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.1, i32 0, i32 0))
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %22 = bitcast i8* %21 to i32*
  %f14 = load i32, i32* %22, align 4
  %23 = call i32 @close(i32 %f14)
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  ret i1 false

cond_end10:                                       ; preds = %"cond_jump_elif0\0A", %after_break
  %buf15 = load i8*, i8** %buf, align 8
  %size16 = load i32, i32* %size, align 4
  %element_address = getelementptr i8, i8* %buf15, i32 %size16
  store i8 0, i8* %element_address, align 1
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %27 = bitcast i8* %26 to %buffer**
  %source17 = load %buffer*, %buffer** %27, align 8
  %buf18 = load i8*, i8** %buf, align 8
  call void @buffer_append_str(%buffer* %source17, i8* %buf18)
  %size19 = load i32, i32* %size, align 4
  %letmp20 = icmp slt i32 %size19, 8192
  br i1 %letmp20, label %cond_jump_then21, label %cond_end22

after_break:                                      ; No predecessors!
  br label %cond_end10

cond_jump_then21:                                 ; preds = %cond_end10
  br label %cond_end_block

cond_end22:                                       ; preds = %after_break23, %cond_end10
  br label %loop_top_block

after_break23:                                    ; No predecessors!
  br label %cond_end22
}

define i1 @compile_script(i8* %fname, %buffer* %source) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %fname1 = alloca i8*
  store i8* %fname, i8** %fname1, align 8
  %2 = bitcast i8** %fname1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %source2 = alloca %buffer*
  store %buffer* %source, %buffer** %source2, align 8
  %3 = bitcast %buffer** %source2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %info = alloca %sParserInfo
  %4 = bitcast %sParserInfo* %info to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %info3 = load %sParserInfo, %sParserInfo* %info, align 8
  %5 = bitcast %sParserInfo* %info to i8*
  %6 = call i8* @memset(i8* %5, i32 0, i64 4128)
  %info4 = load %sParserInfo, %sParserInfo* %info, align 8
  %source5 = load %buffer*, %buffer** %source2, align 8
  %7 = getelementptr inbounds %buffer, %buffer* %source5, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 4
  store i8* %8, i8** %9, align 8
  %info6 = load %sParserInfo, %sParserInfo* %info, align 8
  %10 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 0
  %fname7 = load i8*, i8** %fname1, align 8
  %11 = bitcast [4096 x i8]* %10 to i8*
  %12 = call i8* @xstrncpy(i8* %11, i8* %fname7, i32 4096)
  %info8 = load %sParserInfo, %sParserInfo* %info, align 8
  %13 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %info9 = load %sParserInfo, %sParserInfo* %info, align 8
  %14 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %info10 = load %sParserInfo, %sParserInfo* %info, align 8
  %15 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %info11 = load %sParserInfo, %sParserInfo* %info, align 8
  %16 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.3, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.5, i32 0, i32 0))
  %17 = bitcast i8* %16 to %vector__sCLNodep*
  %18 = call %vector__sCLNodep* @"vector_initialize_sCLNodep0_src/compiler"(%vector__sCLNodep* %17)
  %19 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 5
  store %vector__sCLNodep* %18, %vector__sCLNodep** %19, align 8
  %cinfo = alloca %sCompileInfo
  %20 = bitcast %sCompileInfo* %cinfo to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %cinfo12 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %21 = bitcast %sCompileInfo* %cinfo to i8*
  %22 = call i8* @memset(i8* %21, i32 0, i64 4136)
  %cinfo13 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %info14 = load %sParserInfo, %sParserInfo* %info, align 8
  %23 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo, i32 0, i32 3
  store %sParserInfo* %info, %sParserInfo** %23, align 8
  %cinfo15 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %24 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo, i32 0, i32 0
  %info16 = load %sParserInfo, %sParserInfo* %info, align 8
  %25 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 0
  %26 = bitcast [4096 x i8]* %24 to i8*
  %27 = bitcast [4096 x i8]* %25 to i8*
  %28 = call i8* @xstrncpy(i8* %26, i8* %27, i32 4096)
  %cinfo17 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %29 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %cinfo18 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %30 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.11, i32 0, i32 0), i32 79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.13, i32 0, i32 0))
  %31 = bitcast i8* %30 to %buffer*
  %32 = call %buffer* @buffer_initialize(%buffer* %31)
  %33 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo, i32 0, i32 4
  store %buffer* %32, %buffer** %33, align 8
  %cinfo19 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %34 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.15, i32 0, i32 0), i32 80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.17, i32 0, i32 0))
  %35 = bitcast i8* %34 to %vector__sCLTypep*
  %36 = call %vector__sCLTypep* @"vector_initialize_sCLTypep1_src/compiler"(%vector__sCLTypep* %35)
  %37 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo, i32 0, i32 5
  store %vector__sCLTypep* %36, %vector__sCLTypep** %37, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end51, %entry
  %info20 = load %sParserInfo, %sParserInfo* %info, align 8
  %38 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %derefference_value = load i8, i8* %39, align 8
  %40 = icmp ne i8 %derefference_value, 0
  br i1 %40, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %42 = bitcast i8* %41 to %sParserInfo*
  %info21 = load %sParserInfo, %sParserInfo* %42, align 8
  %43 = getelementptr inbounds %sParserInfo, %sParserInfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %sline = alloca i32
  %45 = bitcast i32* %sline to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  store i32 %44, i32* %sline, align 4
  %node = alloca %sCLNode*
  %46 = bitcast %sCLNode** %node to i8*
  store i8* %46, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %node22 = load %sCLNode*, %sCLNode** %node, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %48 = bitcast i8* %47 to %sParserInfo*
  %info23 = load %sParserInfo, %sParserInfo* %48, align 8
  %49 = call i1 @expression(%sCLNode** %node, %sParserInfo* %48)
  %LOGICAL_DIANEAL = icmp eq i1 %49, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %info61 = load %sParserInfo, %sParserInfo* %info, align 8
  %50 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %gttmp62 = icmp sgt i32 %51, 0
  br i1 %gttmp62, label %cond_jump_then63, label %cond_end64

cond_jump_then:                                   ; preds = %cond_then_block
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %53 = bitcast i8* %52 to %sParserInfo*
  %info24 = load %sParserInfo, %sParserInfo* %53, align 8
  %54 = getelementptr inbounds %sParserInfo, %sParserInfo* %53, i32 0, i32 5
  %55 = load %vector__sCLNodep*, %vector__sCLNodep** %54, align 8
  %56 = load %vector__sCLNodep*, %vector__sCLNodep** %54, align 8
  call void @"vector_finalize_sCLNodep2_src/compiler"(%vector__sCLNodep* %56)
  %57 = ptrtoint %vector__sCLNodep* %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %cond_then_block25, label %cond_end26

cond_end:                                         ; preds = %cond_then_block
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %60 = bitcast i8* %59 to %sCompileInfo*
  %cinfo33 = load %sCompileInfo, %sCompileInfo* %60, align 8
  %sline34 = load i32, i32* %sline, align 4
  %61 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %60, i32 0, i32 1
  store i32 %sline34, i32* %61, align 4
  %node35 = load %sCLNode*, %sCLNode** %node, align 8
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %63 = bitcast i8* %62 to %sCompileInfo*
  %cinfo36 = load %sCompileInfo, %sCompileInfo* %63, align 8
  %64 = call i1 @compile(%sCLNode* %node35, %sCompileInfo* %63)
  %LOGICAL_DIANEAL37 = icmp eq i1 %64, false
  br i1 %LOGICAL_DIANEAL37, label %cond_jump_then38, label %cond_end39

cond_then_block25:                                ; preds = %cond_jump_then
  br label %cond_end26

cond_end26:                                       ; preds = %cond_then_block25, %cond_jump_then
  %65 = bitcast %vector__sCLNodep* %56 to i8*
  call void @xfree(i8* %65)
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %67 = bitcast i8* %66 to %sCompileInfo*
  %cinfo27 = load %sCompileInfo, %sCompileInfo* %67, align 8
  %68 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %67, i32 0, i32 4
  %69 = load %buffer*, %buffer** %68, align 8
  %70 = load %buffer*, %buffer** %68, align 8
  call void @buffer_finalize(%buffer* %70)
  %71 = ptrtoint %buffer* %70 to i64
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %cond_then_block28, label %cond_end29

cond_then_block28:                                ; preds = %cond_end26
  br label %cond_end29

cond_end29:                                       ; preds = %cond_then_block28, %cond_end26
  %73 = bitcast %buffer* %70 to i8*
  call void @xfree(i8* %73)
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %75 = bitcast i8* %74 to %sCompileInfo*
  %cinfo30 = load %sCompileInfo, %sCompileInfo* %75, align 8
  %76 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %75, i32 0, i32 5
  %77 = load %vector__sCLTypep*, %vector__sCLTypep** %76, align 8
  %78 = load %vector__sCLTypep*, %vector__sCLTypep** %76, align 8
  call void @"vector_finalize_sCLTypep3_src/compiler"(%vector__sCLTypep* %78)
  %79 = ptrtoint %vector__sCLTypep* %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %cond_then_block31, label %cond_end32

cond_then_block31:                                ; preds = %cond_end29
  br label %cond_end32

cond_end32:                                       ; preds = %cond_then_block31, %cond_end29
  %81 = bitcast %vector__sCLTypep* %78 to i8*
  call void @xfree(i8* %81)
  %82 = bitcast [8192 x i8*]* %lvtable to i8*
  %83 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %82, i64 65536)
  ret i1 false

cond_jump_then38:                                 ; preds = %cond_end
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %85 = bitcast i8* %84 to %sParserInfo*
  %info40 = load %sParserInfo, %sParserInfo* %85, align 8
  %86 = getelementptr inbounds %sParserInfo, %sParserInfo* %85, i32 0, i32 5
  %87 = load %vector__sCLNodep*, %vector__sCLNodep** %86, align 8
  %88 = load %vector__sCLNodep*, %vector__sCLNodep** %86, align 8
  call void @"vector_finalize_sCLNodep4_src/compiler"(%vector__sCLNodep* %88)
  %89 = ptrtoint %vector__sCLNodep* %88 to i64
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %cond_then_block41, label %cond_end42

cond_end39:                                       ; preds = %cond_end
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %92 = bitcast i8* %91 to %sCompileInfo*
  %cinfo49 = load %sCompileInfo, %sCompileInfo* %92, align 8
  %93 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %gttmp = icmp sgt i32 %94, 0
  br i1 %gttmp, label %cond_jump_then50, label %cond_end51

cond_then_block41:                                ; preds = %cond_jump_then38
  br label %cond_end42

cond_end42:                                       ; preds = %cond_then_block41, %cond_jump_then38
  %95 = bitcast %vector__sCLNodep* %88 to i8*
  call void @xfree(i8* %95)
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %97 = bitcast i8* %96 to %sCompileInfo*
  %cinfo43 = load %sCompileInfo, %sCompileInfo* %97, align 8
  %98 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %97, i32 0, i32 4
  %99 = load %buffer*, %buffer** %98, align 8
  %100 = load %buffer*, %buffer** %98, align 8
  call void @buffer_finalize(%buffer* %100)
  %101 = ptrtoint %buffer* %100 to i64
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %cond_then_block44, label %cond_end45

cond_then_block44:                                ; preds = %cond_end42
  br label %cond_end45

cond_end45:                                       ; preds = %cond_then_block44, %cond_end42
  %103 = bitcast %buffer* %100 to i8*
  call void @xfree(i8* %103)
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %105 = bitcast i8* %104 to %sCompileInfo*
  %cinfo46 = load %sCompileInfo, %sCompileInfo* %105, align 8
  %106 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %105, i32 0, i32 5
  %107 = load %vector__sCLTypep*, %vector__sCLTypep** %106, align 8
  %108 = load %vector__sCLTypep*, %vector__sCLTypep** %106, align 8
  call void @"vector_finalize_sCLTypep5_src/compiler"(%vector__sCLTypep* %108)
  %109 = ptrtoint %vector__sCLTypep* %108 to i64
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %cond_then_block47, label %cond_end48

cond_then_block47:                                ; preds = %cond_end45
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end45
  %111 = bitcast %vector__sCLTypep* %108 to i8*
  call void @xfree(i8* %111)
  %112 = bitcast [8192 x i8*]* %lvtable to i8*
  %113 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %112, i64 65536)
  ret i1 false

cond_jump_then50:                                 ; preds = %cond_end39
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %114 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.22, i32 0, i32 0))
  %115 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %116 = bitcast i8* %115 to %sParserInfo*
  %info52 = load %sParserInfo, %sParserInfo* %116, align 8
  %117 = getelementptr inbounds %sParserInfo, %sParserInfo* %116, i32 0, i32 5
  %118 = load %vector__sCLNodep*, %vector__sCLNodep** %117, align 8
  %119 = load %vector__sCLNodep*, %vector__sCLNodep** %117, align 8
  call void @"vector_finalize_sCLNodep6_src/compiler"(%vector__sCLNodep* %119)
  %120 = ptrtoint %vector__sCLNodep* %119 to i64
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %cond_then_block53, label %cond_end54

cond_end51:                                       ; preds = %cond_end39
  br label %loop_top_block

cond_then_block53:                                ; preds = %cond_jump_then50
  br label %cond_end54

cond_end54:                                       ; preds = %cond_then_block53, %cond_jump_then50
  %122 = bitcast %vector__sCLNodep* %119 to i8*
  call void @xfree(i8* %122)
  %123 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %124 = bitcast i8* %123 to %sCompileInfo*
  %cinfo55 = load %sCompileInfo, %sCompileInfo* %124, align 8
  %125 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %124, i32 0, i32 4
  %126 = load %buffer*, %buffer** %125, align 8
  %127 = load %buffer*, %buffer** %125, align 8
  call void @buffer_finalize(%buffer* %127)
  %128 = ptrtoint %buffer* %127 to i64
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %cond_then_block56, label %cond_end57

cond_then_block56:                                ; preds = %cond_end54
  br label %cond_end57

cond_end57:                                       ; preds = %cond_then_block56, %cond_end54
  %130 = bitcast %buffer* %127 to i8*
  call void @xfree(i8* %130)
  %131 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %132 = bitcast i8* %131 to %sCompileInfo*
  %cinfo58 = load %sCompileInfo, %sCompileInfo* %132, align 8
  %133 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %132, i32 0, i32 5
  %134 = load %vector__sCLTypep*, %vector__sCLTypep** %133, align 8
  %135 = load %vector__sCLTypep*, %vector__sCLTypep** %133, align 8
  call void @"vector_finalize_sCLTypep7_src/compiler"(%vector__sCLTypep* %135)
  %136 = ptrtoint %vector__sCLTypep* %135 to i64
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %cond_then_block59, label %cond_end60

cond_then_block59:                                ; preds = %cond_end57
  br label %cond_end60

cond_end60:                                       ; preds = %cond_then_block59, %cond_end57
  %138 = bitcast %vector__sCLTypep* %135 to i8*
  call void @xfree(i8* %138)
  %139 = bitcast [8192 x i8*]* %lvtable to i8*
  %140 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %139, i64 65536)
  ret i1 false

cond_jump_then63:                                 ; preds = %cond_end_block
  %stderr65 = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %141 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %142 = bitcast i8* %141 to %sParserInfo*
  %info66 = load %sParserInfo, %sParserInfo* %142, align 8
  %143 = getelementptr inbounds %sParserInfo, %sParserInfo* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_string.23, i32 0, i32 0), i32 %144)
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %147 = bitcast i8* %146 to %sParserInfo*
  %info67 = load %sParserInfo, %sParserInfo* %147, align 8
  %148 = getelementptr inbounds %sParserInfo, %sParserInfo* %147, i32 0, i32 5
  %149 = load %vector__sCLNodep*, %vector__sCLNodep** %148, align 8
  %150 = load %vector__sCLNodep*, %vector__sCLNodep** %148, align 8
  call void @"vector_finalize_sCLNodep8_src/compiler"(%vector__sCLNodep* %150)
  %151 = ptrtoint %vector__sCLNodep* %150 to i64
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %cond_then_block68, label %cond_end69

cond_end64:                                       ; preds = %cond_end_block
  %info76 = load %sParserInfo, %sParserInfo* %info, align 8
  %153 = getelementptr inbounds %sParserInfo, %sParserInfo* %info, i32 0, i32 5
  %154 = load %vector__sCLNodep*, %vector__sCLNodep** %153, align 8
  %155 = load %vector__sCLNodep*, %vector__sCLNodep** %153, align 8
  call void @"vector_finalize_sCLNodep10_src/compiler"(%vector__sCLNodep* %155)
  %156 = ptrtoint %vector__sCLNodep* %155 to i64
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %cond_then_block77, label %cond_end78

cond_then_block68:                                ; preds = %cond_jump_then63
  br label %cond_end69

cond_end69:                                       ; preds = %cond_then_block68, %cond_jump_then63
  %158 = bitcast %vector__sCLNodep* %150 to i8*
  call void @xfree(i8* %158)
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %160 = bitcast i8* %159 to %sCompileInfo*
  %cinfo70 = load %sCompileInfo, %sCompileInfo* %160, align 8
  %161 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %160, i32 0, i32 4
  %162 = load %buffer*, %buffer** %161, align 8
  %163 = load %buffer*, %buffer** %161, align 8
  call void @buffer_finalize(%buffer* %163)
  %164 = ptrtoint %buffer* %163 to i64
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %cond_then_block71, label %cond_end72

cond_then_block71:                                ; preds = %cond_end69
  br label %cond_end72

cond_end72:                                       ; preds = %cond_then_block71, %cond_end69
  %166 = bitcast %buffer* %163 to i8*
  call void @xfree(i8* %166)
  %167 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %168 = bitcast i8* %167 to %sCompileInfo*
  %cinfo73 = load %sCompileInfo, %sCompileInfo* %168, align 8
  %169 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %168, i32 0, i32 5
  %170 = load %vector__sCLTypep*, %vector__sCLTypep** %169, align 8
  %171 = load %vector__sCLTypep*, %vector__sCLTypep** %169, align 8
  call void @"vector_finalize_sCLTypep9_src/compiler"(%vector__sCLTypep* %171)
  %172 = ptrtoint %vector__sCLTypep* %171 to i64
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %cond_then_block74, label %cond_end75

cond_then_block74:                                ; preds = %cond_end72
  br label %cond_end75

cond_end75:                                       ; preds = %cond_then_block74, %cond_end72
  %174 = bitcast %vector__sCLTypep* %171 to i8*
  call void @xfree(i8* %174)
  %175 = bitcast [8192 x i8*]* %lvtable to i8*
  %176 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %175, i64 65536)
  ret i1 false

cond_then_block77:                                ; preds = %cond_end64
  br label %cond_end78

cond_end78:                                       ; preds = %cond_then_block77, %cond_end64
  %177 = bitcast %vector__sCLNodep* %155 to i8*
  call void @xfree(i8* %177)
  %cinfo79 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %178 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo, i32 0, i32 4
  %179 = load %buffer*, %buffer** %178, align 8
  %180 = load %buffer*, %buffer** %178, align 8
  call void @buffer_finalize(%buffer* %180)
  %181 = ptrtoint %buffer* %180 to i64
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %cond_then_block80, label %cond_end81

cond_then_block80:                                ; preds = %cond_end78
  br label %cond_end81

cond_end81:                                       ; preds = %cond_then_block80, %cond_end78
  %183 = bitcast %buffer* %180 to i8*
  call void @xfree(i8* %183)
  %cinfo82 = load %sCompileInfo, %sCompileInfo* %cinfo, align 8
  %184 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %cinfo, i32 0, i32 5
  %185 = load %vector__sCLTypep*, %vector__sCLTypep** %184, align 8
  %186 = load %vector__sCLTypep*, %vector__sCLTypep** %184, align 8
  call void @"vector_finalize_sCLTypep11_src/compiler"(%vector__sCLTypep* %186)
  %187 = ptrtoint %vector__sCLTypep* %186 to i64
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %cond_then_block83, label %cond_end84

cond_then_block83:                                ; preds = %cond_end81
  br label %cond_end84

cond_end84:                                       ; preds = %cond_then_block83, %cond_end81
  %189 = bitcast %vector__sCLTypep* %186 to i8*
  call void @xfree(i8* %189)
  %190 = bitcast [8192 x i8*]* %lvtable to i8*
  %191 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %190, i64 65536)
  ret i1 true
}

define %vector__sCLNodep* @"vector_initialize_sCLNodep0_src/compiler"(%vector__sCLNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLNodep*
  store %vector__sCLNodep* %self, %vector__sCLNodep** %self1, align 8
  %2 = bitcast %vector__sCLNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %self2 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %3 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %self5 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %5 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = sext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.7, i32 0, i32 0), i32 442, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.8, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @global_string.9, i32 0, i32 0))
  %8 = bitcast i8* %7 to %sCLNode**
  %9 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self4, i32 0, i32 0
  store %sCLNode** %8, %sCLNode*** %9, align 8
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__sCLNodep* %self6
}

define %vector__sCLTypep* @"vector_initialize_sCLTypep1_src/compiler"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %3 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %4 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %self5 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %5 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = sext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.19, i32 0, i32 0), i32 442, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @global_string.21, i32 0, i32 0))
  %8 = bitcast i8* %7 to %sCLType**
  %9 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self4, i32 0, i32 0
  store %sCLType** %8, %sCLType*** %9, align 8
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__sCLTypep* %self6
}

define void @"vector_finalize_sCLNodep2_src/compiler"(%vector__sCLNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLNodep*
  store %vector__sCLNodep* %self, %vector__sCLNodep** %self1, align 8
  %2 = bitcast %vector__sCLNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %self2 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 357), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self12, i32 0, i32 0
  %7 = load %sCLNode**, %sCLNode*** %6, align 8
  %8 = load %sCLNode**, %sCLNode*** %6, align 8
  %9 = bitcast %sCLNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %13 = bitcast i8* %12 to %vector__sCLNodep**
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %17 = bitcast i8* %16 to %vector__sCLNodep**
  %self7 = load %vector__sCLNodep*, %vector__sCLNodep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self7, i32 0, i32 0
  %19 = load %sCLNode**, %sCLNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %19, i32 %i8
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %20 = load %sCLNode*, %sCLNode** %element_address, align 8
  %21 = ptrtoint %sCLNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  %23 = bitcast %sCLNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @"vector_finalize_sCLTypep3_src/compiler"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLTypep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 357), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self16 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self16, i32 0, i32 0
  %7 = load %sCLType**, %sCLType*** %6, align 8
  %8 = load %sCLType**, %sCLType*** %6, align 8
  %9 = bitcast %sCLType** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %13 = bitcast i8* %12 to %vector__sCLTypep**
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %17 = bitcast i8* %16 to %vector__sCLTypep**
  %self7 = load %vector__sCLTypep*, %vector__sCLTypep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self7, i32 0, i32 0
  %19 = load %sCLType**, %sCLType*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLType*, %sCLType** %19, i32 %i8
  %element = load %sCLType*, %sCLType** %element_address, align 8
  %20 = load %sCLType*, %sCLType** %element_address, align 8
  %21 = ptrtoint %sCLType* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end14, %cond_then_block
  %27 = bitcast %sCLType* %20 to i8*
  call void @xfree(i8* %27)
  %i15 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i15, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  call void @xfree(i8* %24)
  %28 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 5
  %29 = load %sCLBlockType*, %sCLBlockType** %28, align 8
  %30 = ptrtoint %sCLBlockType* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block13, label %cond_end14

cond_then_block13:                                ; preds = %cond_end12
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end12
  %32 = bitcast %sCLBlockType* %29 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10
}

define void @"vector_finalize_sCLNodep4_src/compiler"(%vector__sCLNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLNodep*
  store %vector__sCLNodep* %self, %vector__sCLNodep** %self1, align 8
  %2 = bitcast %vector__sCLNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %self2 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 357), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self12, i32 0, i32 0
  %7 = load %sCLNode**, %sCLNode*** %6, align 8
  %8 = load %sCLNode**, %sCLNode*** %6, align 8
  %9 = bitcast %sCLNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %13 = bitcast i8* %12 to %vector__sCLNodep**
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %17 = bitcast i8* %16 to %vector__sCLNodep**
  %self7 = load %vector__sCLNodep*, %vector__sCLNodep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self7, i32 0, i32 0
  %19 = load %sCLNode**, %sCLNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %19, i32 %i8
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %20 = load %sCLNode*, %sCLNode** %element_address, align 8
  %21 = ptrtoint %sCLNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  %23 = bitcast %sCLNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @"vector_finalize_sCLTypep5_src/compiler"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLTypep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 357), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self16 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self16, i32 0, i32 0
  %7 = load %sCLType**, %sCLType*** %6, align 8
  %8 = load %sCLType**, %sCLType*** %6, align 8
  %9 = bitcast %sCLType** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %13 = bitcast i8* %12 to %vector__sCLTypep**
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %17 = bitcast i8* %16 to %vector__sCLTypep**
  %self7 = load %vector__sCLTypep*, %vector__sCLTypep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self7, i32 0, i32 0
  %19 = load %sCLType**, %sCLType*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLType*, %sCLType** %19, i32 %i8
  %element = load %sCLType*, %sCLType** %element_address, align 8
  %20 = load %sCLType*, %sCLType** %element_address, align 8
  %21 = ptrtoint %sCLType* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end14, %cond_then_block
  %27 = bitcast %sCLType* %20 to i8*
  call void @xfree(i8* %27)
  %i15 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i15, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  call void @xfree(i8* %24)
  %28 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 5
  %29 = load %sCLBlockType*, %sCLBlockType** %28, align 8
  %30 = ptrtoint %sCLBlockType* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block13, label %cond_end14

cond_then_block13:                                ; preds = %cond_end12
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end12
  %32 = bitcast %sCLBlockType* %29 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10
}

define void @"vector_finalize_sCLNodep6_src/compiler"(%vector__sCLNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLNodep*
  store %vector__sCLNodep* %self, %vector__sCLNodep** %self1, align 8
  %2 = bitcast %vector__sCLNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %self2 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 357), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self12, i32 0, i32 0
  %7 = load %sCLNode**, %sCLNode*** %6, align 8
  %8 = load %sCLNode**, %sCLNode*** %6, align 8
  %9 = bitcast %sCLNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %13 = bitcast i8* %12 to %vector__sCLNodep**
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %17 = bitcast i8* %16 to %vector__sCLNodep**
  %self7 = load %vector__sCLNodep*, %vector__sCLNodep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self7, i32 0, i32 0
  %19 = load %sCLNode**, %sCLNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %19, i32 %i8
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %20 = load %sCLNode*, %sCLNode** %element_address, align 8
  %21 = ptrtoint %sCLNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  %23 = bitcast %sCLNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @"vector_finalize_sCLTypep7_src/compiler"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLTypep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 357), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self16 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self16, i32 0, i32 0
  %7 = load %sCLType**, %sCLType*** %6, align 8
  %8 = load %sCLType**, %sCLType*** %6, align 8
  %9 = bitcast %sCLType** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %13 = bitcast i8* %12 to %vector__sCLTypep**
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  %17 = bitcast i8* %16 to %vector__sCLTypep**
  %self7 = load %vector__sCLTypep*, %vector__sCLTypep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self7, i32 0, i32 0
  %19 = load %sCLType**, %sCLType*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLType*, %sCLType** %19, i32 %i8
  %element = load %sCLType*, %sCLType** %element_address, align 8
  %20 = load %sCLType*, %sCLType** %element_address, align 8
  %21 = ptrtoint %sCLType* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end14, %cond_then_block
  %27 = bitcast %sCLType* %20 to i8*
  call void @xfree(i8* %27)
  %i15 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i15, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  call void @xfree(i8* %24)
  %28 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 5
  %29 = load %sCLBlockType*, %sCLBlockType** %28, align 8
  %30 = ptrtoint %sCLBlockType* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block13, label %cond_end14

cond_then_block13:                                ; preds = %cond_end12
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end12
  %32 = bitcast %sCLBlockType* %29 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10
}

define void @"vector_finalize_sCLNodep8_src/compiler"(%vector__sCLNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLNodep*
  store %vector__sCLNodep* %self, %vector__sCLNodep** %self1, align 8
  %2 = bitcast %vector__sCLNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %self2 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self12, i32 0, i32 0
  %7 = load %sCLNode**, %sCLNode*** %6, align 8
  %8 = load %sCLNode**, %sCLNode*** %6, align 8
  %9 = bitcast %sCLNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %13 = bitcast i8* %12 to %vector__sCLNodep**
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %17 = bitcast i8* %16 to %vector__sCLNodep**
  %self7 = load %vector__sCLNodep*, %vector__sCLNodep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self7, i32 0, i32 0
  %19 = load %sCLNode**, %sCLNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %19, i32 %i8
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %20 = load %sCLNode*, %sCLNode** %element_address, align 8
  %21 = ptrtoint %sCLNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  %23 = bitcast %sCLNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @"vector_finalize_sCLTypep9_src/compiler"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLTypep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self16 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self16, i32 0, i32 0
  %7 = load %sCLType**, %sCLType*** %6, align 8
  %8 = load %sCLType**, %sCLType*** %6, align 8
  %9 = bitcast %sCLType** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %13 = bitcast i8* %12 to %vector__sCLTypep**
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %17 = bitcast i8* %16 to %vector__sCLTypep**
  %self7 = load %vector__sCLTypep*, %vector__sCLTypep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self7, i32 0, i32 0
  %19 = load %sCLType**, %sCLType*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLType*, %sCLType** %19, i32 %i8
  %element = load %sCLType*, %sCLType** %element_address, align 8
  %20 = load %sCLType*, %sCLType** %element_address, align 8
  %21 = ptrtoint %sCLType* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end14, %cond_then_block
  %27 = bitcast %sCLType* %20 to i8*
  call void @xfree(i8* %27)
  %i15 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i15, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  call void @xfree(i8* %24)
  %28 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 5
  %29 = load %sCLBlockType*, %sCLBlockType** %28, align 8
  %30 = ptrtoint %sCLBlockType* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block13, label %cond_end14

cond_then_block13:                                ; preds = %cond_end12
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end12
  %32 = bitcast %sCLBlockType* %29 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10
}

define void @"vector_finalize_sCLNodep10_src/compiler"(%vector__sCLNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLNodep*
  store %vector__sCLNodep* %self, %vector__sCLNodep** %self1, align 8
  %2 = bitcast %vector__sCLNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %self2 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLNodep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self12 = load %vector__sCLNodep*, %vector__sCLNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self12, i32 0, i32 0
  %7 = load %sCLNode**, %sCLNode*** %6, align 8
  %8 = load %sCLNode**, %sCLNode*** %6, align 8
  %9 = bitcast %sCLNode** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %13 = bitcast i8* %12 to %vector__sCLNodep**
  %self6 = load %vector__sCLNodep*, %vector__sCLNodep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %17 = bitcast i8* %16 to %vector__sCLNodep**
  %self7 = load %vector__sCLNodep*, %vector__sCLNodep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLNodep, %vector__sCLNodep* %self7, i32 0, i32 0
  %19 = load %sCLNode**, %sCLNode*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLNode*, %sCLNode** %19, i32 %i8
  %element = load %sCLNode*, %sCLNode** %element_address, align 8
  %20 = load %sCLNode*, %sCLNode** %element_address, align 8
  %21 = ptrtoint %sCLNode* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block
  %23 = bitcast %sCLNode* %20 to i8*
  call void @xfree(i8* %23)
  %i11 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i11, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @"vector_finalize_sCLTypep11_src/compiler"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLTypep* %self2, null
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self16 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self16, i32 0, i32 0
  %7 = load %sCLType**, %sCLType*** %6, align 8
  %8 = load %sCLType**, %sCLType*** %6, align 8
  %9 = bitcast %sCLType** %8 to i8*
  call void @xfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %13 = bitcast i8* %12 to %vector__sCLTypep**
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %17 = bitcast i8* %16 to %vector__sCLTypep**
  %self7 = load %vector__sCLTypep*, %vector__sCLTypep** %17, align 8
  %18 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self7, i32 0, i32 0
  %19 = load %sCLType**, %sCLType*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %sCLType*, %sCLType** %19, i32 %i8
  %element = load %sCLType*, %sCLType** %element_address, align 8
  %20 = load %sCLType*, %sCLType** %element_address, align 8
  %21 = ptrtoint %sCLType* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block9, label %cond_end10

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4

cond_then_block9:                                 ; preds = %cond_then_block
  %23 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block11, label %cond_end12

cond_end10:                                       ; preds = %cond_end14, %cond_then_block
  %27 = bitcast %sCLType* %20 to i8*
  call void @xfree(i8* %27)
  %i15 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i15, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  call void @xfree(i8* %24)
  %28 = getelementptr inbounds %sCLType, %sCLType* %20, i32 0, i32 5
  %29 = load %sCLBlockType*, %sCLBlockType** %28, align 8
  %30 = ptrtoint %sCLBlockType* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block13, label %cond_end14

cond_then_block13:                                ; preds = %cond_end12
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end12
  %32 = bitcast %sCLBlockType* %29 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10
}

define i1 @compiler(i8* %fname) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %fname1 = alloca i8*
  store i8* %fname, i8** %fname1, align 8
  %2 = bitcast i8** %fname1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %fname2 = load i8*, i8** %fname1, align 8
  %3 = call i32 @access(i8* %fname2, i32 0)
  %noteqtmp = icmp ne i32 %3, 0
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %5 = bitcast i8* %4 to i8**
  %fname3 = load i8*, i8** %5, align 8
  %6 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.25, i32 0, i32 0), i8* %fname3)
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %entry
  %9 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.27, i32 0, i32 0), i32 135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.29, i32 0, i32 0))
  %10 = bitcast i8* %9 to %buffer*
  %11 = call %buffer* @buffer_initialize(%buffer* %10)
  %source = alloca %buffer*
  %12 = bitcast %buffer** %source to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  store %buffer* %11, %buffer** %source, align 8
  %fname4 = load i8*, i8** %fname1, align 8
  %source5 = load %buffer*, %buffer** %source, align 8
  %13 = call i1 @read_source(i8* %fname4, %buffer* %source5)
  %LOGICAL_DIANEAL = icmp eq i1 %13, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then6, label %cond_end7

cond_jump_then6:                                  ; preds = %cond_end
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  %16 = load %buffer*, %buffer** %source, align 8
  call void @buffer_finalize(%buffer* %16)
  %17 = ptrtoint %buffer* %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %cond_then_block, label %cond_end8

cond_end7:                                        ; preds = %cond_end
  %fname9 = load i8*, i8** %fname1, align 8
  %source10 = load %buffer*, %buffer** %source, align 8
  %19 = call i1 @compile_script(i8* %fname9, %buffer* %source10)
  %LOGICAL_DIANEAL11 = icmp eq i1 %19, false
  br i1 %LOGICAL_DIANEAL11, label %cond_jump_then12, label %cond_end13

cond_then_block:                                  ; preds = %cond_jump_then6
  br label %cond_end8

cond_end8:                                        ; preds = %cond_then_block, %cond_jump_then6
  %20 = bitcast %buffer* %16 to i8*
  call void @xfree(i8* %20)
  ret i1 false

cond_jump_then12:                                 ; preds = %cond_end7
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  %23 = load %buffer*, %buffer** %source, align 8
  call void @buffer_finalize(%buffer* %23)
  %24 = ptrtoint %buffer* %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %cond_then_block14, label %cond_end15

cond_end13:                                       ; preds = %cond_end7
  %26 = bitcast [8192 x i8*]* %lvtable to i8*
  %27 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %26, i64 65536)
  %28 = load %buffer*, %buffer** %source, align 8
  call void @buffer_finalize(%buffer* %28)
  %29 = ptrtoint %buffer* %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %cond_then_block16, label %cond_end17

cond_then_block14:                                ; preds = %cond_jump_then12
  br label %cond_end15

cond_end15:                                       ; preds = %cond_then_block14, %cond_jump_then12
  %31 = bitcast %buffer* %23 to i8*
  call void @xfree(i8* %31)
  ret i1 false

cond_then_block16:                                ; preds = %cond_end13
  br label %cond_end17

cond_end17:                                       ; preds = %cond_then_block16, %cond_end13
  %32 = bitcast %buffer* %28 to i8*
  call void @xfree(i8* %32)
  ret i1 true
}

define i1 @class_compiler(i8* %fname) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %fname1 = alloca i8*
  store i8* %fname, i8** %fname1, align 8
  %2 = bitcast i8** %fname1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret i1 true
}

define i32 @main(i32 %argc, i8** %argv) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %argc1 = alloca i32
  store i32 %argc, i32* %argc1, align 4
  %2 = bitcast i32* %argc1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %argv2 = alloca i8**
  store i8** %argv, i8*** %argv2, align 8
  %3 = bitcast i8*** %argv2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %i = alloca i32
  %4 = bitcast i32* %i to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %5 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.30, i32 0, i32 0))
  %no_load_fudamental_classes = alloca i1
  %6 = bitcast i1* %no_load_fudamental_classes to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  store i1 false, i1* %no_load_fudamental_classes, align 1
  %sname = alloca i8*
  %7 = bitcast i8** %sname to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %element_memory = alloca i8, i32 4096
  store i8* %element_memory, i8** %sname, align 8
  %sname3 = load i8*, i8** %sname, align 8
  %8 = call i8* @xstrncpy(i8* %sname3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string.31, i32 0, i32 0), i32 4096)
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %10 = bitcast i8* %9 to i32*
  store i32 1, i32* %10, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %12 = bitcast i8* %11 to i32*
  %i4 = load i32, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 350), align 8
  %14 = bitcast i8* %13 to i32*
  %argc5 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i4, %argc5
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %16 = bitcast i8* %15 to i8***
  %argv6 = load i8**, i8*** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %18 = bitcast i8* %17 to i32*
  %i7 = load i32, i32* %18, align 4
  %element_address = getelementptr i8*, i8** %argv6, i32 %i7
  %element = load i8*, i8** %element_address, align 8
  %19 = call i32 @strcmp(i8* %element, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.32, i32 0, i32 0))
  %eqtmpX = icmp eq i32 %19, 0
  br i1 %eqtmpX, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_end_block:                                   ; preds = %loop_top_block
  %sname45 = load i8*, i8** %sname, align 8
  %sname46 = load i8*, i8** %sname, align 8
  %20 = call i64 @strlen(i8* %sname46)
  %21 = ptrtoint i8* %sname45 to i64
  %multtmp = mul nsw i64 %20, 1
  %addtmp47 = add nsw i64 %21, %multtmp
  %22 = inttoptr i64 %addtmp47 to i8*
  %p = alloca i8*
  %23 = bitcast i8** %p to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  store i8* %22, i8** %p, align 8
  br label %loop_top_block48

cond_jump_then:                                   ; preds = %cond_then_block
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 353), align 8
  %25 = bitcast i8* %24 to i1*
  store i1 true, i1* %25, align 1
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %cond_then_block
  %oror_result_var = alloca i1
  %oror_result_var8 = alloca i1
  %oror_result_var9 = alloca i1
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %27 = bitcast i8* %26 to i8***
  %argv10 = load i8**, i8*** %27, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %29 = bitcast i8* %28 to i32*
  %i11 = load i32, i32* %29, align 4
  %element_address12 = getelementptr i8*, i8** %argv10, i32 %i11
  %element13 = load i8*, i8** %element_address12, align 8
  %30 = call i32 @strcmp(i8* %element13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.33, i32 0, i32 0))
  %eqtmpX14 = icmp eq i32 %30, 0
  store i1 %eqtmpX14, i1* %oror_result_var9, align 1
  br i1 %eqtmpX14, label %cond_jump_end, label %cond_jump_then15

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end31
  %gVersion = load i8*, i8** @gVersion, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_string.37, i32 0, i32 0), i8* %gVersion)
  call void @exit(i32 0)
  br label %cond_end

cond_else_block:                                  ; preds = %cond_jump_end31
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %33 = bitcast i8* %32 to i8**
  %sname39 = load i8*, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %35 = bitcast i8* %34 to i8***
  %argv40 = load i8**, i8*** %35, align 8
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %37 = bitcast i8* %36 to i32*
  %i41 = load i32, i32* %37, align 4
  %element_address42 = getelementptr i8*, i8** %argv40, i32 %i41
  %element43 = load i8*, i8** %element_address42, align 8
  %38 = call i8* @xstrncpy(i8* %sname39, i8* %element43, i32 4096)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %40 = bitcast i8* %39 to i32*
  %i44 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %i44, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then15:                                 ; preds = %"cond_jump_elif0\0A"
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %44 = bitcast i8* %43 to i8***
  %argv16 = load i8**, i8*** %44, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %46 = bitcast i8* %45 to i32*
  %i17 = load i32, i32* %46, align 4
  %element_address18 = getelementptr i8*, i8** %argv16, i32 %i17
  %element19 = load i8*, i8** %element_address18, align 8
  %47 = call i32 @strcmp(i8* %element19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_string.34, i32 0, i32 0))
  %eqtmpX20 = icmp eq i32 %47, 0
  %oror = or i1 %eqtmpX14, %eqtmpX20
  store i1 %oror, i1* %oror_result_var9, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then15, %"cond_jump_elif0\0A"
  %oror_result_value = load i1, i1* %oror_result_var9, align 1
  store i1 %oror_result_value, i1* %oror_result_var8, align 1
  br i1 %oror_result_value, label %cond_jump_end22, label %cond_jump_then21

cond_jump_then21:                                 ; preds = %cond_jump_end
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %49 = bitcast i8* %48 to i8***
  %argv23 = load i8**, i8*** %49, align 8
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %51 = bitcast i8* %50 to i32*
  %i24 = load i32, i32* %51, align 4
  %element_address25 = getelementptr i8*, i8** %argv23, i32 %i24
  %element26 = load i8*, i8** %element_address25, align 8
  %52 = call i32 @strcmp(i8* %element26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.35, i32 0, i32 0))
  %eqtmpX27 = icmp eq i32 %52, 0
  %oror28 = or i1 %oror_result_value, %eqtmpX27
  store i1 %oror28, i1* %oror_result_var8, align 1
  br label %cond_jump_end22

cond_jump_end22:                                  ; preds = %cond_jump_then21, %cond_jump_end
  %oror_result_value29 = load i1, i1* %oror_result_var8, align 1
  store i1 %oror_result_value29, i1* %oror_result_var, align 1
  br i1 %oror_result_value29, label %cond_jump_end31, label %cond_jump_then30

cond_jump_then30:                                 ; preds = %cond_jump_end22
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %54 = bitcast i8* %53 to i8***
  %argv32 = load i8**, i8*** %54, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %56 = bitcast i8* %55 to i32*
  %i33 = load i32, i32* %56, align 4
  %element_address34 = getelementptr i8*, i8** %argv32, i32 %i33
  %element35 = load i8*, i8** %element_address34, align 8
  %57 = call i32 @strcmp(i8* %element35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_string.36, i32 0, i32 0))
  %eqtmpX36 = icmp eq i32 %57, 0
  %oror37 = or i1 %oror_result_value29, %eqtmpX36
  store i1 %oror37, i1* %oror_result_var, align 1
  br label %cond_jump_end31

cond_jump_end31:                                  ; preds = %cond_jump_then30, %cond_jump_end22
  %oror_result_value38 = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value38, label %"cond_jump_elif_then0\0A", label %cond_else_block

loop_top_block48:                                 ; preds = %cond_end57, %cond_end_block
  %p49 = load i8*, i8** %p, align 8
  %sname50 = load i8*, i8** %sname, align 8
  %getmp = icmp sge i8* %p49, %sname50
  br i1 %getmp, label %cond_then_block51, label %cond_end_block52

cond_then_block51:                                ; preds = %loop_top_block48
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %59 = bitcast i8* %58 to i8**
  %p53 = load i8*, i8** %59, align 8
  %derefference_value = load i8, i8* %p53, align 8
  %eqtmpX54 = icmp eq i8 %derefference_value, 46
  br i1 %eqtmpX54, label %cond_jump_then55, label %cond_else_block56

cond_end_block52:                                 ; preds = %cond_jump_then55, %loop_top_block48
  %p60 = load i8*, i8** %p, align 8
  %sname61 = load i8*, i8** %sname, align 8
  %letmp62 = icmp slt i8* %p60, %sname61
  br i1 %letmp62, label %cond_jump_then63, label %cond_end64

cond_jump_then55:                                 ; preds = %cond_then_block51
  br label %cond_end_block52

cond_else_block56:                                ; preds = %cond_then_block51
  %60 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %61 = bitcast i8* %60 to i8**
  %p58 = load i8*, i8** %61, align 8
  %62 = ptrtoint i8* %p58 to i64
  %subtmp = sub nsw i64 %62, 1
  %63 = inttoptr i64 %subtmp to i8*
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %65 = bitcast i8* %64 to i8**
  store i8* %63, i8** %65, align 8
  %66 = ptrtoint i8* %63 to i64
  %addtmp59 = add nsw i64 %66, 1
  %67 = inttoptr i64 %addtmp59 to i8*
  br label %cond_end57

cond_end57:                                       ; preds = %cond_else_block56, %after_break
  br label %loop_top_block48

after_break:                                      ; No predecessors!
  br label %cond_end57

cond_jump_then63:                                 ; preds = %cond_end_block52
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 355), align 8
  %69 = bitcast i8* %68 to i8**
  store i8* null, i8** %69, align 8
  br label %cond_end64

cond_end64:                                       ; preds = %cond_jump_then63, %cond_end_block52
  %p65 = load i8*, i8** %p, align 8
  %ext_sname = alloca i8*
  %70 = bitcast i8** %ext_sname to i8*
  store i8* %70, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 356), align 8
  store i8* %p65, i8** %ext_sname, align 8
  call void @clover3_init()
  %no_load_fudamental_classes66 = load i1, i1* %no_load_fudamental_classes, align 1
  call void @compiler_init(i1 %no_load_fudamental_classes66)
  %andand_result_var = alloca i1
  %ext_sname67 = load i8*, i8** %ext_sname, align 8
  %71 = ptrtoint i8* %ext_sname67 to i64
  %72 = icmp ne i64 %71, 0
  store i1 %72, i1* %andand_result_var, align 1
  br i1 %72, label %cond_jump_then68, label %cond_jump_end69

cond_jump_then68:                                 ; preds = %cond_end64
  %ext_sname70 = load i8*, i8** %ext_sname, align 8
  %73 = call i32 @strcmp(i8* %ext_sname70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.38, i32 0, i32 0))
  %eqtmpX71 = icmp eq i32 %73, 0
  %andand = and i1 %72, %eqtmpX71
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end69

cond_jump_end69:                                  ; preds = %cond_jump_then68, %cond_end64
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then72, label %cond_else_block73

cond_jump_then72:                                 ; preds = %cond_jump_end69
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %75 = bitcast i8* %74 to i8**
  %sname75 = load i8*, i8** %75, align 8
  %76 = call i1 @class_compiler(i8* %sname75)
  %LOGICAL_DIANEAL = icmp eq i1 %76, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then76, label %cond_end77

cond_else_block73:                                ; preds = %cond_jump_end69
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 354), align 8
  %78 = bitcast i8* %77 to i8**
  %sname82 = load i8*, i8** %78, align 8
  %79 = call i1 @compiler(i8* %sname82)
  %LOGICAL_DIANEAL83 = icmp eq i1 %79, false
  br i1 %LOGICAL_DIANEAL83, label %cond_jump_then84, label %cond_end85

cond_end74:                                       ; preds = %cond_end85, %cond_end77
  call void @clover3_final()
  call void @compiler_final()
  %80 = bitcast [8192 x i8*]* %lvtable to i8*
  %81 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %80, i64 65536)
  call void @debug_show_none_freed_heap_memory()
  ret i32 0

cond_jump_then76:                                 ; preds = %cond_jump_then72
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %83 = bitcast i8* %82 to i8***
  %argv78 = load i8**, i8*** %83, align 8
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %85 = bitcast i8* %84 to i32*
  %i79 = load i32, i32* %85, align 4
  %element_address80 = getelementptr i8*, i8** %argv78, i32 %i79
  %element81 = load i8*, i8** %element_address80, align 8
  %86 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.39, i32 0, i32 0), i8* %element81)
  call void @clover3_final()
  call void @compiler_final()
  %87 = bitcast [8192 x i8*]* %lvtable to i8*
  %88 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %87, i64 65536)
  call void @debug_show_none_freed_heap_memory()
  ret i32 1

cond_end77:                                       ; preds = %cond_jump_then72
  br label %cond_end74

cond_jump_then84:                                 ; preds = %cond_else_block73
  %stderr86 = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %89 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 351), align 8
  %90 = bitcast i8* %89 to i8***
  %argv87 = load i8**, i8*** %90, align 8
  %91 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 352), align 8
  %92 = bitcast i8* %91 to i32*
  %i88 = load i32, i32* %92, align 4
  %element_address89 = getelementptr i8*, i8** %argv87, i32 %i88
  %element90 = load i8*, i8** %element_address89, align 8
  %93 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_string.40, i32 0, i32 0), i8* %element90)
  call void @clover3_final()
  call void @compiler_final()
  %94 = bitcast [8192 x i8*]* %lvtable to i8*
  %95 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %94, i64 65536)
  call void @debug_show_none_freed_heap_memory()
  ret i32 1

cond_end85:                                       ; preds = %cond_else_block73
  br label %cond_end74
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/compiler.nc", directory: "/home/ab25cq/repo/clover3")
!2 = !{}
