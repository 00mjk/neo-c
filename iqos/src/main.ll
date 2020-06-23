; ModuleID = 'Module main'
source_filename = "Module main"

%__sFILE = type { i8*, i32, i32, i32, i32, %__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %__sbuf, i8*, i32, [3 x i8], [1 x i8], %__sbuf, i32, i64 }
%__sbuf = type { i8*, i64 }
%pcre_callout_block = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%pcre16_callout_block = type { i32, i32, i32*, i16*, i32, i32, i32, i32, i32, i8*, i32, i32, i16* }
%pcre32_callout_block = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%_win_st = type { i16, i16, i16, i16, i16, i16, i16, i32, i32, i1, i1, i1, i1, i1, i1, i1, i1, i1, i32, %ldat*, i16, i16, i32, i32, %_win_st*, %pdat, i16 }
%ldat = type {}
%pdat = type { i16, i16, i16, i16, i16, i16 }
%map__charp_sCLClassp = type { i8**, i1*, %sCLClass**, i32, i32 }
%sCLClass = type { i8*, %map__charp_sCLMethodp*, %map__charp_sCLFieldp*, %sCLClass*, %vector__sCLTypep* }
%map__charp_sCLMethodp = type { i8**, i1*, %sCLMethod**, i32, i32 }
%sCLMethod = type { i8*, [32 x %sCLParam], i32, %sCLType*, %buffer*, %sCLNodeBlock*, i32 }
%sCLParam = type { [128 x i8], %sCLType* }
%sCLType = type { i8*, %sCLClass*, i32, [32 x %sCLType*], i1, [32 x %sCLParam], i32, %sCLType*, i32 }
%buffer = type { i8*, i32, i32 }
%sCLNodeBlock = type { %vector__sCLNodep*, %vector__sVarTablep*, i1, i32, [32 x %sCLParam], %sCLType*, i32, %buffer*, i32, i1 }
%vector__sCLNodep = type { %sCLNode**, i32, i32 }
%sCLNode = type { i32, [4096 x i8], i32, %anon143, i8*, i8*, i8*, %buffer*, %sCLType*, %sCLNode*, %sCLNode*, %sCLNode* }
%anon143 = type { %anon145 }
%anon145 = type { %sCLNodeBlock*, [32 x %sCLParam], i32, %sCLType* }
%vector__sVarTablep = type { %sVarTable**, i32, i32 }
%sVarTable = type { %map__charp_sVarp*, i32, i32, i32, %sVarTable* }
%map__charp_sVarp = type { i8**, i1*, %sVar**, i32, i32 }
%sVar = type { i8*, i32, %sCLType*, i32, i1 }
%map__charp_sCLFieldp = type { i8**, i1*, %sCLField**, i32, i32 }
%sCLField = type { i8*, %sCLType*, %CLVALUE, i32 }
%CLVALUE = type { i32 }
%vector__sCLTypep = type { %sCLType**, i32, i32 }
%list__int = type { %list_item__int*, %list_item__int*, i32 }
%list_item__int = type { i32, %list_item__int*, %list_item__int* }
%map__charp_lambdap = type { i8**, i1*, i1 (%CLVALUE**, %sVMInfo*)**, i32, i32 }
%sVMInfo = type { [4096 x i8], i32, %sParserInfo*, %sCompileInfo*, i1, %vector__sCLStackFrame*, %CLVALUE }
%sParserInfo = type { [4096 x i8], i32, i32, i32, i8*, %vector__charp*, %vector__sCLNodep*, %vector__sVarTablep*, %vector__sCLNodeBlockp*, %vector__sCLTypep*, %vector__sVarp*, i32 }
%vector__charp = type { i8**, i32, i32 }
%vector__sCLNodeBlockp = type { %sCLNodeBlock**, i32, i32 }
%vector__sVarp = type { %sVar**, i32, i32 }
%sCompileInfo = type { [4096 x i8], i32, i32, i32, %sParserInfo*, %buffer*, %sCLType*, i1, %sCLNode*, i1 }
%vector__sCLStackFrame = type { %sCLStackFrame*, i32, i32 }
%sCLStackFrame = type { i32, %CLVALUE*, %CLVALUE**, i32, i32 }
%__locale_t = type {}
%__builtin_va_list.0 = type { i8* }
%sigaction = type { i32, %anon36, %anon9, void ()* }
%anon36 = type { void (i32)* }
%anon9 = type { [1 x i64] }
%sigaltstack = type { i8*, i32, i64 }
%siginfo = type { %anon31 }
%anon31 = type { [32 x i32] }
%sigval = type {}
%timespec = type { i64, i64 }
%anon40 = type { [16 x i64] }
%timeval = type { i64, i64 }
%timezone = type { i32, i32 }
%itimerval = type { %timeval, %timeval }
%tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%sigevent = type { %anon10, i32, i32, %anon33 }
%anon10 = type { i8* }
%anon33 = type { [12 x i32] }
%itimerspec = type { %timespec, %timespec }
%anon41 = type { [4 x i8], [4 x i8] }
%mallinfo = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%anon42 = type { i32, i32 }
%anon43 = type { i64, i64 }
%anon44 = type { i64, i64 }
%real_pcre8_or_16 = type {}
%real_pcre32 = type {}
%pcre_extra = type { i64, i8*, i64, i8*, i8*, i64, i8**, i8* }
%pcre16_extra = type { i64, i8*, i64, i8*, i8*, i64, i16**, i8* }
%pcre32_extra = type { i64, i8*, i64, i8*, i8*, i64, i32**, i8* }
%real_pcre_jit_stack = type {}
%real_pcre16_jit_stack = type {}
%real_pcre32_jit_stack = type {}
%regex_struct = type { i8*, %real_pcre8_or_16*, i1, i1, i1, i1, i1, i1, i1, i1 }
%list__charp = type { %list_item__charp*, %list_item__charp*, i32 }
%list_item__charp = type { i8*, %list_item__charp*, %list_item__charp* }
%screen = type opaque
%anon99 = type { i16, i32, i32, i32, i32 }
%DIR = type opaque
%dirent = type { i64, i64, i16, i8, [256 x i8] }
%dirent64 = type { i64, i64, i16, i8, [256 x i8] }
%stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %timespec, %timespec, %timespec, i32, i32 }
%stat64 = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %timespec, %timespec, %timespec, i32, i32 }
%iovec = type { i8*, i64 }
%lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%anon135 = type { i8*, i8*, i8*, i8* }
%termios = type { i32, i32, i32, i32, i8, [19 x i8] }
%sCLHeapMem = type { %sCLType*, i32, i32, i8* }
%map__charp_int = type { i8**, i1*, i32*, i32, i32 }
%iQos = type { %Filer*, i1, %vector__sCLTypep* }
%Filer = type { %iQos*, i8*, %list__charp*, i32, i32, i32 }

@gLVTable = internal global [8192 x i8*] zeroinitializer, align 8
@gNCDebugHeap = external global i32
@stdin = external externally_initialized global %__sFILE*, align 8
@stdout = external externally_initialized global %__sFILE*, align 8
@stderr = external externally_initialized global %__sFILE*, align 8
@sys_siglist = external externally_initialized global [65 x i8*], align 8
@sys_signame = external externally_initialized global [65 x i8*], align 8
@tzname = external externally_initialized global i8**, align 8
@daylight = external externally_initialized global i32, align 4
@timezone = external externally_initialized global i64
@optarg = external externally_initialized global i8*, align 8
@optind = external externally_initialized global i32, align 4
@opterr = external externally_initialized global i32, align 4
@optopt = external externally_initialized global i32, align 4
@environ = external externally_initialized global i8**, align 8
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
@acs_map = external externally_initialized global i32*, align 8
@curscr = external externally_initialized global %_win_st*, align 8
@newscr = external externally_initialized global %_win_st*, align 8
@stdscr = external externally_initialized global %_win_st*, align 8
@ttytype = external externally_initialized global i8*, align 8
@COLORS = external externally_initialized global i32, align 4
@COLOR_PAIRS = external externally_initialized global i32, align 4
@COLS = external externally_initialized global i32, align 4
@ESCDELAY = external externally_initialized global i32, align 4
@LINES = external externally_initialized global i32, align 4
@TABSIZE = external externally_initialized global i32, align 4
@_ctype_ = external externally_initialized global i8*, align 8
@gClasses = external externally_initialized global %map__charp_sCLClassp*, align 8
@gJobs = external externally_initialized global %list__int*, align 8
@gNativeMethods = external externally_initialized global %map__charp_lambdap*, align 8
@global_string = private constant [1 x i8] zeroinitializer, align 1
@global_string.1 = private constant [19 x i8] c"vector%<sCLType*%>\00", align 1
@global_string.2 = private constant [12 x i8] c"src/main.nc\00", align 1
@global_string.3 = private constant [5 x i8] c"main\00", align 1
@global_string.4 = private constant [5 x i8] c"main\00", align 1
@global_string.5 = private constant [10 x i8] c"sCLType*%\00", align 1
@global_string.6 = private constant [50 x i8] c"/data/data/com.termux/files/home//include/neo-c.h\00", align 1
@global_string.7 = private constant [30 x i8] c"initialize_sCLTypep0_src/main\00", align 1
@global_string.8 = private constant [37 x i8] c"vector_initialize_sCLTypep0_src/main\00", align 1
@global_string.9 = private constant [6 x i8] c"iQos%\00", align 1
@global_string.10 = private constant [12 x i8] c"src/main.nc\00", align 1
@global_string.11 = private constant [5 x i8] c"main\00", align 1
@global_string.12 = private constant [5 x i8] c"main\00", align 1
@global_string.13 = private constant [23 x i8] c"app is faield. exited\0A\00", align 1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #0

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #0

declare i32 @android_get_application_target_sdk_version()

declare i32 @__system_property_get(i8*, i8*)

