; ModuleID = 'Module heap'
source_filename = "Module heap"

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
%sHeapPage = type { i8*, i32 }
%sCLHeapManager = type { %sHandle*, i32, i8*, i32, i32 }
%sHandle = type { i8, i8, i32, i32, i16, i16, i8* }
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
%sCLObject = type { %sCLType*, i32, i32, %anon85 }
%anon85 = type { [32 x %CLVALUE] }

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
@gHeapPages = global %sHeapPage* zeroinitializer, align 8
@gSizeHeapPages = global i32 zeroinitializer, align 4
@gNumHeapPages = global i32 zeroinitializer, align 4
@gCLHeap = global %sCLHeapManager zeroinitializer, align 8
@gc_timing = global i32 0, align 4

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

define i32 @alloc_heap_mem(i32 %size, %sCLType* %type, i32 %field_num, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %size1 = alloca i32
  store i32 %size, i32* %size1, align 4
  %2 = bitcast i32* %size1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %type2 = alloca %sCLType*
  store %sCLType* %type, %sCLType** %type2, align 8
  %3 = bitcast %sCLType** %type2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %field_num3 = alloca i32
  store i32 %field_num, i32* %field_num3, align 4
  %4 = bitcast i32* %field_num3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %info4 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info4, align 8
  %5 = bitcast %sVMInfo** %info4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %handle = alloca i32
  %6 = bitcast i32* %handle to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %obj = alloca i32
  %7 = bitcast i32* %obj to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %size5 = load i32, i32* %size1, align 4
  call void @alignment(i32* %size1)
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %8 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  %eqtmpX = icmp eq i32 %8, -1
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %gc_timing = load i32, i32* @gc_timing, align 4
  %remtmp = srem i32 %gc_timing, 1024
  %eqtmpX6 = icmp eq i32 %remtmp, 0
  br i1 %eqtmpX6, label %cond_jump_then7, label %cond_end8

cond_end:                                         ; preds = %cond_end8, %entry
  %gCLHeap11 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %9 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  store i32 %9, i32* %handle, align 4
  %handle12 = load i32, i32* %handle, align 4
  %handle_before = alloca i32
  %10 = bitcast i32* %handle_before to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 %handle12, i32* %handle_before, align 4
  br label %loop_top_block

cond_jump_then7:                                  ; preds = %cond_jump_then
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %12 = bitcast i8* %11 to %sVMInfo**
  %info9 = load %sVMInfo*, %sVMInfo** %12, align 8
  call void @gc(%sVMInfo* %info9)
  br label %cond_end8

cond_end8:                                        ; preds = %cond_jump_then7, %cond_jump_then
  %gc_timing10 = load i32, i32* @gc_timing, align 4
  %addtmp = add nsw i32 %gc_timing10, 1
  store i32 %addtmp, i32* @gc_timing, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %cond_end

loop_top_block:                                   ; preds = %cond_end18, %cond_end
  %handle13 = load i32, i32* %handle, align 4
  %noteqtmp = icmp ne i32 %handle13, -1
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %14 = bitcast i8* %13 to i32*
  %size14 = load i32, i32* %14, align 4
  %gCLHeap15 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %15 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %17 = bitcast i8* %16 to i32*
  %handle16 = load i32, i32* %17, align 4
  %element_address = getelementptr %sHandle, %sHandle* %15, i32 %handle16
  %element = load %sHandle, %sHandle* %element_address, align 8
  %18 = getelementptr inbounds %sHandle, %sHandle* %element_address, i32 0, i32 4
  %19 = load i16, i16* %18, align 2
  %sext13 = zext i16 %19 to i32
  %leeqtmp = icmp sle i32 %size14, %sext13
  br i1 %leeqtmp, label %cond_jump_then17, label %cond_end18

cond_end_block:                                   ; preds = %cond_jump_then17, %loop_top_block
  %handle24 = load i32, i32* %handle, align 4
  %eqtmpX25 = icmp eq i32 %handle24, -1
  br i1 %eqtmpX25, label %cond_jump_then26, label %cond_else_block

cond_jump_then17:                                 ; preds = %cond_then_block
  br label %cond_end_block

cond_end18:                                       ; preds = %after_break, %cond_then_block
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %21 = bitcast i8* %20 to i32*
  %handle19 = load i32, i32* %21, align 4
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %23 = bitcast i8* %22 to i32*
  store i32 %handle19, i32* %23, align 4
  %gCLHeap20 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %24 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %26 = bitcast i8* %25 to i32*
  %handle21 = load i32, i32* %26, align 4
  %element_address22 = getelementptr %sHandle, %sHandle* %24, i32 %handle21
  %element23 = load %sHandle, %sHandle* %element_address22, align 8
  %27 = getelementptr inbounds %sHandle, %sHandle* %element_address22, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end18

cond_jump_then26:                                 ; preds = %cond_end_block
  %gCLHeap28 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %31 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %35 = bitcast i8* %34 to i32*
  %handle29 = load i32, i32* %35, align 4
  %eqtmpX30 = icmp eq i32 %handle29, -1
  br i1 %eqtmpX30, label %cond_jump_then31, label %cond_end32

cond_else_block:                                  ; preds = %cond_end_block
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %37 = bitcast i8* %36 to i32*
  %handle116 = load i32, i32* %37, align 4
  %gCLHeap117 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %38 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  %eqtmpX118 = icmp eq i32 %handle116, %38
  br i1 %eqtmpX118, label %cond_jump_then119, label %cond_else_block120

cond_end27:                                       ; preds = %cond_end121, %cond_end32
  %handle147 = load i32, i32* %handle, align 4
  %addtmp148 = add nsw i32 %handle147, 1234
  store i32 %addtmp148, i32* %obj, align 4
  %gCLHeap149 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %39 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %handle150 = load i32, i32* %handle, align 4
  %element_address151 = getelementptr %sHandle, %sHandle* %39, i32 %handle150
  %element152 = load %sHandle, %sHandle* %element_address151, align 8
  %40 = getelementptr inbounds %sHandle, %sHandle* %element_address151, i32 0, i32 6
  %41 = load i8*, i8** %40, align 8
  %eqtmpX153 = icmp eq i8* %41, null
  br i1 %eqtmpX153, label %cond_jump_then154, label %cond_end155

cond_jump_then31:                                 ; preds = %cond_jump_then26
  %gCLHeap33 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %42 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %addtmp34 = add nsw i32 %42, 1
  %multtmp = mul nsw i32 %addtmp34, 2
  %new_offset_size = alloca i32
  %43 = bitcast i32* %new_offset_size to i8*
  store i8* %43, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %multtmp, i32* %new_offset_size, align 4
  %gCLHeap35 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %gCLHeap36 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %44 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %new_offset_size37 = load i32, i32* %new_offset_size, align 4
  %sext14 = zext i32 %new_offset_size37 to i64
  %multtmp38 = mul nsw i64 24, %sext14
  %45 = bitcast %sHandle* %44 to i8*
  %46 = call i8* @xrealloc(i8* %45, i64 %multtmp38)
  %47 = bitcast i8* %46 to %sHandle*
  store %sHandle* %47, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %gCLHeap39 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %48 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %gCLHeap40 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %49 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %50 = ptrtoint %sHandle* %48 to i64
  %sext1 = sext i32 %49 to i64
  %multtmp41 = mul nsw i64 %sext1, 24
  %addtmp42 = add nsw i64 %50, %multtmp41
  %51 = inttoptr i64 %addtmp42 to %sHandle*
  %new_offset_size43 = load i32, i32* %new_offset_size, align 4
  %gCLHeap44 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %52 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %subttmp45 = sub nsw i32 %new_offset_size43, %52
  %sext1446 = zext i32 %subttmp45 to i64
  %multtmp47 = mul nsw i64 24, %sext1446
  %53 = bitcast %sHandle* %51 to i8*
  %54 = call i8* @memset(i8* %53, i32 0, i64 %multtmp47)
  %gCLHeap48 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %gCLHeap49 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %55 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %new_offset_size50 = load i32, i32* %new_offset_size, align 4
  %sext1451 = zext i32 %new_offset_size50 to i64
  %multtmp52 = mul nsw i64 1, %sext1451
  %56 = call i8* @xrealloc(i8* %55, i64 %multtmp52)
  store i8* %56, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %gCLHeap53 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %57 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %gCLHeap54 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %58 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %59 = ptrtoint i8* %57 to i64
  %sext155 = sext i32 %58 to i64
  %multtmp56 = mul nsw i64 %sext155, 1
  %addtmp57 = add nsw i64 %59, %multtmp56
  %60 = inttoptr i64 %addtmp57 to i8*
  %new_offset_size58 = load i32, i32* %new_offset_size, align 4
  %gCLHeap59 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %61 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %subttmp60 = sub nsw i32 %new_offset_size58, %61
  %sext1461 = zext i32 %subttmp60 to i64
  %multtmp62 = mul nsw i64 1, %sext1461
  %62 = call i8* @memset(i8* %60, i32 0, i64 %multtmp62)
  %i = alloca i32
  %63 = bitcast i32* %i to i8*
  store i8* %63, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %gCLHeap63 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %64 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %66 = bitcast i8* %65 to i32*
  store i32 %64, i32* %66, align 4
  br label %loop_top_block64

cond_end32:                                       ; preds = %cond_end_block68, %cond_jump_then26
  %gCLHeap87 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %67 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %69 = bitcast i8* %68 to i32*
  %handle88 = load i32, i32* %69, align 4
  %element_address89 = getelementptr %sHandle, %sHandle* %67, i32 %handle88
  %element90 = load %sHandle, %sHandle* %element_address89, align 8
  %70 = getelementptr inbounds %sHandle, %sHandle* %element_address89, i32 0, i32 0
  store i8 -1, i8* %70, align 1
  %gCLHeap91 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %71 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %73 = bitcast i8* %72 to i32*
  %handle92 = load i32, i32* %73, align 4
  %element_address93 = getelementptr %sHandle, %sHandle* %71, i32 %handle92
  %element94 = load %sHandle, %sHandle* %element_address93, align 8
  %74 = getelementptr inbounds %sHandle, %sHandle* %element_address93, i32 0, i32 6
  store i8* null, i8** %74, align 8
  %gCLHeap95 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %75 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %77 = bitcast i8* %76 to i32*
  %handle96 = load i32, i32* %77, align 4
  %element_address97 = getelementptr %sHandle, %sHandle* %75, i32 %handle96
  %element98 = load %sHandle, %sHandle* %element_address97, align 8
  %78 = getelementptr inbounds %sHandle, %sHandle* %element_address97, i32 0, i32 1
  store i8 0, i8* %78, align 1
  %gCLHeap99 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %79 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %81 = bitcast i8* %80 to i32*
  %handle100 = load i32, i32* %81, align 4
  %element_address101 = getelementptr %sHandle, %sHandle* %79, i32 %handle100
  %element102 = load %sHandle, %sHandle* %element_address101, align 8
  %82 = getelementptr inbounds %sHandle, %sHandle* %element_address101, i32 0, i32 4
  store i16 0, i16* %82, align 2
  %gCLHeap103 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %83 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %85 = bitcast i8* %84 to i32*
  %handle104 = load i32, i32* %85, align 4
  %element_address105 = getelementptr %sHandle, %sHandle* %83, i32 %handle104
  %element106 = load %sHandle, %sHandle* %element_address105, align 8
  %86 = getelementptr inbounds %sHandle, %sHandle* %element_address105, i32 0, i32 5
  store i16 0, i16* %86, align 2
  %gCLHeap107 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %87 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %89 = bitcast i8* %88 to i32*
  %handle108 = load i32, i32* %89, align 4
  %element_address109 = getelementptr %sHandle, %sHandle* %87, i32 %handle108
  %element110 = load %sHandle, %sHandle* %element_address109, align 8
  %90 = getelementptr inbounds %sHandle, %sHandle* %element_address109, i32 0, i32 3
  store i32 -1, i32* %90, align 4
  %gCLHeap111 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %gCLHeap112 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %91 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %93 = bitcast i8* %92 to i32*
  %handle113 = load i32, i32* %93, align 4
  %element_address114 = getelementptr %sHandle, %sHandle* %91, i32 %handle113
  %element115 = load %sHandle, %sHandle* %element_address114, align 8
  %94 = getelementptr inbounds %sHandle, %sHandle* %element_address114, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  br label %cond_end27

loop_top_block64:                                 ; preds = %cond_then_block67, %cond_jump_then31
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %97 = bitcast i8* %96 to i32*
  %i65 = load i32, i32* %97, align 4
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %99 = bitcast i8* %98 to i32*
  %new_offset_size66 = load i32, i32* %99, align 4
  %letmp = icmp slt i32 %i65, %new_offset_size66
  br i1 %letmp, label %cond_then_block67, label %cond_end_block68

cond_then_block67:                                ; preds = %loop_top_block64
  %gCLHeap69 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %100 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %top_of_free_handle = alloca i32
  %101 = bitcast i32* %top_of_free_handle to i8*
  store i8* %101, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store i32 %100, i32* %top_of_free_handle, align 4
  %gCLHeap70 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %102 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %103 = bitcast i8* %102 to i32*
  %i71 = load i32, i32* %103, align 4
  store i32 %i71, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %gCLHeap72 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %104 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %105 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %106 = bitcast i8* %105 to i32*
  %i73 = load i32, i32* %106, align 4
  %element_address74 = getelementptr %sHandle, %sHandle* %104, i32 %i73
  %element75 = load %sHandle, %sHandle* %element_address74, align 8
  %top_of_free_handle76 = load i32, i32* %top_of_free_handle, align 4
  %107 = getelementptr inbounds %sHandle, %sHandle* %element_address74, i32 0, i32 2
  store i32 %top_of_free_handle76, i32* %107, align 4
  %gCLHeap77 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %108 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %109 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %110 = bitcast i8* %109 to i32*
  %i78 = load i32, i32* %110, align 4
  %element_address79 = getelementptr %sHandle, %sHandle* %108, i32 %i78
  %element80 = load %sHandle, %sHandle* %element_address79, align 8
  %111 = getelementptr inbounds %sHandle, %sHandle* %element_address79, i32 0, i32 3
  store i32 -1, i32* %111, align 4
  %112 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %113 = bitcast i8* %112 to i32*
  %i81 = load i32, i32* %113, align 4
  %addtmp82 = add nsw i32 %i81, 1
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %115 = bitcast i8* %114 to i32*
  store i32 %addtmp82, i32* %115, align 4
  %subttmp83 = sub nsw i32 %addtmp82, 1
  br label %loop_top_block64

cond_end_block68:                                 ; preds = %loop_top_block64
  %gCLHeap84 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %new_offset_size85 = load i32, i32* %new_offset_size, align 4
  store i32 %new_offset_size85, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %gCLHeap86 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %116 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %117 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %118 = bitcast i8* %117 to i32*
  store i32 %116, i32* %118, align 4
  br label %cond_end32

cond_jump_then119:                                ; preds = %cond_else_block
  %gCLHeap122 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %gCLHeap123 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %119 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %120 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %121 = bitcast i8* %120 to i32*
  %handle124 = load i32, i32* %121, align 4
  %element_address125 = getelementptr %sHandle, %sHandle* %119, i32 %handle124
  %element126 = load %sHandle, %sHandle* %element_address125, align 8
  %122 = getelementptr inbounds %sHandle, %sHandle* %element_address125, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  %gCLHeap127 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %124 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %125 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %126 = bitcast i8* %125 to i32*
  %handle128 = load i32, i32* %126, align 4
  %element_address129 = getelementptr %sHandle, %sHandle* %124, i32 %handle128
  %element130 = load %sHandle, %sHandle* %element_address129, align 8
  %127 = getelementptr inbounds %sHandle, %sHandle* %element_address129, i32 0, i32 3
  store i32 -1, i32* %127, align 4
  %gCLHeap131 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %128 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %129 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %130 = bitcast i8* %129 to i32*
  %handle132 = load i32, i32* %130, align 4
  %element_address133 = getelementptr %sHandle, %sHandle* %128, i32 %handle132
  %element134 = load %sHandle, %sHandle* %element_address133, align 8
  %131 = getelementptr inbounds %sHandle, %sHandle* %element_address133, i32 0, i32 0
  store i8 -1, i8* %131, align 1
  br label %cond_end121

cond_else_block120:                               ; preds = %cond_else_block
  %gCLHeap135 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %132 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %133 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %134 = bitcast i8* %133 to i32*
  %handle_before136 = load i32, i32* %134, align 4
  %element_address137 = getelementptr %sHandle, %sHandle* %132, i32 %handle_before136
  %element138 = load %sHandle, %sHandle* %element_address137, align 8
  %gCLHeap139 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %135 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %136 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %137 = bitcast i8* %136 to i32*
  %handle140 = load i32, i32* %137, align 4
  %element_address141 = getelementptr %sHandle, %sHandle* %135, i32 %handle140
  %element142 = load %sHandle, %sHandle* %element_address141, align 8
  %138 = getelementptr inbounds %sHandle, %sHandle* %element_address141, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %sHandle, %sHandle* %element_address137, i32 0, i32 3
  store i32 %139, i32* %140, align 4
  %gCLHeap143 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %141 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %142 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %143 = bitcast i8* %142 to i32*
  %handle144 = load i32, i32* %143, align 4
  %element_address145 = getelementptr %sHandle, %sHandle* %141, i32 %handle144
  %element146 = load %sHandle, %sHandle* %element_address145, align 8
  %144 = getelementptr inbounds %sHandle, %sHandle* %element_address145, i32 0, i32 0
  store i8 -1, i8* %144, align 1
  br label %cond_end121

cond_end121:                                      ; preds = %cond_else_block120, %cond_jump_then119
  br label %cond_end27

cond_jump_then154:                                ; preds = %cond_end27
  %malloced = alloca i1
  %145 = bitcast i1* %malloced to i8*
  store i8* %145, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i1 false, i1* %malloced, align 1
  %gCLHeap156 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %146 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %147 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %148 = bitcast i8* %147 to i32*
  %handle157 = load i32, i32* %148, align 4
  %element_address158 = getelementptr %sHandle, %sHandle* %146, i32 %handle157
  %element159 = load %sHandle, %sHandle* %element_address158, align 8
  %149 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %150 = bitcast i8* %149 to i32*
  %size160 = load i32, i32* %150, align 4
  %malloced161 = load i1, i1* %malloced, align 1
  %151 = call i8* @alloc_mem_from_page(i32 %size160, i1* %malloced)
  %152 = getelementptr inbounds %sHandle, %sHandle* %element_address158, i32 0, i32 6
  store i8* %151, i8** %152, align 8
  %gCLHeap162 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %153 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %154 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %155 = bitcast i8* %154 to i32*
  %handle163 = load i32, i32* %155, align 4
  %element_address164 = getelementptr %sHandle, %sHandle* %153, i32 %handle163
  %element165 = load %sHandle, %sHandle* %element_address164, align 8
  %malloced166 = load i1, i1* %malloced, align 1
  %156 = sext i1 %malloced166 to i8
  %157 = getelementptr inbounds %sHandle, %sHandle* %element_address164, i32 0, i32 1
  store i8 %156, i8* %157, align 1
  %gCLHeap167 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %158 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %159 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %160 = bitcast i8* %159 to i32*
  %handle168 = load i32, i32* %160, align 4
  %element_address169 = getelementptr %sHandle, %sHandle* %158, i32 %handle168
  %element170 = load %sHandle, %sHandle* %element_address169, align 8
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %162 = bitcast i8* %161 to i32*
  %size171 = load i32, i32* %162, align 4
  %163 = trunc i32 %size171 to i16
  %164 = getelementptr inbounds %sHandle, %sHandle* %element_address169, i32 0, i32 4
  store i16 %163, i16* %164, align 2
  %gCLHeap172 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %165 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %166 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %167 = bitcast i8* %166 to i32*
  %handle173 = load i32, i32* %167, align 4
  %element_address174 = getelementptr %sHandle, %sHandle* %165, i32 %handle173
  %element175 = load %sHandle, %sHandle* %element_address174, align 8
  %168 = getelementptr inbounds %sHandle, %sHandle* %element_address174, i32 0, i32 2
  store i32 -1, i32* %168, align 4
  %gCLHeap176 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %169 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %170 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %171 = bitcast i8* %170 to i32*
  %handle177 = load i32, i32* %171, align 4
  %element_address178 = getelementptr %sHandle, %sHandle* %169, i32 %handle177
  %element179 = load %sHandle, %sHandle* %element_address178, align 8
  %172 = getelementptr inbounds %sHandle, %sHandle* %element_address178, i32 0, i32 3
  store i32 -1, i32* %172, align 4
  %gCLHeap180 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %173 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %174 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %175 = bitcast i8* %174 to i32*
  %handle181 = load i32, i32* %175, align 4
  %element_address182 = getelementptr %sHandle, %sHandle* %173, i32 %handle181
  %element183 = load %sHandle, %sHandle* %element_address182, align 8
  %176 = getelementptr inbounds %sHandle, %sHandle* %element_address182, i32 0, i32 0
  store i8 -1, i8* %176, align 1
  br label %cond_end155

cond_end155:                                      ; preds = %cond_jump_then154, %cond_end27
  %obj184 = load i32, i32* %obj, align 4
  %177 = call %sCLHeapMem* @get_object_pointer(i32 %obj184)
  %object_ptr = alloca %sCLHeapMem*
  %178 = bitcast %sCLHeapMem** %object_ptr to i8*
  store i8* %178, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store %sCLHeapMem* %177, %sCLHeapMem** %object_ptr, align 8
  %object_ptr185 = load %sCLHeapMem*, %sCLHeapMem** %object_ptr, align 8
  %size186 = load i32, i32* %size1, align 4
  %179 = getelementptr inbounds %sCLHeapMem, %sCLHeapMem* %object_ptr185, i32 0, i32 1
  store i32 %size186, i32* %179, align 4
  %object_ptr187 = load %sCLHeapMem*, %sCLHeapMem** %object_ptr, align 8
  %type188 = load %sCLType*, %sCLType** %type2, align 8
  %180 = getelementptr inbounds %sCLHeapMem, %sCLHeapMem* %object_ptr187, i32 0, i32 0
  store %sCLType* %type188, %sCLType** %180, align 8
  %object_ptr189 = load %sCLHeapMem*, %sCLHeapMem** %object_ptr, align 8
  %field_num190 = load i32, i32* %field_num3, align 4
  %181 = getelementptr inbounds %sCLHeapMem, %sCLHeapMem* %object_ptr189, i32 0, i32 2
  store i32 %field_num190, i32* %181, align 4
  %obj191 = load i32, i32* %obj, align 4
  %182 = bitcast [8192 x i8*]* %lvtable to i8*
  %183 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %182, i64 65536)
  ret i32 %obj191
}

