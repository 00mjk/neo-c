; ModuleID = 'Module vtable'
source_filename = "Module vtable"

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
@global_string = private constant [19 x i8] c"map%<char*%,sVar*>\00", align 1
@global_string.1 = private constant [14 x i8] c"src/vtable.nc\00", align 1
@global_string.2 = private constant [11 x i8] c"initialize\00", align 1
@global_string.3 = private constant [21 x i8] c"sVarTable_initialize\00", align 1
@global_string.4 = private constant [7 x i8] c"char*%\00", align 1
@global_string.5 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.6 = private constant [35 x i8] c"initialize_charp_sVarp0_src/vtable\00", align 1
@global_string.7 = private constant [39 x i8] c"map_initialize_charp_sVarp0_src/vtable\00", align 1
@global_string.8 = private constant [7 x i8] c"sVar*%\00", align 1
@global_string.9 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.10 = private constant [35 x i8] c"initialize_charp_sVarp0_src/vtable\00", align 1
@global_string.11 = private constant [39 x i8] c"map_initialize_charp_sVarp0_src/vtable\00", align 1
@global_string.12 = private constant [6 x i8] c"bool%\00", align 1
@global_string.13 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.14 = private constant [35 x i8] c"initialize_charp_sVarp0_src/vtable\00", align 1
@global_string.15 = private constant [39 x i8] c"map_initialize_charp_sVarp0_src/vtable\00", align 1
@global_string.16 = private constant [11 x i8] c"sVarTable%\00", align 1
@global_string.17 = private constant [14 x i8] c"src/vtable.nc\00", align 1
@global_string.18 = private constant [15 x i8] c"init_var_table\00", align 1
@global_string.19 = private constant [15 x i8] c"init_var_table\00", align 1
@global_string.20 = private constant [12 x i8] c"sVarTable*%\00", align 1
@global_string.21 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.22 = private constant [33 x i8] c"push_back_sVarTablep3_src/vtable\00", align 1
@global_string.23 = private constant [40 x i8] c"vector_push_back_sVarTablep3_src/vtable\00", align 1
@global_string.24 = private constant [6 x i8] c"sVar%\00", align 1
@global_string.25 = private constant [14 x i8] c"src/vtable.nc\00", align 1
@global_string.26 = private constant [22 x i8] c"add_variable_to_table\00", align 1
@global_string.27 = private constant [22 x i8] c"add_variable_to_table\00", align 1
@global_string.28 = private constant [7 x i8] c"char*%\00", align 1
@global_string.29 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.30 = private constant [31 x i8] c"rehash_charp_sVarp8_src/vtable\00", align 1
@global_string.31 = private constant [35 x i8] c"map_rehash_charp_sVarp8_src/vtable\00", align 1
@global_string.32 = private constant [7 x i8] c"sVar*%\00", align 1
@global_string.33 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.34 = private constant [31 x i8] c"rehash_charp_sVarp8_src/vtable\00", align 1
@global_string.35 = private constant [35 x i8] c"map_rehash_charp_sVarp8_src/vtable\00", align 1
@global_string.36 = private constant [6 x i8] c"bool%\00", align 1
@global_string.37 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.38 = private constant [31 x i8] c"rehash_charp_sVarp8_src/vtable\00", align 1
@global_string.39 = private constant [35 x i8] c"map_rehash_charp_sVarp8_src/vtable\00", align 1
@global_string.40 = private constant [32 x i8] c"unexpected error in map.rehash\0A\00", align 1
@global_string.41 = private constant [32 x i8] c"unexpected error in map.rehash\0A\00", align 1
@global_string.42 = private constant [32 x i8] c"unexpected error in map.insert\0A\00", align 1
@global_string.43 = private constant [7 x i8] c"sVar*%\00", align 1
@global_string.44 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.45 = private constant [29 x i8] c"push_back_sVarp10_src/vtable\00", align 1
@global_string.46 = private constant [36 x i8] c"vector_push_back_sVarp10_src/vtable\00", align 1
@global_string.47 = private constant [70 x i8] c"The variable named %s has been already existed in this variable table\00", align 1
@global_string.48 = private constant [12 x i8] c"show_vtable\00", align 1
@global_string.49 = private constant [10 x i8] c"%s %p %s\0A\00", align 1
@global_string.50 = private constant [17 x i8] c"%s %p type null\0A\00", align 1
@global_string.51 = private constant [10 x i8] c"%s %p %s\0A\00", align 1
@global_string.52 = private constant [17 x i8] c"%s %p type null\0A\00", align 1
@global_string.53 = private constant [16 x i8] c"show_vtable end\00", align 1

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

define %sVarTable* @sVarTable_initialize(%sVarTable* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %sVarTable*
  store %sVarTable* %self, %sVarTable** %self1, align 8
  %2 = bitcast %sVarTable** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %self2 = load %sVarTable*, %sVarTable** %self1, align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_string, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_string.3, i32 0, i32 0))
  %4 = bitcast i8* %3 to %map__charp_sVarp*
  %5 = call %map__charp_sVarp* @"map_initialize_charp_sVarp0_src/vtable"(%map__charp_sVarp* %4)
  %6 = getelementptr inbounds %sVarTable, %sVarTable* %self2, i32 0, i32 0
  %7 = load %map__charp_sVarp*, %map__charp_sVarp** %6, align 8
  call void @"map_finalize_charp_sVarp1_src/vtable"(%map__charp_sVarp* %7)
  %8 = ptrtoint %map__charp_sVarp* %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  %10 = bitcast %map__charp_sVarp* %7 to i8*
  call void @xfree(i8* %10)
  store %map__charp_sVarp* %5, %map__charp_sVarp** %6, align 8
  %self3 = load %sVarTable*, %sVarTable** %self1, align 8
  %11 = getelementptr inbounds %sVarTable, %sVarTable* %self3, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %self4 = load %sVarTable*, %sVarTable** %self1, align 8
  %12 = getelementptr inbounds %sVarTable, %sVarTable* %self4, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %self5 = load %sVarTable*, %sVarTable** %self1, align 8
  %13 = getelementptr inbounds %sVarTable, %sVarTable* %self5, i32 0, i32 3
  store i32 0, i32* %13, align 4
  %self6 = load %sVarTable*, %sVarTable** %self1, align 8
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret %sVarTable* %self6
}

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

define void @init_var_table(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %3 = call i8* @debug_xcalloc(i64 1, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.17, i32 0, i32 0), i32 19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_string.19, i32 0, i32 0))
  %4 = bitcast i8* %3 to %sVarTable*
  %5 = call %sVarTable* @sVarTable_initialize(%sVarTable* %4)
  %vtable = alloca %sVarTable*
  %6 = bitcast %sVarTable** %vtable to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sVarTable* %5, %sVarTable** %vtable, align 8
  %vtable2 = load %sVarTable*, %sVarTable** %vtable, align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %7 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 7
  %8 = load %vector__sVarTablep*, %vector__sVarTablep** %7, align 8
  %9 = call %sVarTable* @"vector_item_sVarTablep2_src/vtable"(%vector__sVarTablep* %8, i32 -1, %sVarTable* null)
  %10 = getelementptr inbounds %sVarTable, %sVarTable* %vtable2, i32 0, i32 4
  store %sVarTable* %9, %sVarTable** %10, align 8
  %info4 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %11 = getelementptr inbounds %sParserInfo, %sParserInfo* %info4, i32 0, i32 7
  %12 = load %vector__sVarTablep*, %vector__sVarTablep** %11, align 8
  %vtable5 = load %sVarTable*, %sVarTable** %vtable, align 8
  call void @"vector_push_back_sVarTablep3_src/vtable"(%vector__sVarTablep* %12, %sVarTable* %vtable5)
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret void
}

define void @final_var_table(%sParserInfo* %info) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %info2 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %3 = getelementptr inbounds %sParserInfo, %sParserInfo* %info2, i32 0, i32 7
  %4 = load %vector__sVarTablep*, %vector__sVarTablep** %3, align 8
  %5 = call %sVarTable* @"vector_pop_back_sVarTablep4_src/vtable"(%vector__sVarTablep* %4, %sVarTable* null)
  %vtable = alloca %sVarTable*
  %6 = bitcast %sVarTable** %vtable to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sVarTable* %5, %sVarTable** %vtable, align 8
  %vtable3 = load %sVarTable*, %sVarTable** %vtable, align 8
  %7 = load %sVarTable*, %sVarTable** %vtable, align 8
  %8 = ptrtoint %sVarTable* %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  %10 = getelementptr inbounds %sVarTable, %sVarTable* %7, i32 0, i32 0
  %11 = load %map__charp_sVarp*, %map__charp_sVarp** %10, align 8
  call void @"map_finalize_charp_sVarp5_src/vtable"(%map__charp_sVarp* %11)
  %12 = ptrtoint %map__charp_sVarp* %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %cond_then_block4, label %cond_end5

cond_end:                                         ; preds = %cond_end5, %entry
  %14 = bitcast %sVarTable* %7 to i8*
  call void @xfree(i8* %14)
  %15 = bitcast [8192 x i8*]* %lvtable to i8*
  %16 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %15, i64 65536)
  ret void

cond_then_block4:                                 ; preds = %cond_then_block
  br label %cond_end5

cond_end5:                                        ; preds = %cond_then_block4, %cond_then_block
  %17 = bitcast %map__charp_sVarp* %11 to i8*
  call void @xfree(i8* %17)
  br label %cond_end
}