declare i32 @atoi(i8*)

declare i32 @strcasecmp(i8*, i8*)

declare i32 @strcasecmp_l(i8*, i8*, %__locale_t*)

declare i32 @strncasecmp(i8*, i8*, i64)

declare i32 @strncasecmp_l(i8*, i8*, i64, %__locale_t*)

declare i32 @ffs(i32)

declare i8* @memccpy(i8*, i8*, i32, i64)

declare i8* @memchr(i8*, i32, i64)

declare i8* @memrchr(i8*, i32, i64)

declare i32 @memcmp(i8*, i8*, i64)

declare i8* @memcpy(i8*, i8*, i64)

declare i8* @memmove(i8*, i8*, i64)

declare i8* @memset(i8*, i32, i64)

declare i8* @memmem(i8*, i64, i8*, i64)

declare i8* @strchr(i8*, i32)

declare i8* @__strchr_chk(i8*, i32, i64)

declare i8* @strrchr(i8*, i32)

declare i8* @__strrchr_chk(i8*, i32, i64)

declare i64 @strlen(i8*)

declare i64 @__strlen_chk(i8*, i64)

declare i32 @strcmp(i8*, i8*)

declare i8* @stpcpy(i8*, i8*)

declare i8* @strcpy(i8*, i8*)

declare i8* @strcat(i8*, i8*)

declare i8* @strdup(i8*)

declare i8* @strstr(i8*, i8*)

declare i8* @strcasestr(i8*, i8*)

declare i8* @strtok(i8*, i8*)

declare i8* @strtok_r(i8*, i8*, i8**)

declare i8* @strerror(i32)

declare i8* @strerror_l(i32, %__locale_t*)

declare i32 @strerror_r(i32, i8*, i64)

declare i64 @strnlen(i8*, i64)

declare i8* @strncat(i8*, i8*, i64)

declare i8* @strndup(i8*, i64)

declare i32 @strncmp(i8*, i8*, i64)

declare i8* @stpncpy(i8*, i8*, i64)

declare i8* @strncpy(i8*, i8*, i64)

declare i64 @strlcat(i8*, i8*, i64)

declare i64 @strlcpy(i8*, i8*, i64)

declare i64 @strcspn(i8*, i8*)

declare i8* @strpbrk(i8*, i8*)

declare i8* @strsep(i8**, i8*)

declare i64 @strspn(i8*, i8*)

declare i8* @strsignal(i32)

declare i32 @strcoll(i8*, i8*)

declare i64 @strxfrm(i8*, i8*, i64)

declare i32 @strcoll_l(i8*, i8*, %__locale_t*)

declare i64 @strxfrm_l(i8*, i8*, i64, %__locale_t*)

declare void @clearerr(%__sFILE*)

declare i32 @fclose(%__sFILE*)

declare i32 @feof(%__sFILE*)

declare i32 @ferror(%__sFILE*)

declare i32 @fflush(%__sFILE*)

declare i32 @fgetc(%__sFILE*)

declare i8* @fgets(i8*, i32, %__sFILE*)

declare i32 @fprintf(%__sFILE*, i8*, ...)

declare i32 @fputc(i32, %__sFILE*)

declare i32 @fputs(i8*, %__sFILE*)

declare i64 @fread(i8*, i64, i64, %__sFILE*)

declare i32 @fscanf(%__sFILE*, i8*, ...)

declare i64 @fwrite(i8*, i64, i64, %__sFILE*)

declare i32 @getc(%__sFILE*)

declare i32 @getchar()

declare i64 @getdelim(i8**, i64*, i32, %__sFILE*)

declare i64 @getline(i8**, i64*, %__sFILE*)

declare void @perror(i8*)

declare i32 @printf(i8*, ...)

declare i32 @putc(i32, %__sFILE*)

declare i32 @putchar(i32)

declare i32 @puts(i8*)

declare i32 @remove(i8*)

declare void @rewind(%__sFILE*)

declare i32 @scanf(i8*, ...)

declare void @setbuf(%__sFILE*, i8*)

declare i32 @setvbuf(%__sFILE*, i8*, i32, i64)

declare i32 @sscanf(i8*, i8*, ...)

declare i32 @ungetc(i32, %__sFILE*)

declare i32 @vfprintf(%__sFILE*, i8*, %__builtin_va_list.0)

declare i32 @vprintf(i8*, %__builtin_va_list.0)

declare i32 @dprintf(i32, i8*, ...)

declare i32 @vdprintf(i32, i8*, %__builtin_va_list.0)

declare i32 @sprintf(i8*, i8*, ...)

declare i32 @vsprintf(i8*, i8*, %__builtin_va_list.0)

declare i8* @tmpnam(i8*)

declare i8* @tempnam(i8*, i8*)

declare i32 @rename(i8*, i8*)

declare i32 @renameat(i32, i8*, i32, i8*)

declare i32 @fseek(%__sFILE*, i64, i32)

declare i64 @ftell(%__sFILE*)

declare i32 @fgetpos(%__sFILE*, i64*)

declare i32 @fsetpos(%__sFILE*, i64*)

declare i32 @fseeko(%__sFILE*, i64, i32)

declare i64 @ftello(%__sFILE*)

declare %__sFILE* @funopen(i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*)*)

declare i32 @fgetpos64(%__sFILE*, i64*)

declare i32 @fsetpos64(%__sFILE*, i64*)

declare i32 @fseeko64(%__sFILE*, i64, i32)

declare i64 @ftello64(%__sFILE*)

declare %__sFILE* @funopen64(i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*)*)

declare %__sFILE* @fopen(i8*, i8*)

declare %__sFILE* @fopen64(i8*, i8*)

declare %__sFILE* @freopen(i8*, i8*, %__sFILE*)

declare %__sFILE* @freopen64(i8*, i8*, %__sFILE*)

declare %__sFILE* @tmpfile64()

declare i32 @snprintf(i8*, i64, i8*, ...)

declare i32 @vfscanf(%__sFILE*, i8*, %__builtin_va_list.0)

declare i32 @vscanf(i8*, %__builtin_va_list.0)

declare i32 @vsnprintf(i8*, i64, i8*, %__builtin_va_list.0)

declare i32 @vsscanf(i8*, i8*, %__builtin_va_list.0)

declare %__sFILE* @fdopen(i32, i8*)

declare i32 @fileno(%__sFILE*)

declare i32 @pclose(%__sFILE*)

declare %__sFILE* @popen(i8*, i8*)

declare void @flockfile(%__sFILE*)

declare i32 @ftrylockfile(%__sFILE*)

declare void @funlockfile(%__sFILE*)

declare i32 @getc_unlocked(%__sFILE*)

declare i32 @getchar_unlocked()

declare i32 @putc_unlocked(i32, %__sFILE*)

declare i32 @putchar_unlocked(i32)

declare %__sFILE* @fmemopen(i8*, i64, i8*)

declare %__sFILE* @open_memstream(i8**, i64*)

declare i32 @asprintf(i8**, i8*, ...)

declare i8* @fgetln(%__sFILE*, i64*)

declare i32 @fpurge(%__sFILE*)

declare void @setbuffer(%__sFILE*, i8*, i32)

declare i32 @setlinebuf(%__sFILE*)

declare i32 @vasprintf(i8**, i8*, %__builtin_va_list.0)

declare void @clearerr_unlocked(%__sFILE*)

declare i32 @feof_unlocked(%__sFILE*)

declare i32 @ferror_unlocked(%__sFILE*)

declare i32 @fileno_unlocked(%__sFILE*)

declare i32 @open(i8*, i32, ...)

declare i32 @getpid()

declare i32 @unlink(i8*)

declare void @free(i8*)

declare i32 @arc4random()

declare i32 @__libc_current_sigrtmin()

declare i32 @__libc_current_sigrtmax()

declare i32 @sigaction(i32, %sigaction*, %sigaction*)

declare i32 @siginterrupt(i32, i32)

declare void (i32)* @signal(i32, void (i32)*)

declare i32 @sigaddset(%anon9*, i32)

declare i32 @sigdelset(%anon9*, i32)

declare i32 @sigemptyset(%anon9*)

declare i32 @sigfillset(%anon9*)

declare i32 @sigismember(%anon9*, i32)

declare i32 @sigpending(%anon9*)

declare i32 @sigprocmask(i32, %anon9*, %anon9*)

declare i32 @sigsuspend(%anon9*)

declare i32 @sigwait(%anon9*, i32*)

declare i32 @raise(i32)

declare i32 @kill(i32, i32)

declare i32 @killpg(i32, i32)

declare i32 @tgkill(i32, i32, i32)

declare i32 @sigaltstack(%sigaltstack*, %sigaltstack*)

declare void @psiginfo(%siginfo*, i8*)

declare void @psignal(i32, i8*)

declare i32 @pthread_kill(i64, i32)

declare i32 @pthread_sigmask(i32, %anon9*, %anon9*)

declare i32 @sigqueue(i32, i32, %sigval)

declare i32 @sigtimedwait(%anon9*, %siginfo*, %timespec*)

declare i32 @sigwaitinfo(%anon9*, %siginfo*)

declare void @__FD_CLR_chk(i32, %anon40*, i64)

declare void @__FD_SET_chk(i32, %anon40*, i64)

declare i32 @__FD_ISSET_chk(i32, %anon40*, i64)

declare i32 @select(i32, %anon40*, %anon40*, %anon40*, %timeval*)

declare i32 @pselect(i32, %anon40*, %anon40*, %anon40*, %timespec*, %anon9*)

declare i32 @gettimeofday(%timeval*, %timezone*)

declare i32 @settimeofday(%timeval*, %timezone*)

declare i32 @getitimer(i32, %itimerval*)

declare i32 @setitimer(i32, %itimerval*, %itimerval*)

declare i32 @utimes(i8*, %timeval*)

declare i64 @time(i64*)