define void @heap_init(i32 %heap_size, i32 %size_handles) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %heap_size1 = alloca i32
  store i32 %heap_size, i32* %heap_size1, align 4
  %2 = bitcast i32* %heap_size1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %size_handles2 = alloca i32
  store i32 %size_handles, i32* %size_handles2, align 4
  %3 = bitcast i32* %size_handles2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %size_handles3 = load i32, i32* %size_handles2, align 4
  %sext14 = zext i32 %size_handles3 to i64
  %multtmp = mul nsw i64 24, %sext14
  %4 = call i8* @xcalloc(i64 1, i64 %multtmp)
  %5 = bitcast i8* %4 to %sHandle*
  store %sHandle* %5, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %gCLHeap4 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %size_handles5 = load i32, i32* %size_handles2, align 4
  store i32 %size_handles5, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %gCLHeap6 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %gCLHeap7 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %6 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %sext148 = zext i32 %6 to i64
  %multtmp9 = mul nsw i64 1, %sext148
  %7 = call i8* @xcalloc(i64 1, i64 %multtmp9)
  store i8* %7, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %gCLHeap10 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  store i32 -1, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %i = alloca i32
  %8 = bitcast i32* %i to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %12 = bitcast i8* %11 to i32*
  %i11 = load i32, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %14 = bitcast i8* %13 to i32*
  %size_handles12 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i11, %size_handles12
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %gCLHeap13 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %15 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %17 = bitcast i8* %16 to i32*
  %i14 = load i32, i32* %17, align 4
  %element_address = getelementptr %sHandle, %sHandle* %15, i32 %i14
  %element = load %sHandle, %sHandle* %element_address, align 8
  %18 = getelementptr inbounds %sHandle, %sHandle* %element_address, i32 0, i32 3
  store i32 -1, i32* %18, align 4
  %gCLHeap15 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %19 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %top_of_free_handle = alloca i32
  %20 = bitcast i32* %top_of_free_handle to i8*
  store i8* %20, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %19, i32* %top_of_free_handle, align 4
  %gCLHeap16 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %22 = bitcast i8* %21 to i32*
  %i17 = load i32, i32* %22, align 4
  store i32 %i17, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %gCLHeap18 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %23 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %25 = bitcast i8* %24 to i32*
  %i19 = load i32, i32* %25, align 4
  %element_address20 = getelementptr %sHandle, %sHandle* %23, i32 %i19
  %element21 = load %sHandle, %sHandle* %element_address20, align 8
  %top_of_free_handle22 = load i32, i32* %top_of_free_handle, align 4
  %26 = getelementptr inbounds %sHandle, %sHandle* %element_address20, i32 0, i32 2
  store i32 %top_of_free_handle22, i32* %26, align 4
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %28 = bitcast i8* %27 to i32*
  %i23 = load i32, i32* %28, align 4
  %addtmp = add nsw i32 %i23, 1
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %30 = bitcast i8* %29 to i32*
  store i32 %addtmp, i32* %30, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %gCLHeap24 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  store i32 -1, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  store i32 4, i32* @gSizeHeapPages, align 4
  %gSizeHeapPages = load i32, i32* @gSizeHeapPages, align 4
  %sext1425 = zext i32 %gSizeHeapPages to i64
  %multtmp26 = mul nsw i64 16, %sext1425
  %31 = call i8* @xcalloc(i64 1, i64 %multtmp26)
  %32 = bitcast i8* %31 to %sHeapPage*
  store %sHeapPage* %32, %sHeapPage** @gHeapPages, align 8
  store i32 0, i32* @gNumHeapPages, align 4
  %gHeapPages = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %element_address27 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages, i32 0
  %element28 = load %sHeapPage, %sHeapPage* %element_address27, align 8
  %33 = call i8* @xcalloc(i64 1, i64 1024)
  %34 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address27, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %gHeapPages29 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %element_address30 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages29, i32 0
  %element31 = load %sHeapPage, %sHeapPage* %element_address30, align 8
  %35 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address30, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = bitcast [8192 x i8*]* %lvtable to i8*
  %37 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %36, i64 65536)
  ret void
}