define void @add_variable_to_table(%sParserInfo* %info, i8* %name, %sCLType* %type, i1 %readonly) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %name2 = alloca i8*
  store i8* %name, i8** %name2, align 8
  %3 = bitcast i8** %name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %type3 = alloca %sCLType*
  store %sCLType* %type, %sCLType** %type3, align 8
  %4 = bitcast %sCLType** %type3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %readonly4 = alloca i1
  store i1 %readonly, i1* %readonly4, align 1
  %5 = bitcast i1* %readonly4 to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %info5 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %6 = getelementptr inbounds %sParserInfo, %sParserInfo* %info5, i32 0, i32 7
  %7 = load %vector__sVarTablep*, %vector__sVarTablep** %6, align 8
  %8 = call %sVarTable* @"vector_item_sVarTablep6_src/vtable"(%vector__sVarTablep* %7, i32 -1, %sVarTable* null)
  %vtable = alloca %sVarTable*
  %9 = bitcast %sVarTable** %vtable to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sVarTable* %8, %sVarTable** %vtable, align 8
  %10 = call i8* @debug_xcalloc(i64 1, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.25, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.27, i32 0, i32 0))
  %11 = bitcast i8* %10 to %sVar*
  %v = alloca %sVar*
  %12 = bitcast %sVar** %v to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sVar* %11, %sVar** %v, align 8
  %v6 = load %sVar*, %sVar** %v, align 8
  %name7 = load i8*, i8** %name2, align 8
  %13 = call i8* @string(i8* %name7)
  %14 = getelementptr inbounds %sVar, %sVar* %v6, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  call void @xfree(i8* %15)
  store i8* %13, i8** %14, align 8
  %v8 = load %sVar*, %sVar** %v, align 8
  %info9 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %18 = getelementptr inbounds %sParserInfo, %sParserInfo* %info9, i32 0, i32 7
  %19 = load %vector__sVarTablep*, %vector__sVarTablep** %18, align 8
  %20 = call i32 @get_var_num(%vector__sVarTablep* %19)
  %21 = getelementptr inbounds %sVar, %sVar* %v8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %type10 = load %sCLType*, %sCLType** %type3, align 8
  %22 = ptrtoint %sCLType* %type10 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %cond_end
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %25 = bitcast i8* %24 to %sVar**
  %v12 = load %sVar*, %sVar** %25, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %27 = bitcast i8* %26 to %sCLType**
  %type13 = load %sCLType*, %sCLType** %27, align 8
  %28 = getelementptr inbounds %sVar, %sVar* %v12, i32 0, i32 2
  store %sCLType* %type13, %sCLType** %28, align 8
  br label %cond_end11

cond_else_block:                                  ; preds = %cond_end
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %30 = bitcast i8* %29 to %sVar**
  %v14 = load %sVar*, %sVar** %30, align 8
  %31 = getelementptr inbounds %sVar, %sVar* %v14, i32 0, i32 2
  store %sCLType* null, %sCLType** %31, align 8
  br label %cond_end11

cond_end11:                                       ; preds = %cond_else_block, %cond_jump_then
  %v15 = load %sVar*, %sVar** %v, align 8
  %vtable16 = load %sVarTable*, %sVarTable** %vtable, align 8
  %32 = getelementptr inbounds %sVarTable, %sVarTable* %vtable16, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %sVar, %sVar* %v15, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %v17 = load %sVar*, %sVar** %v, align 8
  %readonly18 = load i1, i1* %readonly4, align 1
  %35 = getelementptr inbounds %sVar, %sVar* %v17, i32 0, i32 4
  store i1 %readonly18, i1* %35, align 1
  %vtable19 = load %sVarTable*, %sVarTable** %vtable, align 8
  %36 = getelementptr inbounds %sVarTable, %sVarTable* %vtable19, i32 0, i32 0
  %37 = load %map__charp_sVarp*, %map__charp_sVarp** %36, align 8
  %name20 = load i8*, i8** %name2, align 8
  %38 = call i8* @string(i8* %name20)
  %v21 = load %sVar*, %sVar** %v, align 8
  call void @"map_insert_charp_sVarp7_src/vtable"(%map__charp_sVarp* %37, i8* %38, %sVar* %v21)
  %info22 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %39 = getelementptr inbounds %sParserInfo, %sParserInfo* %info22, i32 0, i32 10
  %40 = load %vector__sVarp*, %vector__sVarp** %39, align 8
  %v23 = load %sVar*, %sVar** %v, align 8
  call void @"vector_push_back_sVarp10_src/vtable"(%vector__sVarp* %40, %sVar* %v23)
  %41 = bitcast [8192 x i8*]* %lvtable to i8*
  %42 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %41, i64 65536)
  ret void
}

define %sVar* @get_variable_from_table(%sParserInfo* %info, i8* %name) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %name2 = alloca i8*
  store i8* %name, i8** %name2, align 8
  %3 = bitcast i8** %name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %4 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 7
  %5 = load %vector__sVarTablep*, %vector__sVarTablep** %4, align 8
  %6 = call %sVarTable* @"vector_item_sVarTablep11_src/vtable"(%vector__sVarTablep* %5, i32 -1, %sVarTable* null)
  %it = alloca %sVarTable*
  %7 = bitcast %sVarTable** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sVarTable* %6, %sVarTable** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %it4 = load %sVarTable*, %sVarTable** %it, align 8
  %8 = ptrtoint %sVarTable* %it4 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %11 = bitcast i8* %10 to %sVarTable**
  %it5 = load %sVarTable*, %sVarTable** %11, align 8
  %12 = getelementptr inbounds %sVarTable, %sVarTable* %it5, i32 0, i32 0
  %13 = load %map__charp_sVarp*, %map__charp_sVarp** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %15 = bitcast i8* %14 to i8**
  %name6 = load i8*, i8** %15, align 8
  %16 = call %sVar* @"map_at_charp_sVarp12_src/vtable"(%map__charp_sVarp* %13, i8* %name6, %sVar* null)
  %v = alloca %sVar*
  %17 = bitcast %sVar** %v to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store %sVar* %16, %sVar** %v, align 8
  %v7 = load %sVar*, %sVar** %v, align 8
  %18 = ptrtoint %sVar* %v7 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret %sVar* null

cond_jump_then:                                   ; preds = %cond_then_block
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %23 = bitcast i8* %22 to %sVar**
  %v8 = load %sVar*, %sVar** %23, align 8
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  ret %sVar* %v8

cond_end:                                         ; preds = %cond_then_block
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %27 = bitcast i8* %26 to %sVarTable**
  %it9 = load %sVarTable*, %sVarTable** %27, align 8
  %28 = getelementptr inbounds %sVarTable, %sVarTable* %it9, i32 0, i32 4
  %29 = load %sVarTable*, %sVarTable** %28, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %31 = bitcast i8* %30 to %sVarTable**
  store %sVarTable* %29, %sVarTable** %31, align 8
  br label %loop_top_block
}

define void @check_already_added_variable(%sParserInfo* %info, i8* %name) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %info1 = alloca %sParserInfo*
  store %sParserInfo* %info, %sParserInfo** %info1, align 8
  %2 = bitcast %sParserInfo** %info1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %name2 = alloca i8*
  store i8* %name, i8** %name2, align 8
  %3 = bitcast i8** %name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %info3 = load %sParserInfo*, %sParserInfo** %info1, align 8
  %4 = getelementptr inbounds %sParserInfo, %sParserInfo* %info3, i32 0, i32 7
  %5 = load %vector__sVarTablep*, %vector__sVarTablep** %4, align 8
  %6 = call %sVarTable* @"vector_item_sVarTablep13_src/vtable"(%vector__sVarTablep* %5, i32 -1, %sVarTable* null)
  %7 = getelementptr inbounds %sVarTable, %sVarTable* %6, i32 0, i32 0
  %8 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %name4 = load i8*, i8** %name2, align 8
  %9 = call %sVar* @"map_at_charp_sVarp14_src/vtable"(%map__charp_sVarp* %8, i8* %name4, %sVar* null)
  %noteqtmp = icmp ne %sVar* %9, null
  br i1 %noteqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %11 = bitcast i8* %10 to %sParserInfo**
  %info5 = load %sParserInfo*, %sParserInfo** %11, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %13 = bitcast i8* %12 to i8**
  %name6 = load i8*, i8** %13, align 8
  %14 = call i8* (i8*, ...) @xsprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @global_string.47, i32 0, i32 0), i8* %name6)
  call void @parser_err_msg(%sParserInfo* %info5, i8* %14)
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %16 = bitcast i8* %15 to %sParserInfo**
  %info7 = load %sParserInfo*, %sParserInfo** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %18 = bitcast i8* %17 to %sParserInfo**
  %info8 = load %sParserInfo*, %sParserInfo** %18, align 8
  %19 = getelementptr inbounds %sParserInfo, %sParserInfo* %info8, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %addtmp = add nsw i32 %20, 1
  %21 = getelementptr inbounds %sParserInfo, %sParserInfo* %info7, i32 0, i32 3
  store i32 %addtmp, i32* %21, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %22 = ptrtoint i8* %14 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %cond_then_block, label %cond_end9

cond_end:                                         ; preds = %cond_end9, %entry
  %24 = bitcast [8192 x i8*]* %lvtable to i8*
  %25 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %24, i64 65536)
  ret void

cond_then_block:                                  ; preds = %cond_jump_then
  br label %cond_end9