declare i32 @nanosleep(%timespec*, %timespec*)

declare i8* @asctime(%tm*)

declare i8* @asctime_r(%tm*, i8*)

declare double @difftime(i64, i64)

declare i64 @mktime(%tm*)

declare %tm* @localtime(i64*)

declare %tm* @localtime_r(i64*, %tm*)

declare %tm* @gmtime(i64*)

declare %tm* @gmtime_r(i64*, %tm*)

declare i8* @strptime(i8*, i8*, %tm*)

declare i64 @strftime(i8*, i64, i8*, %tm*)

declare i64 @strftime_l(i8*, i64, i8*, %tm*, %__locale_t*)

declare i8* @ctime(i64*)

declare i8* @ctime_r(i64*, i8*)

declare void @tzset()

declare i64 @clock()

declare i32 @clock_getcpuclockid(i32, i32*)

declare i32 @clock_getres(i32, %timespec*)

declare i32 @clock_gettime(i32, %timespec*)

declare i32 @clock_nanosleep(i32, i32, %timespec*, %timespec*)

declare i32 @clock_settime(i32, %timespec*)

declare i32 @timer_create(i32, %sigevent*, i8**)

declare i32 @timer_delete(i8*)

declare i32 @timer_settime(i8*, i32, %itimerspec*, %itimerspec*)

declare i32 @timer_gettime(i8*, %itimerspec*)

declare i32 @timer_getoverrun(i8*)

declare i64 @timelocal(%tm*)

declare i64 @timegm(%tm*)

declare i32 @iswalnum(i32)

declare i32 @iswalpha(i32)

declare i32 @iswblank(i32)

declare i32 @iswcntrl(i32)

declare i32 @iswdigit(i32)

declare i32 @iswgraph(i32)

declare i32 @iswlower(i32)

declare i32 @iswprint(i32)

declare i32 @iswpunct(i32)

declare i32 @iswspace(i32)

declare i32 @iswupper(i32)

declare i32 @iswxdigit(i32)

declare i32 @towlower(i32)

declare i32 @towupper(i32)

declare i64 @wctype(i8*)

declare i32 @iswctype(i32, i64)

declare i32 @towctrans(i32, i8*)

declare i8* @wctrans(i8*)

declare i32 @btowc(i32)

declare i32 @fwprintf(%__sFILE*, i32*, ...)

declare i32 @fwscanf(%__sFILE*, i32*, ...)

declare i32 @fgetwc(%__sFILE*)

declare i32* @fgetws(i32*, i32, %__sFILE*)

declare i32 @fputwc(i32, %__sFILE*)

declare i32 @fputws(i32*, %__sFILE*)

declare i32 @fwide(%__sFILE*, i32)

declare i32 @getwc(%__sFILE*)

declare i32 @getwchar()

declare i32 @mbsinit(%anon41*)

declare i64 @mbrlen(i8*, i64, %anon41*)

declare i64 @mbrtowc(i32*, i8*, i64, %anon41*)

declare i64 @mbsrtowcs(i32*, i8**, i64, %anon41*)

declare i64 @mbsnrtowcs(i32*, i8**, i64, i64, %anon41*)

declare i32 @putwc(i32, %__sFILE*)

declare i32 @putwchar(i32)

declare i32 @swprintf(i32*, i64, i32*, ...)

declare i32 @swscanf(i32*, i32*, ...)

declare i32 @ungetwc(i32, %__sFILE*)

declare i32 @vfwprintf(%__sFILE*, i32*, %__builtin_va_list.0)

declare i32 @vfwscanf(%__sFILE*, i32*, %__builtin_va_list.0)

declare i32 @vswprintf(i32*, i64, i32*, %__builtin_va_list.0)

declare i32 @vswscanf(i32*, i32*, %__builtin_va_list.0)

declare i32 @vwprintf(i32*, %__builtin_va_list.0)

declare i32 @vwscanf(i32*, %__builtin_va_list.0)

declare i32* @wcpcpy(i32*, i32*)

declare i32* @wcpncpy(i32*, i32*, i64)

declare i64 @wcrtomb(i8*, i32, %anon41*)

declare i32 @wcscasecmp(i32*, i32*)

declare i32 @wcscasecmp_l(i32*, i32*, %__locale_t*)

declare i32* @wcscat(i32*, i32*)

declare i32* @wcschr(i32*, i32)

declare i32 @wcscmp(i32*, i32*)

declare i32 @wcscoll(i32*, i32*)

declare i32* @wcscpy(i32*, i32*)

declare i64 @wcscspn(i32*, i32*)

declare i64 @wcsftime(i32*, i64, i32*, %tm*)

declare i64 @wcslen(i32*)

declare i32 @wcsncasecmp(i32*, i32*, i64)

declare i32 @wcsncasecmp_l(i32*, i32*, i64, %__locale_t*)

declare i32* @wcsncat(i32*, i32*, i64)

declare i32 @wcsncmp(i32*, i32*, i64)

declare i32* @wcsncpy(i32*, i32*, i64)

declare i64 @wcsnrtombs(i8*, i32**, i64, i64, %anon41*)

declare i32* @wcspbrk(i32*, i32*)

declare i32* @wcsrchr(i32*, i32)

declare i64 @wcsrtombs(i8*, i32**, i64, %anon41*)

declare i64 @wcsspn(i32*, i32*)

declare i32* @wcsstr(i32*, i32*)

declare double @wcstod(i32*, i32**)

declare float @wcstof(i32*, i32**)

declare i32* @wcstok(i32*, i32*, i32**)

declare i64 @wcstol(i32*, i32**, i32)

declare i64 @wcstoll(i32*, i32**, i32)

declare fp128 @wcstold(i32*, i32**)

declare i64 @wcstoul(i32*, i32**, i32)

declare i64 @wcstoull(i32*, i32**, i32)

declare i32 @wcswidth(i32*, i64)

declare i64 @wcsxfrm(i32*, i32*, i64)

declare i32 @wctob(i32)

declare i32 @wcwidth(i32)

declare i32* @wmemchr(i32*, i32, i64)

declare i32 @wmemcmp(i32*, i32*, i64)

declare i32* @wmemcpy(i32*, i32*, i64)

declare i32* @wmemmove(i32*, i32*, i64)

declare i32* @wmemset(i32*, i32, i64)

declare i32 @wprintf(i32*, ...)

declare i32 @wscanf(i32*, ...)

declare i64 @wcstoll_l(i32*, i32**, i32, %__locale_t*)

declare i64 @wcstoull_l(i32*, i32**, i32, %__locale_t*)

declare fp128 @wcstold_l(i32*, i32**, %__locale_t*)

declare i32 @wcscoll_l(i32*, i32*, %__locale_t*)

declare i64 @wcsxfrm_l(i32*, i32*, i64, %__locale_t*)

declare i64 @wcslcat(i32*, i32*, i64)

declare i64 @wcslcpy(i32*, i32*, i64)

declare %__sFILE* @open_wmemstream(i32**, i64*)

declare i32* @wcsdup(i32*)

declare i64 @wcsnlen(i32*, i64)

declare i32 @fcntl(i32, i32, ...)

declare i32 @getopt(i32, i8**, i8*)

declare i32 @ioctl(i32, i32, ...)

declare i32 @lockf(i32, i32, i64)

declare i32 @lockf64(i32, i32, i64)

declare i64 @sysconf(i32)

declare void @_exit(i32)

declare i32 @fork()

declare i32 @vfork()

declare i32 @gettid()

declare i32 @getpgid(i32)

declare i32 @setpgid(i32, i32)

declare i32 @getppid()

declare i32 @getpgrp()

declare i32 @setpgrp()

declare i32 @getsid(i32)

declare i32 @setsid()

declare i32 @execv(i8*, i8**)

declare i32 @execvp(i8*, i8**)

declare i32 @execvpe(i8*, i8**, i8**)

declare i32 @execve(i8*, i8**, i8**)

declare i32 @execl(i8*, i8*, ...)

declare i32 @execlp(i8*, i8*, ...)

declare i32 @execle(i8*, i8*, ...)

declare i32 @nice(i32)

declare i32 @setegid(i32)

declare i32 @seteuid(i32)

declare i32 @setgid(i32)

declare i32 @setregid(i32, i32)

declare i32 @setresgid(i32, i32, i32)

declare i32 @setresuid(i32, i32, i32)

declare i32 @setreuid(i32, i32)

declare i32 @setuid(i32)

declare i32 @getuid()

declare i32 @geteuid()

declare i32 @getgid()

declare i32 @getegid()

declare i32 @getgroups(i32, i32*)

declare i32 @setgroups(i64, i32*)

declare i32 @getresuid(i32*, i32*, i32*)

declare i32 @getresgid(i32*, i32*, i32*)

declare i8* @getlogin()

declare i64 @fpathconf(i32, i32)

declare i64 @pathconf(i8*, i32)

declare i32 @access(i8*, i32)

declare i32 @faccessat(i32, i8*, i32, i32)

declare i32 @link(i8*, i8*)

declare i32 @linkat(i32, i8*, i32, i8*, i32)

declare i32 @unlinkat(i32, i8*, i32)

declare i32 @chdir(i8*)

declare i32 @fchdir(i32)

declare i32 @rmdir(i8*)

declare i32 @pipe(i32*)

declare i32 @chroot(i8*)

declare i32 @symlink(i8*, i8*)

declare i32 @symlinkat(i8*, i32, i8*)

declare i64 @readlink(i8*, i8*, i64)

declare i64 @readlinkat(i32, i8*, i8*, i64)

declare i32 @chown(i8*, i32, i32)

declare i32 @fchown(i32, i32, i32)

declare i32 @fchownat(i32, i8*, i32, i32, i32)

declare i32 @lchown(i8*, i32, i32)

declare i8* @getcwd(i8*, i64)

declare void @sync()