define void @heap_final(%sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info1, align 8
  %2 = bitcast %sVMInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %info2 = load %sVMInfo*, %sVMInfo** %info1, align 8
  call void @delete_all_object(%sVMInfo* %info2)
  %i = alloca i32
  %3 = bitcast i32* %i to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %5 = bitcast i8* %4 to i32*
  store i32 0, i32* %5, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %7 = bitcast i8* %6 to i32*
  %i3 = load i32, i32* %7, align 4
  %gNumHeapPages = load i32, i32* @gNumHeapPages, align 4
  %leeqtmp = icmp sle i32 %i3, %gNumHeapPages
  br i1 %leeqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %gHeapPages = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %9 = bitcast i8* %8 to i32*
  %i4 = load i32, i32* %9, align 4
  %element_address = getelementptr %sHeapPage, %sHeapPage* %gHeapPages, i32 %i4
  %element = load %sHeapPage, %sHeapPage* %element_address, align 8
  %10 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  call void @xfree(i8* %11)
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %13 = bitcast i8* %12 to i32*
  %i5 = load i32, i32* %13, align 4
  %addtmp = add nsw i32 %i5, 1
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %15 = bitcast i8* %14 to i32*
  store i32 %addtmp, i32* %15, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %16 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  call void @xfree(i8* %16)
  %gHeapPages6 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %17 = bitcast %sHeapPage* %gHeapPages6 to i8*
  call void @xfree(i8* %17)
  %gCLHeap7 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %18 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %19 = bitcast %sHandle* %18 to i8*
  call void @xfree(i8* %19)
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret void
}

define %sCLHeapMem* @get_object_pointer(i32 %obj) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca i32
  store i32 %obj, i32* %obj1, align 4
  %2 = bitcast i32* %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %result = alloca %sCLHeapMem*
  %3 = bitcast %sCLHeapMem** %result to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %obj2 = load i32, i32* %obj1, align 4
  %subttmp = sub nsw i32 %obj2, 1234
  %index = alloca i32
  %4 = bitcast i32* %index to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 %subttmp, i32* %index, align 4
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %5 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %index3 = load i32, i32* %index, align 4
  %element_address = getelementptr %sHandle, %sHandle* %5, i32 %index3
  %element = load %sHandle, %sHandle* %element_address, align 8
  %6 = getelementptr inbounds %sHandle, %sHandle* %element_address, i32 0, i32 6
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to %sCLHeapMem*
  store %sCLHeapMem* %8, %sCLHeapMem** %result, align 8
  %result4 = load %sCLHeapMem*, %sCLHeapMem** %result, align 8
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret %sCLHeapMem* %result4
}

declare i32 @create_object(%sCLType*, %sVMInfo*)

declare i32 @create_null_object(%sVMInfo*)

declare i32 @create_int_object(i32, %sVMInfo*)

declare i32 @create_string_object(i8*, %sVMInfo*)

declare i8* @get_string_mem(i32)

declare i32 @create_string_data_object(i8*, %sVMInfo*)

declare i32 @create_bool_object(i32, %sVMInfo*)

declare i32 @create_block_object(i8*, i32*, i32, %sVMInfo*)

declare i32 @create_command_object(i8*, i32, i8*, i32, i32, i1, %sVMInfo*)

declare i32 @create_job_object(i8*, %termios*, i32, %sVMInfo*)

define void @mark_object(i32 %obj, i8* %mark_flg, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca i32
  store i32 %obj, i32* %obj1, align 4
  %2 = bitcast i32* %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %mark_flg2 = alloca i8*
  store i8* %mark_flg, i8** %mark_flg2, align 8
  %3 = bitcast i8** %mark_flg2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %info3 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info3, align 8
  %4 = bitcast %sVMInfo** %info3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %obj4 = load i32, i32* %obj1, align 4
  %5 = call i1 @is_valid_object(i32 %obj4)
  br i1 %5, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %7 = bitcast i8* %6 to i8**
  %mark_flg5 = load i8*, i8** %7, align 8
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %9 = bitcast i8* %8 to i32*
  %obj6 = load i32, i32* %9, align 4
  %subttmp = sub nsw i32 %obj6, 1234
  %element_address = getelementptr i8, i8* %mark_flg5, i32 %subttmp
  %element = load i8, i8* %element_address, align 1
  %eqtmpX = icmp eq i8 %element, 0
  br i1 %eqtmpX, label %cond_jump_then7, label %cond_end8

cond_end:                                         ; preds = %cond_end8, %entry
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

cond_jump_then7:                                  ; preds = %cond_jump_then
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %13 = bitcast i8* %12 to i8**
  %mark_flg9 = load i8*, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %15 = bitcast i8* %14 to i32*
  %obj10 = load i32, i32* %15, align 4
  %subttmp11 = sub nsw i32 %obj10, 1234
  %element_address12 = getelementptr i8, i8* %mark_flg9, i32 %subttmp11
  store i8 1, i8* %element_address12, align 1
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %17 = bitcast i8* %16 to i32*
  %obj13 = load i32, i32* %17, align 4
  %18 = call %sCLHeapMem* @get_object_pointer(i32 %obj13)
  %object = alloca %sCLHeapMem*
  %19 = bitcast %sCLHeapMem** %object to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store %sCLHeapMem* %18, %sCLHeapMem** %object, align 8
  %object14 = load %sCLHeapMem*, %sCLHeapMem** %object, align 8
  %noteqtmp = icmp ne %sCLHeapMem* %object14, null
  br i1 %noteqtmp, label %cond_jump_then15, label %cond_end16

cond_end8:                                        ; preds = %cond_end16, %cond_jump_then
  br label %cond_end

cond_jump_then15:                                 ; preds = %cond_jump_then7
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %21 = bitcast i8* %20 to i32*
  %obj17 = load i32, i32* %21, align 4
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %23 = bitcast i8* %22 to i8**
  %mark_flg18 = load i8*, i8** %23, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %25 = bitcast i8* %24 to %sVMInfo**
  %info19 = load %sVMInfo*, %sVMInfo** %25, align 8
  call void @mark_belong_objects(i32 %obj17, i8* %mark_flg18, %sVMInfo* %info19)
  br label %cond_end16

cond_end16:                                       ; preds = %cond_jump_then15, %cond_jump_then7
  br label %cond_end8
}

declare i1 @free_object(i32, %sVMInfo*)

declare void @mark_belong_objects(i32, i8*, %sVMInfo*)

define void @alignment(i32* %size) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %size1 = alloca i32*
  store i32* %size, i32** %size1, align 8
  %2 = bitcast i32** %size1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %size2 = load i32*, i32** %size1, align 8
  %size3 = load i32*, i32** %size1, align 8
  %derefference_value = load i32, i32* %size3, align 8
  %addtmp = add nsw i32 %derefference_value, 3
  %andtmp = and i32 %addtmp, -4
  store i32 %andtmp, i32* %size2, align 4
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void
}

declare i1 @parse_block(%sCLNodeBlock**, i32, %sCLParam*, %sParserInfo*)

declare i1 @compile_block(%sCLNodeBlock*, %sCompileInfo*)

define i8* @alloc_mem_from_page(i32 %size, i1* %malloced) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %size1 = alloca i32
  store i32 %size, i32* %size1, align 4
  %2 = bitcast i32* %size1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %malloced2 = alloca i1*
  store i1* %malloced, i1** %malloced2, align 8
  %3 = bitcast i1** %malloced2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %size3 = load i32, i32* %size1, align 4
  %getmp = icmp sge i32 %size3, 1024
  br i1 %getmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %5 = bitcast i8* %4 to i1**
  %malloced4 = load i1*, i1** %5, align 8
  store i1 true, i1* %malloced4, align 1
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %7 = bitcast i8* %6 to i32*
  %size5 = load i32, i32* %7, align 4
  %sext14 = zext i32 %size5 to i64
  %8 = call i8* @xcalloc(i64 1, i64 %sext14)
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret i8* %8

cond_end:                                         ; preds = %entry
  %gHeapPages = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gNumHeapPages = load i32, i32* @gNumHeapPages, align 4
  %element_address = getelementptr %sHeapPage, %sHeapPage* %gHeapPages, i32 %gNumHeapPages
  %element = load %sHeapPage, %sHeapPage* %element_address, align 8
  %11 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %size6 = load i32, i32* %size1, align 4
  %addtmp = add nsw i32 %12, %size6
  %getmp7 = icmp sge i32 %addtmp, 1024
  br i1 %getmp7, label %cond_jump_then8, label %cond_end9

cond_jump_then8:                                  ; preds = %cond_end
  %gNumHeapPages10 = load i32, i32* @gNumHeapPages, align 4
  %addtmp11 = add nsw i32 %gNumHeapPages10, 1
  store i32 %addtmp11, i32* @gNumHeapPages, align 4
  %subttmp = sub nsw i32 %addtmp11, 1
  %gNumHeapPages12 = load i32, i32* @gNumHeapPages, align 4
  %gSizeHeapPages = load i32, i32* @gSizeHeapPages, align 4
  %eqtmpX = icmp eq i32 %gNumHeapPages12, %gSizeHeapPages
  br i1 %eqtmpX, label %cond_jump_then13, label %cond_end14