cond_end9:                                        ; preds = %cond_then_block, %cond_jump_then
  call void @xfree(i8* %14)
  br label %cond_end
}

define i32 @get_var_num(%vector__sVarTablep* %vtables) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %vtables1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %vtables, %vector__sVarTablep** %vtables1, align 8
  %2 = bitcast %vector__sVarTablep** %vtables1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %result = alloca i32
  %3 = bitcast i32* %result to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store i32 0, i32* %result, align 4
  %vtables2 = load %vector__sVarTablep*, %vector__sVarTablep** %vtables1, align 8
  %4 = call %sVarTable* @"vector_item_sVarTablep15_src/vtable"(%vector__sVarTablep* %vtables2, i32 -1, %sVarTable* null)
  %it = alloca %sVarTable*
  %5 = bitcast %sVarTable** %it to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store %sVarTable* %4, %sVarTable** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %it3 = load %sVarTable*, %sVarTable** %it, align 8
  %6 = ptrtoint %sVarTable* %it3 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %9 = bitcast i8* %8 to i32*
  %result4 = load i32, i32* %9, align 4
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %11 = bitcast i8* %10 to %sVarTable**
  %it5 = load %sVarTable*, %sVarTable** %11, align 8
  %12 = getelementptr inbounds %sVarTable, %sVarTable* %it5, i32 0, i32 0
  %13 = load %map__charp_sVarp*, %map__charp_sVarp** %12, align 8
  %14 = call i32 @"map_length_charp_sVarp16_src/vtable"(%map__charp_sVarp* %13)
  %addtmp = add nsw i32 %result4, %14
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %16 = bitcast i8* %15 to i32*
  store i32 %addtmp, i32* %16, align 4
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %18 = bitcast i8* %17 to %sVarTable**
  %it6 = load %sVarTable*, %sVarTable** %18, align 8
  %19 = getelementptr inbounds %sVarTable, %sVarTable* %it6, i32 0, i32 0
  %20 = load %map__charp_sVarp*, %map__charp_sVarp** %19, align 8
  %21 = call i32 @"map_length_charp_sVarp17_src/vtable"(%map__charp_sVarp* %20)
  %subttmp = sub nsw i32 %addtmp, %21
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %23 = bitcast i8* %22 to %sVarTable**
  %it7 = load %sVarTable*, %sVarTable** %23, align 8
  %24 = getelementptr inbounds %sVarTable, %sVarTable* %it7, i32 0, i32 4
  %25 = load %sVarTable*, %sVarTable** %24, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %27 = bitcast i8* %26 to %sVarTable**
  store %sVarTable* %25, %sVarTable** %27, align 8
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %result8 = load i32, i32* %result, align 4
  %28 = bitcast [8192 x i8*]* %lvtable to i8*
  %29 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %28, i64 65536)
  ret i32 %result8
}

define void @show_vtable(%vector__sVarTablep* %vtables) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %vtables1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %vtables, %vector__sVarTablep** %vtables1, align 8
  %2 = bitcast %vector__sVarTablep** %vtables1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 430), align 8
  %3 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.48, i32 0, i32 0))
  %vtables2 = load %vector__sVarTablep*, %vector__sVarTablep** %vtables1, align 8
  %4 = call %sVarTable* @"vector_item_sVarTablep18_src/vtable"(%vector__sVarTablep* %vtables2, i32 -1, %sVarTable* null)
  %it = alloca %sVarTable*
  %5 = bitcast %sVarTable** %it to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  store %sVarTable* %4, %sVarTable** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %it3 = load %sVarTable*, %sVarTable** %it, align 8
  %6 = ptrtoint %sVarTable* %it3 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %9 = bitcast i8* %8 to %sVarTable**
  %it4 = load %sVarTable*, %sVarTable** %9, align 8
  %10 = getelementptr inbounds %sVarTable, %sVarTable* %it4, i32 0, i32 0
  %11 = load %map__charp_sVarp*, %map__charp_sVarp** %10, align 8
  call void @"map_each_charp_sVarp19_src/vtable"(%map__charp_sVarp* %11, void (i8*, %sVar*, i1*)* @vtable_lambda1)
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %13 = bitcast i8* %12 to %sVarTable**
  %it5 = load %sVarTable*, %sVarTable** %13, align 8
  %14 = getelementptr inbounds %sVarTable, %sVarTable* %it5, i32 0, i32 4
  %15 = load %sVarTable*, %sVarTable** %14, align 8
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %17 = bitcast i8* %16 to %sVarTable**
  store %sVarTable* %15, %sVarTable** %17, align 8
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %18 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.53, i32 0, i32 0))
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret void
}

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

declare void @mark_object(i32, i8*, %sVMInfo*)

declare i1 @free_object(i32, %sVMInfo*)

declare void @mark_belong_objects(i32, i8*, %sVMInfo*)

declare void @alignment(i32*)

declare i1 @parse_block(%sCLNodeBlock**, i32, %sCLParam*, %sParserInfo*)

declare i1 @compile_block(%sCLNodeBlock*, %sCompileInfo*)

define %map__charp_sVarp* @"map_initialize_charp_sVarp0_src/vtable"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %3 = call i8* @debug_xcalloc(i64 128, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.5, i32 0, i32 0), i32 2007, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.7, i32 0, i32 0))
  %4 = bitcast i8* %3 to i8**
  %5 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self2, i32 0, i32 0
  store i8** %4, i8*** %5, align 8
  %self3 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %6 = call i8* @debug_xcalloc(i64 128, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.9, i32 0, i32 0), i32 2008, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.11, i32 0, i32 0))
  %7 = bitcast i8* %6 to %sVar**
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self3, i32 0, i32 2
  store %sVar** %7, %sVar*** %8, align 8
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %9 = call i8* @debug_xcalloc(i64 128, i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.13, i32 0, i32 0), i32 2009, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.14, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.15, i32 0, i32 0))
  %10 = bitcast i8* %9 to i1*
  %11 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 1
  store i1* %10, i1** %11, align 8
  %i = alloca i32
  %12 = bitcast i32* %i to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %i5 = load i32, i32* %i, align 4
  %letmp = icmp slt i32 %i5, 128
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %14 = bitcast i8* %13 to %map__charp_sVarp**
  %self6 = load %map__charp_sVarp*, %map__charp_sVarp** %14, align 8
  %15 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self6, i32 0, i32 1
  %16 = load i1*, i1** %15, align 8
  %i7 = load i32, i32* %i, align 4
  %element_address = getelementptr i1, i1* %16, i32 %i7
  store i1 false, i1* %element_address, align 1
  %i8 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i8, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %self9 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %17 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self9, i32 0, i32 3
  store i32 128, i32* %17, align 4
  %self10 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %18 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self10, i32 0, i32 4
  store i32 0, i32* %18, align 4
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %19 = bitcast [8192 x i8*]* %lvtable to i8*
  %20 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %19, i64 65536)
  ret %map__charp_sVarp* %self11
}

define void @"map_finalize_charp_sVarp1_src/vtable"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %eqtmpX = icmp eq %map__charp_sVarp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %i6 = load i32, i32* %i, align 4
  %element_address = getelementptr i1, i1* %13, i32 %i6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then7, label %cond_end8

cond_end_block:                                   ; preds = %loop_top_block
  %self20 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %14 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self20, i32 0, i32 2
  %15 = load %sVar**, %sVar*** %14, align 8
  %16 = load %sVar**, %sVar*** %14, align 8
  %17 = bitcast %sVar** %16 to i8*
  call void @xfree(i8* %17)
  %i21 = alloca i32
  %18 = bitcast i32* %i21 to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  store i32 0, i32* %i21, align 4
  br label %loop_top_block22

cond_jump_then7:                                  ; preds = %cond_then_block
  br i1 false, label %cond_jump_then9, label %cond_end10

cond_end8:                                        ; preds = %cond_end10, %cond_then_block
  %i19 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i19, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then9:                                  ; preds = %cond_jump_then7
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %24 = bitcast i8* %23 to i32*
  %i12 = load i32, i32* %24, align 4
  %element_address13 = getelementptr %sVar*, %sVar** %22, i32 %i12
  %element14 = load %sVar*, %sVar** %element_address13, align 8
  %25 = load %sVar*, %sVar** %element_address13, align 8
  %26 = ptrtoint %sVar* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block15, label %cond_end16

cond_end10:                                       ; preds = %cond_end16, %cond_jump_then7
  br label %cond_end8

cond_then_block15:                                ; preds = %cond_jump_then9
  %28 = getelementptr inbounds %sVar, %sVar* %25, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block17, label %cond_end18

cond_end16:                                       ; preds = %cond_end18, %cond_jump_then9
  %32 = bitcast %sVar* %25 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10

cond_then_block17:                                ; preds = %cond_then_block15
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_then_block15
  call void @xfree(i8* %29)
  br label %cond_end16

loop_top_block22:                                 ; preds = %cond_end33, %cond_end_block
  %i23 = load i32, i32* %i21, align 4
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %38 = bitcast i8* %37 to %map__charp_sVarp**
  %self28 = load %map__charp_sVarp*, %map__charp_sVarp** %38, align 8
  %39 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self28, i32 0, i32 1
  %40 = load i1*, i1** %39, align 8
  %i29 = load i32, i32* %i21, align 4
  %element_address30 = getelementptr i1, i1* %40, i32 %i29
  %element31 = load i1, i1* %element_address30, align 1
  br i1 %element31, label %cond_jump_then32, label %cond_end33

