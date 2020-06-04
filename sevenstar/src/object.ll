; ModuleID = 'Module object'
source_filename = "Module object"

%_IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %_IO_marker*, %_IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %_IO_codecvt*, %_IO_wide_data*, %_IO_FILE*, i8*, i64, i32, [20 x i8] }
%_IO_marker = type {}
%_IO_codecvt = type {}
%_IO_wide_data = type {}
%pcre_callout_block = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%pcre16_callout_block = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%pcre32_callout_block = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%map__charp_sCLClassp = type { i8**, i1*, %sCLClass**, i32, i32 }
%sCLClass = type { i8*, %map__charp_sCLMethodp*, %map__charp_sCLFieldp*, %map__charp_sCLFieldp*, %sCLClass* }
%map__charp_sCLMethodp = type { i8**, i1*, %sCLMethod**, i32, i32 }
%sCLMethod = type { i8*, [32 x %sCLParam], i32, %sCLType*, %buffer*, i1 (%CLVALUE**, %sVMInfo*)*, %sCLNodeBlock*, i32 }
%sCLParam = type { [128 x i8], %sCLType* }
%sCLType = type { i8*, %sCLClass*, i32, [32 x %sCLType*], i1, [32 x %sCLParam], i32, %sCLType*, i32 }
%buffer = type { i8*, i32, i32 }
%CLVALUE = type { i32 }
%sVMInfo = type { [4096 x i8], i32, %sParserInfo*, %sCompileInfo*, i1, %vector__sCLStackFrame*, %CLVALUE }
%sParserInfo = type { [4096 x i8], i32, i32, i32, i8*, %vector__charp*, %vector__sCLNodep*, %vector__sVarTablep*, %vector__sCLNodeBlockp*, %vector__sCLTypep*, %vector__sVarp*, i32 }
%vector__charp = type { i8**, i32, i32 }
%vector__sCLNodep = type { %sCLNode**, i32, i32 }
%sCLNode = type { i32, [4096 x i8], i32, %anon78, i8*, i8*, i8*, %buffer*, %sCLType*, %sCLNode*, %sCLNode*, %sCLNode* }
%anon78 = type { %anon80 }
%anon80 = type { %sCLNodeBlock*, [32 x %sCLParam], i32, %sCLType* }
%vector__sVarTablep = type { %sVarTable**, i32, i32 }
%sVarTable = type { %map__charp_sVarp*, i32, i32, i32, %sVarTable* }
%map__charp_sVarp = type { i8**, i1*, %sVar**, i32, i32 }
%sVar = type { i8*, i32, %sCLType*, i32, i1 }
%vector__sCLNodeBlockp = type { %sCLNodeBlock**, i32, i32 }
%vector__sCLTypep = type { %sCLType**, i32, i32 }
%vector__sVarp = type { %sVar**, i32, i32 }
%sCompileInfo = type { [4096 x i8], i32, i32, i32, %sParserInfo*, %buffer*, %sCLType*, i1, %sCLNode* }
%vector__sCLStackFrame = type { %sCLStackFrame*, i32, i32 }
%sCLStackFrame = type { i32, %CLVALUE*, %CLVALUE**, i32, i32 }
%sCLNodeBlock = type { %vector__sCLNodep*, %vector__sVarTablep*, i1, i32, [32 x %sCLParam], %sCLType*, i32, %buffer*, i32 }
%map__charp_sCLFieldp = type { i8**, i1*, %sCLField**, i32, i32 }
%sCLField = type { i8*, %sCLType*, %CLVALUE, i32 }
%vector__int = type { i32*, i32, i32 }
%__locale_struct = type { [13 x %__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%__locale_data = type opaque
%anon0 = type { i32, %anon1 }
%anon1 = type { i32 }
%__builtin_va_list.0 = type { i8* }
%tm = type {}
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
%real_pcre = type {}
%real_pcre16 = type {}
%real_pcre32 = type {}
%pcre_extra = type { i64, i8*, i64, i8*, i8*, i64, i8**, i8* }
%pcre16_extra = type { i64, i8*, i64, i8*, i8*, i64, i16**, i8* }
%pcre32_extra = type { i64, i8*, i64, i8*, i8*, i64, i32**, i8* }
%real_pcre_jit_stack = type {}
%real_pcre16_jit_stack = type {}
%real_pcre32_jit_stack = type {}
%regex_struct = type { i8*, %real_pcre*, i1, i1, i1, i1, i1, i1, i1, i1 }
%list__charp = type { %list_item__charp*, %list_item__charp*, i32 }
%list_item__charp = type { i8*, %list_item__charp*, %list_item__charp* }
%stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %timespec, %timespec, %timespec, [3 x i64] }
%lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%sCLHeapMem = type { %sCLType*, i32, i32, i8* }
%sCLInt = type { %sCLType*, i32, i32, i32 }
%sCLObject = type { %sCLType*, i32, i32, %anon85 }
%anon85 = type { [32 x %CLVALUE] }
%sCLBlock = type { %sCLType*, i32, i32, i32*, i32 }
%sCLCommand = type { %sCLType*, i32, i32, i32, i32, i32, i1, i8*, [32 x i8] }
%sCLJob = type { %sCLType*, i32, i32, [32 x i8], %termios, i32 }

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
@gJobs = external externally_initialized global %vector__int*, align 8
@global_string = private constant [5 x i8] c"void\00", align 1
@global_string.1 = private constant [4 x i8] c"int\00", align 1
@global_string.2 = private constant [5 x i8] c"bool\00", align 1
@global_string.3 = private constant [7 x i8] c"string\00", align 1
@global_string.4 = private constant [7 x i8] c"string\00", align 1
@global_string.5 = private constant [8 x i8] c"command\00", align 1
@global_string.6 = private constant [4 x i8] c"job\00", align 1

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

declare i8* @xrealloc(i8*, i64)

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

declare void @buffer_append_nullterminated_str(%buffer*, i8*)

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

declare i1 @eval_class(i8*, %sCompileInfo*, i8*, i32)

declare i1 @invoke_native_method(%sCLClass*, %sCLMethod*, %CLVALUE**, %sVMInfo*)

declare %sVarTable* @sVarTable_initialize(%sVarTable*)

declare void @parser_err_msg(%sParserInfo*, i8*)

declare void @skip_spaces_and_lf(%sParserInfo*)

declare i1 @parse_params(%sCLParam*, i32*, %sParserInfo*)

declare i8* @parse_word(%sParserInfo*)

declare i1 @parse_type(%sCLType**, %sParserInfo*)

declare void @expected_next_character(i8, %sParserInfo*)

declare void @parse_comment(%sParserInfo*)

declare i1 @expression(%sCLNode**, %sParserInfo*)

declare i1 @compile(%sCLNode*, %sCompileInfo*)

declare void @compile_err_msg(%sCompileInfo*, i8*)

declare void @init_var_table(%sParserInfo*)

declare void @final_var_table(%sParserInfo*)

declare void @add_variable_to_table(%sParserInfo*, i8*, %sCLType*, i1)

declare %sVar* @get_variable_from_table(%sParserInfo*, i8*)

declare void @check_already_added_variable(%sParserInfo*, i8*)

declare i32 @get_var_num(%vector__sVarTablep*)

declare void @show_vtable(%vector__sVarTablep*)

declare %sCLType* @clone_type(%sCLType*, %sParserInfo*)

declare %sCLType* @create_type(i8*, %sParserInfo*)

declare %sCLType* @parse_type_runtime(i8*, %sVMInfo*)

declare i8* @create_type_name(%sCLType*)

declare i1 @type_identify(%sCLType*, %sCLType*)

declare i1 @substitution_posibility(%sCLType*, %sCLType*)

declare i1 @type_identify_with_class_name(%sCLType*, i8*, %sParserInfo*)

declare i1 @is_generics_type(%sCLType*)

declare i32 @get_generics_type_number(%sCLType*, %sParserInfo*)

declare %sCLType* @solve_generics(%sCLType*, %sCLType*, %sParserInfo*)

declare void @show_type(%sCLType*)

declare void @codes_append_type(%buffer*, %sCLType*)

declare void @codes_read_type(i8*, %sCLType**)

declare %sCLNode* @sNodeTree_create_break(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_normal_block(%sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_minus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_minus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_logical_denial(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_return(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_try(%sCLNodeBlock*, %sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_exit(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_plus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_while_expression(%sCLNode*, %sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_plus(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_not_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_greater(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_lesser(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_lesser_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_primitive_greater_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_int_value(i32, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_store_variable(i8*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_load_variable(i8*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_not_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_greater(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_lesser(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_lesser_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_greater_equal(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_and_and(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_or_or(%sCLNode*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_string_value(i8*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_true_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_false_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_null_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_command_value(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_if_expression(%sCLNode*, %sCLNodeBlock*, i32, %sCLNode**, %sCLNodeBlock**, %sCLNodeBlock*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_lambda(i32, %sCLParam*, %sCLNodeBlock*, %sCLType*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_method_block(i8*, i32, %buffer*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_class(i8*, i8*, i32, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_object(%sCLType*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_method_call(i8*, i32, %sCLNode**, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_command_call(%sCLNode*, i8*, i32, %sCLNode**, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_block_object_call(i32, %sCLNode**, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_jobs(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_fg(i32, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_load_field(%sCLNode*, i8*, %sParserInfo*)

declare %sCLNode* @NodeTree_create_store_field(%sCLNode*, i8*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_store_field(%sCLNode*, i8*, %sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_throw_exception(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_macro(i8*, i8*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_call_macro(i8*, i8*, %sParserInfo*)

declare void @macro_init()

declare void @macro_final()

declare void @append_macro(i8*, i8*)

declare i1 @call_macro(%sCLNode**, i8*, i8*, %sParserInfo*)

declare void @vm_err_msg(%CLVALUE**, %sVMInfo*, i8*)

declare i1 @vm(%buffer*, %CLVALUE*, i32, i32, %CLVALUE*, %sVMInfo*)

declare i32 @alloc_heap_mem(i32, %sCLType*, i32, %sVMInfo*)

declare void @heap_init(i32, i32)

declare void @heap_final(%sVMInfo*)

declare %sCLHeapMem* @get_object_pointer(i32)

define i32 @create_object(%sCLType* %type, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %type1 = alloca %sCLType*
  store %sCLType* %type, %sCLType** %type1, align 8
  %2 = bitcast %sCLType** %type1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %type3 = load %sCLType*, %sCLType** %type1, align 8
  %4 = getelementptr inbounds %sCLType, %sCLType* %type3, i32 0, i32 1
  %5 = load %sCLClass*, %sCLClass** %4, align 8
  %6 = call i64 @object_size(%sCLClass* %5)
  %7 = trunc i64 %6 to i32
  %size = alloca i32
  %8 = bitcast i32* %size to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 %7, i32* %size, align 4
  %size4 = load i32, i32* %size, align 4
  %type5 = load %sCLType*, %sCLType** %type1, align 8
  %type6 = load %sCLType*, %sCLType** %type1, align 8
  %9 = getelementptr inbounds %sCLType, %sCLType* %type6, i32 0, i32 1
  %10 = load %sCLClass*, %sCLClass** %9, align 8
  %11 = getelementptr inbounds %sCLClass, %sCLClass* %10, i32 0, i32 2
  %12 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %11, align 8
  %13 = call i32 @"map_length_charp_sCLFieldp2_src/object"(%map__charp_sCLFieldp* %12)
  %info7 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %14 = call i32 @alloc_heap_mem(i32 %size4, %sCLType* %type5, i32 %13, %sVMInfo* %info7)
  %obj = alloca i32
  %15 = bitcast i32* %obj to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 %14, i32* %obj, align 4
  %obj8 = load i32, i32* %obj, align 4
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret i32 %obj8
}

define i32 @create_null_object(%sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info1, align 8
  %2 = bitcast %sVMInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sVMInfo*, %sVMInfo** %info1, align 8
  %3 = getelementptr inbounds %sVMInfo, %sVMInfo* %info2, i32 0, i32 3
  %4 = load %sCompileInfo*, %sCompileInfo** %3, align 8
  %5 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %4, i32 0, i32 4
  %6 = load %sParserInfo*, %sParserInfo** %5, align 8
  %7 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string, i32 0, i32 0), %sParserInfo* %6)
  %int_type = alloca %sCLType*
  %8 = bitcast %sCLType** %int_type to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLType* %7, %sCLType** %int_type, align 8
  %size = alloca i32
  %9 = bitcast i32* %size to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 24, i32* %size, align 4
  %size3 = load i32, i32* %size, align 4
  call void @alignment(i32* %size)
  %value = alloca i32
  %10 = bitcast i32* %value to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %value, align 4
  %size4 = load i32, i32* %size, align 4
  %int_type5 = load %sCLType*, %sCLType** %int_type, align 8
  %info6 = load %sVMInfo*, %sVMInfo** %info1, align 8
  %11 = call i32 @alloc_heap_mem(i32 %size4, %sCLType* %int_type5, i32 -1, %sVMInfo* %info6)
  %obj = alloca i32
  %12 = bitcast i32* %obj to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %11, i32* %obj, align 4
  %obj7 = load i32, i32* %obj, align 4
  %13 = call %sCLHeapMem* @get_object_pointer(i32 %obj7)
  %14 = bitcast %sCLHeapMem* %13 to %sCLInt*
  %object_data = alloca %sCLInt*
  %15 = bitcast %sCLInt** %object_data to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLInt* %14, %sCLInt** %object_data, align 8
  %object_data8 = load %sCLInt*, %sCLInt** %object_data, align 8
  %value9 = load i32, i32* %value, align 4
  %16 = getelementptr inbounds %sCLInt, %sCLInt* %object_data8, i32 0, i32 3
  store i32 %value9, i32* %16, align 4
  %obj10 = load i32, i32* %obj, align 4
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i32 %obj10
}

define i32 @create_int_object(i32 %value, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %value1 = alloca i32
  store i32 %value, i32* %value1, align 4
  %2 = bitcast i32* %value1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %4 = getelementptr inbounds %sVMInfo, %sVMInfo* %info3, i32 0, i32 3
  %5 = load %sCompileInfo*, %sCompileInfo** %4, align 8
  %6 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %5, i32 0, i32 4
  %7 = load %sParserInfo*, %sParserInfo** %6, align 8
  %8 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.1, i32 0, i32 0), %sParserInfo* %7)
  %int_type = alloca %sCLType*
  %9 = bitcast %sCLType** %int_type to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %8, %sCLType** %int_type, align 8
  %size = alloca i32
  %10 = bitcast i32* %size to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 24, i32* %size, align 4
  %size4 = load i32, i32* %size, align 4
  call void @alignment(i32* %size)
  %size5 = load i32, i32* %size, align 4
  %int_type6 = load %sCLType*, %sCLType** %int_type, align 8
  %info7 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %11 = call i32 @alloc_heap_mem(i32 %size5, %sCLType* %int_type6, i32 -1, %sVMInfo* %info7)
  %obj = alloca i32
  %12 = bitcast i32* %obj to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %11, i32* %obj, align 4
  %obj8 = load i32, i32* %obj, align 4
  %13 = call %sCLHeapMem* @get_object_pointer(i32 %obj8)
  %14 = bitcast %sCLHeapMem* %13 to %sCLInt*
  %object_data = alloca %sCLInt*
  %15 = bitcast %sCLInt** %object_data to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLInt* %14, %sCLInt** %object_data, align 8
  %object_data9 = load %sCLInt*, %sCLInt** %object_data, align 8
  %value10 = load i32, i32* %value1, align 4
  %16 = getelementptr inbounds %sCLInt, %sCLInt* %object_data9, i32 0, i32 3
  store i32 %value10, i32* %16, align 4
  %obj11 = load i32, i32* %obj, align 4
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i32 %obj11
}

define i32 @create_string_object(i8* %str, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %str1 = alloca i8*
  store i8* %str, i8** %str1, align 8
  %2 = bitcast i8** %str1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %4 = getelementptr inbounds %sVMInfo, %sVMInfo* %info3, i32 0, i32 3
  %5 = load %sCompileInfo*, %sCompileInfo** %4, align 8
  %6 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %5, i32 0, i32 4
  %7 = load %sParserInfo*, %sParserInfo** %6, align 8
  %8 = call %sCLType* @create_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.3, i32 0, i32 0), %sParserInfo* %7)
  %string_type = alloca %sCLType*
  %9 = bitcast %sCLType** %string_type to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %8, %sCLType** %string_type, align 8
  %size = alloca i64
  %10 = bitcast i64* %size to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i64 16, i64* %size
  %size4 = load i64, i64* %size
  %addtmp = add nsw i64 %size4, 4
  store i64 %addtmp, i64* %size
  %subttmp = sub nsw i64 %addtmp, 4
  %size5 = load i64, i64* %size
  %11 = trunc i64 %size5 to i32
  %size2 = alloca i32
  %12 = bitcast i32* %size2 to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %11, i32* %size2, align 4
  %size26 = load i32, i32* %size2, align 4
  call void @alignment(i32* %size2)
  %size27 = load i32, i32* %size2, align 4
  %sext14 = zext i32 %size27 to i64
  store i64 %sext14, i64* %size
  %null_stack_frame = alloca %sCLStackFrame
  %13 = bitcast %sCLStackFrame* %null_stack_frame to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %info8 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %14 = getelementptr inbounds %sVMInfo, %sVMInfo* %info8, i32 0, i32 5
  %15 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %14, align 8
  %null_stack_frame9 = load %sCLStackFrame, %sCLStackFrame* %null_stack_frame, align 8
  %16 = call %sCLStackFrame @"vector_item_sCLStackFrame3_src/object"(%vector__sCLStackFrame* %15, i32 -1, %sCLStackFrame %null_stack_frame9)
  %stack_frame = alloca %sCLStackFrame
  %17 = bitcast %sCLStackFrame* %stack_frame to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLStackFrame %16, %sCLStackFrame* %stack_frame, align 8
  %stack_frame10 = load %sCLStackFrame, %sCLStackFrame* %stack_frame, align 8
  %18 = getelementptr inbounds %sCLStackFrame, %sCLStackFrame* %stack_frame, i32 0, i32 2
  %19 = load %CLVALUE**, %CLVALUE*** %18, align 8
  %stack_ptr = alloca %CLVALUE**
  %20 = bitcast %CLVALUE*** %stack_ptr to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %CLVALUE** %19, %CLVALUE*** %stack_ptr, align 8
  %size11 = load i64, i64* %size
  %string_type12 = load %sCLType*, %sCLType** %string_type, align 8
  %info13 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %21 = trunc i64 %size11 to i32
  %22 = call i32 @alloc_heap_mem(i32 %21, %sCLType* %string_type12, i32 1, %sVMInfo* %info13)
  %obj = alloca i32
  %23 = bitcast i32* %obj to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %22, i32* %obj, align 4
  %stack_ptr14 = load %CLVALUE**, %CLVALUE*** %stack_ptr, align 8
  %derefference_value = load %CLVALUE*, %CLVALUE** %stack_ptr14, align 8
  %obj15 = load i32, i32* %obj, align 4
  %24 = bitcast %CLVALUE* %derefference_value to i32*
  store i32 %obj15, i32* %24, align 4
  %stack_ptr16 = load %CLVALUE**, %CLVALUE*** %stack_ptr, align 8
  %derefference_value17 = load %CLVALUE*, %CLVALUE** %stack_ptr16, align 8
  %25 = ptrtoint %CLVALUE* %derefference_value17 to i64
  %adddtmp = add nsw i64 %25, 4
  %26 = inttoptr i64 %adddtmp to %CLVALUE*
  store %CLVALUE* %26, %CLVALUE** %stack_ptr16, align 8
  %str18 = load i8*, i8** %str1, align 8
  %27 = call i64 @strlen(i8* %str18)
  %28 = trunc i64 %27 to i32
  %len = alloca i32
  %29 = bitcast i32* %len to i8*
  store i8* %29, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 %28, i32* %len, align 4
  %size3 = alloca i32
  %30 = bitcast i32* %size3 to i8*
  store i8* %30, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 16, i32* %size3, align 4
  %size319 = load i32, i32* %size3, align 4
  %len20 = load i32, i32* %len, align 4
  %addtmp21 = add nsw i32 %len20, 1
  %addtmp22 = add nsw i32 %size319, %addtmp21
  store i32 %addtmp22, i32* %size3, align 4
  %len23 = load i32, i32* %len, align 4
  %addtmp24 = add nsw i32 %len23, 1
  %subttmp25 = sub nsw i32 %addtmp22, %addtmp24
  %size326 = load i32, i32* %size3, align 4
  call void @alignment(i32* %size3)
  %size327 = load i32, i32* %size3, align 4
  %string_type28 = load %sCLType*, %sCLType** %string_type, align 8
  %info29 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %31 = call i32 @alloc_heap_mem(i32 %size327, %sCLType* %string_type28, i32 -1, %sVMInfo* %info29)
  %obj2 = alloca i32
  %32 = bitcast i32* %obj2 to i8*
  store i8* %32, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 %31, i32* %obj2, align 4
  %obj230 = load i32, i32* %obj2, align 4
  %33 = call %sCLHeapMem* @get_object_pointer(i32 %obj230)
  %34 = bitcast %sCLHeapMem* %33 to %sCLObject*
  %object_data2 = alloca %sCLObject*
  %35 = bitcast %sCLObject** %object_data2 to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store %sCLObject* %34, %sCLObject** %object_data2, align 8
  %object_data231 = load %sCLObject*, %sCLObject** %object_data2, align 8
  %36 = getelementptr inbounds %sCLObject, %sCLObject* %object_data231, i32 0, i32 3
  %37 = load %anon85, %anon85* %36, align 8
  %38 = bitcast %anon85* %36 to i8**
  %39 = load i8*, i8** %38, align 8
  %str32 = load i8*, i8** %str1, align 8
  %40 = bitcast i8** %38 to i8*
  %41 = call i8* @strcpy(i8* %40, i8* %str32)
  %obj33 = load i32, i32* %obj, align 4
  %42 = call %sCLHeapMem* @get_object_pointer(i32 %obj33)
  %43 = bitcast %sCLHeapMem* %42 to %sCLObject*
  %object_data = alloca %sCLObject*
  %44 = bitcast %sCLObject** %object_data to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store %sCLObject* %43, %sCLObject** %object_data, align 8
  %object_data34 = load %sCLObject*, %sCLObject** %object_data, align 8
  %45 = getelementptr inbounds %sCLObject, %sCLObject* %object_data34, i32 0, i32 3
  %46 = load %anon85, %anon85* %45, align 8
  %47 = bitcast %anon85* %45 to [32 x %CLVALUE]*
  %48 = bitcast [32 x %CLVALUE]* %47 to %CLVALUE*
  %element_address = getelementptr %CLVALUE, %CLVALUE* %48, i32 0
  %element = load %CLVALUE, %CLVALUE* %element_address, align 8
  %obj235 = load i32, i32* %obj2, align 4
  %49 = bitcast %CLVALUE* %element_address to i32*
  store i32 %obj235, i32* %49, align 4
  %stack_ptr36 = load %CLVALUE**, %CLVALUE*** %stack_ptr, align 8
  %derefference_value37 = load %CLVALUE*, %CLVALUE** %stack_ptr36, align 8
  %50 = ptrtoint %CLVALUE* %derefference_value37 to i64
  %subtmp = sub nsw i64 %50, 4
  %51 = inttoptr i64 %subtmp to %CLVALUE*
  store %CLVALUE* %51, %CLVALUE** %stack_ptr36, align 8
  %obj38 = load i32, i32* %obj, align 4
  %52 = bitcast [8192 x i8*]* %lvtable to i8*
  %53 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %52, i64 65536)
  ret i32 %obj38
}

define i8* @get_string_mem(i32 %obj) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca i32
  store i32 %obj, i32* %obj1, align 4
  %2 = bitcast i32* %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %obj2 = load i32, i32* %obj1, align 4
  %3 = call %sCLHeapMem* @get_object_pointer(i32 %obj2)
  %4 = bitcast %sCLHeapMem* %3 to %sCLObject*
  %object_data = alloca %sCLObject*
  %5 = bitcast %sCLObject** %object_data to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sCLObject* %4, %sCLObject** %object_data, align 8
  %object_data3 = load %sCLObject*, %sCLObject** %object_data, align 8
  %6 = getelementptr inbounds %sCLObject, %sCLObject* %object_data3, i32 0, i32 3
  %7 = load %anon85, %anon85* %6, align 8
  %8 = bitcast %anon85* %6 to [32 x %CLVALUE]*
  %9 = bitcast [32 x %CLVALUE]* %8 to %CLVALUE*
  %element_address = getelementptr %CLVALUE, %CLVALUE* %9, i32 0
  %element = load %CLVALUE, %CLVALUE* %element_address, align 8
  %10 = bitcast %CLVALUE* %element_address to i32*
  %11 = load i32, i32* %10, align 4
  %obj24 = alloca i32
  %12 = bitcast i32* %obj24 to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 %11, i32* %obj24, align 4
  %obj25 = load i32, i32* %obj24, align 4
  %13 = call %sCLHeapMem* @get_object_pointer(i32 %obj25)
  %14 = bitcast %sCLHeapMem* %13 to %sCLObject*
  %object_data2 = alloca %sCLObject*
  %15 = bitcast %sCLObject** %object_data2 to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLObject* %14, %sCLObject** %object_data2, align 8
  %object_data26 = load %sCLObject*, %sCLObject** %object_data2, align 8
  %16 = getelementptr inbounds %sCLObject, %sCLObject* %object_data26, i32 0, i32 3
  %17 = load %anon85, %anon85* %16, align 8
  %18 = bitcast %anon85* %16 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8** %18 to i8*
  %21 = bitcast [8192 x i8*]* %lvtable to i8*
  %22 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %21, i64 65536)
  ret i8* %20
}

define i32 @create_string_data_object(i8* %str, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %str1 = alloca i8*
  store i8* %str, i8** %str1, align 8
  %2 = bitcast i8** %str1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %str3 = load i8*, i8** %str1, align 8
  %4 = call i64 @strlen(i8* %str3)
  %5 = trunc i64 %4 to i32
  %len = alloca i32
  %6 = bitcast i32* %len to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 %5, i32* %len, align 4
  %size = alloca i32
  %7 = bitcast i32* %size to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 16, i32* %size, align 4
  %size4 = load i32, i32* %size, align 4
  %len5 = load i32, i32* %len, align 4
  %addtmp = add nsw i32 %len5, 1
  %addtmp6 = add nsw i32 %size4, %addtmp
  store i32 %addtmp6, i32* %size, align 4
  %len7 = load i32, i32* %len, align 4
  %addtmp8 = add nsw i32 %len7, 1
  %subttmp = sub nsw i32 %addtmp6, %addtmp8
  %size9 = load i32, i32* %size, align 4
  call void @alignment(i32* %size)
  %info10 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %8 = getelementptr inbounds %sVMInfo, %sVMInfo* %info10, i32 0, i32 3
  %9 = load %sCompileInfo*, %sCompileInfo** %8, align 8
  %10 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %9, i32 0, i32 4
  %11 = load %sParserInfo*, %sParserInfo** %10, align 8
  %12 = call %sCLType* @create_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.4, i32 0, i32 0), %sParserInfo* %11)
  %string_type = alloca %sCLType*
  %13 = bitcast %sCLType** %string_type to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* %12, %sCLType** %string_type, align 8
  %size11 = load i32, i32* %size, align 4
  %string_type12 = load %sCLType*, %sCLType** %string_type, align 8
  %info13 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %14 = call i32 @alloc_heap_mem(i32 %size11, %sCLType* %string_type12, i32 -1, %sVMInfo* %info13)
  %obj = alloca i32
  %15 = bitcast i32* %obj to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %14, i32* %obj, align 4
  %obj14 = load i32, i32* %obj, align 4
  %16 = call %sCLHeapMem* @get_object_pointer(i32 %obj14)
  %17 = bitcast %sCLHeapMem* %16 to %sCLObject*
  %object_data = alloca %sCLObject*
  %18 = bitcast %sCLObject** %object_data to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store %sCLObject* %17, %sCLObject** %object_data, align 8
  %object_data15 = load %sCLObject*, %sCLObject** %object_data, align 8
  %19 = getelementptr inbounds %sCLObject, %sCLObject* %object_data15, i32 0, i32 3
  %20 = load %anon85, %anon85* %19, align 8
  %21 = bitcast %anon85* %19 to i8**
  %22 = load i8*, i8** %21, align 8
  %str16 = load i8*, i8** %str1, align 8
  %23 = bitcast i8** %21 to i8*
  %24 = call i8* @strcpy(i8* %23, i8* %str16)
  %obj17 = load i32, i32* %obj, align 4
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret i32 %obj17
}

define i32 @create_bool_object(i32 %value, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %value1 = alloca i32
  store i32 %value, i32* %value1, align 4
  %2 = bitcast i32* %value1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %4 = getelementptr inbounds %sVMInfo, %sVMInfo* %info3, i32 0, i32 3
  %5 = load %sCompileInfo*, %sCompileInfo** %4, align 8
  %6 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %5, i32 0, i32 4
  %7 = load %sParserInfo*, %sParserInfo** %6, align 8
  %8 = call %sCLType* @create_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.2, i32 0, i32 0), %sParserInfo* %7)
  %int_type = alloca %sCLType*
  %9 = bitcast %sCLType** %int_type to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sCLType* %8, %sCLType** %int_type, align 8
  %size = alloca i32
  %10 = bitcast i32* %size to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 24, i32* %size, align 4
  %size4 = load i32, i32* %size, align 4
  call void @alignment(i32* %size)
  %size5 = load i32, i32* %size, align 4
  %int_type6 = load %sCLType*, %sCLType** %int_type, align 8
  %info7 = load %sVMInfo*, %sVMInfo** %info2, align 8
  %11 = call i32 @alloc_heap_mem(i32 %size5, %sCLType* %int_type6, i32 -1, %sVMInfo* %info7)
  %obj = alloca i32
  %12 = bitcast i32* %obj to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %11, i32* %obj, align 4
  %obj8 = load i32, i32* %obj, align 4
  %13 = call %sCLHeapMem* @get_object_pointer(i32 %obj8)
  %14 = bitcast %sCLHeapMem* %13 to %sCLInt*
  %object_data = alloca %sCLInt*
  %15 = bitcast %sCLInt** %object_data to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLInt* %14, %sCLInt** %object_data, align 8
  %object_data9 = load %sCLInt*, %sCLInt** %object_data, align 8
  %value10 = load i32, i32* %value1, align 4
  %16 = getelementptr inbounds %sCLInt, %sCLInt* %object_data9, i32 0, i32 3
  store i32 %value10, i32* %16, align 4
  %obj11 = load i32, i32* %obj, align 4
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret i32 %obj11
}

define i32 @create_block_object(i8* %type_name, i32* %codes, i32 %codes_len, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %type_name1 = alloca i8*
  store i8* %type_name, i8** %type_name1, align 8
  %2 = bitcast i8** %type_name1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %codes2 = alloca i32*
  store i32* %codes, i32** %codes2, align 8
  %3 = bitcast i32** %codes2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %codes_len3 = alloca i32
  store i32 %codes_len, i32* %codes_len3, align 4
  %4 = bitcast i32* %codes_len3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info4, align 8
  %5 = bitcast %sVMInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %6 = call i64 @block_object_size()
  %7 = trunc i64 %6 to i32
  %size = alloca i32
  %8 = bitcast i32* %size to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %7, i32* %size, align 4
  %size5 = load i32, i32* %size, align 4
  call void @alignment(i32* %size)
  %type_name6 = load i8*, i8** %type_name1, align 8
  %info7 = load %sVMInfo*, %sVMInfo** %info4, align 8
  %9 = call %sCLType* @parse_type_runtime(i8* %type_name6, %sVMInfo* %info7)
  %lambda_type = alloca %sCLType*
  %10 = bitcast %sCLType** %lambda_type to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sCLType* %9, %sCLType** %lambda_type, align 8
  %size8 = load i32, i32* %size, align 4
  %lambda_type9 = load %sCLType*, %sCLType** %lambda_type, align 8
  %info10 = load %sVMInfo*, %sVMInfo** %info4, align 8
  %11 = call i32 @alloc_heap_mem(i32 %size8, %sCLType* %lambda_type9, i32 -1, %sVMInfo* %info10)
  %obj = alloca i32
  %12 = bitcast i32* %obj to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 %11, i32* %obj, align 4
  %obj11 = load i32, i32* %obj, align 4
  %13 = call %sCLHeapMem* @get_object_pointer(i32 %obj11)
  %14 = bitcast %sCLHeapMem* %13 to %sCLBlock*
  %block_data = alloca %sCLBlock*
  %15 = bitcast %sCLBlock** %block_data to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLBlock* %14, %sCLBlock** %block_data, align 8
  %block_data12 = load %sCLBlock*, %sCLBlock** %block_data, align 8
  %codes13 = load i32*, i32** %codes2, align 8
  %16 = getelementptr inbounds %sCLBlock, %sCLBlock* %block_data12, i32 0, i32 3
  store i32* %codes13, i32** %16, align 8
  %block_data14 = load %sCLBlock*, %sCLBlock** %block_data, align 8
  %codes_len15 = load i32, i32* %codes_len3, align 4
  %17 = getelementptr inbounds %sCLBlock, %sCLBlock* %block_data14, i32 0, i32 4
  store i32 %codes_len15, i32* %17, align 4
  %obj16 = load i32, i32* %obj, align 4
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret i32 %obj16
}

define i32 @create_command_object(i8* %output, i32 %output_len, i8* %err_output, i32 %err_output_len, i32 %rcode, i1 %first_command, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %output1 = alloca i8*
  store i8* %output, i8** %output1, align 8
  %2 = bitcast i8** %output1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %output_len2 = alloca i32
  store i32 %output_len, i32* %output_len2, align 4
  %3 = bitcast i32* %output_len2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %err_output3 = alloca i8*
  store i8* %err_output, i8** %err_output3, align 8
  %4 = bitcast i8** %err_output3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %err_output_len4 = alloca i32
  store i32 %err_output_len, i32* %err_output_len4, align 4
  %5 = bitcast i32* %err_output_len4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %rcode5 = alloca i32
  store i32 %rcode, i32* %rcode5, align 4
  %6 = bitcast i32* %rcode5 to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %first_command6 = alloca i1
  store i1 %first_command, i1* %first_command6, align 1
  %7 = bitcast i1* %first_command6 to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %info7 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info7, align 8
  %8 = bitcast %sVMInfo** %info7 to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %info8 = load %sVMInfo*, %sVMInfo** %info7, align 8
  %9 = getelementptr inbounds %sVMInfo, %sVMInfo* %info8, i32 0, i32 3
  %10 = load %sCompileInfo*, %sCompileInfo** %9, align 8
  %11 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %10, i32 0, i32 4
  %12 = load %sParserInfo*, %sParserInfo** %11, align 8
  %13 = call %sCLType* @create_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.5, i32 0, i32 0), %sParserInfo* %12)
  %command_type = alloca %sCLType*
  %14 = bitcast %sCLType** %command_type to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLType* %13, %sCLType** %command_type, align 8
  %size = alloca i32
  %15 = bitcast i32* %size to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 40, i32* %size, align 4
  %size9 = load i32, i32* %size, align 4
  %output_len10 = load i32, i32* %output_len2, align 4
  %addtmp = add nsw i32 %output_len10, 1
  %err_output_len11 = load i32, i32* %err_output_len4, align 4
  %addtmp12 = add nsw i32 %addtmp, %err_output_len11
  %addtmp13 = add nsw i32 %addtmp12, 1
  %addtmp14 = add nsw i32 %size9, %addtmp13
  store i32 %addtmp14, i32* %size, align 4
  %output_len15 = load i32, i32* %output_len2, align 4
  %addtmp16 = add nsw i32 %output_len15, 1
  %err_output_len17 = load i32, i32* %err_output_len4, align 4
  %addtmp18 = add nsw i32 %addtmp16, %err_output_len17
  %addtmp19 = add nsw i32 %addtmp18, 1
  %subttmp = sub nsw i32 %addtmp14, %addtmp19
  %size20 = load i32, i32* %size, align 4
  call void @alignment(i32* %size)
  %size21 = load i32, i32* %size, align 4
  %command_type22 = load %sCLType*, %sCLType** %command_type, align 8
  %info23 = load %sVMInfo*, %sVMInfo** %info7, align 8
  %16 = call i32 @alloc_heap_mem(i32 %size21, %sCLType* %command_type22, i32 -1, %sVMInfo* %info23)
  %obj = alloca i32
  %17 = bitcast i32* %obj to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 %16, i32* %obj, align 4
  %obj24 = load i32, i32* %obj, align 4
  %18 = call %sCLHeapMem* @get_object_pointer(i32 %obj24)
  %19 = bitcast %sCLHeapMem* %18 to %sCLCommand*
  %object_data = alloca %sCLCommand*
  %20 = bitcast %sCLCommand** %object_data to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store %sCLCommand* %19, %sCLCommand** %object_data, align 8
  %object_data25 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %rcode26 = load i32, i32* %rcode5, align 4
  %21 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data25, i32 0, i32 3
  store i32 %rcode26, i32* %21, align 4
  %object_data27 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %output_len28 = load i32, i32* %output_len2, align 4
  %22 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data27, i32 0, i32 4
  store i32 %output_len28, i32* %22, align 4
  %object_data29 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %err_output30 = load i8*, i8** %err_output3, align 8
  %23 = ptrtoint i8* %err_output30 to i32
  %24 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data29, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %object_data31 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %25 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data31, i32 0, i32 8
  %26 = bitcast [32 x i8]* %25 to i8*
  %output32 = load i8*, i8** %output1, align 8
  %output_len33 = load i32, i32* %output_len2, align 4
  %addtmp34 = add nsw i32 %output_len33, 1
  %sext14 = zext i32 %addtmp34 to i64
  %27 = call i8* @memcpy(i8* %26, i8* %output32, i64 %sext14)
  %object_data35 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %28 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data35, i32 0, i32 8
  %29 = bitcast [32 x i8]* %28 to i8*
  %output_len36 = load i32, i32* %output_len2, align 4
  %30 = ptrtoint i8* %29 to i64
  %sext1 = sext i32 %output_len36 to i64
  %multtmp = mul nsw i64 %sext1, 1
  %addtmp37 = add nsw i64 %30, %multtmp
  %31 = inttoptr i64 %addtmp37 to i8*
  %32 = ptrtoint i8* %31 to i64
  %addtmp38 = add nsw i64 %32, 1
  %33 = inttoptr i64 %addtmp38 to i8*
  %err_output39 = load i8*, i8** %err_output3, align 8
  %err_output_len40 = load i32, i32* %err_output_len4, align 4
  %addtmp41 = add nsw i32 %err_output_len40, 1
  %sext1442 = zext i32 %addtmp41 to i64
  %34 = call i8* @memcpy(i8* %33, i8* %err_output39, i64 %sext1442)
  %object_data43 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %first_command44 = load i1, i1* %first_command6, align 1
  %35 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data43, i32 0, i32 6
  store i1 %first_command44, i1* %35, align 1
  %object_data45 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %object_data46 = load %sCLCommand*, %sCLCommand** %object_data, align 8
  %36 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data46, i32 0, i32 8
  %37 = bitcast [32 x i8]* %36 to i8*
  %output_len47 = load i32, i32* %output_len2, align 4
  %38 = ptrtoint i8* %37 to i64
  %sext148 = sext i32 %output_len47 to i64
  %multtmp49 = mul nsw i64 %sext148, 1
  %addtmp50 = add nsw i64 %38, %multtmp49
  %39 = inttoptr i64 %addtmp50 to i8*
  %40 = ptrtoint i8* %39 to i64
  %addtmp51 = add nsw i64 %40, 1
  %41 = inttoptr i64 %addtmp51 to i8*
  %42 = getelementptr inbounds %sCLCommand, %sCLCommand* %object_data45, i32 0, i32 7
  store i8* %41, i8** %42, align 8
  %obj52 = load i32, i32* %obj, align 4
  %43 = bitcast [8192 x i8*]* %lvtable to i8*
  %44 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %43, i64 65536)
  ret i32 %obj52
}

define i32 @create_job_object(i8* %title, %termios* %tinfo, i32 %pgrp, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %title1 = alloca i8*
  store i8* %title, i8** %title1, align 8
  %2 = bitcast i8** %title1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %tinfo2 = alloca %termios*
  store %termios* %tinfo, %termios** %tinfo2, align 8
  %3 = bitcast %termios** %tinfo2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %pgrp3 = alloca i32
  store i32 %pgrp, i32* %pgrp3, align 4
  %4 = bitcast i32* %pgrp3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %info4 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info4, align 8
  %5 = bitcast %sVMInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %info5 = load %sVMInfo*, %sVMInfo** %info4, align 8
  %6 = getelementptr inbounds %sVMInfo, %sVMInfo* %info5, i32 0, i32 3
  %7 = load %sCompileInfo*, %sCompileInfo** %6, align 8
  %8 = getelementptr inbounds %sCompileInfo, %sCompileInfo* %7, i32 0, i32 4
  %9 = load %sParserInfo*, %sParserInfo** %8, align 8
  %10 = call %sCLType* @create_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.6, i32 0, i32 0), %sParserInfo* %9)
  %job_type = alloca %sCLType*
  %11 = bitcast %sCLType** %job_type to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* %10, %sCLType** %job_type, align 8
  %size = alloca i32
  %12 = bitcast i32* %size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 112, i32* %size, align 4
  %size6 = load i32, i32* %size, align 4
  call void @alignment(i32* %size)
  %size7 = load i32, i32* %size, align 4
  %job_type8 = load %sCLType*, %sCLType** %job_type, align 8
  %info9 = load %sVMInfo*, %sVMInfo** %info4, align 8
  %13 = call i32 @alloc_heap_mem(i32 %size7, %sCLType* %job_type8, i32 -1, %sVMInfo* %info9)
  %obj = alloca i32
  %14 = bitcast i32* %obj to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 %13, i32* %obj, align 4
  %obj10 = load i32, i32* %obj, align 4
  %15 = call %sCLHeapMem* @get_object_pointer(i32 %obj10)
  %16 = bitcast %sCLHeapMem* %15 to %sCLJob*
  %object_data = alloca %sCLJob*
  %17 = bitcast %sCLJob** %object_data to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLJob* %16, %sCLJob** %object_data, align 8
  %object_data11 = load %sCLJob*, %sCLJob** %object_data, align 8
  %18 = getelementptr inbounds %sCLJob, %sCLJob* %object_data11, i32 0, i32 3
  %19 = bitcast [32 x i8]* %18 to i8*
  %title12 = load i8*, i8** %title1, align 8
  %20 = call i8* @xstrncpy(i8* %19, i8* %title12, i32 32)
  %object_data13 = load %sCLJob*, %sCLJob** %object_data, align 8
  %tinfo14 = load %termios*, %termios** %tinfo2, align 8
  %derefference_value = load %termios, %termios* %tinfo14, align 8
  %21 = getelementptr inbounds %sCLJob, %sCLJob* %object_data13, i32 0, i32 4
  store %termios %derefference_value, %termios* %21, align 8
  %object_data15 = load %sCLJob*, %sCLJob** %object_data, align 8
  %pgrp16 = load i32, i32* %pgrp3, align 4
  %22 = getelementptr inbounds %sCLJob, %sCLJob* %object_data15, i32 0, i32 5
  store i32 %pgrp16, i32* %22, align 4
  %obj17 = load i32, i32* %obj, align 4
  %23 = bitcast [8192 x i8*]* %lvtable to i8*
  %24 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %23, i64 65536)
  ret i32 %obj17
}

declare void @mark_object(i32, i8*, %sVMInfo*)

define i1 @free_object(i32 %self, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca i32
  store i32 %self, i32* %self1, align 4
  %2 = bitcast i32* %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret i1 true
}

define void @mark_belong_objects(i32 %self, i8* %mark_flg, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca i32
  store i32 %self, i32* %self1, align 4
  %2 = bitcast i32* %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %mark_flg2 = alloca i8*
  store i8* %mark_flg, i8** %mark_flg2, align 8
  %3 = bitcast i8** %mark_flg2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info3, align 8
  %4 = bitcast %sVMInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %self4 = load i32, i32* %self1, align 4
  %5 = call %sCLHeapMem* @get_object_pointer(i32 %self4)
  %6 = bitcast %sCLHeapMem* %5 to %sCLObject*
  %object_data = alloca %sCLObject*
  %7 = bitcast %sCLObject** %object_data to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLObject* %6, %sCLObject** %object_data, align 8
  %object_data5 = load %sCLObject*, %sCLObject** %object_data, align 8
  %8 = getelementptr inbounds %sCLObject, %sCLObject* %object_data5, i32 0, i32 0
  %9 = load %sCLType*, %sCLType** %8, align 8
  %type = alloca %sCLType*
  %10 = bitcast %sCLType** %type to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sCLType* %9, %sCLType** %type, align 8
  %object_data6 = load %sCLObject*, %sCLObject** %object_data, align 8
  %11 = getelementptr inbounds %sCLObject, %sCLObject* %object_data6, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %num_fields = alloca i32
  %13 = bitcast i32* %num_fields to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %12, i32* %num_fields, align 4
  %num_fields7 = load i32, i32* %num_fields, align 4
  %eqtmpX = icmp eq i32 %num_fields7, -1
  br i1 %eqtmpX, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  %i = alloca i32
  %14 = bitcast i32* %i to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %cond_jump_then
  %17 = bitcast [8192 x i8*]* %lvtable to i8*
  %18 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %17, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_else_block
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %20 = bitcast i8* %19 to i32*
  %i8 = load i32, i32* %20, align 4
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %22 = bitcast i8* %21 to %sCLObject**
  %object_data9 = load %sCLObject*, %sCLObject** %22, align 8
  %23 = getelementptr inbounds %sCLObject, %sCLObject* %object_data9, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %letmp = icmp slt i32 %i8, %24
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %26 = bitcast i8* %25 to %sCLObject**
  %object_data10 = load %sCLObject*, %sCLObject** %26, align 8
  %27 = getelementptr inbounds %sCLObject, %sCLObject* %object_data10, i32 0, i32 3
  %28 = load %anon85, %anon85* %27, align 8
  %29 = bitcast %anon85* %27 to [32 x %CLVALUE]*
  %30 = bitcast [32 x %CLVALUE]* %29 to %CLVALUE*
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %32 = bitcast i8* %31 to i32*
  %i11 = load i32, i32* %32, align 4
  %element_address = getelementptr %CLVALUE, %CLVALUE* %30, i32 %i11
  %element = load %CLVALUE, %CLVALUE* %element_address, align 8
  %33 = bitcast %CLVALUE* %element_address to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %36 = bitcast i8* %35 to i8**
  %mark_flg12 = load i8*, i8** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %38 = bitcast i8* %37 to %sVMInfo**
  %info13 = load %sVMInfo*, %sVMInfo** %38, align 8
  call void @mark_object(i32 %34, i8* %mark_flg12, %sVMInfo* %info13)
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %40 = bitcast i8* %39 to i32*
  %i14 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %i14, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end
}

declare void @alignment(i32*)

declare i1 @parse_block(%sCLNodeBlock**, i32, %sCLParam*, %sParserInfo*)

declare i1 @compile_block(%sCLNodeBlock*, %sCompileInfo*)

declare void @__assert_fail(i8*, i8*, i32, i8*)

declare void @__assert_perror_fail(i32, i8*, i32, i8*)

declare void @__assert(i8*, i8*, i32)

define i64 @object_size(%sCLClass* %klass) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %klass1 = alloca %sCLClass*
  store %sCLClass* %klass, %sCLClass** %klass1, align 8
  %2 = bitcast %sCLClass** %klass1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %size = alloca i64
  %3 = bitcast i64* %size to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store i64 16, i64* %size
  %sum = alloca i32
  %4 = bitcast i32* %sum to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 0, i32* %sum, align 4
  %klass2 = load %sCLClass*, %sCLClass** %klass1, align 8
  %it = alloca %sCLClass*
  %5 = bitcast %sCLClass** %it to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sCLClass* %klass2, %sCLClass** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %it3 = load %sCLClass*, %sCLClass** %it, align 8
  %6 = ptrtoint %sCLClass* %it3 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %9 = bitcast i8* %8 to i32*
  %sum4 = load i32, i32* %9, align 4
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %11 = bitcast i8* %10 to %sCLClass**
  %it5 = load %sCLClass*, %sCLClass** %11, align 8
  %12 = getelementptr inbounds %sCLClass, %sCLClass* %it5, i32 0, i32 2
  %13 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %12, align 8
  %14 = call i32 @"map_length_charp_sCLFieldp0_src/object"(%map__charp_sCLFieldp* %13)
  %addtmp = add nsw i32 %sum4, %14
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %16 = bitcast i8* %15 to i32*
  store i32 %addtmp, i32* %16, align 4
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %18 = bitcast i8* %17 to %sCLClass**
  %it6 = load %sCLClass*, %sCLClass** %18, align 8
  %19 = getelementptr inbounds %sCLClass, %sCLClass* %it6, i32 0, i32 2
  %20 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %19, align 8
  %21 = call i32 @"map_length_charp_sCLFieldp1_src/object"(%map__charp_sCLFieldp* %20)
  %subttmp = sub nsw i32 %addtmp, %21
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %23 = bitcast i8* %22 to %sCLClass**
  %it7 = load %sCLClass*, %sCLClass** %23, align 8
  %24 = getelementptr inbounds %sCLClass, %sCLClass* %it7, i32 0, i32 4
  %25 = load %sCLClass*, %sCLClass** %24, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %27 = bitcast i8* %26 to %sCLClass**
  store %sCLClass* %25, %sCLClass** %27, align 8
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %size8 = load i64, i64* %size
  %sum9 = load i32, i32* %sum, align 4
  %multtmp = mul nsw i32 4, %sum9
  %sext14 = zext i32 %multtmp to i64
  %addtmp10 = add nsw i64 %size8, %sext14
  store i64 %addtmp10, i64* %size
  %sum11 = load i32, i32* %sum, align 4
  %multtmp12 = mul nsw i32 4, %sum11
  %sext1413 = zext i32 %multtmp12 to i64
  %subttmp14 = sub nsw i64 %addtmp10, %sext1413
  %size15 = load i64, i64* %size
  %28 = trunc i64 %size15 to i32
  %size2 = alloca i32
  %29 = bitcast i32* %size2 to i8*
  store i8* %29, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %28, i32* %size2, align 4
  %size216 = load i32, i32* %size2, align 4
  call void @alignment(i32* %size2)
  %size217 = load i32, i32* %size2, align 4
  %sext1418 = zext i32 %size217 to i64
  store i64 %sext1418, i64* %size
  %size19 = load i64, i64* %size
  %30 = bitcast [8192 x i8*]* %lvtable to i8*
  %31 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %30, i64 65536)
  ret i64 %size19
}

define i32 @"map_length_charp_sCLFieldp0_src/object"(%map__charp_sCLFieldp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self2 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"map_length_charp_sCLFieldp1_src/object"(%map__charp_sCLFieldp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %self2 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"map_length_charp_sCLFieldp2_src/object"(%map__charp_sCLFieldp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %self2 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define %sCLStackFrame @"vector_item_sCLStackFrame3_src/object"(%vector__sCLStackFrame* %self, i32 %index, %sCLStackFrame %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %default_value3 = alloca %sCLStackFrame
  store %sCLStackFrame %default_value, %sCLStackFrame* %default_value3, align 8
  %4 = bitcast %sCLStackFrame* %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %8 = bitcast i8* %7 to %vector__sCLStackFrame**
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %8, align 8
  %9 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %14 = bitcast i8* %13 to %vector__sCLStackFrame**
  %self7 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %14, align 8
  %15 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self7, i32 0, i32 1
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
  %self11 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %self1, align 8
  %17 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %20 = bitcast i8* %19 to %vector__sCLStackFrame**
  %self15 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %20, align 8
  %21 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self15, i32 0, i32 0
  %22 = load %sCLStackFrame*, %sCLStackFrame** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %22, i32 %index16
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sCLStackFrame %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %sCLStackFrame, %sCLStackFrame* %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %sCLStackFrame %default_value17
}

define i64 @block_object_size() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %size = alloca i64
  %2 = bitcast i64* %size to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  store i64 32, i64* %size
  %size1 = load i64, i64* %size
  %3 = trunc i64 %size1 to i32
  %size2 = alloca i32
  %4 = bitcast i32* %size2 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store i32 %3, i32* %size2, align 4
  %size22 = load i32, i32* %size2, align 4
  call void @alignment(i32* %size2)
  %size23 = load i32, i32* %size2, align 4
  %sext14 = zext i32 %size23 to i64
  store i64 %sext14, i64* %size
  %size4 = load i64, i64* %size
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i64 %size4
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/object.nc", directory: "/home/ab25cq/repo/neo-c/sevenstar")
!2 = !{}