cond_end9:                                        ; preds = %cond_end14, %cond_end
  %gHeapPages38 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gNumHeapPages39 = load i32, i32* @gNumHeapPages, align 4
  %element_address40 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages38, i32 %gNumHeapPages39
  %element41 = load %sHeapPage, %sHeapPage* %element_address40, align 8
  %13 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address40, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %gHeapPages42 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gNumHeapPages43 = load i32, i32* @gNumHeapPages, align 4
  %element_address44 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages42, i32 %gNumHeapPages43
  %element45 = load %sHeapPage, %sHeapPage* %element_address44, align 8
  %15 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address44, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = ptrtoint i8* %14 to i64
  %sext146 = sext i32 %16 to i64
  %multtmp47 = mul nsw i64 %sext146, 1
  %addtmp48 = add nsw i64 %17, %multtmp47
  %18 = inttoptr i64 %addtmp48 to i8*
  %result = alloca i8*
  %19 = bitcast i8** %result to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i8* %18, i8** %result, align 8
  %malloced49 = load i1*, i1** %malloced2, align 8
  store i1 false, i1* %malloced49, align 1
  %gHeapPages50 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gNumHeapPages51 = load i32, i32* @gNumHeapPages, align 4
  %element_address52 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages50, i32 %gNumHeapPages51
  %element53 = load %sHeapPage, %sHeapPage* %element_address52, align 8
  %gHeapPages54 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gNumHeapPages55 = load i32, i32* @gNumHeapPages, align 4
  %element_address56 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages54, i32 %gNumHeapPages55
  %element57 = load %sHeapPage, %sHeapPage* %element_address56, align 8
  %20 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address56, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %size58 = load i32, i32* %size1, align 4
  %addtmp59 = add nsw i32 %21, %size58
  %22 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address52, i32 0, i32 1
  store i32 %addtmp59, i32* %22, align 4
  %size60 = load i32, i32* %size1, align 4
  %subttmp61 = sub nsw i32 %addtmp59, %size60
  %result62 = load i8*, i8** %result, align 8
  %23 = bitcast [8192 x i8*]* %lvtable to i8*
  %24 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %23, i64 65536)
  ret i8* %result62

cond_jump_then13:                                 ; preds = %cond_jump_then8
  %gSizeHeapPages15 = load i32, i32* @gSizeHeapPages, align 4
  %multtmp = mul nsw i32 %gSizeHeapPages15, 2
  %new_size = alloca i32
  %25 = bitcast i32* %new_size to i8*
  store i8* %25, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %gHeapPages16 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %new_size17 = load i32, i32* %new_size, align 4
  %sext1418 = zext i32 %new_size17 to i64
  %multtmp19 = mul nsw i64 16, %sext1418
  %26 = bitcast %sHeapPage* %gHeapPages16 to i8*
  %27 = call i8* @xrealloc(i8* %26, i64 %multtmp19)
  %28 = bitcast i8* %27 to %sHeapPage*
  store %sHeapPage* %28, %sHeapPage** @gHeapPages, align 8
  %gHeapPages20 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gSizeHeapPages21 = load i32, i32* @gSizeHeapPages, align 4
  %29 = ptrtoint %sHeapPage* %gHeapPages20 to i64
  %sext1 = sext i32 %gSizeHeapPages21 to i64
  %multtmp22 = mul nsw i64 %sext1, 16
  %addtmp23 = add nsw i64 %29, %multtmp22
  %30 = inttoptr i64 %addtmp23 to %sHeapPage*
  %new_size24 = load i32, i32* %new_size, align 4
  %gSizeHeapPages25 = load i32, i32* @gSizeHeapPages, align 4
  %subttmp26 = sub nsw i32 %new_size24, %gSizeHeapPages25
  %sext1427 = zext i32 %subttmp26 to i64
  %multtmp28 = mul nsw i64 16, %sext1427
  %31 = bitcast %sHeapPage* %30 to i8*
  %32 = call i8* @memset(i8* %31, i32 0, i64 %multtmp28)
  %new_size29 = load i32, i32* %new_size, align 4
  store i32 %new_size29, i32* @gSizeHeapPages, align 4
  br label %cond_end14

cond_end14:                                       ; preds = %cond_jump_then13, %cond_jump_then8
  %gHeapPages30 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gNumHeapPages31 = load i32, i32* @gNumHeapPages, align 4
  %element_address32 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages30, i32 %gNumHeapPages31
  %element33 = load %sHeapPage, %sHeapPage* %element_address32, align 8
  %33 = call i8* @xcalloc(i64 1, i64 1024)
  %34 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address32, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %gHeapPages34 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gNumHeapPages35 = load i32, i32* @gNumHeapPages, align 4
  %element_address36 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages34, i32 %gNumHeapPages35
  %element37 = load %sHeapPage, %sHeapPage* %element_address36, align 8
  %35 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address36, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %cond_end9
}

define void @compaction() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %num_heap_pages = alloca i32
  %2 = bitcast i32* %num_heap_pages to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 0, i32* %num_heap_pages, align 4
  %heap_page_offset = alloca i32
  %3 = bitcast i32* %heap_page_offset to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 0, i32* %heap_page_offset, align 4
  %gSizeHeapPages = load i32, i32* @gSizeHeapPages, align 4
  %multtmp = mul nsw i32 %gSizeHeapPages, 2
  %size_heap_pages = alloca i32
  %4 = bitcast i32* %size_heap_pages to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 %multtmp, i32* %size_heap_pages, align 4
  %size_heap_pages1 = load i32, i32* %size_heap_pages, align 4
  %sext14 = zext i32 %size_heap_pages1 to i64
  %multtmp2 = mul nsw i64 8, %sext14
  %5 = call i8* @xcalloc(i64 1, i64 %multtmp2)
  %6 = bitcast i8* %5 to i8**
  %pages = alloca i8**
  %7 = bitcast i8*** %pages to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i8** %6, i8*** %pages, align 8
  %pages3 = load i8**, i8*** %pages, align 8
  %num_heap_pages4 = load i32, i32* %num_heap_pages, align 4
  %8 = call i8* @xcalloc(i64 1, i64 1024)
  %element_address = getelementptr i8*, i8** %pages3, i32 %num_heap_pages4
  store i8* %8, i8** %element_address, align 8
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  store i32 -1, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  %gCLHeap5 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  store i32 -1, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %i = alloca i32
  %9 = bitcast i32* %i to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %13 = bitcast i8* %12 to i32*
  %i6 = load i32, i32* %13, align 4
  %gCLHeap7 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %14 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %letmp = icmp slt i32 %i6, %14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %gCLHeap8 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %15 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %17 = bitcast i8* %16 to i32*
  %i9 = load i32, i32* %17, align 4
  %element_address10 = getelementptr %sHandle, %sHandle* %15, i32 %i9
  %element = load %sHandle, %sHandle* %element_address10, align 8
  %18 = getelementptr inbounds %sHandle, %sHandle* %element_address10, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 4
  br label %loop_top_block127

cond_jump_then:                                   ; preds = %cond_then_block
  %gCLHeap11 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %23 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %25 = bitcast i8* %24 to i32*
  %i12 = load i32, i32* %25, align 4
  %element_address13 = getelementptr %sHandle, %sHandle* %23, i32 %i12
  %element14 = load %sHandle, %sHandle* %element_address13, align 8
  %26 = getelementptr inbounds %sHandle, %sHandle* %element_address13, i32 0, i32 1
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  %malloced = alloca i1
  %29 = bitcast i1* %malloced to i8*
  store i8* %29, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i1 %28, i1* %malloced, align 1
  %gCLHeap15 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %30 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %32 = bitcast i8* %31 to i32*
  %i16 = load i32, i32* %32, align 4
  %element_address17 = getelementptr %sHandle, %sHandle* %30, i32 %i16
  %element18 = load %sHandle, %sHandle* %element_address17, align 8
  %33 = getelementptr inbounds %sHandle, %sHandle* %element_address17, i32 0, i32 4
  %34 = load i16, i16* %33, align 2
  %sext13 = zext i16 %34 to i32
  %size = alloca i32
  %35 = bitcast i32* %size to i8*
  store i8* %35, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  store i32 %sext13, i32* %size, align 4
  %malloced19 = load i1, i1* %malloced, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %malloced19, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then20, label %cond_end21

cond_else_block:                                  ; preds = %cond_then_block
  %gCLHeap78 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %36 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %38 = bitcast i8* %37 to i32*
  %i79 = load i32, i32* %38, align 4
  %element_address80 = getelementptr %sHandle, %sHandle* %36, i32 %i79
  %element81 = load %sHandle, %sHandle* %element_address80, align 8
  %39 = getelementptr inbounds %sHandle, %sHandle* %element_address80, i32 0, i32 1
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %cond_jump_then82, label %cond_end83

cond_end:                                         ; preds = %cond_end83, %cond_end21
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %43 = bitcast i8* %42 to i32*
  %i124 = load i32, i32* %43, align 4
  %addtmp125 = add nsw i32 %i124, 1
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %45 = bitcast i8* %44 to i32*
  store i32 %addtmp125, i32* %45, align 4
  %subttmp126 = sub nsw i32 %addtmp125, 1
  br label %loop_top_block

cond_jump_then20:                                 ; preds = %cond_jump_then
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %47 = bitcast i8* %46 to i32*
  %heap_page_offset22 = load i32, i32* %47, align 4
  call void @alignment(i32* %47)
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %49 = bitcast i8* %48 to i32*
  %heap_page_offset23 = load i32, i32* %49, align 4
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %51 = bitcast i8* %50 to i32*
  %size24 = load i32, i32* %51, align 4
  %addtmp = add nsw i32 %heap_page_offset23, %size24
  %getmp = icmp sge i32 %addtmp, 1024
  br i1 %getmp, label %cond_jump_then25, label %cond_end26

cond_end21:                                       ; preds = %cond_end26, %cond_jump_then
  br label %cond_end

cond_jump_then25:                                 ; preds = %cond_jump_then20
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %53 = bitcast i8* %52 to i32*
  %num_heap_pages27 = load i32, i32* %53, align 4
  %addtmp28 = add nsw i32 %num_heap_pages27, 1
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %55 = bitcast i8* %54 to i32*
  store i32 %addtmp28, i32* %55, align 4
  %subttmp = sub nsw i32 %addtmp28, 1
  %56 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %57 = bitcast i8* %56 to i8***
  %pages29 = load i8**, i8*** %57, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %59 = bitcast i8* %58 to i32*
  %num_heap_pages30 = load i32, i32* %59, align 4
  %60 = call i8* @xcalloc(i64 1, i64 1024)
  %element_address31 = getelementptr i8*, i8** %pages29, i32 %num_heap_pages30
  store i8* %60, i8** %element_address31, align 8
  %61 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %62 = bitcast i8* %61 to i32*
  store i32 0, i32* %62, align 4
  %63 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %64 = bitcast i8* %63 to i32*
  %num_heap_pages32 = load i32, i32* %64, align 4
  %65 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %66 = bitcast i8* %65 to i32*
  %size_heap_pages33 = load i32, i32* %66, align 4
  %eqtmpX = icmp eq i32 %num_heap_pages32, %size_heap_pages33
  br i1 %eqtmpX, label %cond_jump_then34, label %cond_end35

cond_end26:                                       ; preds = %cond_end35, %cond_jump_then20
  %67 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %68 = bitcast i8* %67 to i8***
  %pages52 = load i8**, i8*** %68, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %70 = bitcast i8* %69 to i32*
  %num_heap_pages53 = load i32, i32* %70, align 4
  %element_address54 = getelementptr i8*, i8** %pages52, i32 %num_heap_pages53
  %element55 = load i8*, i8** %element_address54, align 8
  %71 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %72 = bitcast i8* %71 to i32*
  %heap_page_offset56 = load i32, i32* %72, align 4
  %73 = ptrtoint i8* %element55 to i64
  %sext157 = sext i32 %heap_page_offset56 to i64
  %multtmp58 = mul nsw i64 %sext157, 1
  %addtmp59 = add nsw i64 %73, %multtmp58
  %74 = inttoptr i64 %addtmp59 to i8*
  %new_object_mem = alloca i8*
  %75 = bitcast i8** %new_object_mem to i8*
  store i8* %75, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store i8* %74, i8** %new_object_mem, align 8
  %new_object_mem60 = load i8*, i8** %new_object_mem, align 8
  %gCLHeap61 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %76 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %77 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %78 = bitcast i8* %77 to i32*
  %i62 = load i32, i32* %78, align 4
  %element_address63 = getelementptr %sHandle, %sHandle* %76, i32 %i62
  %element64 = load %sHandle, %sHandle* %element_address63, align 8
  %79 = getelementptr inbounds %sHandle, %sHandle* %element_address63, i32 0, i32 6
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %82 = bitcast i8* %81 to i32*
  %size65 = load i32, i32* %82, align 4
  %sext1466 = zext i32 %size65 to i64
  %83 = call i8* @memcpy(i8* %new_object_mem60, i8* %80, i64 %sext1466)
  %gCLHeap67 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %84 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %85 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %86 = bitcast i8* %85 to i32*
  %i68 = load i32, i32* %86, align 4
  %element_address69 = getelementptr %sHandle, %sHandle* %84, i32 %i68
  %element70 = load %sHandle, %sHandle* %element_address69, align 8
  %new_object_mem71 = load i8*, i8** %new_object_mem, align 8
  %87 = getelementptr inbounds %sHandle, %sHandle* %element_address69, i32 0, i32 6
  store i8* %new_object_mem71, i8** %87, align 8
  %88 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %89 = bitcast i8* %88 to i32*
  %heap_page_offset72 = load i32, i32* %89, align 4
  %90 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %91 = bitcast i8* %90 to i32*
  %size73 = load i32, i32* %91, align 4
  %addtmp74 = add nsw i32 %heap_page_offset72, %size73
  %92 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %93 = bitcast i8* %92 to i32*
  store i32 %addtmp74, i32* %93, align 4
  %94 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %95 = bitcast i8* %94 to i32*
  %size75 = load i32, i32* %95, align 4
  %subttmp76 = sub nsw i32 %addtmp74, %size75
  %96 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %97 = bitcast i8* %96 to i32*
  %heap_page_offset77 = load i32, i32* %97, align 4
  call void @alignment(i32* %97)
  br label %cond_end21