cond_end_block27:                                 ; preds = %loop_top_block22
  %self45 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %41 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self45, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8**, i8*** %41, align 8
  %44 = bitcast i8** %43 to i8*
  call void @xfree(i8* %44)
  %self46 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %45 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self46, i32 0, i32 1
  %46 = load i1*, i1** %45, align 8
  %47 = load i1*, i1** %45, align 8
  %48 = ptrtoint i1* %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %cond_then_block47, label %cond_end48

cond_jump_then32:                                 ; preds = %cond_then_block26
  br i1 true, label %cond_jump_then34, label %cond_end35

cond_end33:                                       ; preds = %cond_end35, %cond_then_block26
  %i42 = load i32, i32* %i21, align 4
  %addtmp43 = add nsw i32 %i42, 1
  store i32 %addtmp43, i32* %i21, align 4
  %subttmp44 = sub nsw i32 %addtmp43, 1
  br label %loop_top_block22

cond_jump_then34:                                 ; preds = %cond_jump_then32
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 431), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %55 = bitcast i8* %54 to i32*
  %i37 = load i32, i32* %55, align 4
  %element_address38 = getelementptr i8*, i8** %53, i32 %i37
  %element39 = load i8*, i8** %element_address38, align 8
  %56 = load i8*, i8** %element_address38, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %cond_then_block40, label %cond_end41

cond_end35:                                       ; preds = %cond_end41, %cond_jump_then32
  br label %cond_end33

cond_then_block40:                                ; preds = %cond_jump_then34
  br label %cond_end41

cond_end41:                                       ; preds = %cond_then_block40, %cond_jump_then34
  call void @xfree(i8* %56)
  br label %cond_end35

cond_then_block47:                                ; preds = %cond_end_block27
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end_block27
  %59 = bitcast i1* %47 to i8*
  call void @xfree(i8* %59)
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  ret void
}

define %sVarTable* @"vector_item_sVarTablep2_src/vtable"(%vector__sVarTablep* %self, i32 %index, %sVarTable* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %default_value3 = alloca %sVarTable*
  store %sVarTable* %default_value, %sVarTable** %default_value3, align 8
  %4 = bitcast %sVarTable** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %8 = bitcast i8* %7 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %8, align 8
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %14 = bitcast i8* %13 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %14, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 1
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
  %self11 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %17 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i8* %19 to %vector__sVarTablep**
  %self15 = load %vector__sVarTablep*, %vector__sVarTablep** %20, align 8
  %21 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self15, i32 0, i32 0
  %22 = load %sVarTable**, %sVarTable*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %22, i32 %index16
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sVarTable* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %sVarTable*, %sVarTable** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %sVarTable* %default_value17
}

define void @"vector_push_back_sVarTablep3_src/vtable"(%vector__sVarTablep* %self, %sVarTable* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %item2 = alloca %sVarTable*
  store %sVarTable* %item, %sVarTable** %item2, align 8
  %3 = bitcast %sVarTable** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self3 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %4 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %6 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %9 = bitcast i8* %8 to %vector__sVarTablep**
  %self5 = load %vector__sVarTablep*, %vector__sVarTablep** %9, align 8
  %10 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %14 = bitcast i8* %13 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %14, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 0
  %16 = load %sVarTable**, %sVarTable*** %15, align 8
  %items = alloca %sVarTable**
  %17 = bitcast %sVarTable*** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store %sVarTable** %16, %sVarTable*** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %19 = bitcast i8* %18 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = zext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.21, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.22, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_string.23, i32 0, i32 0))
  %21 = bitcast i8* %20 to %sVarTable**
  %22 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 0
  store %sVarTable** %21, %sVarTable*** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %entry
  %self20 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %26 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self20, i32 0, i32 0
  %27 = load %sVarTable**, %sVarTable*** %26, align 8
  %self21 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %28 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self21, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item22 = load %sVarTable*, %sVarTable** %item2, align 8
  %element_address23 = getelementptr %sVarTable*, %sVarTable** %27, i32 %29
  store %sVarTable* %item22, %sVarTable** %element_address23, align 8
  %self24 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %self25 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %30 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self25, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp26 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self24, i32 0, i32 1
  store i32 %addtmp26, i32* %32, align 4
  %subttmp27 = sub nsw i32 %addtmp26, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %38 = bitcast i8* %37 to %vector__sVarTablep**
  %self10 = load %vector__sVarTablep*, %vector__sVarTablep** %38, align 8
  %39 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %42 = bitcast i8* %41 to %vector__sVarTablep**
  %self11 = load %vector__sVarTablep*, %vector__sVarTablep** %42, align 8
  %43 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self11, i32 0, i32 0
  %44 = load %sVarTable**, %sVarTable*** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %48 = bitcast i8* %47 to %sVarTable***
  %items13 = load %sVarTable**, %sVarTable*** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %items13, i32 %i14
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %element_address15 = getelementptr %sVarTable*, %sVarTable** %44, i32 %i12
  store %sVarTable* %element, %sVarTable** %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %56 = bitcast i8* %55 to %vector__sVarTablep**
  %self17 = load %vector__sVarTablep*, %vector__sVarTablep** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %sVarTable**, %sVarTable*** %items, align 8
  %58 = load %sVarTable**, %sVarTable*** %items, align 8
  %59 = bitcast %sVarTable** %58 to i8*
  call void @xfree(i8* %59)
  br label %cond_end
}

define %sVarTable* @"vector_pop_back_sVarTablep4_src/vtable"(%vector__sVarTablep* %self, %sVarTable* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %default_value2 = alloca %sVarTable*
  store %sVarTable* %default_value, %sVarTable** %default_value2, align 8
  %3 = bitcast %sVarTable** %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self3 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %4 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %7 = bitcast i8* %6 to %sVarTable**
  %default_value4 = load %sVarTable*, %sVarTable** %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %sVarTable* %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %10 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self5, i32 0, i32 0
  %11 = load %sVarTable**, %sVarTable*** %10, align 8
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %12 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %sVarTable*, %sVarTable** %11, i32 %subttmp
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %result = alloca %sVarTable*
  %14 = bitcast %sVarTable** %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store %sVarTable* %element, %sVarTable** %result, align 8
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %self8 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %sVarTable*, %sVarTable** %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %sVarTable* %result10
}

define void @"map_finalize_charp_sVarp5_src/vtable"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %eqtmpX = icmp eq %map__charp_sVarp* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end8, %cond_end
  %i3 = load i32, i32* %i, align 4
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %7 = bitcast i8* %6 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %7, align 8
  %8 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %letmp = icmp slt i32 %i3, %9
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %i6 = load i32, i32* %i, align 4
  %element_address = getelementptr i1, i1* %13, i32 %i6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then7, label %cond_end8

cond_end_block:                                   ; preds = %loop_top_block
  %self20 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %14 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self20, i32 0, i32 2
  %15 = load %sVar**, %sVar*** %14, align 8
  %16 = load %sVar**, %sVar*** %14, align 8
  %17 = bitcast %sVar** %16 to i8*
  call void @xfree(i8* %17)
  %i21 = alloca i32
  %18 = bitcast i32* %i21 to i8*
  store i8* %18, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  store i32 0, i32* %i21, align 4
  br label %loop_top_block22

cond_jump_then7:                                  ; preds = %cond_then_block
  br i1 false, label %cond_jump_then9, label %cond_end10

cond_end8:                                        ; preds = %cond_end10, %cond_then_block
  %i19 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i19, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_jump_then9:                                  ; preds = %cond_jump_then7
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i8* %19 to %map__charp_sVarp**
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %20, align 8
  %21 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 2
  %22 = load %sVar**, %sVar*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %24 = bitcast i8* %23 to i32*
  %i12 = load i32, i32* %24, align 4
  %element_address13 = getelementptr %sVar*, %sVar** %22, i32 %i12
  %element14 = load %sVar*, %sVar** %element_address13, align 8
  %25 = load %sVar*, %sVar** %element_address13, align 8
  %26 = ptrtoint %sVar* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block15, label %cond_end16

cond_end10:                                       ; preds = %cond_end16, %cond_jump_then7
  br label %cond_end8

cond_then_block15:                                ; preds = %cond_jump_then9
  %28 = getelementptr inbounds %sVar, %sVar* %25, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_then_block17, label %cond_end18

cond_end16:                                       ; preds = %cond_end18, %cond_jump_then9
  %32 = bitcast %sVar* %25 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10

cond_then_block17:                                ; preds = %cond_then_block15
  br label %cond_end18

cond_end18:                                       ; preds = %cond_then_block17, %cond_then_block15
  call void @xfree(i8* %29)
  br label %cond_end16

loop_top_block22:                                 ; preds = %cond_end33, %cond_end_block
  %i23 = load i32, i32* %i21, align 4
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self24 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self24, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %letmp25 = icmp slt i32 %i23, %36
  br i1 %letmp25, label %cond_then_block26, label %cond_end_block27

cond_then_block26:                                ; preds = %loop_top_block22
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %38 = bitcast i8* %37 to %map__charp_sVarp**
  %self28 = load %map__charp_sVarp*, %map__charp_sVarp** %38, align 8
  %39 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self28, i32 0, i32 1
  %40 = load i1*, i1** %39, align 8
  %i29 = load i32, i32* %i21, align 4
  %element_address30 = getelementptr i1, i1* %40, i32 %i29
  %element31 = load i1, i1* %element_address30, align 1
  br i1 %element31, label %cond_jump_then32, label %cond_end33