declare i32 @close(i32)

declare i64 @read(i32, i8*, i64)

declare i64 @write(i32, i8*, i64)

declare i32 @dup(i32)

declare i32 @dup2(i32, i32)

declare i32 @dup3(i32, i32, i32)

declare i32 @fsync(i32)

declare i32 @fdatasync(i32)

declare i32 @truncate(i8*, i64)

declare i64 @lseek(i32, i64, i32)

declare i64 @pread(i32, i8*, i64, i64)

declare i64 @pwrite(i32, i8*, i64, i64)

declare i32 @ftruncate(i32, i64)

declare i32 @truncate64(i8*, i64)

declare i64 @lseek64(i32, i64, i32)

declare i64 @pread64(i32, i8*, i64, i64)

declare i64 @pwrite64(i32, i8*, i64, i64)

declare i32 @ftruncate64(i32, i64)

declare i32 @pause()

declare i32 @alarm(i32)

declare i32 @sleep(i32)

declare i32 @usleep(i32)

declare i32 @gethostname(i8*, i64)

declare i32 @sethostname(i8*, i64)

declare i32 @brk(i8*)

declare i8* @sbrk(i64)

declare i32 @isatty(i32)

declare i8* @ttyname(i32)

declare i32 @ttyname_r(i32, i8*, i64)

declare i32 @acct(i8*)

declare i32 @getpagesize()

declare i64 @syscall(i64, ...)

declare i32 @daemon(i32, i32)

declare i32 @tcgetpgrp(i32)

declare i32 @tcsetpgrp(i32, i32)

declare i8* @malloc(i64)

declare i8* @calloc(i64, i64)

declare i8* @realloc(i8*, i64)

declare i8* @memalign(i64, i64)

declare i64 @malloc_usable_size(i8*)

declare %mallinfo @mallinfo()

declare i32 @malloc_info(i32, %__sFILE*)

declare void @abort()

declare void @exit(i32)

declare void @_Exit(i32)

declare i32 @atexit(void ()*)

declare i32 @at_quick_exit(void ()*)

declare void @quick_exit(i32)

declare i8* @getenv(i8*)

declare i32 @putenv(i8*)

declare i32 @setenv(i8*, i8*, i32)

declare i32 @unsetenv(i8*)

declare i32 @clearenv()

declare i8* @mkdtemp(i8*)

declare i8* @mktemp(i8*)

declare i32 @mkostemp64(i8*, i32)

declare i32 @mkostemp(i8*, i32)

declare i32 @mkostemps64(i8*, i32, i32)

declare i32 @mkostemps(i8*, i32, i32)

declare i32 @mkstemp64(i8*)

declare i32 @mkstemp(i8*)

declare i32 @mkstemps64(i8*, i32)

declare i32 @mkstemps(i8*, i32)

declare i64 @strtol(i8*, i8**, i32)

declare i64 @strtoll(i8*, i8**, i32)

declare i64 @strtoul(i8*, i8**, i32)

declare i64 @strtoull(i8*, i8**, i32)

declare i32 @posix_memalign(i8**, i64, i64)

declare double @strtod(i8*, i8**)

declare fp128 @strtold(i8*, i8**)

declare i64 @atol(i8*)

declare i64 @atoll(i8*)

declare i8* @realpath(i8*, i8*)

declare i32 @system(i8*)

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*)

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

declare i32 @arc4random_uniform(i32)

declare void @arc4random_buf(i8*, i64)

declare i32 @rand_r(i32*)

declare double @drand48()

declare double @erand48(i16*)

declare i64 @jrand48(i16*)

declare void @lcong48(i16*)

declare i64 @lrand48()

declare i64 @mrand48()

declare i64 @nrand48(i16*)

declare i16* @seed48(i16*)

declare void @srand48(i64)

declare i8* @initstate(i32, i8*, i64)

declare i8* @setstate(i8*)

declare i32 @getpt()

declare i32 @posix_openpt(i32)

declare i8* @ptsname(i32)

declare i32 @ptsname_r(i32, i8*, i64)

declare i32 @unlockpt(i32)

declare %anon42 @div(i32, i32)

declare %anon43 @ldiv(i64, i64)

declare %anon44 @lldiv(i64, i64)

declare i8* @getprogname()

declare void @setprogname(i8*)

declare i32 @mblen(i8*, i64)

declare i64 @mbstowcs(i32*, i8*, i64)

declare i32 @mbtowc(i32*, i8*, i64)

declare i32 @wctomb(i8*, i32)

declare i64 @wcstombs(i8*, i32*, i64)

declare i32 @abs(i32)

declare i64 @labs(i64)

declare i64 @llabs(i64)

declare float @strtof(i8*, i8**)

declare double @atof(i8*)

declare i32 @rand()

declare void @srand(i32)

declare i64 @random()

declare void @srandom(i32)

declare i32 @grantpt(i32)

declare i64 @strtoll_l(i8*, i8**, i32, %__locale_t*)

declare i64 @strtoull_l(i8*, i8**, i32, %__locale_t*)

declare fp128 @strtold_l(i8*, i8**, %__locale_t*)

declare %real_pcre8_or_16* @pcre_compile(i8*, i32, i8**, i32*, i8*)

declare %real_pcre8_or_16* @pcre16_compile(i16*, i32, i8**, i32*, i8*)

declare %real_pcre32* @pcre32_compile(i32*, i32, i8**, i32*, i8*)

declare %real_pcre8_or_16* @pcre_compile2(i8*, i32, i32*, i8**, i32*, i8*)

declare %real_pcre8_or_16* @pcre16_compile2(i16*, i32, i32*, i8**, i32*, i8*)

declare %real_pcre32* @pcre32_compile2(i32*, i32, i32*, i8**, i32*, i8*)

declare i32 @pcre_config(i32, i8*)

declare i32 @pcre16_config(i32, i8*)

declare i32 @pcre32_config(i32, i8*)

declare i32 @pcre_copy_named_substring(%real_pcre8_or_16*, i8*, i32*, i32, i8*, i8*, i32)

declare i32 @pcre16_copy_named_substring(%real_pcre8_or_16*, i16*, i32*, i32, i16*, i16*, i32)

declare i32 @pcre32_copy_named_substring(%real_pcre32*, i32*, i32*, i32, i32*, i32*, i32)

declare i32 @pcre_copy_substring(i8*, i32*, i32, i32, i8*, i32)

declare i32 @pcre16_copy_substring(i16*, i32*, i32, i32, i16*, i32)

declare i32 @pcre32_copy_substring(i32*, i32*, i32, i32, i32*, i32)