cond_jump_then34:                                 ; preds = %cond_jump_then25
  %98 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %99 = bitcast i8* %98 to i32*
  %size_heap_pages36 = load i32, i32* %99, align 4
  %multtmp37 = mul nsw i32 %size_heap_pages36, 2
  %new_size = alloca i32
  %100 = bitcast i32* %new_size to i8*
  store i8* %100, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i32 %multtmp37, i32* %new_size, align 4
  %101 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %102 = bitcast i8* %101 to i8***
  %pages38 = load i8**, i8*** %102, align 8
  %new_size39 = load i32, i32* %new_size, align 4
  %sext1440 = zext i32 %new_size39 to i64
  %multtmp41 = mul nsw i64 8, %sext1440
  %103 = bitcast i8** %pages38 to i8*
  %104 = call i8* @xrealloc(i8* %103, i64 %multtmp41)
  %105 = bitcast i8* %104 to i8**
  %106 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %107 = bitcast i8* %106 to i8***
  store i8** %105, i8*** %107, align 8
  %108 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %109 = bitcast i8* %108 to i8***
  %pages42 = load i8**, i8*** %109, align 8
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %111 = bitcast i8* %110 to i32*
  %size_heap_pages43 = load i32, i32* %111, align 4
  %112 = ptrtoint i8** %pages42 to i64
  %sext1 = sext i32 %size_heap_pages43 to i64
  %multtmp44 = mul nsw i64 %sext1, 8
  %addtmp45 = add nsw i64 %112, %multtmp44
  %113 = inttoptr i64 %addtmp45 to i8**
  %new_size46 = load i32, i32* %new_size, align 4
  %114 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %115 = bitcast i8* %114 to i32*
  %size_heap_pages47 = load i32, i32* %115, align 4
  %subttmp48 = sub nsw i32 %new_size46, %size_heap_pages47
  %sext1449 = zext i32 %subttmp48 to i64
  %multtmp50 = mul nsw i64 8, %sext1449
  %116 = bitcast i8** %113 to i8*
  %117 = call i8* @memset(i8* %116, i32 0, i64 %multtmp50)
  %new_size51 = load i32, i32* %new_size, align 4
  %118 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %119 = bitcast i8* %118 to i32*
  store i32 %new_size51, i32* %119, align 4
  br label %cond_end35

cond_end35:                                       ; preds = %cond_jump_then34, %cond_jump_then25
  br label %cond_end26

cond_jump_then82:                                 ; preds = %cond_else_block
  %gCLHeap84 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %120 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %121 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %122 = bitcast i8* %121 to i32*
  %i85 = load i32, i32* %122, align 4
  %element_address86 = getelementptr %sHandle, %sHandle* %120, i32 %i85
  %element87 = load %sHandle, %sHandle* %element_address86, align 8
  %123 = getelementptr inbounds %sHandle, %sHandle* %element_address86, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  call void @xfree(i8* %124)
  br label %cond_end83

cond_end83:                                       ; preds = %cond_jump_then82, %cond_else_block
  %gCLHeap88 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %125 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %126 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %127 = bitcast i8* %126 to i32*
  %i89 = load i32, i32* %127, align 4
  %element_address90 = getelementptr %sHandle, %sHandle* %125, i32 %i89
  %element91 = load %sHandle, %sHandle* %element_address90, align 8
  %128 = getelementptr inbounds %sHandle, %sHandle* %element_address90, i32 0, i32 6
  store i8* null, i8** %128, align 8
  %gCLHeap92 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %129 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %130 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %131 = bitcast i8* %130 to i32*
  %i93 = load i32, i32* %131, align 4
  %element_address94 = getelementptr %sHandle, %sHandle* %129, i32 %i93
  %element95 = load %sHandle, %sHandle* %element_address94, align 8
  %132 = getelementptr inbounds %sHandle, %sHandle* %element_address94, i32 0, i32 2
  store i32 -1, i32* %132, align 4
  %gCLHeap96 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %133 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %134 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %135 = bitcast i8* %134 to i32*
  %i97 = load i32, i32* %135, align 4
  %element_address98 = getelementptr %sHandle, %sHandle* %133, i32 %i97
  %element99 = load %sHandle, %sHandle* %element_address98, align 8
  %136 = getelementptr inbounds %sHandle, %sHandle* %element_address98, i32 0, i32 3
  store i32 -1, i32* %136, align 4
  %gCLHeap100 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %137 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %138 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %139 = bitcast i8* %138 to i32*
  %i101 = load i32, i32* %139, align 4
  %element_address102 = getelementptr %sHandle, %sHandle* %137, i32 %i101
  %element103 = load %sHandle, %sHandle* %element_address102, align 8
  %140 = getelementptr inbounds %sHandle, %sHandle* %element_address102, i32 0, i32 4
  store i16 0, i16* %140, align 2
  %gCLHeap104 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %141 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %142 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %143 = bitcast i8* %142 to i32*
  %i105 = load i32, i32* %143, align 4
  %element_address106 = getelementptr %sHandle, %sHandle* %141, i32 %i105
  %element107 = load %sHandle, %sHandle* %element_address106, align 8
  %144 = getelementptr inbounds %sHandle, %sHandle* %element_address106, i32 0, i32 5
  store i16 0, i16* %144, align 2
  %gCLHeap108 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %145 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %146 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %147 = bitcast i8* %146 to i32*
  %i109 = load i32, i32* %147, align 4
  %element_address110 = getelementptr %sHandle, %sHandle* %145, i32 %i109
  %element111 = load %sHandle, %sHandle* %element_address110, align 8
  %148 = getelementptr inbounds %sHandle, %sHandle* %element_address110, i32 0, i32 1
  store i8 0, i8* %148, align 1
  %gCLHeap112 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %149 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %150 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %151 = bitcast i8* %150 to i32*
  %i113 = load i32, i32* %151, align 4
  %element_address114 = getelementptr %sHandle, %sHandle* %149, i32 %i113
  %element115 = load %sHandle, %sHandle* %element_address114, align 8
  %152 = getelementptr inbounds %sHandle, %sHandle* %element_address114, i32 0, i32 0
  store i8 0, i8* %152, align 1
  %gCLHeap116 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %153 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %top_of_free_handle = alloca i32
  %154 = bitcast i32* %top_of_free_handle to i8*
  store i8* %154, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 %153, i32* %top_of_free_handle, align 4
  %gCLHeap117 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %155 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %156 = bitcast i8* %155 to i32*
  %i118 = load i32, i32* %156, align 4
  store i32 %i118, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %gCLHeap119 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %157 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %158 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %159 = bitcast i8* %158 to i32*
  %i120 = load i32, i32* %159, align 4
  %element_address121 = getelementptr %sHandle, %sHandle* %157, i32 %i120
  %element122 = load %sHandle, %sHandle* %element_address121, align 8
  %top_of_free_handle123 = load i32, i32* %top_of_free_handle, align 4
  %160 = getelementptr inbounds %sHandle, %sHandle* %element_address121, i32 0, i32 2
  store i32 %top_of_free_handle123, i32* %160, align 4
  br label %cond_end

loop_top_block127:                                ; preds = %cond_then_block129, %cond_end_block
  %161 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %162 = bitcast i8* %161 to i32*
  %i128 = load i32, i32* %162, align 4
  %gNumHeapPages = load i32, i32* @gNumHeapPages, align 4
  %leeqtmp = icmp sle i32 %i128, %gNumHeapPages
  br i1 %leeqtmp, label %cond_then_block129, label %cond_end_block130

cond_then_block129:                               ; preds = %loop_top_block127
  %gHeapPages = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %163 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %164 = bitcast i8* %163 to i32*
  %i131 = load i32, i32* %164, align 4
  %element_address132 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages, i32 %i131
  %element133 = load %sHeapPage, %sHeapPage* %element_address132, align 8
  %165 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address132, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  call void @xfree(i8* %166)
  %167 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %168 = bitcast i8* %167 to i32*
  %i134 = load i32, i32* %168, align 4
  %addtmp135 = add nsw i32 %i134, 1
  %169 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %170 = bitcast i8* %169 to i32*
  store i32 %addtmp135, i32* %170, align 4
  %subttmp136 = sub nsw i32 %addtmp135, 1
  br label %loop_top_block127

cond_end_block130:                                ; preds = %loop_top_block127
  %num_heap_pages137 = load i32, i32* %num_heap_pages, align 4
  %gSizeHeapPages138 = load i32, i32* @gSizeHeapPages, align 4
  %getmp139 = icmp sge i32 %num_heap_pages137, %gSizeHeapPages138
  br i1 %getmp139, label %cond_jump_then140, label %cond_end141

cond_jump_then140:                                ; preds = %cond_end_block130
  %gSizeHeapPages142 = load i32, i32* @gSizeHeapPages, align 4
  %171 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %172 = bitcast i8* %171 to i32*
  %num_heap_pages143 = load i32, i32* %172, align 4
  %addtmp144 = add nsw i32 %gSizeHeapPages142, %num_heap_pages143
  %multtmp145 = mul nsw i32 %addtmp144, 2
  %new_size146 = alloca i32
  %173 = bitcast i32* %new_size146 to i8*
  store i8* %173, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 %multtmp145, i32* %new_size146, align 4
  %gHeapPages147 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %new_size148 = load i32, i32* %new_size146, align 4
  %sext14149 = zext i32 %new_size148 to i64
  %multtmp150 = mul nsw i64 16, %sext14149
  %174 = bitcast %sHeapPage* %gHeapPages147 to i8*
  %175 = call i8* @xrealloc(i8* %174, i64 %multtmp150)
  %176 = bitcast i8* %175 to %sHeapPage*
  store %sHeapPage* %176, %sHeapPage** @gHeapPages, align 8
  %gHeapPages151 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %gSizeHeapPages152 = load i32, i32* @gSizeHeapPages, align 4
  %177 = ptrtoint %sHeapPage* %gHeapPages151 to i64
  %sext1153 = sext i32 %gSizeHeapPages152 to i64
  %multtmp154 = mul nsw i64 %sext1153, 16
  %addtmp155 = add nsw i64 %177, %multtmp154
  %178 = inttoptr i64 %addtmp155 to %sHeapPage*
  %new_size156 = load i32, i32* %new_size146, align 4
  %gSizeHeapPages157 = load i32, i32* @gSizeHeapPages, align 4
  %subttmp158 = sub nsw i32 %new_size156, %gSizeHeapPages157
  %sext14159 = zext i32 %subttmp158 to i64
  %multtmp160 = mul nsw i64 16, %sext14159
  %179 = bitcast %sHeapPage* %178 to i8*
  %180 = call i8* @memset(i8* %179, i32 0, i64 %multtmp160)
  %new_size161 = load i32, i32* %new_size146, align 4
  store i32 %new_size161, i32* @gSizeHeapPages, align 4
  br label %cond_end141