cond_end_block27:                                 ; preds = %loop_top_block22
  %self45 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %41 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self45, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8**, i8*** %41, align 8
  %44 = bitcast i8** %43 to i8*
  call void @xfree(i8* %44)
  %self46 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %45 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self46, i32 0, i32 1
  %46 = load i1*, i1** %45, align 8
  %47 = load i1*, i1** %45, align 8
  %48 = ptrtoint i1* %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %cond_then_block47, label %cond_end48

cond_jump_then32:                                 ; preds = %cond_then_block26
  br i1 true, label %cond_jump_then34, label %cond_end35

cond_end33:                                       ; preds = %cond_end35, %cond_then_block26
  %i42 = load i32, i32* %i21, align 4
  %addtmp43 = add nsw i32 %i42, 1
  store i32 %addtmp43, i32* %i21, align 4
  %subttmp44 = sub nsw i32 %addtmp43, 1
  br label %loop_top_block22

cond_jump_then34:                                 ; preds = %cond_jump_then32
  %50 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %51 = bitcast i8* %50 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %51, align 8
  %52 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %55 = bitcast i8* %54 to i32*
  %i37 = load i32, i32* %55, align 4
  %element_address38 = getelementptr i8*, i8** %53, i32 %i37
  %element39 = load i8*, i8** %element_address38, align 8
  %56 = load i8*, i8** %element_address38, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %cond_then_block40, label %cond_end41

cond_end35:                                       ; preds = %cond_end41, %cond_jump_then32
  br label %cond_end33

cond_then_block40:                                ; preds = %cond_jump_then34
  br label %cond_end41

cond_end41:                                       ; preds = %cond_then_block40, %cond_jump_then34
  call void @xfree(i8* %56)
  br label %cond_end35

cond_then_block47:                                ; preds = %cond_end_block27
  br label %cond_end48

cond_end48:                                       ; preds = %cond_then_block47, %cond_end_block27
  %59 = bitcast i1* %47 to i8*
  call void @xfree(i8* %59)
  %60 = bitcast [8192 x i8*]* %lvtable to i8*
  %61 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %60, i64 65536)
  ret void
}

define %sVarTable* @"vector_item_sVarTablep6_src/vtable"(%vector__sVarTablep* %self, i32 %index, %sVarTable* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %default_value3 = alloca %sVarTable*
  store %sVarTable* %default_value, %sVarTable** %default_value3, align 8
  %4 = bitcast %sVarTable** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %8 = bitcast i8* %7 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %8, align 8
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %14 = bitcast i8* %13 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %14, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 1
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
  %self11 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %17 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %20 = bitcast i8* %19 to %vector__sVarTablep**
  %self15 = load %vector__sVarTablep*, %vector__sVarTablep** %20, align 8
  %21 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self15, i32 0, i32 0
  %22 = load %sVarTable**, %sVarTable*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %22, i32 %index16
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sVarTable* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %sVarTable*, %sVarTable** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %sVarTable* %default_value17
}

define void @"map_insert_charp_sVarp7_src/vtable"(%map__charp_sVarp* %self, i8* %key, %sVar* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %item3 = alloca %sVar*
  store %sVar* %item, %sVar** %item3, align 8
  %4 = bitcast %sVar** %item3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %5 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %multtmp = mul nsw i32 %6, 2
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %7 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %getmp = icmp sge i32 %multtmp, %8
  br i1 %getmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %10 = bitcast i8* %9 to %map__charp_sVarp**
  %self6 = load %map__charp_sVarp*, %map__charp_sVarp** %10, align 8
  call void @"map_rehash_charp_sVarp8_src/vtable"(%map__charp_sVarp* %self6)
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %key7 = load i8*, i8** %key2, align 8
  %11 = call i32 @string_get_hash_key(i8* %key7)
  %self8 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self8, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %remtmp = srem i32 %11, %13
  %hash = alloca i32
  %14 = bitcast i32* %hash to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash9 = load i32, i32* %hash, align 4
  %it = alloca i32
  %15 = bitcast i32* %it to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  store i32 %hash9, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end13, %cond_end
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %17 = bitcast i8* %16 to %map__charp_sVarp**
  %self10 = load %map__charp_sVarp*, %map__charp_sVarp** %17, align 8
  %18 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self10, i32 0, i32 1
  %19 = load i1*, i1** %18, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %21 = bitcast i8* %20 to i32*
  %it11 = load i32, i32* %21, align 4
  %element_address = getelementptr i1, i1* %19, i32 %it11
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then12, label %cond_else_block

cond_end_block:                                   ; preds = %cond_else_block, %cond_jump_then19, %loop_top_block
  %22 = bitcast [8192 x i8*]* %lvtable to i8*
  %23 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %22, i64 65536)
  ret void

cond_jump_then12:                                 ; preds = %cond_then_block
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %25 = bitcast i8* %24 to %map__charp_sVarp**
  %self14 = load %map__charp_sVarp*, %map__charp_sVarp** %25, align 8
  %26 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self14, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %29 = bitcast i8* %28 to i32*
  %it15 = load i32, i32* %29, align 4
  %element_address16 = getelementptr i8*, i8** %27, i32 %it15
  %element17 = load i8*, i8** %element_address16, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %31 = bitcast i8* %30 to i8**
  %key18 = load i8*, i8** %31, align 8
  %32 = call i1 @string_equals(i8* %element17, i8* %key18)
  br i1 %32, label %cond_jump_then19, label %cond_end20

cond_else_block:                                  ; preds = %cond_then_block
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %34 = bitcast i8* %33 to %map__charp_sVarp**
  %self33 = load %map__charp_sVarp*, %map__charp_sVarp** %34, align 8
  %35 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self33, i32 0, i32 1
  %36 = load i1*, i1** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %38 = bitcast i8* %37 to i32*
  %it34 = load i32, i32* %38, align 4
  %element_address35 = getelementptr i1, i1* %36, i32 %it34
  store i1 true, i1* %element_address35, align 1
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %40 = bitcast i8* %39 to %map__charp_sVarp**
  %self36 = load %map__charp_sVarp*, %map__charp_sVarp** %40, align 8
  %41 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self36, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %44 = bitcast i8* %43 to i32*
  %it37 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %46 = bitcast i8* %45 to i8**
  %key38 = load i8*, i8** %46, align 8
  %element_address39 = getelementptr i8*, i8** %42, i32 %it37
  store i8* %key38, i8** %element_address39, align 8
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %48 = bitcast i8* %47 to %map__charp_sVarp**
  %self40 = load %map__charp_sVarp*, %map__charp_sVarp** %48, align 8
  %49 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self40, i32 0, i32 2
  %50 = load %sVar**, %sVar*** %49, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %52 = bitcast i8* %51 to i32*
  %it41 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %54 = bitcast i8* %53 to %sVar**
  %item42 = load %sVar*, %sVar** %54, align 8
  %element_address43 = getelementptr %sVar*, %sVar** %50, i32 %it41
  store %sVar* %item42, %sVar** %element_address43, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %56 = bitcast i8* %55 to %map__charp_sVarp**
  %self44 = load %map__charp_sVarp*, %map__charp_sVarp** %56, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %58 = bitcast i8* %57 to %map__charp_sVarp**
  %self45 = load %map__charp_sVarp*, %map__charp_sVarp** %58, align 8
  %59 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self45, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %addtmp46 = add nsw i32 %60, 1
  %61 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self44, i32 0, i32 4
  store i32 %addtmp46, i32* %61, align 4
  %subttmp47 = sub nsw i32 %addtmp46, 1
  br label %cond_end_block

cond_end13:                                       ; preds = %after_break48, %cond_end30
  br label %loop_top_block

cond_jump_then19:                                 ; preds = %cond_jump_then12
  %62 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %63 = bitcast i8* %62 to %map__charp_sVarp**
  %self21 = load %map__charp_sVarp*, %map__charp_sVarp** %63, align 8
  %64 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self21, i32 0, i32 2
  %65 = load %sVar**, %sVar*** %64, align 8
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %67 = bitcast i8* %66 to i32*
  %it22 = load i32, i32* %67, align 4
  %68 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %69 = bitcast i8* %68 to %sVar**
  %item23 = load %sVar*, %sVar** %69, align 8
  %element_address24 = getelementptr %sVar*, %sVar** %65, i32 %it22
  store %sVar* %item23, %sVar** %element_address24, align 8
  br label %cond_end_block

cond_end20:                                       ; preds = %after_break, %cond_jump_then12
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %71 = bitcast i8* %70 to i32*
  %it25 = load i32, i32* %71, align 4
  %addtmp = add nsw i32 %it25, 1
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %73 = bitcast i8* %72 to i32*
  store i32 %addtmp, i32* %73, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %75 = bitcast i8* %74 to i32*
  %it26 = load i32, i32* %75, align 4
  %76 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %77 = bitcast i8* %76 to %map__charp_sVarp**
  %self27 = load %map__charp_sVarp*, %map__charp_sVarp** %77, align 8
  %78 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self27, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %getmp28 = icmp sge i32 %it26, %79
  br i1 %getmp28, label %cond_jump_then29, label %"cond_jump_elif0\0A"

after_break:                                      ; No predecessors!
  br label %cond_end20

cond_jump_then29:                                 ; preds = %cond_end20
  %80 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %81 = bitcast i8* %80 to i32*
  store i32 0, i32* %81, align 4
  br label %cond_end30