declare i32 @pcre_dfa_exec(%real_pcre8_or_16*, %pcre_extra*, i8*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre16_dfa_exec(%real_pcre8_or_16*, %pcre16_extra*, i16*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre32_dfa_exec(%real_pcre32*, %pcre32_extra*, i32*, i32, i32, i32, i32*, i32, i32*, i32)

declare i32 @pcre_exec(%real_pcre8_or_16*, %pcre_extra*, i8*, i32, i32, i32, i32*, i32)

declare i32 @pcre16_exec(%real_pcre8_or_16*, %pcre16_extra*, i16*, i32, i32, i32, i32*, i32)

declare i32 @pcre32_exec(%real_pcre32*, %pcre32_extra*, i32*, i32, i32, i32, i32*, i32)

declare i32 @pcre_jit_exec(%real_pcre8_or_16*, %pcre_extra*, i8*, i32, i32, i32, i32*, i32, %real_pcre_jit_stack*)

declare i32 @pcre16_jit_exec(%real_pcre8_or_16*, %pcre16_extra*, i16*, i32, i32, i32, i32*, i32, %real_pcre16_jit_stack*)

declare i32 @pcre32_jit_exec(%real_pcre32*, %pcre32_extra*, i32*, i32, i32, i32, i32*, i32, %real_pcre32_jit_stack*)

declare void @pcre_free_substring(i8*)

declare void @pcre16_free_substring(i16*)

declare void @pcre32_free_substring(i32*)

declare void @pcre_free_substring_list(i8**)

declare void @pcre16_free_substring_list(i16**)

declare void @pcre32_free_substring_list(i32**)

declare i32 @pcre_fullinfo(%real_pcre8_or_16*, %pcre_extra*, i32, i8*)

declare i32 @pcre16_fullinfo(%real_pcre8_or_16*, %pcre16_extra*, i32, i8*)

declare i32 @pcre32_fullinfo(%real_pcre32*, %pcre32_extra*, i32, i8*)

declare i32 @pcre_get_named_substring(%real_pcre8_or_16*, i8*, i32*, i32, i8*, i8**)

declare i32 @pcre16_get_named_substring(%real_pcre8_or_16*, i16*, i32*, i32, i16*, i16**)

declare i32 @pcre32_get_named_substring(%real_pcre32*, i32*, i32*, i32, i32*, i32**)

declare i32 @pcre_get_stringnumber(%real_pcre8_or_16*, i8*)

declare i32 @pcre16_get_stringnumber(%real_pcre8_or_16*, i16*)

declare i32 @pcre32_get_stringnumber(%real_pcre32*, i32*)

declare i32 @pcre_get_stringtable_entries(%real_pcre8_or_16*, i8*, i8**, i8**)

declare i32 @pcre16_get_stringtable_entries(%real_pcre8_or_16*, i16*, i16**, i16**)

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

declare i32 @pcre_refcount(%real_pcre8_or_16*, i32)

declare i32 @pcre16_refcount(%real_pcre8_or_16*, i32)

declare i32 @pcre32_refcount(%real_pcre32*, i32)

declare %pcre_extra* @pcre_study(%real_pcre8_or_16*, i32, i8**)

declare %pcre16_extra* @pcre16_study(%real_pcre8_or_16*, i32, i8**)

declare %pcre32_extra* @pcre32_study(%real_pcre32*, i32, i8**)

declare void @pcre_free_study(%pcre_extra*)

declare void @pcre16_free_study(%pcre16_extra*)

declare void @pcre32_free_study(%pcre32_extra*)

declare i8* @pcre_version()

declare i8* @pcre16_version()

declare i8* @pcre32_version()

declare i32 @pcre_pattern_to_host_byte_order(%real_pcre8_or_16*, %pcre_extra*, i8*)

declare i32 @pcre16_pattern_to_host_byte_order(%real_pcre8_or_16*, %pcre16_extra*, i8*)

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

declare i8* @xxxcalloc(i64, i64)

declare i8* @xxxmalloc(i64)

declare i8* @xxxmemdup(i8*)

declare i8* @xxxrealloc(i8*, i64)

declare void @xxxfree(i8*)

declare i8* @xstrncpy(i8*, i8*, i32)

declare i8* @xstrncat(i8*, i8*, i32)

declare i8* @xxxmemcpy(i8*, i8*, i64)

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

declare i32 @addch(i32)

declare i32 @addchnstr(i32*, i32)

declare i32 @addchstr(i32*)

declare i32 @addnstr(i8*, i32)

declare i32 @addstr(i8*)

declare i32 @attroff(i32)

declare i32 @attron(i32)

declare i32 @attrset(i32)

declare i32 @attr_get(i32*, i16*, i8*)

declare i32 @attr_off(i32, i8*)

declare i32 @attr_on(i32, i8*)

declare i32 @attr_set(i32, i16, i8*)

declare i32 @baudrate()

declare i32 @beep()

declare i32 @bkgd(i32)

declare void @bkgdset(i32)

declare i32 @border(i32, i32, i32, i32, i32, i32, i32, i32)

declare i32 @box(%_win_st*, i32, i32)

declare i1 @can_change_color()

declare i32 @cbreak()

declare i32 @chgat(i32, i32, i16, i8*)

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

declare i32 @echochar(i32)

declare i32 @erase()

declare i32 @endwin()

declare i8 @erasechar()

declare void @filter()

declare i32 @flash()

declare i32 @flushinp()

declare i32 @getbkgd(%_win_st*)

declare i32 @getch()

declare i32 @getnstr(i8*, i32)

declare i32 @getstr(i8*)

declare %_win_st* @getwin(%__sFILE*)

declare i32 @halfdelay(i32)

declare i1 @has_colors()

declare i1 @has_ic()

declare i1 @has_il()

declare i32 @hline(i32, i32)

declare void @idcok(%_win_st*, i1)

declare i32 @idlok(%_win_st*, i1)

declare void @immedok(%_win_st*, i1)

declare i32 @inch()

declare i32 @inchnstr(i32*, i32)

declare i32 @inchstr(i32*)

declare %_win_st* @initscr()

declare i32 @init_color(i16, i16, i16, i16)

declare i32 @init_pair(i16, i16, i16)

declare i32 @innstr(i8*, i32)

declare i32 @insch(i32)

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

declare i32 @mvaddch(i32, i32, i32)

declare i32 @mvaddchnstr(i32, i32, i32*, i32)

declare i32 @mvaddchstr(i32, i32, i32*)

declare i32 @mvaddnstr(i32, i32, i8*, i32)

declare i32 @mvaddstr(i32, i32, i8*)

declare i32 @mvchgat(i32, i32, i32, i32, i16, i8*)

declare i32 @mvcur(i32, i32, i32, i32)

declare i32 @mvdelch(i32, i32)

declare i32 @mvderwin(%_win_st*, i32, i32)

declare i32 @mvgetch(i32, i32)

declare i32 @mvgetnstr(i32, i32, i8*, i32)

declare i32 @mvgetstr(i32, i32, i8*)

declare i32 @mvhline(i32, i32, i32, i32)

declare i32 @mvinch(i32, i32)

declare i32 @mvinchnstr(i32, i32, i32*, i32)

declare i32 @mvinchstr(i32, i32, i32*)

declare i32 @mvinnstr(i32, i32, i8*, i32)

declare i32 @mvinsch(i32, i32, i32)

declare i32 @mvinsnstr(i32, i32, i8*, i32)

declare i32 @mvinsstr(i32, i32, i8*)

declare i32 @mvinstr(i32, i32, i8*)

declare i32 @mvprintw(i32, i32, i8*, ...)

declare i32 @mvscanw(i32, i32, i8*, ...)

declare i32 @mvvline(i32, i32, i32, i32)

declare i32 @mvwaddch(%_win_st*, i32, i32, i32)

declare i32 @mvwaddchnstr(%_win_st*, i32, i32, i32*, i32)

declare i32 @mvwaddchstr(%_win_st*, i32, i32, i32*)

declare i32 @mvwaddnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwaddstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwchgat(%_win_st*, i32, i32, i32, i32, i16, i8*)

declare i32 @mvwdelch(%_win_st*, i32, i32)

declare i32 @mvwgetch(%_win_st*, i32, i32)

declare i32 @mvwgetnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwgetstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwhline(%_win_st*, i32, i32, i32, i32)

declare i32 @mvwin(%_win_st*, i32, i32)

declare i32 @mvwinch(%_win_st*, i32, i32)

declare i32 @mvwinchnstr(%_win_st*, i32, i32, i32*, i32)

declare i32 @mvwinchstr(%_win_st*, i32, i32, i32*)

declare i32 @mvwinnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwinsch(%_win_st*, i32, i32, i32)

declare i32 @mvwinsnstr(%_win_st*, i32, i32, i8*, i32)

declare i32 @mvwinsstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwinstr(%_win_st*, i32, i32, i8*)

declare i32 @mvwprintw(%_win_st*, i32, i32, i8*, ...)

declare i32 @mvwscanw(%_win_st*, i32, i32, i8*, ...)

declare i32 @mvwvline(%_win_st*, i32, i32, i32, i32)

declare i32 @napms(i32)

declare %_win_st* @newpad(i32, i32)

declare %screen* @newterm(i8*, %__sFILE*, %__sFILE*)

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

declare i32 @pechochar(%_win_st*, i32)

declare i32 @pnoutrefresh(%_win_st*, i32, i32, i32, i32, i32, i32)

declare i32 @prefresh(%_win_st*, i32, i32, i32, i32, i32, i32)

declare i32 @printw(i8*, ...)

declare i32 @putwin(%_win_st*, %__sFILE*)

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

declare i32 @slk_attroff(i32)

declare i32 @slk_attr_off(i32, i8*)

declare i32 @slk_attron(i32)

declare i32 @slk_attr_on(i32, i8*)

declare i32 @slk_attrset(i32)

declare i32 @slk_attr()

declare i32 @slk_attr_set(i32, i16, i8*)

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

declare i32 @termattrs()

declare i8* @termname()

declare void @timeout(i32)

declare i32 @touchline(%_win_st*, i32, i32)

declare i32 @touchwin(%_win_st*)

declare i32 @typeahead(i32)

declare i32 @ungetch(i32)

declare i32 @untouchwin(%_win_st*)

declare void @use_env(i1)

declare void @use_tioctl(i1)

declare i32 @vidattr(i32)

declare i32 @vidputs(i32, i32 (i32)*)

declare i32 @vline(i32, i32)

declare i32 @vwprintw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @vw_printw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @vwscanw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @vw_scanw(%_win_st*, i8*, %__builtin_va_list.0)

declare i32 @waddch(%_win_st*, i32)

declare i32 @waddchnstr(%_win_st*, i32*, i32)

declare i32 @waddchstr(%_win_st*, i32*)

declare i32 @waddnstr(%_win_st*, i8*, i32)

declare i32 @waddstr(%_win_st*, i8*)

declare i32 @wattron(%_win_st*, i32)

declare i32 @wattroff(%_win_st*, i32)

declare i32 @wattrset(%_win_st*, i32)

declare i32 @wattr_get(%_win_st*, i32*, i16*, i8*)

declare i32 @wattr_on(%_win_st*, i32, i8*)

declare i32 @wattr_off(%_win_st*, i32, i8*)

declare i32 @wattr_set(%_win_st*, i32, i16, i8*)

declare i32 @wbkgd(%_win_st*, i32)

declare void @wbkgdset(%_win_st*, i32)

declare i32 @wborder(%_win_st*, i32, i32, i32, i32, i32, i32, i32, i32)

declare i32 @wchgat(%_win_st*, i32, i32, i16, i8*)

declare i32 @wclear(%_win_st*)

declare i32 @wclrtobot(%_win_st*)

declare i32 @wclrtoeol(%_win_st*)

declare i32 @wcolor_set(%_win_st*, i16, i8*)

declare void @wcursyncup(%_win_st*)

declare i32 @wdelch(%_win_st*)

declare i32 @wdeleteln(%_win_st*)

declare i32 @wechochar(%_win_st*, i32)

declare i32 @werase(%_win_st*)

declare i32 @wgetch(%_win_st*)

declare i32 @wgetnstr(%_win_st*, i8*, i32)

declare i32 @wgetstr(%_win_st*, i8*)

declare i32 @whline(%_win_st*, i32, i32)

declare i32 @winch(%_win_st*)

declare i32 @winchnstr(%_win_st*, i32*, i32)

declare i32 @winchstr(%_win_st*, i32*)

declare i32 @winnstr(%_win_st*, i8*, i32)

declare i32 @winsch(%_win_st*, i32)

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

declare i32 @wvline(%_win_st*, i32, i32)

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

declare i32 @alloc_pair(i32, i32)

declare i32 @assume_default_colors(i32, i32)

declare i32 @define_key(i8*, i32)

declare i32 @extended_color_content(i32, i32*, i32*, i32*)

declare i32 @extended_pair_content(i32, i32*, i32*)

declare i32 @extended_slk_color(i32)

declare i32 @find_pair(i32, i32)

declare i32 @free_pair(i32)

declare i32 @get_escdelay()

declare i32 @init_extended_color(i32, i32, i32, i32)

declare i32 @init_extended_pair(i32, i32, i32)

declare i32 @key_defined(i8*)

declare i32 @keyok(i32, i1)

declare void @reset_color_pairs()

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

declare %screen* @new_prescr()

declare i32 @baudrate_sp(%screen*)

declare i32 @beep_sp(%screen*)

declare i1 @can_change_color_sp(%screen*)

declare i32 @cbreak_sp(%screen*)

declare i32 @curs_set_sp(%screen*, i32)

declare i32 @color_content_sp(%screen*, i16, i16*, i16*, i16*)

declare i32 @def_prog_mode_sp(%screen*)

declare i32 @def_shell_mode_sp(%screen*)

declare i32 @delay_output_sp(%screen*, i32)

declare i32 @doupdate_sp(%screen*)

declare i32 @echo_sp(%screen*)

declare i32 @endwin_sp(%screen*)

declare i8 @erasechar_sp(%screen*)

declare void @filter_sp(%screen*)

declare i32 @flash_sp(%screen*)

declare i32 @flushinp_sp(%screen*)

declare %_win_st* @getwin_sp(%screen*, %__sFILE*)

declare i32 @halfdelay_sp(%screen*, i32)

declare i1 @has_colors_sp(%screen*)

declare i1 @has_ic_sp(%screen*)

declare i1 @has_il_sp(%screen*)

declare i32 @init_color_sp(%screen*, i16, i16, i16, i16)

declare i32 @init_pair_sp(%screen*, i16, i16, i16)

declare i32 @intrflush_sp(%screen*, %_win_st*, i1)

declare i1 @isendwin_sp(%screen*)

declare i8* @keyname_sp(%screen*, i32)

declare i8 @killchar_sp(%screen*)

declare i8* @longname_sp(%screen*)

declare i32 @mvcur_sp(%screen*, i32, i32, i32, i32)

declare i32 @napms_sp(%screen*, i32)

declare %_win_st* @newpad_sp(%screen*, i32, i32)

declare %screen* @newterm_sp(%screen*, i8*, %__sFILE*, %__sFILE*)

declare %_win_st* @newwin_sp(%screen*, i32, i32, i32, i32)

declare i32 @nl_sp(%screen*)

declare i32 @nocbreak_sp(%screen*)

declare i32 @noecho_sp(%screen*)

declare i32 @nonl_sp(%screen*)

declare void @noqiflush_sp(%screen*)

declare i32 @noraw_sp(%screen*)

declare i32 @pair_content_sp(%screen*, i16, i16*, i16*)

declare void @qiflush_sp(%screen*)

declare i32 @raw_sp(%screen*)

declare i32 @reset_prog_mode_sp(%screen*)

declare i32 @reset_shell_mode_sp(%screen*)

declare i32 @resetty_sp(%screen*)

declare i32 @ripoffline_sp(%screen*, i32, i32 (%_win_st*, i32)*)

declare i32 @savetty_sp(%screen*)

declare i32 @scr_init_sp(%screen*, i8*)

declare i32 @scr_restore_sp(%screen*, i8*)

declare i32 @scr_set_sp(%screen*, i8*)

declare i32 @slk_attroff_sp(%screen*, i32)

declare i32 @slk_attron_sp(%screen*, i32)

declare i32 @slk_attrset_sp(%screen*, i32)

declare i32 @slk_attr_sp(%screen*)

declare i32 @slk_attr_set_sp(%screen*, i32, i16, i8*)

declare i32 @slk_clear_sp(%screen*)

declare i32 @slk_color_sp(%screen*, i16)

declare i32 @slk_init_sp(%screen*, i32)

declare i8* @slk_label_sp(%screen*, i32)

declare i32 @slk_noutrefresh_sp(%screen*)

declare i32 @slk_refresh_sp(%screen*)

declare i32 @slk_restore_sp(%screen*)

declare i32 @slk_set_sp(%screen*, i32, i8*, i32)

declare i32 @slk_touch_sp(%screen*)

declare i32 @start_color_sp(%screen*)

declare i32 @termattrs_sp(%screen*)

declare i8* @termname_sp(%screen*)

declare i32 @typeahead_sp(%screen*, i32)

declare i32 @ungetch_sp(%screen*, i32)

declare void @use_env_sp(%screen*, i1)

declare void @use_tioctl_sp(%screen*, i1)

declare i32 @vidattr_sp(%screen*, i32)

declare i32 @vidputs_sp(%screen*, i32, i32 (%screen*, i32)*)

declare i8* @keybound_sp(%screen*, i32, i32)

declare i32 @alloc_pair_sp(%screen*, i32, i32)

declare i32 @assume_default_colors_sp(%screen*, i32, i32)

declare i32 @define_key_sp(%screen*, i8*, i32)

declare i32 @extended_color_content_sp(%screen*, i32, i32*, i32*, i32*)

declare i32 @extended_pair_content_sp(%screen*, i32, i32*, i32*)

declare i32 @extended_slk_color_sp(%screen*, i32)

declare i32 @get_escdelay_sp(%screen*)

declare i32 @find_pair_sp(%screen*, i32, i32)

declare i32 @free_pair_sp(%screen*, i32)

declare i32 @init_extended_color_sp(%screen*, i32, i32, i32, i32)

declare i32 @init_extended_pair_sp(%screen*, i32, i32, i32)

declare i1 @is_term_resized_sp(%screen*, i32, i32)

declare i32 @key_defined_sp(%screen*, i8*)

declare i32 @keyok_sp(%screen*, i32, i1)

declare void @nofilter_sp(%screen*)

declare void @reset_color_pairs_sp(%screen*)

declare i32 @resize_term_sp(%screen*, i32, i32)

declare i32 @resizeterm_sp(%screen*, i32, i32)

declare i32 @set_escdelay_sp(%screen*, i32)

declare i32 @set_tabsize_sp(%screen*, i32)

declare i32 @use_default_colors_sp(%screen*)

declare i32 @use_legacy_coding_sp(%screen*, i32)

declare i1 @has_mouse()

declare i32 @getmouse(%anon99*)

declare i32 @ungetmouse(%anon99*)

declare i32 @mousemask(i32, i32*)

declare i1 @wenclose(%_win_st*, i32, i32)

declare i32 @mouseinterval(i32)

declare i1 @wmouse_trafo(%_win_st*, i32*, i32*, i1)

declare i1 @mouse_trafo(i32*, i32*, i1)

declare i1 @has_mouse_sp(%screen*)

declare i32 @getmouse_sp(%screen*, %anon99*)

declare i32 @ungetmouse_sp(%screen*, %anon99*)

declare i32 @mousemask_sp(%screen*, i32, i32*)

declare i32 @mouseinterval_sp(%screen*, i32)

declare i32 @mcprint(i8*, i32)

declare i32 @has_key(i32)

declare i32 @has_key_sp(%screen*, i32)

declare i32 @mcprint_sp(%screen*, i8*, i32)

declare void @_tracef(i8*, ...)

declare i8* @_traceattr(i32)

declare i8* @_traceattr2(i32, i32)

declare i8* @_tracechar(i32)

declare i8* @_tracechtype(i32)

declare i8* @_tracechtype2(i32, i32)

declare void @trace(i32)

declare i32 @curses_trace(i32)

declare void @exit_curses(i32)

declare i8* @unctrl(i32)

declare i8* @unctrl_sp(%screen*, i32)

declare %DIR* @opendir(i8*)

declare %DIR* @fdopendir(i32)

declare %dirent* @readdir(%DIR*)

declare %dirent64* @readdir64(%DIR*)

declare i32 @readdir_r(%DIR*, %dirent*, %dirent**)

declare i32 @readdir64_r(%DIR*, %dirent64*, %dirent64**)

declare i32 @closedir(%DIR*)

declare void @rewinddir(%DIR*)

declare void @seekdir(%DIR*, i64)

declare i64 @telldir(%DIR*)

declare i32 @dirfd(%DIR*)

declare i32 @alphasort(%dirent**, %dirent**)

declare i32 @alphasort64(%dirent64**, %dirent64**)

declare i32 @scandir64(i8*, %dirent64***, i32 (%dirent64*)*, i32 (%dirent64**, %dirent64**)*)

declare i32 @scandir(i8*, %dirent***, i32 (%dirent*)*, i32 (%dirent**, %dirent**)*)

declare i32 @chmod(i8*, i32)

declare i32 @fchmod(i32, i32)

declare i32 @mkdir(i8*, i32)

declare i32 @fstat(i32, %stat*)

declare i32 @fstat64(i32, %stat64*)

declare i32 @fstatat(i32, i8*, %stat*, i32)

declare i32 @fstatat64(i32, i8*, %stat64*, i32)

declare i32 @lstat(i8*, %stat*)

declare i32 @lstat64(i8*, %stat64*)

declare i32 @stat(i8*, %stat*)

declare i32 @stat64(i8*, %stat64*)

declare i32 @mknod(i8*, i32, i64)

declare i32 @umask(i32)

declare i32 @mkfifo(i8*, i32)

declare i32 @mkfifoat(i32, i8*, i32)

declare i32 @fchmodat(i32, i8*, i32, i32)

declare i32 @mkdirat(i32, i8*, i32)

declare i32 @mknodat(i32, i8*, i32, i64)

declare i32 @utimensat(i32, i8*, %timespec*, i32)

declare i32 @futimens(i32, %timespec*)

declare i32 @creat(i8*, i32)

declare i32 @creat64(i8*, i32)

declare i32 @openat(i32, i8*, i32, ...)

declare i32 @openat64(i32, i8*, i32, ...)

declare i32 @open64(i8*, i32, ...)

declare i64 @splice(i32, i64*, i32, i64*, i64, i32)

declare i64 @tee(i32, i32, i64, i32)

declare i64 @vmsplice(i32, %iovec*, i64, i32)

declare i32 @fallocate(i32, i32, i64, i64)

declare i32 @fallocate64(i32, i32, i64, i64)

declare i32 @posix_fadvise(i32, i64, i64, i32)

declare i32 @posix_fadvise64(i32, i64, i64, i32)

declare i32 @posix_fallocate(i32, i64, i64)

declare i32 @posix_fallocate64(i32, i64, i64)

declare i32 @isalnum(i32)

declare i32 @isalpha(i32)

declare i32 @isblank(i32)

declare i32 @iscntrl(i32)

declare i32 @isdigit(i32)

declare i32 @isgraph(i32)

declare i32 @islower(i32)

declare i32 @isprint(i32)

declare i32 @ispunct(i32)

declare i32 @isspace(i32)

declare i32 @isupper(i32)

declare i32 @isxdigit(i32)

declare i32 @tolower(i32)

declare i32 @_tolower(i32)

declare i32 @toupper(i32)

declare i32 @_toupper(i32)

declare i32 @isalnum_l(i32, %__locale_t*)

declare i32 @isalpha_l(i32, %__locale_t*)

declare i32 @isblank_l(i32, %__locale_t*)

declare i32 @iscntrl_l(i32, %__locale_t*)

declare i32 @isdigit_l(i32, %__locale_t*)

declare i32 @isgraph_l(i32, %__locale_t*)

declare i32 @islower_l(i32, %__locale_t*)

declare i32 @isprint_l(i32, %__locale_t*)

declare i32 @ispunct_l(i32, %__locale_t*)

declare i32 @isspace_l(i32, %__locale_t*)

declare i32 @isupper_l(i32, %__locale_t*)

declare i32 @isxdigit_l(i32, %__locale_t*)

declare i32 @tolower_l(i32, %__locale_t*)

declare i32 @toupper_l(i32, %__locale_t*)

declare i32 @isascii(i32)

declare i32 @toascii(i32)

declare %lconv* @localeconv()

declare %__locale_t* @duplocale(%__locale_t*)

declare void @freelocale(%__locale_t*)

declare %__locale_t* @newlocale(i32, i8*, %__locale_t*)

declare i8* @setlocale(i32, i8*)

declare %__locale_t* @uselocale(%__locale_t*)

declare i8* @dlopen(i8*, i32)

declare i32 @dlclose(i8*)

declare i8* @dlerror()

declare i8* @dlsym(i8*, i8*)

declare i8* @dlvsym(i8*, i8*, i8*)

declare i32 @dladdr(i8*, %anon135*)

declare i32 @cfgetispeed(%termios*)

declare i32 @cfgetospeed(%termios*)

declare void @cfmakeraw(%termios*)

declare i32 @cfsetspeed(%termios*, i32)

declare i32 @cfsetispeed(%termios*, i32)

declare i32 @cfsetospeed(%termios*, i32)

declare i32 @tcdrain(i32)

declare i32 @tcflow(i32, i32)

declare i32 @tcflush(i32, i32)

declare i32 @tcgetattr(i32, %termios*)

declare i32 @tcgetsid(i32)

declare i32 @tcsendbreak(i32, i32)

declare i32 @tcsetattr(i32, i32, %termios*)

declare void @class_init()

declare void @class_final()

declare void @append_class(i8*)

declare i1 @eval_class(i8*, %sCompileInfo*, i8*, i32)

declare void @native_init()

declare void @native_init2()

declare void @native_final()

declare i1 @invoke_native_method(%sCLClass*, %sCLMethod*, %CLVALUE**, %sVMInfo*)

declare %sVarTable* @sVarTable_initialize(%sVarTable*)

declare void @parser_err_msg(%sParserInfo*, i8*)

declare void @skip_spaces_and_lf(%sParserInfo*)

declare i1 @parse_params(%sCLParam*, i32*, %sParserInfo*, %vector__sCLTypep*)

declare i8* @parse_word(%sParserInfo*)

declare i1 @parse_type(%sCLType**, %sParserInfo*, %vector__sCLTypep*)

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

declare %sCLType* @create_type(i8*, %vector__sCLTypep*)

declare %sCLType* @parse_type_runtime(i8*, %sParserInfo*, %vector__sCLTypep*)

declare i8* @create_type_name(%sCLType*)

declare i1 @type_identify(%sCLType*, %sCLType*)

declare i1 @substitution_posibility(%sCLType*, %sCLType*)

declare i1 @check_type(i32, i8*, %sVMInfo*)

declare i1 @type_identify_with_class_name(%sCLType*, i8*, %sParserInfo*)

declare i1 @is_generics_type(%sCLType*)

declare i32 @get_generics_type_number(%sCLType*, %sParserInfo*)

declare %sCLType* @solve_generics(%sCLType*, %sCLType*, %sParserInfo*)

declare void @show_type(%sCLType*)

declare void @codes_append_type(%buffer*, %sCLType*)

declare void @codes_read_type(i8*, %sCLType**)

declare %sCLNode* @sNodeTree_create_break(%sParserInfo*)

declare %sCLNode* @sNodeTree_create_eval(%sCLNode*, %sParserInfo*)

declare %sCLNode* @sNodeTree_create_typeof(%sCLNodeBlock*, %sParserInfo*)

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

declare %sCLNode* @sNodeTree_create_method_call(i8*, i32, %sCLNode**, i1, %sParserInfo*)

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

declare i1 @param_check(%sCLParam*, i32, %CLVALUE*, %sCLType*, %sVMInfo*)

declare i1 @vm(%buffer*, %CLVALUE*, i32, i32, %CLVALUE*, %sVMInfo*)

declare i32 @alloc_heap_mem(i32, %sCLType*, i32, %sVMInfo*)

declare void @heap_init(i32, i32)

declare void @heap_final()

declare %sCLHeapMem* @get_object_pointer(i32)

declare i32 @create_object(%sCLType*, %sVMInfo*)

declare i32 @create_type_object(%sCLType*, %sVMInfo*)

declare i32 @create_class_object(i8*, %sVMInfo*)

declare i32 @create_buffer_object(%sVMInfo*)

declare i32 @create_null_object(%sVMInfo*)

declare i32 @create_int_object(i32, %sVMInfo*)

declare i32 @create_string_object(i8*, %sVMInfo*)

declare i32 @create_map_object(%sVMInfo*)

declare i8* @get_string_mem(i32)

declare %map__charp_int* @get_map_value(i32)

declare %list__charp* @get_map_keys(i32)

declare i32 @get_int_value(i32)

declare %buffer* @get_buffer_value(i32)

declare void @set_int_value(i32, i32)

declare void @set_string_value(i32, i8*)

declare i32 @create_string_data_object(i8*, %sVMInfo*)

declare i32 @create_bool_object(i32, %sVMInfo*)

declare i32 @create_block_object(i8*, i32*, i32, i32, %sVMInfo*)

declare i32 @create_command_object(i8*, i32, i8*, i32, i32, i1, %sVMInfo*)

declare i32 @create_job_object(i8*, %termios*, i32, %sVMInfo*)

declare i32 @create_method_object(%sCLMethod*, %sVMInfo*)

declare i32 @create_field_object(%sCLField*, %sVMInfo*)

declare void @mark_object(i32, i8*, %sVMInfo*)

declare i1 @free_object(i32)

declare void @mark_belong_objects(i32, i8*, %sVMInfo*)

declare void @alignment(i32*)

declare i1 @parse_block(%sCLNodeBlock**, i32, %sCLParam*, %sParserInfo*)

declare i1 @compile_block(%sCLNodeBlock*, %sCompileInfo*)

declare i1 @load_class(i8*, %sParserInfo*)

declare i1 @save_class(%sCLClass*)

declare void @compiler_init(i1)

declare void @compiler_final()

declare i1 @compiler(i8*)

declare void @set_signal()

declare void @set_signal_shell()

declare void @shell(%vector__sCLTypep*)

declare void @clover3_init()

declare void @clover3_final()

declare i1 @forgroud_job(i32)

declare void @shell_run_command(i8*, %vector__sCLTypep*)

declare void @shell_commandline(i8*, i32, %vector__sCLTypep*)

declare %iQos* @iQos_initialize(%iQos*)

declare void @iQos_finalize(%iQos*)

declare i1 @iQos_main_loop(%iQos*)

declare void @iQos_exit(%iQos*)

declare %Filer* @Filer_initialize(%Filer*, i8*, %iQos*)

declare void @Filer_finalize(%Filer*)

declare i1 @Filer_read_dir(%Filer*)

declare void @Filer_view(%Filer*)

declare void @Filer_input(%Filer*)

declare i8* @Filer_cursor_path(%Filer*)

declare i8* @Filer_cursor_file(%Filer*)

declare i1 @Filer_chage_directory(%Filer*, i8*, i8*)

declare void @Filer_fix_cursor(%Filer*)

define i32 @main(i32 %argc, i8** %argv) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xxxmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %argc1 = alloca i32
  store i32 %argc, i32* %argc1, align 4
  %2 = bitcast i32* %argc1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 135), align 8
  %argv2 = alloca i8**
  store i8** %argv, i8*** %argv2, align 8
  %3 = bitcast i8*** %argv2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 136), align 8
  %no_load_fudamental_classes = alloca i1
  %4 = bitcast i1* %no_load_fudamental_classes to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 137), align 8
  store i1 false, i1* %no_load_fudamental_classes, align 1
  %5 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @global_string, i32 0, i32 0))
  call void @set_signal_shell()
  %6 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.2, i32 0, i32 0), i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.4, i32 0, i32 0))
  %7 = bitcast i8* %6 to %vector__sCLTypep*
  %8 = call %vector__sCLTypep* @"vector_initialize_sCLTypep0_src/main"(%vector__sCLTypep* %7)
  %types = alloca %vector__sCLTypep*
  %9 = bitcast %vector__sCLTypep** %types to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 138), align 8
  store %vector__sCLTypep* %8, %vector__sCLTypep** %types, align 8
  call void @clover3_init()
  %no_load_fudamental_classes3 = load i1, i1* %no_load_fudamental_classes, align 1
  call void @compiler_init(i1 %no_load_fudamental_classes3)
  call void @heap_init(i32 128, i32 128)
  %10 = call i8* @debug_xcalloc(i64 1, i64 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.10, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.12, i32 0, i32 0))
  %11 = bitcast i8* %10 to %iQos*
  %12 = call %iQos* @iQos_initialize(%iQos* %11)
  %iqos = alloca %iQos*
  %13 = bitcast %iQos** %iqos to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 139), align 8
  store %iQos* %12, %iQos** %iqos, align 8
  %iqos4 = load %iQos*, %iQos** %iqos, align 8
  %14 = call i1 @iQos_main_loop(%iQos* %iqos4)
  %LOGICAL_DIANEAL = icmp eq i1 %14, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 139), align 8
  %16 = bitcast i8* %15 to %iQos**
  %iqos5 = load %iQos*, %iQos** %16, align 8
  call void @iQos_exit(%iQos* %iqos5)
  %stderr = load %__sFILE*, %__sFILE** @stderr, align 8
  %17 = call i32 (%__sFILE*, i8*, ...) @fprintf(%__sFILE* %stderr, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_string.13, i32 0, i32 0))
  call void @exit(i32 1)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  call void @heap_final()
  call void @clover3_final()
  call void @compiler_final()
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  %20 = load %iQos*, %iQos** %iqos, align 8
  call void @iQos_finalize(%iQos* %20)
  %21 = ptrtoint %iQos* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block, label %cond_end6