cond_end141:                                      ; preds = %cond_jump_then140, %cond_end_block130
  %181 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %182 = bitcast i8* %181 to i32*
  store i32 0, i32* %182, align 4
  br label %loop_top_block162

loop_top_block162:                                ; preds = %cond_then_block166, %cond_end141
  %183 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %184 = bitcast i8* %183 to i32*
  %i163 = load i32, i32* %184, align 4
  %185 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %186 = bitcast i8* %185 to i32*
  %num_heap_pages164 = load i32, i32* %186, align 4
  %leeqtmp165 = icmp sle i32 %i163, %num_heap_pages164
  br i1 %leeqtmp165, label %cond_then_block166, label %cond_end_block167

cond_then_block166:                               ; preds = %loop_top_block162
  %gHeapPages168 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %187 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %188 = bitcast i8* %187 to i32*
  %i169 = load i32, i32* %188, align 4
  %element_address170 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages168, i32 %i169
  %element171 = load %sHeapPage, %sHeapPage* %element_address170, align 8
  %189 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %190 = bitcast i8* %189 to i8***
  %pages172 = load i8**, i8*** %190, align 8
  %191 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %192 = bitcast i8* %191 to i32*
  %i173 = load i32, i32* %192, align 4
  %element_address174 = getelementptr i8*, i8** %pages172, i32 %i173
  %element175 = load i8*, i8** %element_address174, align 8
  %193 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address170, i32 0, i32 0
  store i8* %element175, i8** %193, align 8
  %gHeapPages176 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %194 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %195 = bitcast i8* %194 to i32*
  %i177 = load i32, i32* %195, align 4
  %element_address178 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages176, i32 %i177
  %element179 = load %sHeapPage, %sHeapPage* %element_address178, align 8
  %196 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address178, i32 0, i32 1
  store i32 1024, i32* %196, align 4
  %197 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %198 = bitcast i8* %197 to i32*
  %i180 = load i32, i32* %198, align 4
  %addtmp181 = add nsw i32 %i180, 1
  %199 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %200 = bitcast i8* %199 to i32*
  store i32 %addtmp181, i32* %200, align 4
  %subttmp182 = sub nsw i32 %addtmp181, 1
  br label %loop_top_block162

cond_end_block167:                                ; preds = %loop_top_block162
  %gHeapPages183 = load %sHeapPage*, %sHeapPage** @gHeapPages, align 8
  %num_heap_pages184 = load i32, i32* %num_heap_pages, align 4
  %element_address185 = getelementptr %sHeapPage, %sHeapPage* %gHeapPages183, i32 %num_heap_pages184
  %element186 = load %sHeapPage, %sHeapPage* %element_address185, align 8
  %heap_page_offset187 = load i32, i32* %heap_page_offset, align 4
  %201 = getelementptr inbounds %sHeapPage, %sHeapPage* %element_address185, i32 0, i32 1
  store i32 %heap_page_offset187, i32* %201, align 4
  %num_heap_pages188 = load i32, i32* %num_heap_pages, align 4
  store i32 %num_heap_pages188, i32* @gNumHeapPages, align 4
  %pages189 = load i8**, i8*** %pages, align 8
  %202 = bitcast i8** %pages189 to i8*
  call void @xfree(i8* %202)
  %203 = bitcast [8192 x i8*]* %lvtable to i8*
  %204 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %203, i64 65536)
  ret void
}

define void @delete_all_object(%sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info1, align 8
  %2 = bitcast %sVMInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %3 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %gCLHeap2 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %4 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %sext14 = zext i32 %4 to i64
  %multtmp = mul nsw i64 1, %sext14
  %5 = call i8* @memset(i8* %3, i32 0, i64 %multtmp)
  %gCLHeap3 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %6 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %mark_flg = alloca i8*
  %7 = bitcast i8** %mark_flg to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i8* %6, i8** %mark_flg, align 8
  %mark_flg4 = load i8*, i8** %mark_flg, align 8
  %info5 = load %sVMInfo*, %sVMInfo** %info1, align 8
  call void @free_objects(i8* %mark_flg4, %sVMInfo* %info5)
  call void @free_malloced_memory()
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void
}

define i1 @is_valid_object(i32 %obj) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %obj1 = alloca i32
  store i32 %obj, i32* %obj1, align 4
  %2 = bitcast i32* %obj1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %andand_result_var = alloca i1
  %obj2 = load i32, i32* %obj1, align 4
  %getmp = icmp sge i32 %obj2, 1234
  store i1 %getmp, i1* %andand_result_var, align 1
  br i1 %getmp, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %entry
  %obj3 = load i32, i32* %obj1, align 4
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %3 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %addtmp = add nsw i32 1234, %3
  %letmp = icmp slt i32 %obj3, %addtmp
  %andand = and i1 %getmp, %letmp
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %entry
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then4, label %cond_else_block

cond_jump_then4:                                  ; preds = %cond_jump_end
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %5 = bitcast i8* %4 to i32*
  %obj5 = load i32, i32* %5, align 4
  %subttmp = sub nsw i32 %obj5, 1234
  %handle_num = alloca i32
  %6 = bitcast i32* %handle_num to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 %subttmp, i32* %handle_num, align 4
  %gCLHeap6 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %7 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %handle_num7 = load i32, i32* %handle_num, align 4
  %element_address = getelementptr %sHandle, %sHandle* %7, i32 %handle_num7
  %element = load %sHandle, %sHandle* %element_address, align 8
  %8 = getelementptr inbounds %sHandle, %sHandle* %element_address, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret i1 %10

cond_else_block:                                  ; preds = %cond_jump_end
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret i1 false

cond_end:                                         ; No predecessors!
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret i1 false
}

define void @free_handle(i32 %handle_num) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %handle_num1 = alloca i32
  store i32 %handle_num, i32* %handle_num1, align 4
  %2 = bitcast i32* %handle_num1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %3 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %handle_num2 = load i32, i32* %handle_num1, align 4
  %element_address = getelementptr %sHandle, %sHandle* %3, i32 %handle_num2
  %element = load %sHandle, %sHandle* %element_address, align 8
  %4 = getelementptr inbounds %sHandle, %sHandle* %element_address, i32 0, i32 0
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %8 = bitcast i8* %7 to i32*
  %handle_num3 = load i32, i32* %8, align 4
  %addtmp = add nsw i32 %handle_num3, 1234
  %obj = alloca i32
  %9 = bitcast i32* %obj to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 %addtmp, i32* %obj, align 4
  %obj4 = load i32, i32* %obj, align 4
  %10 = call %sCLHeapMem* @get_object_pointer(i32 %obj4)
  %11 = bitcast %sCLHeapMem* %10 to %sCLObject*
  %data = alloca %sCLObject*
  %12 = bitcast %sCLObject** %data to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store %sCLObject* %11, %sCLObject** %data, align 8
  %gCLHeap5 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %13 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %15 = bitcast i8* %14 to i32*
  %handle_num6 = load i32, i32* %15, align 4
  %element_address7 = getelementptr %sHandle, %sHandle* %13, i32 %handle_num6
  %element8 = load %sHandle, %sHandle* %element_address7, align 8
  %16 = getelementptr inbounds %sHandle, %sHandle* %element_address7, i32 0, i32 0
  store i8 0, i8* %16, align 1
  %gCLHeap9 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %17 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %19 = bitcast i8* %18 to i32*
  %handle_num10 = load i32, i32* %19, align 4
  %element_address11 = getelementptr %sHandle, %sHandle* %17, i32 %handle_num10
  %element12 = load %sHandle, %sHandle* %element_address11, align 8
  %20 = getelementptr inbounds %sHandle, %sHandle* %element_address11, i32 0, i32 1
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %cond_jump_then13, label %cond_else_block

cond_end:                                         ; preds = %cond_end14, %entry
  %23 = bitcast [8192 x i8*]* %lvtable to i8*
  %24 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %23, i64 65536)
  ret void

cond_jump_then13:                                 ; preds = %cond_jump_then
  %gCLHeap15 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %25 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %27 = bitcast i8* %26 to i32*
  %handle_num16 = load i32, i32* %27, align 4
  %element_address17 = getelementptr %sHandle, %sHandle* %25, i32 %handle_num16
  %element18 = load %sHandle, %sHandle* %element_address17, align 8
  %28 = getelementptr inbounds %sHandle, %sHandle* %element_address17, i32 0, i32 6
  %29 = load i8*, i8** %28, align 8
  call void @xfree(i8* %29)
  %gCLHeap19 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %30 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %32 = bitcast i8* %31 to i32*
  %handle_num20 = load i32, i32* %32, align 4
  %element_address21 = getelementptr %sHandle, %sHandle* %30, i32 %handle_num20
  %element22 = load %sHandle, %sHandle* %element_address21, align 8
  %33 = getelementptr inbounds %sHandle, %sHandle* %element_address21, i32 0, i32 6
  store i8* null, i8** %33, align 8
  %gCLHeap23 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %34 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %36 = bitcast i8* %35 to i32*
  %handle_num24 = load i32, i32* %36, align 4
  %element_address25 = getelementptr %sHandle, %sHandle* %34, i32 %handle_num24
  %element26 = load %sHandle, %sHandle* %element_address25, align 8
  %37 = getelementptr inbounds %sHandle, %sHandle* %element_address25, i32 0, i32 1
  store i8 0, i8* %37, align 1
  %gCLHeap27 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %38 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %40 = bitcast i8* %39 to i32*
  %handle_num28 = load i32, i32* %40, align 4
  %element_address29 = getelementptr %sHandle, %sHandle* %38, i32 %handle_num28
  %element30 = load %sHandle, %sHandle* %element_address29, align 8
  %41 = getelementptr inbounds %sHandle, %sHandle* %element_address29, i32 0, i32 4
  store i16 0, i16* %41, align 2
  %gCLHeap31 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %42 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %44 = bitcast i8* %43 to i32*
  %handle_num32 = load i32, i32* %44, align 4
  %element_address33 = getelementptr %sHandle, %sHandle* %42, i32 %handle_num32
  %element34 = load %sHandle, %sHandle* %element_address33, align 8
  %45 = getelementptr inbounds %sHandle, %sHandle* %element_address33, i32 0, i32 5
  store i16 0, i16* %45, align 2
  %gCLHeap35 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %46 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %48 = bitcast i8* %47 to i32*
  %handle_num36 = load i32, i32* %48, align 4
  %element_address37 = getelementptr %sHandle, %sHandle* %46, i32 %handle_num36
  %element38 = load %sHandle, %sHandle* %element_address37, align 8
  %49 = getelementptr inbounds %sHandle, %sHandle* %element_address37, i32 0, i32 3
  store i32 -1, i32* %49, align 4
  %gCLHeap39 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %50 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %top_of_free_handle = alloca i32
  %51 = bitcast i32* %top_of_free_handle to i8*
  store i8* %51, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %50, i32* %top_of_free_handle, align 4
  %gCLHeap40 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %52 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %53 = bitcast i8* %52 to i32*
  %handle_num41 = load i32, i32* %53, align 4
  store i32 %handle_num41, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 3), align 4
  %gCLHeap42 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %54 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %56 = bitcast i8* %55 to i32*
  %handle_num43 = load i32, i32* %56, align 4
  %element_address44 = getelementptr %sHandle, %sHandle* %54, i32 %handle_num43
  %element45 = load %sHandle, %sHandle* %element_address44, align 8
  %top_of_free_handle46 = load i32, i32* %top_of_free_handle, align 4
  %57 = getelementptr inbounds %sHandle, %sHandle* %element_address44, i32 0, i32 2
  store i32 %top_of_free_handle46, i32* %57, align 4
  br label %cond_end14