"cond_jump_elif0\0A":                             ; preds = %cond_end20
  %82 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %83 = bitcast i8* %82 to i32*
  %it31 = load i32, i32* %83, align 4
  %84 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %85 = bitcast i8* %84 to i32*
  %hash32 = load i32, i32* %85, align 4
  %eqtmpX = icmp eq i32 %it31, %hash32
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end30

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %86 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.42, i32 0, i32 0))
  call void @exit(i32 2)
  br label %cond_end30

cond_end30:                                       ; preds = %"cond_jump_elif_then0\0A", %"cond_jump_elif0\0A", %cond_jump_then29
  br label %cond_end13

after_break48:                                    ; No predecessors!
  br label %cond_end13
}

define void @"map_rehash_charp_sVarp8_src/vtable"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 441), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self2, i32 0, i32 3
  %4 = load i32, i32* %3, align 4
  %multtmp = mul nsw i32 %4, 3
  %size = alloca i32
  %5 = bitcast i32* %size to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  store i32 %multtmp, i32* %size, align 4
  %size3 = load i32, i32* %size, align 4
  %sext14 = zext i32 %size3 to i64
  %6 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.29, i32 0, i32 0), i32 2083, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_string.30, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.31, i32 0, i32 0))
  %7 = bitcast i8* %6 to i8**
  %keys = alloca i8**
  %8 = bitcast i8*** %keys to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  store i8** %7, i8*** %keys, align 8
  %size4 = load i32, i32* %size, align 4
  %sext145 = zext i32 %size4 to i64
  %9 = call i8* @debug_xcalloc(i64 %sext145, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.33, i32 0, i32 0), i32 2084, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_string.34, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.35, i32 0, i32 0))
  %10 = bitcast i8* %9 to %sVar**
  %items = alloca %sVar**
  %11 = bitcast %sVar*** %items to i8*
  store i8* %11, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  store %sVar** %10, %sVar*** %items, align 8
  %size6 = load i32, i32* %size, align 4
  %sext147 = zext i32 %size6 to i64
  %12 = call i8* @debug_xcalloc(i64 %sext147, i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_string.36, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.37, i32 0, i32 0), i32 2085, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_string.38, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.39, i32 0, i32 0))
  %13 = bitcast i8* %12 to i1*
  %item_existance = alloca i1*
  %14 = bitcast i1** %item_existance to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  store i1* %13, i1** %item_existance, align 8
  %len = alloca i32
  %15 = bitcast i32* %len to i8*
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  store i32 0, i32* %len, align 4
  %self8 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  call void @"map_each_charp_sVarp9_src/vtable"(%map__charp_sVarp* %self8, void (i8*, %sVar*, i1*)* @vtable_lambda0)
  %self9 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %16 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self9, i32 0, i32 2
  %17 = load %sVar**, %sVar*** %16, align 8
  %18 = load %sVar**, %sVar*** %16, align 8
  %19 = bitcast %sVar** %18 to i8*
  call void @xfree(i8* %19)
  %self10 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %20 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self10, i32 0, i32 1
  %21 = load i1*, i1** %20, align 8
  %22 = load i1*, i1** %20, align 8
  %23 = ptrtoint i1* %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  br label %cond_end

cond_end:                                         ; preds = %cond_then_block, %entry
  %25 = bitcast i1* %22 to i8*
  call void @xfree(i8* %25)
  %self11 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %26 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self11, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i8**, i8*** %26, align 8
  %29 = bitcast i8** %28 to i8*
  call void @xfree(i8* %29)
  %self12 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %keys13 = load i8**, i8*** %keys, align 8
  %30 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self12, i32 0, i32 0
  store i8** %keys13, i8*** %30, align 8
  %self14 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %items15 = load %sVar**, %sVar*** %items, align 8
  %31 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self14, i32 0, i32 2
  store %sVar** %items15, %sVar*** %31, align 8
  %self16 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %item_existance17 = load i1*, i1** %item_existance, align 8
  %32 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self16, i32 0, i32 1
  store i1* %item_existance17, i1** %32, align 8
  %self18 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %size19 = load i32, i32* %size, align 4
  %33 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self18, i32 0, i32 3
  store i32 %size19, i32* %33, align 4
  %self20 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %len21 = load i32, i32* %len, align 4
  %34 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self20, i32 0, i32 4
  store i32 %len21, i32* %34, align 4
  %35 = bitcast [8192 x i8*]* %lvtable to i8*
  %36 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %35, i64 65536)
  ret void
}

define void @vtable_lambda0(i8* %it, %sVar* %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %it22 = alloca %sVar*
  store %sVar* %it2, %sVar** %it22, align 8
  %3 = bitcast %sVar** %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %it4 = load i8*, i8** %it1, align 8
  %5 = call i32 @string_get_hash_key(i8* %it4)
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %7 = bitcast i8* %6 to i32*
  %size = load i32, i32* %7, align 4
  %remtmp = srem i32 %5, %size
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash5 = load i32, i32* %hash, align 4
  %n = alloca i32
  %9 = bitcast i32* %n to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  store i32 %hash5, i32* %n, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %11 = bitcast i8* %10 to i1**
  %item_existance = load i1*, i1** %11, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %13 = bitcast i8* %12 to i32*
  %n6 = load i32, i32* %13, align 4
  %element_address = getelementptr i1, i1* %item_existance, i32 %n6
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %14 = bitcast [8192 x i8*]* %lvtable to i8*
  %15 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %14, i64 65536)
  ret void

cond_jump_then:                                   ; preds = %cond_then_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %17 = bitcast i8* %16 to i32*
  %n7 = load i32, i32* %17, align 4
  %addtmp = add nsw i32 %n7, 1
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %19 = bitcast i8* %18 to i32*
  store i32 %addtmp, i32* %19, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %21 = bitcast i8* %20 to i32*
  %n8 = load i32, i32* %21, align 4
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 442), align 8
  %23 = bitcast i8* %22 to i32*
  %size9 = load i32, i32* %23, align 4
  %getmp = icmp sge i32 %n8, %size9
  br i1 %getmp, label %cond_jump_then10, label %"cond_jump_elif0\0A"

cond_else_block:                                  ; preds = %cond_then_block
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 445), align 8
  %25 = bitcast i8* %24 to i1**
  %item_existance14 = load i1*, i1** %25, align 8
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %27 = bitcast i8* %26 to i32*
  %n15 = load i32, i32* %27, align 4
  %element_address16 = getelementptr i1, i1* %item_existance14, i32 %n15
  store i1 true, i1* %element_address16, align 1
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 443), align 8
  %29 = bitcast i8* %28 to i8***
  %keys = load i8**, i8*** %29, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %31 = bitcast i8* %30 to i32*
  %n17 = load i32, i32* %31, align 4
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %33 = bitcast i8* %32 to i8**
  %it18 = load i8*, i8** %33, align 8
  %element_address19 = getelementptr i8*, i8** %keys, i32 %n17
  store i8* %it18, i8** %element_address19, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 444), align 8
  %35 = bitcast i8* %34 to %sVar***
  %items = load %sVar**, %sVar*** %35, align 8
  %36 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %37 = bitcast i8* %36 to i32*
  %n20 = load i32, i32* %37, align 4
  %38 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %39 = bitcast i8* %38 to %sVar**
  %it221 = load %sVar*, %sVar** %39, align 8
  %element_address22 = getelementptr %sVar*, %sVar** %items, i32 %n20
  store %sVar* %it221, %sVar** %element_address22, align 8
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %41 = bitcast i8* %40 to i32*
  %len = load i32, i32* %41, align 4
  %addtmp23 = add nsw i32 %len, 1
  %42 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 446), align 8
  %43 = bitcast i8* %42 to i32*
  store i32 %addtmp23, i32* %43, align 4
  %subttmp24 = sub nsw i32 %addtmp23, 1
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_end11
  br label %loop_top_block

cond_jump_then10:                                 ; preds = %cond_jump_then
  %44 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %45 = bitcast i8* %44 to i32*
  store i32 0, i32* %45, align 4
  br label %cond_end11

"cond_jump_elif0\0A":                             ; preds = %cond_jump_then
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 451), align 8
  %47 = bitcast i8* %46 to i32*
  %n12 = load i32, i32* %47, align 4
  %48 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  %49 = bitcast i8* %48 to i32*
  %hash13 = load i32, i32* %49, align 4
  %eqtmpX = icmp eq i32 %n12, %hash13
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end11

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %50 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.41, i32 0, i32 0))
  call void @exit(i32 2)
  br label %cond_end11

cond_end11:                                       ; preds = %"cond_jump_elif_then0\0A", %"cond_jump_elif0\0A", %cond_jump_then10
  br label %cond_end
}