cond_then_block:                                  ; preds = %cond_end
  %23 = getelementptr inbounds %iQos, %iQos* %20, i32 0, i32 0
  %24 = load %Filer*, %Filer** %23, align 8
  call void @Filer_finalize(%Filer* %24)
  %25 = ptrtoint %Filer* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block7, label %cond_end8

cond_end6:                                        ; preds = %cond_end14, %cond_end
  %27 = bitcast %iQos* %20 to i8*
  call void @xxxfree(i8* %27)
  %28 = load %vector__sCLTypep*, %vector__sCLTypep** %types, align 8
  call void @"vector_finalize_sCLTypep4_src/main"(%vector__sCLTypep* %28)
  %29 = ptrtoint %vector__sCLTypep* %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %cond_then_block15, label %cond_end16

cond_then_block7:                                 ; preds = %cond_then_block
  %31 = getelementptr inbounds %Filer, %Filer* %24, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %cond_then_block9, label %cond_end10

cond_end8:                                        ; preds = %cond_end12, %cond_then_block
  %35 = bitcast %Filer* %24 to i8*
  call void @xxxfree(i8* %35)
  %36 = getelementptr inbounds %iQos, %iQos* %20, i32 0, i32 2
  %37 = load %vector__sCLTypep*, %vector__sCLTypep** %36, align 8
  call void @"vector_finalize_sCLTypep3_src/main"(%vector__sCLTypep* %37)
  %38 = ptrtoint %vector__sCLTypep* %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %cond_then_block13, label %cond_end14