cond_else_block:                                  ; preds = %cond_jump_then
  %gCLHeap47 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %58 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %60 = bitcast i8* %59 to i32*
  %handle_num48 = load i32, i32* %60, align 4
  %element_address49 = getelementptr %sHandle, %sHandle* %58, i32 %handle_num48
  %element50 = load %sHandle, %sHandle* %element_address49, align 8
  %61 = getelementptr inbounds %sHandle, %sHandle* %element_address49, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  %gCLHeap51 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %63 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %65 = bitcast i8* %64 to i32*
  %handle_num52 = load i32, i32* %65, align 4
  %element_address53 = getelementptr %sHandle, %sHandle* %63, i32 %handle_num52
  %element54 = load %sHandle, %sHandle* %element_address53, align 8
  %66 = getelementptr inbounds %sHandle, %sHandle* %element_address53, i32 0, i32 4
  %67 = load i16, i16* %66, align 2
  %sext14 = zext i16 %67 to i64
  %68 = call i8* @memset(i8* %62, i32 0, i64 %sext14)
  %gCLHeap55 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %69 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %71 = bitcast i8* %70 to i32*
  %handle_num56 = load i32, i32* %71, align 4
  %element_address57 = getelementptr %sHandle, %sHandle* %69, i32 %handle_num56
  %element58 = load %sHandle, %sHandle* %element_address57, align 8
  %72 = getelementptr inbounds %sHandle, %sHandle* %element_address57, i32 0, i32 2
  store i32 -1, i32* %72, align 4
  %gCLHeap59 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %73 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  %top_of_free_handle60 = alloca i32
  %74 = bitcast i32* %top_of_free_handle60 to i8*
  store i8* %74, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %73, i32* %top_of_free_handle60, align 4
  %gCLHeap61 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %75 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %76 = bitcast i8* %75 to i32*
  %handle_num62 = load i32, i32* %76, align 4
  store i32 %handle_num62, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 4), align 4
  %gCLHeap63 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %77 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %78 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %79 = bitcast i8* %78 to i32*
  %handle_num64 = load i32, i32* %79, align 4
  %element_address65 = getelementptr %sHandle, %sHandle* %77, i32 %handle_num64
  %element66 = load %sHandle, %sHandle* %element_address65, align 8
  %top_of_free_handle67 = load i32, i32* %top_of_free_handle60, align 4
  %80 = getelementptr inbounds %sHandle, %sHandle* %element_address65, i32 0, i32 3
  store i32 %top_of_free_handle67, i32* %80, align 4
  br label %cond_end14

cond_end14:                                       ; preds = %cond_else_block, %cond_jump_then13
  br label %cond_end
}

define void @mark_all_class_fields(i8* %mark_flg, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %mark_flg1 = alloca i8*
  store i8* %mark_flg, i8** %mark_flg1, align 8
  %2 = bitcast i8** %mark_flg1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %gClasses = load %map__charp_sCLClassp*, %map__charp_sCLClassp** @gClasses, align 8
  call void @"map_each_charp_sCLClassp1_src/heap"(%map__charp_sCLClassp* %gClasses, void (i8*, %sCLClass*, i1*)* @heap_lambda0)
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret void
}

define void @heap_lambda1(i8* %it, %sCLField* %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %it22 = alloca %sCLField*
  store %sCLField* %it2, %sCLField** %it22, align 8
  %3 = bitcast %sCLField** %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %dummy = alloca %CLVALUE
  %dummy_value = load %CLVALUE, %CLVALUE* %dummy, align 8
  %dummy4 = alloca i32
  %dummy_value5 = load i32, i32* %dummy4, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %8 = bitcast i8* %7 to %sVMInfo**
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void
}

define void @heap_lambda0(i8* %it, %sCLClass* %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %it22 = alloca %sCLClass*
  store %sCLClass* %it2, %sCLClass** %it22, align 8
  %3 = bitcast %sCLClass** %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %it24 = load %sCLClass*, %sCLClass** %it22, align 8
  %5 = getelementptr inbounds %sCLClass, %sCLClass* %it24, i32 0, i32 3
  %6 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %5, align 8
  call void @"map_each_charp_sCLFieldp0_src/heap"(%map__charp_sCLFieldp* %6, void (i8*, %sCLField*, i1*)* @heap_lambda2)
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret void
}

define void @heap_lambda2(i8* %it, %sCLField* %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %it22 = alloca %sCLField*
  store %sCLField* %it2, %sCLField** %it22, align 8
  %3 = bitcast %sCLField** %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %it24 = load %sCLField*, %sCLField** %it22, align 8
  %5 = getelementptr inbounds %sCLField, %sCLField* %it24, i32 0, i32 2
  %6 = load %CLVALUE, %CLVALUE* %5, align 8
  %7 = bitcast %CLVALUE* %5 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %10 = bitcast i8* %9 to i8**
  %mark_flg = load i8*, i8** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %12 = bitcast i8* %11 to %sVMInfo**
  %info = load %sVMInfo*, %sVMInfo** %12, align 8
  call void @mark_object(i32 %8, i8* %mark_flg, %sVMInfo* %info)
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret void
}