define void @"map_each_charp_sVarp9_src/vtable"(%map__charp_sVarp* %self, void (i8*, %sVar*, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %block_2 = alloca void (i8*, %sVar*, i1*)*
  store void (i8*, %sVar*, i1*)* %block_, void (i8*, %sVar*, i1*)** %block_2, align 8
  %3 = bitcast void (i8*, %sVar*, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %6 = bitcast i8* %5 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %6, align 8
  %7 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %10 = bitcast i8* %9 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %10, align 8
  %11 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
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
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 450), align 8
  store i1 false, i1* %end_flag_, align 1
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 448), align 8
  %17 = bitcast i8* %16 to void (i8*, %sVar*, i1*)**
  %block_7 = load void (i8*, %sVar*, i1*)*, void (i8*, %sVar*, i1*)** %17, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %19 = bitcast i8* %18 to %map__charp_sVarp**
  %self8 = load %map__charp_sVarp*, %map__charp_sVarp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self8, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %23 = bitcast i8* %22 to i32*
  %i_9 = load i32, i32* %23, align 4
  %element_address10 = getelementptr i8*, i8** %21, i32 %i_9
  %element11 = load i8*, i8** %element_address10, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 447), align 8
  %25 = bitcast i8* %24 to %map__charp_sVarp**
  %self12 = load %map__charp_sVarp*, %map__charp_sVarp** %25, align 8
  %26 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self12, i32 0, i32 2
  %27 = load %sVar**, %sVar*** %26, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 449), align 8
  %29 = bitcast i8* %28 to i32*
  %i_13 = load i32, i32* %29, align 4
  %element_address14 = getelementptr %sVar*, %sVar** %27, i32 %i_13
  %element15 = load %sVar*, %sVar** %element_address14, align 8
  %end_flag_16 = load i1, i1* %end_flag_, align 1
  call void %block_7(i8* %element11, %sVar* %element15, i1* %end_flag_)
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

define void @"vector_push_back_sVarp10_src/vtable"(%vector__sVarp* %self, %sVar* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarp*
  store %vector__sVarp* %self, %vector__sVarp** %self1, align 8
  %2 = bitcast %vector__sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %item2 = alloca %sVar*
  store %sVar* %item, %sVar** %item2, align 8
  %3 = bitcast %sVar** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %self3 = load %vector__sVarp*, %vector__sVarp** %self1, align 8
  %4 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__sVarp*, %vector__sVarp** %self1, align 8
  %6 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %9 = bitcast i8* %8 to %vector__sVarp**
  %self5 = load %vector__sVarp*, %vector__sVarp** %9, align 8
  %10 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %14 = bitcast i8* %13 to %vector__sVarp**
  %self6 = load %vector__sVarp*, %vector__sVarp** %14, align 8
  %15 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self6, i32 0, i32 0
  %16 = load %sVar**, %sVar*** %15, align 8
  %items = alloca %sVar**
  %17 = bitcast %sVar*** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  store %sVar** %16, %sVar*** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %19 = bitcast i8* %18 to %vector__sVarp**
  %self7 = load %vector__sVarp*, %vector__sVarp** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = zext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_string.43, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.44, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.45, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.46, i32 0, i32 0))
  %21 = bitcast i8* %20 to %sVar**
  %22 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self7, i32 0, i32 0
  store %sVar** %21, %sVar*** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %entry
  %self20 = load %vector__sVarp*, %vector__sVarp** %self1, align 8
  %26 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self20, i32 0, i32 0
  %27 = load %sVar**, %sVar*** %26, align 8
  %self21 = load %vector__sVarp*, %vector__sVarp** %self1, align 8
  %28 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self21, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item22 = load %sVar*, %sVar** %item2, align 8
  %element_address23 = getelementptr %sVar*, %sVar** %27, i32 %29
  store %sVar* %item22, %sVar** %element_address23, align 8
  %self24 = load %vector__sVarp*, %vector__sVarp** %self1, align 8
  %self25 = load %vector__sVarp*, %vector__sVarp** %self1, align 8
  %30 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self25, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp26 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self24, i32 0, i32 1
  store i32 %addtmp26, i32* %32, align 4
  %subttmp27 = sub nsw i32 %addtmp26, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %38 = bitcast i8* %37 to %vector__sVarp**
  %self10 = load %vector__sVarp*, %vector__sVarp** %38, align 8
  %39 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %42 = bitcast i8* %41 to %vector__sVarp**
  %self11 = load %vector__sVarp*, %vector__sVarp** %42, align 8
  %43 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self11, i32 0, i32 0
  %44 = load %sVar**, %sVar*** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 439), align 8
  %48 = bitcast i8* %47 to %sVar***
  %items13 = load %sVar**, %sVar*** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %sVar*, %sVar** %items13, i32 %i14
  %element = load %sVar*, %sVar** %element_address, align 8
  %element_address15 = getelementptr %sVar*, %sVar** %44, i32 %i12
  store %sVar* %element, %sVar** %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 440), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %56 = bitcast i8* %55 to %vector__sVarp**
  %self17 = load %vector__sVarp*, %vector__sVarp** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__sVarp, %vector__sVarp* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %sVar**, %sVar*** %items, align 8
  %58 = load %sVar**, %sVar*** %items, align 8
  %59 = bitcast %sVar** %58 to i8*
  call void @xfree(i8* %59)
  br label %cond_end
}

define %sVarTable* @"vector_item_sVarTablep11_src/vtable"(%vector__sVarTablep* %self, i32 %index, %sVarTable* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %default_value3 = alloca %sVarTable*
  store %sVarTable* %default_value, %sVarTable** %default_value3, align 8
  %4 = bitcast %sVarTable** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %8 = bitcast i8* %7 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %8, align 8
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %14 = bitcast i8* %13 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %14, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 1
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
  %self11 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %17 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %20 = bitcast i8* %19 to %vector__sVarTablep**
  %self15 = load %vector__sVarTablep*, %vector__sVarTablep** %20, align 8
  %21 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self15, i32 0, i32 0
  %22 = load %sVarTable**, %sVarTable*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %22, i32 %index16
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sVarTable* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %sVarTable*, %sVarTable** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %sVarTable* %default_value17
}

define %sVar* @"map_at_charp_sVarp12_src/vtable"(%map__charp_sVarp* %self, i8* %key, %sVar* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %default_value3 = alloca %sVar*
  store %sVar* %default_value, %sVar** %default_value3, align 8
  %4 = bitcast %sVar** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self7 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sVar*, %sVar** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sVar* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %19 = bitcast i8* %18 to %map__charp_sVarp**
  %self9 = load %map__charp_sVarp*, %map__charp_sVarp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %28 = bitcast i8* %27 to %sVar**
  %default_value28 = load %sVar*, %sVar** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sVar* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %32 = bitcast i8* %31 to %map__charp_sVarp**
  %self16 = load %map__charp_sVarp*, %map__charp_sVarp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self16, i32 0, i32 2
  %34 = load %sVar**, %sVar*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sVar*, %sVar** %34, i32 %it17
  %element19 = load %sVar*, %sVar** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sVar* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %46 = bitcast i8* %45 to %map__charp_sVarp**
  %self22 = load %map__charp_sVarp*, %map__charp_sVarp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 438), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 437), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %56 = bitcast i8* %55 to %sVar**
  %default_value27 = load %sVar*, %sVar** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sVar* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define %sVarTable* @"vector_item_sVarTablep13_src/vtable"(%vector__sVarTablep* %self, i32 %index, %sVarTable* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %default_value3 = alloca %sVarTable*
  store %sVarTable* %default_value, %sVarTable** %default_value3, align 8
  %4 = bitcast %sVarTable** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %8 = bitcast i8* %7 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %8, align 8
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %14 = bitcast i8* %13 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %14, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 1
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
  %self11 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %17 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i8* %19 to %vector__sVarTablep**
  %self15 = load %vector__sVarTablep*, %vector__sVarTablep** %20, align 8
  %21 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self15, i32 0, i32 0
  %22 = load %sVarTable**, %sVarTable*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %22, i32 %index16
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sVarTable* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %sVarTable*, %sVarTable** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %sVarTable* %default_value17
}