cond_then_block9:                                 ; preds = %cond_then_block7
  br label %cond_end10

cond_end10:                                       ; preds = %cond_then_block9, %cond_then_block7
  call void @xxxfree(i8* %32)
  %40 = getelementptr inbounds %Filer, %Filer* %24, i32 0, i32 2
  %41 = load %list__charp*, %list__charp** %40, align 8
  call void @"list_finalize_charp1_src/main"(%list__charp* %41)
  %42 = ptrtoint %list__charp* %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %cond_then_block11, label %cond_end12

cond_then_block11:                                ; preds = %cond_end10
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_end10
  %44 = bitcast %list__charp* %41 to i8*
  call void @xxxfree(i8* %44)
  br label %cond_end8

cond_then_block13:                                ; preds = %cond_end8
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end8
  %45 = bitcast %vector__sCLTypep* %37 to i8*
  call void @xxxfree(i8* %45)
  br label %cond_end6

cond_then_block15:                                ; preds = %cond_end6
  br label %cond_end16

cond_end16:                                       ; preds = %cond_then_block15, %cond_end6
  %46 = bitcast %vector__sCLTypep* %28 to i8*
  call void @xxxfree(i8* %46)
  call void @debug_show_none_freed_heap_memory()
  ret i32 0
}

define %vector__sCLTypep* @"vector_initialize_sCLTypep0_src/main"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xxxmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
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
  %sext14 = zext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.5, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @global_string.6, i32 0, i32 0), i32 455, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.8, i32 0, i32 0))
  %8 = bitcast i8* %7 to %sCLType**
  %9 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self4, i32 0, i32 0
  store %sCLType** %8, %sCLType*** %9, align 8
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__sCLTypep* %self6
}