define void @"map_each_charp_sCLFieldp0_src/heap"(%map__charp_sCLFieldp* %self, void (i8*, %sCLField*, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLFieldp*
  store %map__charp_sCLFieldp* %self, %map__charp_sCLFieldp** %self1, align 8
  %2 = bitcast %map__charp_sCLFieldp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %block_2 = alloca void (i8*, %sCLField*, i1*)*
  store void (i8*, %sCLField*, i1*)* %block_, void (i8*, %sCLField*, i1*)** %block_2, align 8
  %3 = bitcast void (i8*, %sCLField*, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %6 = bitcast i8* %5 to %map__charp_sCLFieldp**
  %self4 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %6, align 8
  %7 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self4, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %10 = bitcast i8* %9 to %map__charp_sCLFieldp**
  %self5 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %10, align 8
  %11 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self5, i32 0, i32 1
  %12 = load i1*, i1** %11, align 8
  %i_6 = load i32, i32* %i_, align 4
  %element_address = getelementptr i1, i1* %12, i32 %i_6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then18, %loop_top_block
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %end_flag_ = alloca i1
  %15 = bitcast i1* %end_flag_ to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i1 false, i1* %end_flag_, align 1
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %17 = bitcast i8* %16 to void (i8*, %sCLField*, i1*)**
  %block_7 = load void (i8*, %sCLField*, i1*)*, void (i8*, %sCLField*, i1*)** %17, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLFieldp**
  %self8 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self8, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %23 = bitcast i8* %22 to i32*
  %i_9 = load i32, i32* %23, align 4
  %element_address10 = getelementptr i8*, i8** %21, i32 %i_9
  %element11 = load i8*, i8** %element_address10, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %25 = bitcast i8* %24 to %map__charp_sCLFieldp**
  %self12 = load %map__charp_sCLFieldp*, %map__charp_sCLFieldp** %25, align 8
  %26 = getelementptr inbounds %map__charp_sCLFieldp, %map__charp_sCLFieldp* %self12, i32 0, i32 2
  %27 = load %sCLField**, %sCLField*** %26, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %29 = bitcast i8* %28 to i32*
  %i_13 = load i32, i32* %29, align 4
  %element_address14 = getelementptr %sCLField*, %sCLField** %27, i32 %i_13
  %element15 = load %sCLField*, %sCLField** %element_address14, align 8
  %end_flag_16 = load i1, i1* %end_flag_, align 1
  call void %block_7(i8* %element11, %sCLField* %element15, i1* %end_flag_)
  %end_flag_17 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_17, true
  br i1 %eqtmpX, label %cond_jump_then18, label %cond_end19

cond_end:                                         ; preds = %cond_end19, %cond_then_block
  %i_20 = load i32, i32* %i_, align 4
  %addtmp = add nsw i32 %i_20, 1
  store i32 %addtmp, i32* %i_, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then18:                                 ; preds = %cond_jump_then
  br label %cond_end_block

cond_end19:                                       ; preds = %after_break, %cond_jump_then
  br label %cond_end

after_break:                                      ; No predecessors!
  br label %cond_end19
}

define void @"map_each_charp_sCLClassp1_src/heap"(%map__charp_sCLClassp* %self, void (i8*, %sCLClass*, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sCLClassp*
  store %map__charp_sCLClassp* %self, %map__charp_sCLClassp** %self1, align 8
  %2 = bitcast %map__charp_sCLClassp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %block_2 = alloca void (i8*, %sCLClass*, i1*)*
  store void (i8*, %sCLClass*, i1*)* %block_, void (i8*, %sCLClass*, i1*)** %block_2, align 8
  %3 = bitcast void (i8*, %sCLClass*, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %6 = bitcast i8* %5 to %map__charp_sCLClassp**
  %self4 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %6, align 8
  %7 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self4, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %10 = bitcast i8* %9 to %map__charp_sCLClassp**
  %self5 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %10, align 8
  %11 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self5, i32 0, i32 1
  %12 = load i1*, i1** %11, align 8
  %i_6 = load i32, i32* %i_, align 4
  %element_address = getelementptr i1, i1* %12, i32 %i_6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then18, %loop_top_block
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %end_flag_ = alloca i1
  %15 = bitcast i1* %end_flag_ to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i1 false, i1* %end_flag_, align 1
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %17 = bitcast i8* %16 to void (i8*, %sCLClass*, i1*)**
  %block_7 = load void (i8*, %sCLClass*, i1*)*, void (i8*, %sCLClass*, i1*)** %17, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %19 = bitcast i8* %18 to %map__charp_sCLClassp**
  %self8 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self8, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %23 = bitcast i8* %22 to i32*
  %i_9 = load i32, i32* %23, align 4
  %element_address10 = getelementptr i8*, i8** %21, i32 %i_9
  %element11 = load i8*, i8** %element_address10, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %25 = bitcast i8* %24 to %map__charp_sCLClassp**
  %self12 = load %map__charp_sCLClassp*, %map__charp_sCLClassp** %25, align 8
  %26 = getelementptr inbounds %map__charp_sCLClassp, %map__charp_sCLClassp* %self12, i32 0, i32 2
  %27 = load %sCLClass**, %sCLClass*** %26, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %29 = bitcast i8* %28 to i32*
  %i_13 = load i32, i32* %29, align 4
  %element_address14 = getelementptr %sCLClass*, %sCLClass** %27, i32 %i_13
  %element15 = load %sCLClass*, %sCLClass** %element_address14, align 8
  %end_flag_16 = load i1, i1* %end_flag_, align 1
  call void %block_7(i8* %element11, %sCLClass* %element15, i1* %end_flag_)
  %end_flag_17 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_17, true
  br i1 %eqtmpX, label %cond_jump_then18, label %cond_end19

cond_end:                                         ; preds = %cond_end19, %cond_then_block
  %i_20 = load i32, i32* %i_, align 4
  %addtmp = add nsw i32 %i_20, 1
  store i32 %addtmp, i32* %i_, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then18:                                 ; preds = %cond_jump_then
  br label %cond_end_block

cond_end19:                                       ; preds = %after_break, %cond_jump_then
  br label %cond_end

after_break:                                      ; No predecessors!
  br label %cond_end19
}

define void @mark(%sVMInfo* %info, i8* %mark_flg, %sVMInfo* %info1) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %2 = bitcast %sVMInfo** %info2 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %mark_flg3 = alloca i8*
  store i8* %mark_flg, i8** %mark_flg3, align 8
  %3 = bitcast i8** %mark_flg3 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %info4 = alloca %sVMInfo*
  store %sVMInfo* %info1, %sVMInfo** %info4, align 8
  %4 = bitcast %sVMInfo** %info4 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %gJobs = load %vector__int*, %vector__int** @gJobs, align 8
  call void @"vector_each_int2_src/heap"(%vector__int* %gJobs, void (i32, i32, i1*)* @heap_lambda3)
  %info5 = load %sVMInfo*, %sVMInfo** %info4, align 8
  %5 = getelementptr inbounds %sVMInfo, %sVMInfo* %info5, i32 0, i32 5
  %6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %5, align 8
  call void @"vector_each_sCLStackFrame3_src/heap"(%vector__sCLStackFrame* %6, void (%sCLStackFrame, i32, i1*)* @heap_lambda4)
  %info6 = load %sVMInfo*, %sVMInfo** %info4, align 8
  %7 = getelementptr inbounds %sVMInfo, %sVMInfo* %info6, i32 0, i32 6
  %8 = load %CLVALUE, %CLVALUE* %7, align 8
  %9 = bitcast %CLVALUE* %7 to i32*
  %10 = load i32, i32* %9, align 4
  %mark_flg7 = load i8*, i8** %mark_flg3, align 8
  %info8 = load %sVMInfo*, %sVMInfo** %info4, align 8
  call void @mark_object(i32 %10, i8* %mark_flg7, %sVMInfo* %info8)
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret void
}

define void @heap_lambda3(i32 %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i32
  store i32 %it, i32* %it1, align 4
  %2 = bitcast i32* %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %it4 = load i32, i32* %it1, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %6 = bitcast i8* %5 to i8**
  %mark_flg = load i8*, i8** %6, align 8
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %8 = bitcast i8* %7 to %sVMInfo**
  %info = load %sVMInfo*, %sVMInfo** %8, align 8
  call void @mark_object(i32 %it4, i8* %mark_flg, %sVMInfo* %info)
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void
}

define void @"vector_each_int2_src/heap"(%vector__int* %self, void (i32, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__int*
  store %vector__int* %self, %vector__int** %self1, align 8
  %2 = bitcast %vector__int** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %block_2 = alloca void (i32, i32, i1*)*
  store void (i32, i32, i1*)* %block_, void (i32, i32, i1*)** %block_2, align 8
  %3 = bitcast void (i32, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %6 = bitcast i8* %5 to %vector__int**
  %self4 = load %vector__int*, %vector__int** %6, align 8
  %7 = getelementptr inbounds %vector__int, %vector__int* %self4, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %9 = bitcast i1* %end_flag_ to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i1 false, i1* %end_flag_, align 1
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %11 = bitcast i8* %10 to void (i32, i32, i1*)**
  %block_5 = load void (i32, i32, i1*)*, void (i32, i32, i1*)** %11, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %13 = bitcast i8* %12 to %vector__int**
  %self6 = load %vector__int*, %vector__int** %13, align 8
  %14 = getelementptr inbounds %vector__int, %vector__int* %self6, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %i_7 = load i32, i32* %i_, align 4
  %element_address = getelementptr i32, i32* %15, i32 %i_7
  %element = load i32, i32* %element_address, align 4
  %i_8 = load i32, i32* %i_, align 4
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  call void %block_5(i32 %element, i32 %i_8, i1* %end_flag_)
  %end_flag_10 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_10, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %i_11 = load i32, i32* %i_, align 4
  %addtmp = add nsw i32 %i_11, 1
  store i32 %addtmp, i32* %i_, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @heap_lambda4(%sCLStackFrame %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca %sCLStackFrame
  store %sCLStackFrame %it, %sCLStackFrame* %it1, align 8
  %2 = bitcast %sCLStackFrame* %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %it4 = load %sCLStackFrame, %sCLStackFrame* %it1, align 8
  %5 = getelementptr inbounds %sCLStackFrame, %sCLStackFrame* %it1, i32 0, i32 1
  %6 = load %CLVALUE*, %CLVALUE** %5, align 8
  %p = alloca %CLVALUE*
  %7 = bitcast %CLVALUE** %p to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store %CLVALUE* %6, %CLVALUE** %p, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %p5 = load %CLVALUE*, %CLVALUE** %p, align 8
  %it6 = load %sCLStackFrame, %sCLStackFrame* %it1, align 8
  %8 = getelementptr inbounds %sCLStackFrame, %sCLStackFrame* %it1, i32 0, i32 2
  %9 = load %CLVALUE**, %CLVALUE*** %8, align 8
  %derefference_value = load %CLVALUE*, %CLVALUE** %9, align 8
  %letmp = icmp slt %CLVALUE* %p5, %derefference_value
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %11 = bitcast i8* %10 to %CLVALUE**
  %p7 = load %CLVALUE*, %CLVALUE** %11, align 8
  %12 = bitcast %CLVALUE* %p7 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %15 = bitcast i8* %14 to i8**
  %mark_flg = load i8*, i8** %15, align 8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %17 = bitcast i8* %16 to %sVMInfo**
  %info = load %sVMInfo*, %sVMInfo** %17, align 8
  call void @mark_object(i32 %13, i8* %mark_flg, %sVMInfo* %info)
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %19 = bitcast i8* %18 to %CLVALUE**
  %p8 = load %CLVALUE*, %CLVALUE** %19, align 8
  %20 = ptrtoint %CLVALUE* %p8 to i64
  %addtmp = add nsw i64 %20, 4
  %21 = inttoptr i64 %addtmp to %CLVALUE*
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %23 = bitcast i8* %22 to %CLVALUE**
  store %CLVALUE* %21, %CLVALUE** %23, align 8
  %24 = ptrtoint %CLVALUE* %21 to i64
  %subtmp = sub nsw i64 %24, 4
  %25 = inttoptr i64 %subtmp to %CLVALUE*
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %26 = bitcast [8192 x i8*]* %lvtable to i8*
  %27 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %26, i64 65536)
  ret void
}

define void @"vector_each_sCLStackFrame3_src/heap"(%vector__sCLStackFrame* %self, void (%sCLStackFrame, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLStackFrame*
  store %vector__sCLStackFrame* %self, %vector__sCLStackFrame** %self1, align 8
  %2 = bitcast %vector__sCLStackFrame** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %block_2 = alloca void (%sCLStackFrame, i32, i1*)*
  store void (%sCLStackFrame, i32, i1*)* %block_, void (%sCLStackFrame, i32, i1*)** %block_2, align 8
  %3 = bitcast void (%sCLStackFrame, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %6 = bitcast i8* %5 to %vector__sCLStackFrame**
  %self4 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %6, align 8
  %7 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self4, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %9 = bitcast i1* %end_flag_ to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i1 false, i1* %end_flag_, align 1
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %11 = bitcast i8* %10 to void (%sCLStackFrame, i32, i1*)**
  %block_5 = load void (%sCLStackFrame, i32, i1*)*, void (%sCLStackFrame, i32, i1*)** %11, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %13 = bitcast i8* %12 to %vector__sCLStackFrame**
  %self6 = load %vector__sCLStackFrame*, %vector__sCLStackFrame** %13, align 8
  %14 = getelementptr inbounds %vector__sCLStackFrame, %vector__sCLStackFrame* %self6, i32 0, i32 0
  %15 = load %sCLStackFrame*, %sCLStackFrame** %14, align 8
  %i_7 = load i32, i32* %i_, align 4
  %element_address = getelementptr %sCLStackFrame, %sCLStackFrame* %15, i32 %i_7
  %element = load %sCLStackFrame, %sCLStackFrame* %element_address, align 8
  %i_8 = load i32, i32* %i_, align 4
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  call void %block_5(%sCLStackFrame %element, i32 %i_8, i1* %end_flag_)
  %end_flag_10 = load i1, i1* %end_flag_, align 1
  %eqtmpX = icmp eq i1 %end_flag_10, true
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_then, %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  br label %cond_end_block

cond_end:                                         ; preds = %after_break, %cond_then_block
  %i_11 = load i32, i32* %i_, align 4
  %addtmp = add nsw i32 %i_11, 1
  store i32 %addtmp, i32* %i_, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

after_break:                                      ; No predecessors!
  br label %cond_end
}

define void @free_objects(i8* %mark_flg, %sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %mark_flg1 = alloca i8*
  store i8* %mark_flg, i8** %mark_flg1, align 8
  %2 = bitcast i8** %mark_flg1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %info2 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info2, align 8
  %3 = bitcast %sVMInfo** %info2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %i = alloca i32
  %4 = bitcast i32* %i to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %mem = alloca i8*
  %5 = bitcast i8** %mem to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %7 = bitcast i8* %6 to i32*
  store i32 0, i32* %7, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %9 = bitcast i8* %8 to i32*
  %i3 = load i32, i32* %9, align 4
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %10 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %letmp = icmp slt i32 %i3, %10
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %12 = bitcast i8* %11 to i8**
  %mark_flg4 = load i8*, i8** %12, align 8
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %14 = bitcast i8* %13 to i32*
  %i5 = load i32, i32* %14, align 4
  %element_address = getelementptr i8, i8* %mark_flg4, i32 %i5
  %element = load i8, i8* %element_address, align 1
  %15 = icmp ne i8 %element, 0
  %LOGICAL_DIANEAL = icmp eq i1 %15, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %19 = bitcast i8* %18 to i32*
  %i6 = load i32, i32* %19, align 4
  call void @free_handle(i32 %i6)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %cond_then_block
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %21 = bitcast i8* %20 to i32*
  %i7 = load i32, i32* %21, align 4
  %addtmp = add nsw i32 %i7, 1
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %23 = bitcast i8* %22 to i32*
  store i32 %addtmp, i32* %23, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define void @free_malloced_memory() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %i = alloca i32
  %2 = bitcast i32* %i to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %3 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %4, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %6 = bitcast i8* %5 to i32*
  %i1 = load i32, i32* %6, align 4
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %7 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %letmp = icmp slt i32 %i1, %7
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %gCLHeap2 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %8 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %10 = bitcast i8* %9 to i32*
  %i3 = load i32, i32* %10, align 4
  %element_address = getelementptr %sHandle, %sHandle* %8, i32 %i3
  %element = load %sHandle, %sHandle* %element_address, align 8
  %11 = getelementptr inbounds %sHandle, %sHandle* %element_address, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %gCLHeap4 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %16 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %18 = bitcast i8* %17 to i32*
  %i5 = load i32, i32* %18, align 4
  %element_address6 = getelementptr %sHandle, %sHandle* %16, i32 %i5
  %element7 = load %sHandle, %sHandle* %element_address6, align 8
  %19 = getelementptr inbounds %sHandle, %sHandle* %element_address6, i32 0, i32 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %cond_jump_then8, label %cond_end9

cond_end:                                         ; preds = %cond_end9, %cond_then_block
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %23 = bitcast i8* %22 to i32*
  %i14 = load i32, i32* %23, align 4
  %addtmp = add nsw i32 %i14, 1
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %addtmp, i32* %25, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then8:                                  ; preds = %cond_jump_then
  %gCLHeap10 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %26 = load %sHandle*, %sHandle** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 0), align 8
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %28 = bitcast i8* %27 to i32*
  %i11 = load i32, i32* %28, align 4
  %element_address12 = getelementptr %sHandle, %sHandle* %26, i32 %i11
  %element13 = load %sHandle, %sHandle* %element_address12, align 8
  %29 = getelementptr inbounds %sHandle, %sHandle* %element_address12, i32 0, i32 6
  %30 = load i8*, i8** %29, align 8
  call void @xfree(i8* %30)
  br label %cond_end9

cond_end9:                                        ; preds = %cond_jump_then8, %cond_jump_then
  br label %cond_end
}

define void @gc(%sVMInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sVMInfo*
  store %sVMInfo* %info, %sVMInfo** %info1, align 8
  %2 = bitcast %sVMInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %info2 = load %sVMInfo*, %sVMInfo** %info1, align 8
  %3 = getelementptr inbounds %sVMInfo, %sVMInfo* %info2, i32 0, i32 4
  %4 = load i1, i1* %3, align 1
  %LOGICAL_DIANEAL = icmp eq i1 %4, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %gCLHeap = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %5 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %gCLHeap3 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %6 = load i32, i32* getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 1), align 4
  %sext14 = zext i32 %6 to i64
  %multtmp = mul nsw i64 1, %sext14
  %7 = call i8* @memset(i8* %5, i32 0, i64 %multtmp)
  %gCLHeap4 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %8 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %10 = bitcast i8* %9 to %sVMInfo**
  %info5 = load %sVMInfo*, %sVMInfo** %10, align 8
  call void @mark_all_class_fields(i8* %8, %sVMInfo* %info5)
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %12 = bitcast i8* %11 to %sVMInfo**
  %info6 = load %sVMInfo*, %sVMInfo** %12, align 8
  %gCLHeap7 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %13 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %15 = bitcast i8* %14 to %sVMInfo**
  %info8 = load %sVMInfo*, %sVMInfo** %15, align 8
  call void @mark(%sVMInfo* %info6, i8* %13, %sVMInfo* %info8)
  %gCLHeap9 = load %sCLHeapManager, %sCLHeapManager* @gCLHeap, align 8
  %16 = load i8*, i8** getelementptr inbounds (%sCLHeapManager, %sCLHeapManager* @gCLHeap, i32 0, i32 2), align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %18 = bitcast i8* %17 to %sVMInfo**
  %info10 = load %sVMInfo*, %sVMInfo** %18, align 8
  call void @free_objects(i8* %16, %sVMInfo* %info10)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret void
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/heap.nc", directory: "/home/ab25cq/repo/neo-c/sevenstar")
!2 = !{}