define %sVar* @"map_at_charp_sVarp14_src/vtable"(%map__charp_sVarp* %self, i8* %key, %sVar* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %key2 = alloca i8*
  store i8* %key, i8** %key2, align 8
  %3 = bitcast i8** %key2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %default_value3 = alloca %sVar*
  store %sVar* %default_value, %sVar** %default_value3, align 8
  %4 = bitcast %sVar** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %key4 = load i8*, i8** %key2, align 8
  %5 = call i32 @string_get_hash_key(i8* %key4)
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %6 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %remtmp = srem i32 %5, %7
  %hash = alloca i32
  %8 = bitcast i32* %hash to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i32 %remtmp, i32* %hash, align 4
  %hash6 = load i32, i32* %hash, align 4
  %it = alloca i32
  %9 = bitcast i32* %it to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  store i32 %hash6, i32* %it, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  br i1 true, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %11 = bitcast i8* %10 to %map__charp_sVarp**
  %self7 = load %map__charp_sVarp*, %map__charp_sVarp** %11, align 8
  %12 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self7, i32 0, i32 1
  %13 = load i1*, i1** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %15 = bitcast i8* %14 to i32*
  %it8 = load i32, i32* %15, align 4
  %element_address = getelementptr i1, i1* %13, i32 %it8
  %element = load i1, i1* %element_address, align 1
  br i1 %element, label %cond_jump_then, label %cond_else_block

cond_end_block:                                   ; preds = %loop_top_block
  %default_value29 = load %sVar*, %sVar** %default_value3, align 8
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret %sVar* %default_value29

cond_jump_then:                                   ; preds = %cond_then_block
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %19 = bitcast i8* %18 to %map__charp_sVarp**
  %self9 = load %map__charp_sVarp*, %map__charp_sVarp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self9, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %23 = bitcast i8* %22 to i32*
  %it10 = load i32, i32* %23, align 4
  %element_address11 = getelementptr i8*, i8** %21, i32 %it10
  %element12 = load i8*, i8** %element_address11, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %25 = bitcast i8* %24 to i8**
  %key13 = load i8*, i8** %25, align 8
  %26 = call i1 @string_equals(i8* %element12, i8* %key13)
  br i1 %26, label %cond_jump_then14, label %cond_end15

cond_else_block:                                  ; preds = %cond_then_block
  %27 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %28 = bitcast i8* %27 to %sVar**
  %default_value28 = load %sVar*, %sVar** %28, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %sVar* %default_value28

cond_end:                                         ; preds = %cond_end24
  br label %loop_top_block

cond_jump_then14:                                 ; preds = %cond_jump_then
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %32 = bitcast i8* %31 to %map__charp_sVarp**
  %self16 = load %map__charp_sVarp*, %map__charp_sVarp** %32, align 8
  %33 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self16, i32 0, i32 2
  %34 = load %sVar**, %sVar*** %33, align 8
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %36 = bitcast i8* %35 to i32*
  %it17 = load i32, i32* %36, align 4
  %element_address18 = getelementptr %sVar*, %sVar** %34, i32 %it17
  %element19 = load %sVar*, %sVar** %element_address18, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %sVar* %element19

cond_end15:                                       ; preds = %cond_jump_then
  %39 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %40 = bitcast i8* %39 to i32*
  %it20 = load i32, i32* %40, align 4
  %addtmp = add nsw i32 %it20, 1
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %addtmp, i32* %42, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %44 = bitcast i8* %43 to i32*
  %it21 = load i32, i32* %44, align 4
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %46 = bitcast i8* %45 to %map__charp_sVarp**
  %self22 = load %map__charp_sVarp*, %map__charp_sVarp** %46, align 8
  %47 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self22, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %getmp = icmp sge i32 %it21, %48
  br i1 %getmp, label %cond_jump_then23, label %"cond_jump_elif0\0A"

cond_jump_then23:                                 ; preds = %cond_end15
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  br label %cond_end24

"cond_jump_elif0\0A":                             ; preds = %cond_end15
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 436), align 8
  %52 = bitcast i8* %51 to i32*
  %it25 = load i32, i32* %52, align 4
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %54 = bitcast i8* %53 to i32*
  %hash26 = load i32, i32* %54, align 4
  %eqtmpX = icmp eq i32 %it25, %hash26
  br i1 %eqtmpX, label %"cond_jump_elif_then0\0A", label %cond_end24

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %56 = bitcast i8* %55 to %sVar**
  %default_value27 = load %sVar*, %sVar** %56, align 8
  %57 = bitcast [8192 x i8*]* %lvtable to i8*
  %58 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %57, i64 65536)
  ret %sVar* %default_value27

cond_end24:                                       ; preds = %"cond_jump_elif0\0A", %cond_jump_then23
  br label %cond_end
}

define %sVarTable* @"vector_item_sVarTablep15_src/vtable"(%vector__sVarTablep* %self, i32 %index, %sVarTable* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %default_value3 = alloca %sVarTable*
  store %sVarTable* %default_value, %sVarTable** %default_value3, align 8
  %4 = bitcast %sVarTable** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %8 = bitcast i8* %7 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %8, align 8
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %14 = bitcast i8* %13 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %14, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 1
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
  %self11 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %17 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %20 = bitcast i8* %19 to %vector__sVarTablep**
  %self15 = load %vector__sVarTablep*, %vector__sVarTablep** %20, align 8
  %21 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self15, i32 0, i32 0
  %22 = load %sVarTable**, %sVarTable*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %22, i32 %index16
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sVarTable* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %sVarTable*, %sVarTable** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %sVarTable* %default_value17
}

define i32 @"map_length_charp_sVarp16_src/vtable"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define i32 @"map_length_charp_sVarp17_src/vtable"(%map__charp_sVarp* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %self2 = load %map__charp_sVarp*, %map__charp_sVarp** %self1, align 8
  %3 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define %sVarTable* @"vector_item_sVarTablep18_src/vtable"(%vector__sVarTablep* %self, i32 %index, %sVarTable* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__sVarTablep*
  store %vector__sVarTablep* %self, %vector__sVarTablep** %self1, align 8
  %2 = bitcast %vector__sVarTablep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %default_value3 = alloca %sVarTable*
  store %sVarTable* %default_value, %sVarTable** %default_value3, align 8
  %4 = bitcast %sVarTable** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %8 = bitcast i8* %7 to %vector__sVarTablep**
  %self6 = load %vector__sVarTablep*, %vector__sVarTablep** %8, align 8
  %9 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %14 = bitcast i8* %13 to %vector__sVarTablep**
  %self7 = load %vector__sVarTablep*, %vector__sVarTablep** %14, align 8
  %15 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self7, i32 0, i32 1
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
  %self11 = load %vector__sVarTablep*, %vector__sVarTablep** %self1, align 8
  %17 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %20 = bitcast i8* %19 to %vector__sVarTablep**
  %self15 = load %vector__sVarTablep*, %vector__sVarTablep** %20, align 8
  %21 = getelementptr inbounds %vector__sVarTablep, %vector__sVarTablep* %self15, i32 0, i32 0
  %22 = load %sVarTable**, %sVarTable*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %sVarTable*, %sVarTable** %22, i32 %index16
  %element = load %sVarTable*, %sVarTable** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %sVarTable* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %sVarTable*, %sVarTable** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %sVarTable* %default_value17
}

define void @vtable_lambda1(i8* %it, %sVar* %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %it22 = alloca %sVar*
  store %sVar* %it2, %sVar** %it22, align 8
  %3 = bitcast %sVar** %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %it24 = load %sVar*, %sVar** %it22, align 8
  %5 = getelementptr inbounds %sVar, %sVar* %it24, i32 0, i32 2
  %6 = load %sCLType*, %sCLType** %5, align 8
  %7 = ptrtoint %sCLType* %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %cond_jump_then, label %cond_else_block

cond_jump_then:                                   ; preds = %entry
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %10 = bitcast i8* %9 to i8**
  %it5 = load i8*, i8** %10, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %12 = bitcast i8* %11 to %sVar**
  %it26 = load %sVar*, %sVar** %12, align 8
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %14 = bitcast i8* %13 to %sVar**
  %it27 = load %sVar*, %sVar** %14, align 8
  %15 = getelementptr inbounds %sVar, %sVar* %it27, i32 0, i32 2
  %16 = load %sCLType*, %sCLType** %15, align 8
  %17 = getelementptr inbounds %sCLType, %sCLType* %16, i32 0, i32 1
  %18 = load %sCLClass*, %sCLClass** %17, align 8
  %19 = getelementptr inbounds %sCLClass, %sCLClass* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.51, i32 0, i32 0), i8* %it5, %sVar* %it26, i8* %20)
  br label %cond_end

cond_else_block:                                  ; preds = %entry
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %23 = bitcast i8* %22 to i8**
  %it8 = load i8*, i8** %23, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %25 = bitcast i8* %24 to %sVar**
  %it29 = load %sVar*, %sVar** %25, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_string.52, i32 0, i32 0), i8* %it8, %sVar* %it29)
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %cond_jump_then
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret void
}

define void @"map_each_charp_sVarp19_src/vtable"(%map__charp_sVarp* %self, void (i8*, %sVar*, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %map__charp_sVarp*
  store %map__charp_sVarp* %self, %map__charp_sVarp** %self1, align 8
  %2 = bitcast %map__charp_sVarp** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %block_2 = alloca void (i8*, %sVar*, i1*)*
  store void (i8*, %sVar*, i1*)* %block_, void (i8*, %sVar*, i1*)** %block_2, align 8
  %3 = bitcast void (i8*, %sVar*, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %6 = bitcast i8* %5 to %map__charp_sVarp**
  %self4 = load %map__charp_sVarp*, %map__charp_sVarp** %6, align 8
  %7 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self4, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %10 = bitcast i8* %9 to %map__charp_sVarp**
  %self5 = load %map__charp_sVarp*, %map__charp_sVarp** %10, align 8
  %11 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self5, i32 0, i32 1
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
  store i8* %15, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 435), align 8
  store i1 false, i1* %end_flag_, align 1
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 433), align 8
  %17 = bitcast i8* %16 to void (i8*, %sVar*, i1*)**
  %block_7 = load void (i8*, %sVar*, i1*)*, void (i8*, %sVar*, i1*)** %17, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %19 = bitcast i8* %18 to %map__charp_sVarp**
  %self8 = load %map__charp_sVarp*, %map__charp_sVarp** %19, align 8
  %20 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self8, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %23 = bitcast i8* %22 to i32*
  %i_9 = load i32, i32* %23, align 4
  %element_address10 = getelementptr i8*, i8** %21, i32 %i_9
  %element11 = load i8*, i8** %element_address10, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 432), align 8
  %25 = bitcast i8* %24 to %map__charp_sVarp**
  %self12 = load %map__charp_sVarp*, %map__charp_sVarp** %25, align 8
  %26 = getelementptr inbounds %map__charp_sVarp, %map__charp_sVarp* %self12, i32 0, i32 2
  %27 = load %sVar**, %sVar*** %26, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 434), align 8
  %29 = bitcast i8* %28 to i32*
  %i_13 = load i32, i32* %29, align 4
  %element_address14 = getelementptr %sVar*, %sVar** %27, i32 %i_13
  %element15 = load %sVar*, %sVar** %element_address14, align 8
  %end_flag_16 = load i1, i1* %end_flag_, align 1
  call void %block_7(i8* %element11, %sVar* %element15, i1* %end_flag_)
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

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "neo-c", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/vtable.nc", directory: "/home/ab25cq/repo/neo-c/sevenstar")
!2 = !{}