define void @"list_finalize_charp1_src/main"(%list__charp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xxxmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list__charp*
  store %list__charp* %self, %list__charp** %self1, align 8
  %2 = bitcast %list__charp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
  %self2 = load %list__charp*, %list__charp** %self1, align 8
  %eqtmpX = icmp eq %list__charp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list__charp*, %list__charp** %self1, align 8
  %5 = getelementptr inbounds %list__charp, %list__charp* %self3, i32 0, i32 0
  %6 = load %list_item__charp*, %list_item__charp** %5, align 8
  %it = alloca %list_item__charp*
  %7 = bitcast %list_item__charp** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 141), align 8
  store %list_item__charp* %6, %list_item__charp** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end14, %cond_end
  %it4 = load %list_item__charp*, %list_item__charp** %it, align 8
  %noteqtmp = icmp ne %list_item__charp* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 141), align 8
  %11 = bitcast i8* %10 to %list_item__charp**
  %it7 = load %list_item__charp*, %list_item__charp** %11, align 8
  %12 = getelementptr inbounds %list_item__charp, %list_item__charp* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %cond_then_block8, label %cond_end9

cond_end6:                                        ; preds = %cond_end9, %cond_then_block
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 141), align 8
  %18 = bitcast i8* %17 to %list_item__charp**
  %it10 = load %list_item__charp*, %list_item__charp** %18, align 8
  %prev_it = alloca %list_item__charp*
  %19 = bitcast %list_item__charp** %prev_it to i8*
  store i8* %19, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 142), align 8
  store %list_item__charp* %it10, %list_item__charp** %prev_it, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 141), align 8
  %21 = bitcast i8* %20 to %list_item__charp**
  %it11 = load %list_item__charp*, %list_item__charp** %21, align 8
  %22 = getelementptr inbounds %list_item__charp, %list_item__charp* %it11, i32 0, i32 2
  %23 = load %list_item__charp*, %list_item__charp** %22, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 141), align 8
  %25 = bitcast i8* %24 to %list_item__charp**
  store %list_item__charp* %23, %list_item__charp** %25, align 8
  %prev_it12 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %26 = load %list_item__charp*, %list_item__charp** %prev_it, align 8
  %27 = ptrtoint %list_item__charp* %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %cond_then_block13, label %cond_end14

cond_then_block8:                                 ; preds = %cond_jump_then5
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block8, %cond_jump_then5
  call void @xxxfree(i8* %14)
  br label %cond_end6

cond_then_block13:                                ; preds = %cond_end6
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end6
  %29 = bitcast %list_item__charp* %26 to i8*
  call void @xxxfree(i8* %29)
  br label %loop_top_block
}

define void @"vector_finalize_sCLTypep3_src/main"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xxxmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLTypep* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 true, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 141), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self14 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self14, i32 0, i32 0
  %7 = load %sCLType**, %sCLType*** %6, align 8
  %8 = load %sCLType**, %sCLType*** %6, align 8
  %9 = bitcast %sCLType** %8 to i8*
  call void @xxxfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
  %13 = bitcast i8* %12 to %vector__sCLTypep**
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
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

cond_end10:                                       ; preds = %cond_end12, %cond_then_block
  %27 = bitcast %sCLType* %20 to i8*
  call void @xxxfree(i8* %27)
  %i13 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i13, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  call void @xxxfree(i8* %24)
  br label %cond_end10
}

define void @"vector_finalize_sCLTypep4_src/main"(%vector__sCLTypep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xxxmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sCLTypep*
  store %vector__sCLTypep* %self, %vector__sCLTypep** %self1, align 8
  %2 = bitcast %vector__sCLTypep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
  %self2 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %eqtmpX = icmp eq %vector__sCLTypep* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 true, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 141), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self14 = load %vector__sCLTypep*, %vector__sCLTypep** %self1, align 8
  %6 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self14, i32 0, i32 0
  %7 = load %sCLType**, %sCLType*** %6, align 8
  %8 = load %sCLType**, %sCLType*** %6, align 8
  %9 = bitcast %sCLType** %8 to i8*
  call void @xxxfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xxxmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_end10, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
  %13 = bitcast i8* %12 to %vector__sCLTypep**
  %self6 = load %vector__sCLTypep*, %vector__sCLTypep** %13, align 8
  %14 = getelementptr inbounds %vector__sCLTypep, %vector__sCLTypep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 140), align 8
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

cond_end10:                                       ; preds = %cond_end12, %cond_then_block
  %27 = bitcast %sCLType* %20 to i8*
  call void @xxxfree(i8* %27)
  %i13 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i13, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_then_block11:                                ; preds = %cond_then_block9
  br label %cond_end12

cond_end12:                                       ; preds = %cond_then_block11, %cond_then_block9
  call void @xxxfree(i8* %24)
  br label %cond_end10
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/main.nc", directory: "/data/data/com.termux/files/home/repo/neo-c/iqos")
!2 = !{}
