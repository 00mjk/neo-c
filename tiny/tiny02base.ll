; ModuleID = 'Module tiny02base'
source_filename = "Module tiny02base"

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
@global_string = private constant [13 x i8] c"int node %d\0A\00", align 1
@global_string.1 = private constant [10 x i8] c"plus node\00", align 1
@global_string.2 = private constant [11 x i8] c"minus node\00", align 1
@global_string.3 = private constant [4 x i8] c"%s\0A\00", align 1
@global_string.4 = private constant [10 x i8] c"TinyNode%\00", align 1
@global_string.5 = private constant [14 x i8] c"tiny02base.nc\00", align 1
@global_string.6 = private constant [5 x i8] c"node\00", align 1
@global_string.7 = private constant [16 x i8] c"TinyParser_node\00", align 1
@global_string.8 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.9 = private constant [10 x i8] c"TinyNode%\00", align 1
@global_string.10 = private constant [14 x i8] c"tiny02base.nc\00", align 1
@global_string.11 = private constant [11 x i8] c"plus_minus\00", align 1
@global_string.12 = private constant [22 x i8] c"TinyParser_plus_minus\00", align 1
@global_string.13 = private constant [35 x i8] c"require right value for operator +\00", align 1
@global_string.14 = private constant [10 x i8] c"TinyNode%\00", align 1
@global_string.15 = private constant [14 x i8] c"tiny02base.nc\00", align 1
@global_string.16 = private constant [11 x i8] c"plus_minus\00", align 1
@global_string.17 = private constant [22 x i8] c"TinyParser_plus_minus\00", align 1
@global_string.18 = private constant [12 x i8] c"TinyParser%\00", align 1
@global_string.19 = private constant [14 x i8] c"tiny02base.nc\00", align 1
@global_string.20 = private constant [11 x i8] c"initialize\00", align 1
@global_string.21 = private constant [18 x i8] c"TinyVM_initialize\00", align 1
@global_string.22 = private constant [20 x i8] c"vector%<TinyNode*%>\00", align 1
@global_string.23 = private constant [14 x i8] c"tiny02base.nc\00", align 1
@global_string.24 = private constant [11 x i8] c"initialize\00", align 1
@global_string.25 = private constant [18 x i8] c"TinyVM_initialize\00", align 1
@global_string.26 = private constant [11 x i8] c"TinyNode*%\00", align 1
@global_string.27 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.28 = private constant [33 x i8] c"initialize_TinyNodep0_tiny02base\00", align 1
@global_string.29 = private constant [40 x i8] c"vector_initialize_TinyNodep0_tiny02base\00", align 1
@global_string.30 = private constant [16 x i8] c"vector%<TVALUE>\00", align 1
@global_string.31 = private constant [14 x i8] c"tiny02base.nc\00", align 1
@global_string.32 = private constant [11 x i8] c"initialize\00", align 1
@global_string.33 = private constant [18 x i8] c"TinyVM_initialize\00", align 1
@global_string.34 = private constant [8 x i8] c"TVALUE%\00", align 1
@global_string.35 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.36 = private constant [30 x i8] c"initialize_TVALUE2_tiny02base\00", align 1
@global_string.37 = private constant [37 x i8] c"vector_initialize_TVALUE2_tiny02base\00", align 1
@global_string.38 = private constant [11 x i8] c"TinyNode*%\00", align 1
@global_string.39 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.40 = private constant [32 x i8] c"push_back_TinyNodep4_tiny02base\00", align 1
@global_string.41 = private constant [39 x i8] c"vector_push_back_TinyNodep4_tiny02base\00", align 1
@global_string.42 = private constant [14 x i8] c"stack[%d] %d\0A\00", align 1
@global_string.43 = private constant [14 x i8] c"stack[%d] %d\0A\00", align 1
@global_string.44 = private constant [8 x i8] c"TVALUE%\00", align 1
@global_string.45 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.46 = private constant [29 x i8] c"push_back_TVALUE8_tiny02base\00", align 1
@global_string.47 = private constant [36 x i8] c"vector_push_back_TVALUE8_tiny02base\00", align 1
@global_string.48 = private constant [8 x i8] c"TVALUE%\00", align 1
@global_string.49 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.50 = private constant [30 x i8] c"push_back_TVALUE11_tiny02base\00", align 1
@global_string.51 = private constant [37 x i8] c"vector_push_back_TVALUE11_tiny02base\00", align 1
@global_string.52 = private constant [8 x i8] c"TVALUE%\00", align 1
@global_string.53 = private constant [28 x i8] c"/usr/local//include/neo-c.h\00", align 1
@global_string.54 = private constant [30 x i8] c"push_back_TVALUE14_tiny02base\00", align 1
@global_string.55 = private constant [37 x i8] c"vector_push_back_TVALUE14_tiny02base\00", align 1

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

define void @TinyParser_errMessage-2(%TinyParser* %self, i8* %message) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyParser*
  store %TinyParser* %self, %TinyParser** %self1, align 8
  %2 = bitcast %TinyParser** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %message2 = alloca i8*
  store i8* %message, i8** %message2, align 8
  %3 = bitcast i8** %message2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %stderr = load %_IO_FILE*, %_IO_FILE** @stderr, align 8
  %message3 = load i8*, i8** %message2, align 8
  %4 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stderr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.3, i32 0, i32 0), i8* %message3)
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret void
}

define void @TinyParser_skipSpaces-2(%TinyParser* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyParser*
  store %TinyParser* %self, %TinyParser** %self1, align 8
  %2 = bitcast %TinyParser** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %oror_result_var = alloca i1
  %oror_result_var2 = alloca i1
  %self3 = load %TinyParser*, %TinyParser** %self1, align 8
  %3 = getelementptr inbounds %TinyParser, %TinyParser* %self3, i32 0, i32 3
  %4 = load i8*, i8** %3, align 8
  %derefference_value = load i8, i8* %4, align 8
  %eqtmpX = icmp eq i8 %derefference_value, 32
  store i1 %eqtmpX, i1* %oror_result_var2, align 1
  br i1 %eqtmpX, label %cond_jump_end, label %cond_jump_then

cond_jump_then:                                   ; preds = %loop_top_block
  %self4 = load %TinyParser*, %TinyParser** %self1, align 8
  %5 = getelementptr inbounds %TinyParser, %TinyParser* %self4, i32 0, i32 3
  %6 = load i8*, i8** %5, align 8
  %derefference_value5 = load i8, i8* %6, align 8
  %eqtmpX6 = icmp eq i8 %derefference_value5, 9
  %oror = or i1 %eqtmpX, %eqtmpX6
  store i1 %oror, i1* %oror_result_var2, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %loop_top_block
  %oror_result_value = load i1, i1* %oror_result_var2, align 1
  store i1 %oror_result_value, i1* %oror_result_var, align 1
  br i1 %oror_result_value, label %cond_jump_end8, label %cond_jump_then7

cond_jump_then7:                                  ; preds = %cond_jump_end
  %self9 = load %TinyParser*, %TinyParser** %self1, align 8
  %7 = getelementptr inbounds %TinyParser, %TinyParser* %self9, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  %derefference_value10 = load i8, i8* %8, align 8
  %eqtmpX11 = icmp eq i8 %derefference_value10, 10
  %oror12 = or i1 %oror_result_value, %eqtmpX11
  store i1 %oror12, i1* %oror_result_var, align 1
  br label %cond_jump_end8

cond_jump_end8:                                   ; preds = %cond_jump_then7, %cond_jump_end
  %oror_result_value13 = load i1, i1* %oror_result_var, align 1
  br i1 %oror_result_value13, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %cond_jump_end8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %10 = bitcast i8* %9 to %TinyParser**
  %self14 = load %TinyParser*, %TinyParser** %10, align 8
  %11 = getelementptr inbounds %TinyParser, %TinyParser* %self14, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %derefference_value15 = load i8, i8* %12, align 8
  %eqtmpX16 = icmp eq i8 %derefference_value15, 10
  br i1 %eqtmpX16, label %cond_jump_then17, label %cond_end

cond_end_block:                                   ; preds = %cond_jump_end8
  %13 = bitcast [8192 x i8*]* %lvtable to i8*
  %14 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %13, i64 65536)
  ret void

cond_jump_then17:                                 ; preds = %cond_then_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %16 = bitcast i8* %15 to %TinyParser**
  %self18 = load %TinyParser*, %TinyParser** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %18 = bitcast i8* %17 to %TinyParser**
  %self19 = load %TinyParser*, %TinyParser** %18, align 8
  %19 = getelementptr inbounds %TinyParser, %TinyParser* %self19, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %addtmp = add nsw i32 %20, 1
  %21 = getelementptr inbounds %TinyParser, %TinyParser* %self18, i32 0, i32 1
  store i32 %addtmp, i32* %21, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then17, %cond_then_block
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %23 = bitcast i8* %22 to %TinyParser**
  %self20 = load %TinyParser*, %TinyParser** %23, align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %25 = bitcast i8* %24 to %TinyParser**
  %self21 = load %TinyParser*, %TinyParser** %25, align 8
  %26 = getelementptr inbounds %TinyParser, %TinyParser* %self21, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i64
  %addtmp22 = add nsw i64 %28, 1
  %29 = inttoptr i64 %addtmp22 to i8*
  %30 = getelementptr inbounds %TinyParser, %TinyParser* %self20, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = ptrtoint i8* %29 to i64
  %subtmp = sub nsw i64 %31, 1
  %32 = inttoptr i64 %subtmp to i8*
  br label %loop_top_block
}

define %TinyNode* @TinyParser_node-2(%TinyParser* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyParser*
  store %TinyParser* %self, %TinyParser** %self1, align 8
  %2 = bitcast %TinyParser** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %andand_result_var = alloca i1
  %self2 = load %TinyParser*, %TinyParser** %self1, align 8
  %3 = getelementptr inbounds %TinyParser, %TinyParser* %self2, i32 0, i32 3
  %4 = load i8*, i8** %3, align 8
  %derefference_value = load i8, i8* %4, align 8
  %getmp = icmp sge i8 %derefference_value, 48
  store i1 %getmp, i1* %andand_result_var, align 1
  br i1 %getmp, label %cond_jump_then, label %cond_jump_end

cond_jump_then:                                   ; preds = %entry
  %self3 = load %TinyParser*, %TinyParser** %self1, align 8
  %5 = getelementptr inbounds %TinyParser, %TinyParser* %self3, i32 0, i32 3
  %6 = load i8*, i8** %5, align 8
  %derefference_value4 = load i8, i8* %6, align 8
  %leeqtmp = icmp sle i8 %derefference_value4, 57
  %andand = and i1 %getmp, %leeqtmp
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then, %entry
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then5, label %cond_end

cond_jump_then5:                                  ; preds = %cond_jump_end
  %value = alloca i32
  %7 = bitcast i32* %value to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  store i32 0, i32* %value, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_jump_end
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %TinyNode* null

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then5
  %andand_result_var6 = alloca i1
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %11 = bitcast i8* %10 to %TinyParser**
  %self7 = load %TinyParser*, %TinyParser** %11, align 8
  %12 = getelementptr inbounds %TinyParser, %TinyParser* %self7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %derefference_value8 = load i8, i8* %13, align 8
  %getmp9 = icmp sge i8 %derefference_value8, 48
  store i1 %getmp9, i1* %andand_result_var6, align 1
  br i1 %getmp9, label %cond_jump_then10, label %cond_jump_end11

cond_jump_then10:                                 ; preds = %loop_top_block
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %15 = bitcast i8* %14 to %TinyParser**
  %self12 = load %TinyParser*, %TinyParser** %15, align 8
  %16 = getelementptr inbounds %TinyParser, %TinyParser* %self12, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %derefference_value13 = load i8, i8* %17, align 8
  %leeqtmp14 = icmp sle i8 %derefference_value13, 57
  %andand15 = and i1 %getmp9, %leeqtmp14
  store i1 %andand15, i1* %andand_result_var6, align 1
  br label %cond_jump_end11

cond_jump_end11:                                  ; preds = %cond_jump_then10, %loop_top_block
  %andand_result_value16 = load i1, i1* %andand_result_var6, align 1
  br i1 %andand_result_value16, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %cond_jump_end11
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %19 = bitcast i8* %18 to i32*
  %value17 = load i32, i32* %19, align 4
  %multtmp = mul nsw i32 %value17, 10
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %21 = bitcast i8* %20 to %TinyParser**
  %self18 = load %TinyParser*, %TinyParser** %21, align 8
  %22 = getelementptr inbounds %TinyParser, %TinyParser* %self18, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %derefference_value19 = load i8, i8* %23, align 8
  %sext13 = sext i8 %derefference_value19 to i32
  %addtmp = add nsw i32 %multtmp, %sext13
  %subttmp = sub nsw i32 %addtmp, 48
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %subttmp, i32* %25, align 4
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %27 = bitcast i8* %26 to %TinyParser**
  %self20 = load %TinyParser*, %TinyParser** %27, align 8
  %28 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %29 = bitcast i8* %28 to %TinyParser**
  %self21 = load %TinyParser*, %TinyParser** %29, align 8
  %30 = getelementptr inbounds %TinyParser, %TinyParser* %self21, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %31 to i64
  %addtmp22 = add nsw i64 %32, 1
  %33 = inttoptr i64 %addtmp22 to i8*
  %34 = getelementptr inbounds %TinyParser, %TinyParser* %self20, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = ptrtoint i8* %33 to i64
  %subtmp = sub nsw i64 %35, 1
  %36 = inttoptr i64 %subtmp to i8*
  br label %loop_top_block

cond_end_block:                                   ; preds = %cond_jump_end11
  %37 = call i8* @debug_xcalloc(i64 1, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.5, i32 0, i32 0), i32 89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_string.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.7, i32 0, i32 0))
  %38 = bitcast i8* %37 to %TinyNode*
  %value23 = load i32, i32* %value, align 4
  %39 = call %TinyNode* @TinyNode_createIntNode(%TinyNode* %38, i32 %value23)
  %40 = bitcast [8192 x i8*]* %lvtable to i8*
  %41 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %40, i64 65536)
  ret %TinyNode* %39
}

define %TinyNode* @TinyParser_plus_minus-2(%TinyParser* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyParser*
  store %TinyParser* %self, %TinyParser** %self1, align 8
  %2 = bitcast %TinyParser** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %self2 = load %TinyParser*, %TinyParser** %self1, align 8
  %3 = call %TinyNode* @TinyParser_mult_div-2(%TinyParser* %self2)
  %node = alloca %TinyNode*
  %4 = bitcast %TinyNode** %node to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  store %TinyNode* %3, %TinyNode** %node, align 8
  %node3 = load %TinyNode*, %TinyNode** %node, align 8
  %eqtmpX = icmp eq %TinyNode* %node3, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  %7 = load %TinyNode*, %TinyNode** %node, align 8
  %8 = ptrtoint %TinyNode* %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %cond_then_block, label %cond_end4

cond_end:                                         ; preds = %entry
  br label %loop_top_block

cond_then_block:                                  ; preds = %cond_jump_then
  br label %cond_end4

cond_end4:                                        ; preds = %cond_then_block, %cond_jump_then
  call void @TinyNode_finalize(%TinyNode* %7)
  %10 = bitcast %TinyNode* %7 to i8*
  call void @xfree(i8* %10)
  ret %TinyNode* null

loop_top_block:                                   ; preds = %cond_end23, %cond_end
  %self5 = load %TinyParser*, %TinyParser** %self1, align 8
  %11 = getelementptr inbounds %TinyParser, %TinyParser* %self5, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %derefference_value = load i8, i8* %12, align 8
  %13 = trunc i8 %derefference_value to i1
  br i1 %13, label %cond_then_block6, label %cond_end_block

cond_then_block6:                                 ; preds = %loop_top_block
  %andand_result_var = alloca i1
  %andand_result_var7 = alloca i1
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %15 = bitcast i8* %14 to %TinyParser**
  %self8 = load %TinyParser*, %TinyParser** %15, align 8
  %16 = getelementptr inbounds %TinyParser, %TinyParser* %self8, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %derefference_value9 = load i8, i8* %17, align 8
  %eqtmpX10 = icmp eq i8 %derefference_value9, 43
  store i1 %eqtmpX10, i1* %andand_result_var7, align 1
  br i1 %eqtmpX10, label %cond_jump_then11, label %cond_jump_end

cond_end_block:                                   ; preds = %cond_else_block, %loop_top_block
  %node90 = load %TinyNode*, %TinyNode** %node, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %TinyNode* %node90

cond_jump_then11:                                 ; preds = %cond_then_block6
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %21 = bitcast i8* %20 to %TinyParser**
  %self12 = load %TinyParser*, %TinyParser** %21, align 8
  %22 = getelementptr inbounds %TinyParser, %TinyParser* %self12, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %23 to i64
  %addtmp = add nsw i64 %24, 1
  %25 = inttoptr i64 %addtmp to i8*
  %derefference_value13 = load i8, i8* %25, align 8
  %noteqtmp = icmp ne i8 %derefference_value13, 61
  %andand = and i1 %eqtmpX10, %noteqtmp
  store i1 %andand, i1* %andand_result_var7, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then11, %cond_then_block6
  %andand_result_value = load i1, i1* %andand_result_var7, align 1
  store i1 %andand_result_value, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then14, label %cond_jump_end15

cond_jump_then14:                                 ; preds = %cond_jump_end
  %26 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %27 = bitcast i8* %26 to %TinyParser**
  %self16 = load %TinyParser*, %TinyParser** %27, align 8
  %28 = getelementptr inbounds %TinyParser, %TinyParser* %self16, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %addtmp17 = add nsw i64 %30, 1
  %31 = inttoptr i64 %addtmp17 to i8*
  %derefference_value18 = load i8, i8* %31, align 8
  %noteqtmp19 = icmp ne i8 %derefference_value18, 43
  %andand20 = and i1 %andand_result_value, %noteqtmp19
  store i1 %andand20, i1* %andand_result_var, align 1
  br label %cond_jump_end15

cond_jump_end15:                                  ; preds = %cond_jump_then14, %cond_jump_end
  %andand_result_value21 = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value21, label %cond_jump_then22, label %"cond_jump_elif0\0A"

cond_jump_then22:                                 ; preds = %cond_jump_end15
  %32 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %33 = bitcast i8* %32 to %TinyParser**
  %self24 = load %TinyParser*, %TinyParser** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %35 = bitcast i8* %34 to %TinyParser**
  %self25 = load %TinyParser*, %TinyParser** %35, align 8
  %36 = getelementptr inbounds %TinyParser, %TinyParser* %self25, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %37 to i64
  %addtmp26 = add nsw i64 %38, 1
  %39 = inttoptr i64 %addtmp26 to i8*
  %40 = getelementptr inbounds %TinyParser, %TinyParser* %self24, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = ptrtoint i8* %39 to i64
  %subtmp = sub nsw i64 %41, 1
  %42 = inttoptr i64 %subtmp to i8*
  %43 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %44 = bitcast i8* %43 to %TinyParser**
  %self27 = load %TinyParser*, %TinyParser** %44, align 8
  call void @TinyParser_skipSpaces-2(%TinyParser* %self27)
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %46 = bitcast i8* %45 to %TinyParser**
  %self28 = load %TinyParser*, %TinyParser** %46, align 8
  %47 = call %TinyNode* @TinyParser_mult_div-2(%TinyParser* %self28)
  %right = alloca %TinyNode*
  %48 = bitcast %TinyNode** %right to i8*
  store i8* %48, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  store %TinyNode* %47, %TinyNode** %right, align 8
  %right29 = load %TinyNode*, %TinyNode** %right, align 8
  %eqtmpX30 = icmp eq %TinyNode* %right29, null
  br i1 %eqtmpX30, label %cond_jump_then31, label %cond_end32

"cond_jump_elif0\0A":                             ; preds = %cond_jump_end15
  %andand_result_var45 = alloca i1
  %andand_result_var46 = alloca i1
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %50 = bitcast i8* %49 to %TinyParser**
  %self47 = load %TinyParser*, %TinyParser** %50, align 8
  %51 = getelementptr inbounds %TinyParser, %TinyParser* %self47, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %derefference_value48 = load i8, i8* %52, align 8
  %eqtmpX49 = icmp eq i8 %derefference_value48, 45
  store i1 %eqtmpX49, i1* %andand_result_var46, align 1
  br i1 %eqtmpX49, label %cond_jump_then50, label %cond_jump_end51

"cond_jump_elif_then0\0A":                        ; preds = %cond_jump_end59
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %54 = bitcast i8* %53 to %TinyParser**
  %self66 = load %TinyParser*, %TinyParser** %54, align 8
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %56 = bitcast i8* %55 to %TinyParser**
  %self67 = load %TinyParser*, %TinyParser** %56, align 8
  %57 = getelementptr inbounds %TinyParser, %TinyParser* %self67, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i64
  %addtmp68 = add nsw i64 %59, 1
  %60 = inttoptr i64 %addtmp68 to i8*
  %61 = getelementptr inbounds %TinyParser, %TinyParser* %self66, i32 0, i32 3
  store i8* %60, i8** %61, align 8
  %62 = ptrtoint i8* %60 to i64
  %subtmp69 = sub nsw i64 %62, 1
  %63 = inttoptr i64 %subtmp69 to i8*
  %64 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %65 = bitcast i8* %64 to %TinyParser**
  %self70 = load %TinyParser*, %TinyParser** %65, align 8
  call void @TinyParser_skipSpaces-2(%TinyParser* %self70)
  %66 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %67 = bitcast i8* %66 to %TinyParser**
  %self71 = load %TinyParser*, %TinyParser** %67, align 8
  %68 = call %TinyNode* @TinyParser_mult_div-2(%TinyParser* %self71)
  %right72 = alloca %TinyNode*
  %69 = bitcast %TinyNode** %right72 to i8*
  store i8* %69, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  store %TinyNode* %68, %TinyNode** %right72, align 8
  %right73 = load %TinyNode*, %TinyNode** %right72, align 8
  %eqtmpX74 = icmp eq %TinyNode* %right73, null
  br i1 %eqtmpX74, label %cond_jump_then75, label %cond_end76

cond_else_block:                                  ; preds = %cond_jump_end59
  br label %cond_end_block

cond_end23:                                       ; preds = %after_break
  br label %loop_top_block

cond_jump_then31:                                 ; preds = %cond_jump_then22
  %70 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %71 = bitcast i8* %70 to %TinyParser**
  %self33 = load %TinyParser*, %TinyParser** %71, align 8
  call void @TinyParser_errMessage-2(%TinyParser* %self33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.8, i32 0, i32 0))
  %72 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %73 = bitcast i8* %72 to %TinyParser**
  %self34 = load %TinyParser*, %TinyParser** %73, align 8
  %74 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %75 = bitcast i8* %74 to %TinyParser**
  %self35 = load %TinyParser*, %TinyParser** %75, align 8
  %76 = getelementptr inbounds %TinyParser, %TinyParser* %self35, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %addtmp36 = add nsw i32 %77, 1
  %78 = getelementptr inbounds %TinyParser, %TinyParser* %self34, i32 0, i32 4
  store i32 %addtmp36, i32* %78, align 4
  %subttmp = sub nsw i32 %addtmp36, 1
  %79 = bitcast [8192 x i8*]* %lvtable to i8*
  %80 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %79, i64 65536)
  %81 = load %TinyNode*, %TinyNode** %right, align 8
  %82 = ptrtoint %TinyNode* %81 to i64
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %cond_then_block37, label %cond_end38

cond_end32:                                       ; preds = %cond_jump_then22
  %84 = call i8* @debug_xcalloc(i64 1, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.10, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.12, i32 0, i32 0))
  %85 = bitcast i8* %84 to %TinyNode*
  %86 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %87 = bitcast i8* %86 to %TinyNode**
  %node41 = load %TinyNode*, %TinyNode** %87, align 8
  %88 = load %TinyNode*, %TinyNode** %87, align 8
  %89 = bitcast %TinyNode* %88 to i8*
  %90 = call i8* @xmemdup(i8* %89)
  %91 = bitcast i8* %90 to %TinyNode*
  %right42 = load %TinyNode*, %TinyNode** %right, align 8
  %92 = call %TinyNode* @TinyNode_createPlusNode(%TinyNode* %85, %TinyNode* %91, %TinyNode* %right42)
  %93 = bitcast [8192 x i8*]* %lvtable to i8*
  %94 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %93, i64 65536)
  %95 = load %TinyNode*, %TinyNode** %node, align 8
  %96 = ptrtoint %TinyNode* %95 to i64
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %cond_then_block43, label %cond_end44

cond_then_block37:                                ; preds = %cond_jump_then31
  br label %cond_end38

cond_end38:                                       ; preds = %cond_then_block37, %cond_jump_then31
  call void @TinyNode_finalize(%TinyNode* %81)
  %98 = bitcast %TinyNode* %81 to i8*
  call void @xfree(i8* %98)
  %99 = load %TinyNode*, %TinyNode** %node, align 8
  %100 = ptrtoint %TinyNode* %99 to i64
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %cond_then_block39, label %cond_end40

cond_then_block39:                                ; preds = %cond_end38
  br label %cond_end40

cond_end40:                                       ; preds = %cond_then_block39, %cond_end38
  call void @TinyNode_finalize(%TinyNode* %99)
  %102 = bitcast %TinyNode* %99 to i8*
  call void @xfree(i8* %102)
  ret %TinyNode* null

cond_then_block43:                                ; preds = %cond_end32
  br label %cond_end44

cond_end44:                                       ; preds = %cond_then_block43, %cond_end32
  call void @TinyNode_finalize(%TinyNode* %95)
  %103 = bitcast %TinyNode* %95 to i8*
  call void @xfree(i8* %103)
  ret %TinyNode* %92

cond_jump_then50:                                 ; preds = %"cond_jump_elif0\0A"
  %104 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %105 = bitcast i8* %104 to %TinyParser**
  %self52 = load %TinyParser*, %TinyParser** %105, align 8
  %106 = getelementptr inbounds %TinyParser, %TinyParser* %self52, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %107 to i64
  %addtmp53 = add nsw i64 %108, 1
  %109 = inttoptr i64 %addtmp53 to i8*
  %derefference_value54 = load i8, i8* %109, align 8
  %noteqtmp55 = icmp ne i8 %derefference_value54, 61
  %andand56 = and i1 %eqtmpX49, %noteqtmp55
  store i1 %andand56, i1* %andand_result_var46, align 1
  br label %cond_jump_end51

cond_jump_end51:                                  ; preds = %cond_jump_then50, %"cond_jump_elif0\0A"
  %andand_result_value57 = load i1, i1* %andand_result_var46, align 1
  store i1 %andand_result_value57, i1* %andand_result_var45, align 1
  br i1 %andand_result_value57, label %cond_jump_then58, label %cond_jump_end59

cond_jump_then58:                                 ; preds = %cond_jump_end51
  %110 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %111 = bitcast i8* %110 to %TinyParser**
  %self60 = load %TinyParser*, %TinyParser** %111, align 8
  %112 = getelementptr inbounds %TinyParser, %TinyParser* %self60, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i64
  %addtmp61 = add nsw i64 %114, 1
  %115 = inttoptr i64 %addtmp61 to i8*
  %derefference_value62 = load i8, i8* %115, align 8
  %noteqtmp63 = icmp ne i8 %derefference_value62, 45
  %andand64 = and i1 %andand_result_value57, %noteqtmp63
  store i1 %andand64, i1* %andand_result_var45, align 1
  br label %cond_jump_end59

cond_jump_end59:                                  ; preds = %cond_jump_then58, %cond_jump_end51
  %andand_result_value65 = load i1, i1* %andand_result_var45, align 1
  br i1 %andand_result_value65, label %"cond_jump_elif_then0\0A", label %cond_else_block

cond_jump_then75:                                 ; preds = %"cond_jump_elif_then0\0A"
  %116 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %117 = bitcast i8* %116 to %TinyParser**
  %self77 = load %TinyParser*, %TinyParser** %117, align 8
  call void @TinyParser_errMessage-2(%TinyParser* %self77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_string.13, i32 0, i32 0))
  %118 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %119 = bitcast i8* %118 to %TinyParser**
  %self78 = load %TinyParser*, %TinyParser** %119, align 8
  %120 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %121 = bitcast i8* %120 to %TinyParser**
  %self79 = load %TinyParser*, %TinyParser** %121, align 8
  %122 = getelementptr inbounds %TinyParser, %TinyParser* %self79, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %addtmp80 = add nsw i32 %123, 1
  %124 = getelementptr inbounds %TinyParser, %TinyParser* %self78, i32 0, i32 4
  store i32 %addtmp80, i32* %124, align 4
  %subttmp81 = sub nsw i32 %addtmp80, 1
  %125 = bitcast [8192 x i8*]* %lvtable to i8*
  %126 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %125, i64 65536)
  %127 = load %TinyNode*, %TinyNode** %right72, align 8
  %128 = ptrtoint %TinyNode* %127 to i64
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %cond_then_block82, label %cond_end83

cond_end76:                                       ; preds = %"cond_jump_elif_then0\0A"
  %130 = call i8* @debug_xcalloc(i64 1, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.15, i32 0, i32 0), i32 141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_string.17, i32 0, i32 0))
  %131 = bitcast i8* %130 to %TinyNode*
  %132 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %133 = bitcast i8* %132 to %TinyNode**
  %node86 = load %TinyNode*, %TinyNode** %133, align 8
  %134 = load %TinyNode*, %TinyNode** %133, align 8
  %135 = bitcast %TinyNode* %134 to i8*
  %136 = call i8* @xmemdup(i8* %135)
  %137 = bitcast i8* %136 to %TinyNode*
  %right87 = load %TinyNode*, %TinyNode** %right72, align 8
  %138 = call %TinyNode* @TinyNode_createMinusNode(%TinyNode* %131, %TinyNode* %137, %TinyNode* %right87)
  %139 = bitcast [8192 x i8*]* %lvtable to i8*
  %140 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %139, i64 65536)
  %141 = load %TinyNode*, %TinyNode** %node, align 8
  %142 = ptrtoint %TinyNode* %141 to i64
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %cond_then_block88, label %cond_end89

cond_then_block82:                                ; preds = %cond_jump_then75
  br label %cond_end83

cond_end83:                                       ; preds = %cond_then_block82, %cond_jump_then75
  call void @TinyNode_finalize(%TinyNode* %127)
  %144 = bitcast %TinyNode* %127 to i8*
  call void @xfree(i8* %144)
  %145 = load %TinyNode*, %TinyNode** %node, align 8
  %146 = ptrtoint %TinyNode* %145 to i64
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %cond_then_block84, label %cond_end85

cond_then_block84:                                ; preds = %cond_end83
  br label %cond_end85

cond_end85:                                       ; preds = %cond_then_block84, %cond_end83
  call void @TinyNode_finalize(%TinyNode* %145)
  %148 = bitcast %TinyNode* %145 to i8*
  call void @xfree(i8* %148)
  ret %TinyNode* null

cond_then_block88:                                ; preds = %cond_end76
  br label %cond_end89

cond_end89:                                       ; preds = %cond_then_block88, %cond_end76
  call void @TinyNode_finalize(%TinyNode* %141)
  %149 = bitcast %TinyNode* %141 to i8*
  call void @xfree(i8* %149)
  ret %TinyNode* %138

after_break:                                      ; No predecessors!
  br label %cond_end23
}

define %TinyNode* @TinyParser_mult_div-2(%TinyParser* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyParser*
  store %TinyParser* %self, %TinyParser** %self1, align 8
  %2 = bitcast %TinyParser** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %self2 = load %TinyParser*, %TinyParser** %self1, align 8
  %3 = call %TinyNode* @TinyParser_node-2(%TinyParser* %self2)
  %node = alloca %TinyNode*
  %4 = bitcast %TinyNode** %node to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  store %TinyNode* %3, %TinyNode** %node, align 8
  %node3 = load %TinyNode*, %TinyNode** %node, align 8
  %eqtmpX = icmp eq %TinyNode* %node3, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  %7 = load %TinyNode*, %TinyNode** %node, align 8
  %8 = ptrtoint %TinyNode* %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %cond_then_block, label %cond_end4

cond_end:                                         ; preds = %entry
  %node5 = load %TinyNode*, %TinyNode** %node, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %TinyNode* %node5

cond_then_block:                                  ; preds = %cond_jump_then
  br label %cond_end4

cond_end4:                                        ; preds = %cond_then_block, %cond_jump_then
  call void @TinyNode_finalize(%TinyNode* %7)
  %12 = bitcast %TinyNode* %7 to i8*
  call void @xfree(i8* %12)
  ret %TinyNode* null
}

define %TinyNode* @TinyParser_expression-2(%TinyParser* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyParser*
  store %TinyParser* %self, %TinyParser** %self1, align 8
  %2 = bitcast %TinyParser** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %self2 = load %TinyParser*, %TinyParser** %self1, align 8
  %3 = call %TinyNode* @TinyParser_plus_minus-2(%TinyParser* %self2)
  %4 = bitcast [8192 x i8*]* %lvtable to i8*
  %5 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %4, i64 65536)
  ret %TinyNode* %3
}

define void @TinyNode_finalize(%TinyNode* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyNode*
  store %TinyNode* %self, %TinyNode** %self1, align 8
  %2 = bitcast %TinyNode** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %self2 = load %TinyNode*, %TinyNode** %self1, align 8
  %eqtmpX = icmp eq %TinyNode* %self2, null
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %TinyNode*, %TinyNode** %self1, align 8
  %5 = getelementptr inbounds %TinyNode, %TinyNode* %self3, i32 0, i32 2
  %6 = load %TinyNode*, %TinyNode** %5, align 8
  %7 = ptrtoint %TinyNode* %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %cond_jump_then4, label %cond_end5

cond_jump_then4:                                  ; preds = %cond_end
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %10 = bitcast i8* %9 to %TinyNode**
  %self6 = load %TinyNode*, %TinyNode** %10, align 8
  %11 = getelementptr inbounds %TinyNode, %TinyNode* %self6, i32 0, i32 2
  %12 = load %TinyNode*, %TinyNode** %11, align 8
  %13 = load %TinyNode*, %TinyNode** %11, align 8
  %14 = ptrtoint %TinyNode* %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %cond_then_block, label %cond_end7

cond_end5:                                        ; preds = %cond_end7, %cond_end
  %self8 = load %TinyNode*, %TinyNode** %self1, align 8
  %16 = getelementptr inbounds %TinyNode, %TinyNode* %self8, i32 0, i32 3
  %17 = load %TinyNode*, %TinyNode** %16, align 8
  %18 = ptrtoint %TinyNode* %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %cond_jump_then9, label %cond_end10

cond_then_block:                                  ; preds = %cond_jump_then4
  br label %cond_end7

cond_end7:                                        ; preds = %cond_then_block, %cond_jump_then4
  call void @TinyNode_finalize(%TinyNode* %13)
  %20 = bitcast %TinyNode* %13 to i8*
  call void @xfree(i8* %20)
  br label %cond_end5

cond_jump_then9:                                  ; preds = %cond_end5
  %21 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %22 = bitcast i8* %21 to %TinyNode**
  %self11 = load %TinyNode*, %TinyNode** %22, align 8
  %23 = getelementptr inbounds %TinyNode, %TinyNode* %self11, i32 0, i32 3
  %24 = load %TinyNode*, %TinyNode** %23, align 8
  %25 = load %TinyNode*, %TinyNode** %23, align 8
  %26 = ptrtoint %TinyNode* %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %cond_then_block12, label %cond_end13

cond_end10:                                       ; preds = %cond_end13, %cond_end5
  %self14 = load %TinyNode*, %TinyNode** %self1, align 8
  %28 = getelementptr inbounds %TinyNode, %TinyNode* %self14, i32 0, i32 4
  %29 = load %TinyNode*, %TinyNode** %28, align 8
  %30 = ptrtoint %TinyNode* %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %cond_jump_then15, label %cond_end16

cond_then_block12:                                ; preds = %cond_jump_then9
  br label %cond_end13

cond_end13:                                       ; preds = %cond_then_block12, %cond_jump_then9
  call void @TinyNode_finalize(%TinyNode* %25)
  %32 = bitcast %TinyNode* %25 to i8*
  call void @xfree(i8* %32)
  br label %cond_end10

cond_jump_then15:                                 ; preds = %cond_end10
  %33 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %34 = bitcast i8* %33 to %TinyNode**
  %self17 = load %TinyNode*, %TinyNode** %34, align 8
  %35 = getelementptr inbounds %TinyNode, %TinyNode* %self17, i32 0, i32 4
  %36 = load %TinyNode*, %TinyNode** %35, align 8
  %37 = load %TinyNode*, %TinyNode** %35, align 8
  %38 = ptrtoint %TinyNode* %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %cond_then_block18, label %cond_end19

cond_end16:                                       ; preds = %cond_end19, %cond_end10
  %40 = bitcast [8192 x i8*]* %lvtable to i8*
  %41 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %40, i64 65536)
  ret void

cond_then_block18:                                ; preds = %cond_jump_then15
  br label %cond_end19

cond_end19:                                       ; preds = %cond_then_block18, %cond_jump_then15
  call void @TinyNode_finalize(%TinyNode* %37)
  %42 = bitcast %TinyNode* %37 to i8*
  call void @xfree(i8* %42)
  br label %cond_end16
}

define %TinyVM* @TinyVM_initialize(%TinyVM* %self, i8* %source_name) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyVM*
  store %TinyVM* %self, %TinyVM** %self1, align 8
  %2 = bitcast %TinyVM** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %source_name2 = alloca i8*
  store i8* %source_name, i8** %source_name2, align 8
  %3 = bitcast i8** %source_name2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %self3 = load %TinyVM*, %TinyVM** %self1, align 8
  %4 = call i8* @debug_xcalloc(i64 1, i64 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_string.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.19, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.21, i32 0, i32 0))
  %5 = bitcast i8* %4 to %TinyParser*
  %source_name4 = load i8*, i8** %source_name2, align 8
  %6 = call %TinyParser* @TinyParser_initialize(%TinyParser* %5, i8* %source_name4)
  %7 = getelementptr inbounds %TinyVM, %TinyVM* %self3, i32 0, i32 0
  %8 = load %TinyParser*, %TinyParser** %7, align 8
  %9 = ptrtoint %TinyParser* %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %cond_then_block, label %cond_end

cond_then_block:                                  ; preds = %entry
  %11 = getelementptr inbounds %TinyParser, %TinyParser* %8, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %cond_then_block5, label %cond_end6

cond_end:                                         ; preds = %cond_end8, %entry
  %15 = bitcast %TinyParser* %8 to i8*
  call void @xfree(i8* %15)
  store %TinyParser* %6, %TinyParser** %7, align 8
  %self9 = load %TinyVM*, %TinyVM** %self1, align 8
  %16 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_string.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.23, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.25, i32 0, i32 0))
  %17 = bitcast i8* %16 to %vector__TinyNodep*
  %18 = call %vector__TinyNodep* @vector_initialize_TinyNodep0_tiny02base(%vector__TinyNodep* %17)
  %19 = getelementptr inbounds %TinyVM, %TinyVM* %self9, i32 0, i32 1
  %20 = load %vector__TinyNodep*, %vector__TinyNodep** %19, align 8
  %21 = ptrtoint %vector__TinyNodep* %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %cond_then_block10, label %cond_end11

cond_then_block5:                                 ; preds = %cond_then_block
  br label %cond_end6

cond_end6:                                        ; preds = %cond_then_block5, %cond_then_block
  call void @xfree(i8* %12)
  %23 = getelementptr inbounds %TinyParser, %TinyParser* %8, i32 0, i32 2
  %24 = load %buffer*, %buffer** %23, align 8
  %25 = ptrtoint %buffer* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %cond_then_block7, label %cond_end8

cond_then_block7:                                 ; preds = %cond_end6
  br label %cond_end8

cond_end8:                                        ; preds = %cond_then_block7, %cond_end6
  call void @buffer_finalize(%buffer* %24)
  %27 = bitcast %buffer* %24 to i8*
  call void @xfree(i8* %27)
  br label %cond_end

cond_then_block10:                                ; preds = %cond_end
  br label %cond_end11

cond_end11:                                       ; preds = %cond_then_block10, %cond_end
  call void @vector_finalize_TinyNodep1_tiny02base(%vector__TinyNodep* %20)
  %28 = bitcast %vector__TinyNodep* %20 to i8*
  call void @xfree(i8* %28)
  store %vector__TinyNodep* %18, %vector__TinyNodep** %19, align 8
  %self12 = load %TinyVM*, %TinyVM** %self1, align 8
  %29 = call i8* @debug_xcalloc(i64 1, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_string.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.31, i32 0, i32 0), i32 161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_string.33, i32 0, i32 0))
  %30 = bitcast i8* %29 to %vector__TVALUE*
  %31 = call %vector__TVALUE* @vector_initialize_TVALUE2_tiny02base(%vector__TVALUE* %30)
  %32 = getelementptr inbounds %TinyVM, %TinyVM* %self12, i32 0, i32 2
  %33 = load %vector__TVALUE*, %vector__TVALUE** %32, align 8
  %34 = ptrtoint %vector__TVALUE* %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %cond_then_block13, label %cond_end14

cond_then_block13:                                ; preds = %cond_end11
  br label %cond_end14

cond_end14:                                       ; preds = %cond_then_block13, %cond_end11
  call void @vector_finalize_TVALUE3_tiny02base(%vector__TVALUE* %33)
  %36 = bitcast %vector__TVALUE* %33 to i8*
  call void @xfree(i8* %36)
  store %vector__TVALUE* %31, %vector__TVALUE** %32, align 8
  %self15 = load %TinyVM*, %TinyVM** %self1, align 8
  %37 = bitcast [8192 x i8*]* %lvtable to i8*
  %38 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %37, i64 65536)
  ret %TinyVM* %self15
}

define i1 @TinyVM_parser(%TinyVM* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyVM*
  store %TinyVM* %self, %TinyVM** %self1, align 8
  %2 = bitcast %TinyVM** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %self2 = load %TinyVM*, %TinyVM** %self1, align 8
  %3 = getelementptr inbounds %TinyVM, %TinyVM* %self2, i32 0, i32 0
  %4 = load %TinyParser*, %TinyParser** %3, align 8
  %5 = getelementptr inbounds %TinyParser, %TinyParser* %4, i32 0, i32 3
  %6 = load i8*, i8** %5, align 8
  %derefference_value = load i8, i8* %6, align 8
  %7 = trunc i8 %derefference_value to i1
  br i1 %7, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %9 = bitcast i8* %8 to %TinyVM**
  %self3 = load %TinyVM*, %TinyVM** %9, align 8
  %10 = getelementptr inbounds %TinyVM, %TinyVM* %self3, i32 0, i32 0
  %11 = load %TinyParser*, %TinyParser** %10, align 8
  %12 = call %TinyNode* @TinyParser_expression-2(%TinyParser* %11)
  %node = alloca %TinyNode*
  %13 = bitcast %TinyNode** %node to i8*
  store i8* %13, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  store %TinyNode* %12, %TinyNode** %node, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %15 = bitcast i8* %14 to %TinyVM**
  %self4 = load %TinyVM*, %TinyVM** %15, align 8
  %16 = getelementptr inbounds %TinyVM, %TinyVM* %self4, i32 0, i32 1
  %17 = load %vector__TinyNodep*, %vector__TinyNodep** %16, align 8
  %node5 = load %TinyNode*, %TinyNode** %node, align 8
  call void @vector_push_back_TinyNodep4_tiny02base(%vector__TinyNodep* %17, %TinyNode* %node5)
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret i1 true
}

define i1 @TinyVM_compile(%TinyVM* %self, %TinyNode* %node) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyVM*
  store %TinyVM* %self, %TinyVM** %self1, align 8
  %2 = bitcast %TinyVM** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %node2 = alloca %TinyNode*
  store %TinyNode* %node, %TinyNode** %node2, align 8
  %3 = bitcast %TinyNode** %node2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %node3 = load %TinyNode*, %TinyNode** %node2, align 8
  %4 = getelementptr inbounds %TinyNode, %TinyNode* %node3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %eqtmpY = icmp eq i32 %5, 0
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block31, %cond_end42, %cond_end17, %cond_then_block
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret i1 true

cond_then_block:                                  ; preds = %entry
  %value1 = alloca %TVALUE
  %8 = bitcast %TVALUE* %value1 to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %value14 = load %TVALUE, %TVALUE* %value1, align 8
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %10 = bitcast i8* %9 to %TinyNode**
  %node5 = load %TinyNode*, %TinyNode** %10, align 8
  %11 = getelementptr inbounds %TinyNode, %TinyNode* %node5, i32 0, i32 1
  %12 = load %anon61, %anon61* %11, align 8
  %13 = bitcast %anon61* %11 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = bitcast %TVALUE* %value1 to i32*
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %17 = bitcast i8* %16 to %TinyVM**
  %self6 = load %TinyVM*, %TinyVM** %17, align 8
  %18 = getelementptr inbounds %TinyVM, %TinyVM* %self6, i32 0, i32 2
  %19 = load %vector__TVALUE*, %vector__TVALUE** %18, align 8
  %value17 = load %TVALUE, %TVALUE* %value1, align 8
  call void @vector_push_back_TVALUE8_tiny02base(%vector__TVALUE* %19, %TVALUE %value17)
  br label %end_block

cond_else_block:                                  ; preds = %after_break, %entry
  %eqtmpY10 = icmp eq i32 %5, 1
  br i1 %eqtmpY10, label %cond_then_block8, label %cond_else_block9

after_break:                                      ; No predecessors!
  br label %cond_else_block

cond_then_block8:                                 ; preds = %cond_else_block
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %21 = bitcast i8* %20 to %TinyVM**
  %self11 = load %TinyVM*, %TinyVM** %21, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %23 = bitcast i8* %22 to %TinyNode**
  %node12 = load %TinyNode*, %TinyNode** %23, align 8
  %24 = getelementptr inbounds %TinyNode, %TinyNode* %node12, i32 0, i32 2
  %25 = load %TinyNode*, %TinyNode** %24, align 8
  %26 = call i1 @TinyVM_compile(%TinyVM* %self11, %TinyNode* %25)
  %LOGICAL_DIANEAL = icmp eq i1 %26, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_else_block9:                                 ; preds = %after_break29, %cond_else_block
  %eqtmpY32 = icmp eq i32 %5, 2
  br i1 %eqtmpY32, label %cond_then_block30, label %cond_else_block31

cond_jump_then:                                   ; preds = %cond_then_block8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %cond_then_block8
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %30 = bitcast i8* %29 to %TinyVM**
  %self13 = load %TinyVM*, %TinyVM** %30, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %32 = bitcast i8* %31 to %TinyNode**
  %node14 = load %TinyNode*, %TinyNode** %32, align 8
  %33 = getelementptr inbounds %TinyNode, %TinyNode* %node14, i32 0, i32 3
  %34 = load %TinyNode*, %TinyNode** %33, align 8
  %35 = call i1 @TinyVM_compile(%TinyVM* %self13, %TinyNode* %34)
  %LOGICAL_DIANEAL15 = icmp eq i1 %35, false
  br i1 %LOGICAL_DIANEAL15, label %cond_jump_then16, label %cond_end17

cond_jump_then16:                                 ; preds = %cond_end
  %36 = bitcast [8192 x i8*]* %lvtable to i8*
  %37 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %36, i64 65536)
  ret i1 false

cond_end17:                                       ; preds = %cond_end
  %default_value = alloca %TVALUE
  %38 = bitcast %TVALUE* %default_value to i8*
  store i8* %38, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %default_value18 = load %TVALUE, %TVALUE* %default_value, align 8
  %39 = bitcast %TVALUE* %default_value to i32*
  store i32 0, i32* %39, align 4
  %40 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %41 = bitcast i8* %40 to %TinyVM**
  %self19 = load %TinyVM*, %TinyVM** %41, align 8
  %42 = getelementptr inbounds %TinyVM, %TinyVM* %self19, i32 0, i32 2
  %43 = load %vector__TVALUE*, %vector__TVALUE** %42, align 8
  %default_value20 = load %TVALUE, %TVALUE* %default_value, align 8
  %44 = call %TVALUE @vector_pop_back_TVALUE9_tiny02base(%vector__TVALUE* %43, %TVALUE %default_value20)
  %value121 = alloca %TVALUE
  %45 = bitcast %TVALUE* %value121 to i8*
  store i8* %45, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  store %TVALUE %44, %TVALUE* %value121, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %47 = bitcast i8* %46 to %TinyVM**
  %self22 = load %TinyVM*, %TinyVM** %47, align 8
  %48 = getelementptr inbounds %TinyVM, %TinyVM* %self22, i32 0, i32 2
  %49 = load %vector__TVALUE*, %vector__TVALUE** %48, align 8
  %default_value23 = load %TVALUE, %TVALUE* %default_value, align 8
  %50 = call %TVALUE @vector_pop_back_TVALUE10_tiny02base(%vector__TVALUE* %49, %TVALUE %default_value23)
  %value2 = alloca %TVALUE
  %51 = bitcast %TVALUE* %value2 to i8*
  store i8* %51, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 373), align 8
  store %TVALUE %50, %TVALUE* %value2, align 8
  %value3 = alloca %TVALUE
  %52 = bitcast %TVALUE* %value3 to i8*
  store i8* %52, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 374), align 8
  %value324 = load %TVALUE, %TVALUE* %value3, align 8
  %value125 = load %TVALUE, %TVALUE* %value121, align 8
  %53 = bitcast %TVALUE* %value121 to i32*
  %54 = load i32, i32* %53, align 4
  %value226 = load %TVALUE, %TVALUE* %value2, align 8
  %55 = bitcast %TVALUE* %value2 to i32*
  %56 = load i32, i32* %55, align 4
  %addtmp = add nsw i32 %54, %56
  %57 = bitcast %TVALUE* %value3 to i32*
  store i32 %addtmp, i32* %57, align 4
  %58 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %59 = bitcast i8* %58 to %TinyVM**
  %self27 = load %TinyVM*, %TinyVM** %59, align 8
  %60 = getelementptr inbounds %TinyVM, %TinyVM* %self27, i32 0, i32 2
  %61 = load %vector__TVALUE*, %vector__TVALUE** %60, align 8
  %value328 = load %TVALUE, %TVALUE* %value3, align 8
  call void @vector_push_back_TVALUE11_tiny02base(%vector__TVALUE* %61, %TVALUE %value328)
  br label %end_block

after_break29:                                    ; No predecessors!
  br label %cond_else_block9

cond_then_block30:                                ; preds = %cond_else_block9
  %self33 = load %TinyVM*, %TinyVM** %self1, align 8
  %node34 = load %TinyNode*, %TinyNode** %node2, align 8
  %62 = getelementptr inbounds %TinyNode, %TinyNode* %node34, i32 0, i32 2
  %63 = load %TinyNode*, %TinyNode** %62, align 8
  %64 = call i1 @TinyVM_compile(%TinyVM* %self33, %TinyNode* %63)
  %LOGICAL_DIANEAL35 = icmp eq i1 %64, false
  br i1 %LOGICAL_DIANEAL35, label %cond_jump_then36, label %cond_end37

cond_else_block31:                                ; preds = %after_break57, %cond_else_block9
  br label %end_block

cond_jump_then36:                                 ; preds = %cond_then_block30
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret i1 false

cond_end37:                                       ; preds = %cond_then_block30
  %self38 = load %TinyVM*, %TinyVM** %self1, align 8
  %node39 = load %TinyNode*, %TinyNode** %node2, align 8
  %67 = getelementptr inbounds %TinyNode, %TinyNode* %node39, i32 0, i32 3
  %68 = load %TinyNode*, %TinyNode** %67, align 8
  %69 = call i1 @TinyVM_compile(%TinyVM* %self38, %TinyNode* %68)
  %LOGICAL_DIANEAL40 = icmp eq i1 %69, false
  br i1 %LOGICAL_DIANEAL40, label %cond_jump_then41, label %cond_end42

cond_jump_then41:                                 ; preds = %cond_end37
  %70 = bitcast [8192 x i8*]* %lvtable to i8*
  %71 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %70, i64 65536)
  ret i1 false

cond_end42:                                       ; preds = %cond_end37
  %default_value43 = alloca %TVALUE
  %72 = bitcast %TVALUE* %default_value43 to i8*
  store i8* %72, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %default_value44 = load %TVALUE, %TVALUE* %default_value43, align 8
  %73 = bitcast %TVALUE* %default_value43 to i32*
  store i32 0, i32* %73, align 4
  %self45 = load %TinyVM*, %TinyVM** %self1, align 8
  %74 = getelementptr inbounds %TinyVM, %TinyVM* %self45, i32 0, i32 2
  %75 = load %vector__TVALUE*, %vector__TVALUE** %74, align 8
  %default_value46 = load %TVALUE, %TVALUE* %default_value43, align 8
  %76 = call %TVALUE @vector_pop_back_TVALUE12_tiny02base(%vector__TVALUE* %75, %TVALUE %default_value46)
  %value147 = alloca %TVALUE
  %77 = bitcast %TVALUE* %value147 to i8*
  store i8* %77, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  store %TVALUE %76, %TVALUE* %value147, align 8
  %self48 = load %TinyVM*, %TinyVM** %self1, align 8
  %78 = getelementptr inbounds %TinyVM, %TinyVM* %self48, i32 0, i32 2
  %79 = load %vector__TVALUE*, %vector__TVALUE** %78, align 8
  %default_value49 = load %TVALUE, %TVALUE* %default_value43, align 8
  %80 = call %TVALUE @vector_pop_back_TVALUE13_tiny02base(%vector__TVALUE* %79, %TVALUE %default_value49)
  %value250 = alloca %TVALUE
  %81 = bitcast %TVALUE* %value250 to i8*
  store i8* %81, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store %TVALUE %80, %TVALUE* %value250, align 8
  %value351 = alloca %TVALUE
  %82 = bitcast %TVALUE* %value351 to i8*
  store i8* %82, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 370), align 8
  %value352 = load %TVALUE, %TVALUE* %value351, align 8
  %value153 = load %TVALUE, %TVALUE* %value147, align 8
  %83 = bitcast %TVALUE* %value147 to i32*
  %84 = load i32, i32* %83, align 4
  %value254 = load %TVALUE, %TVALUE* %value250, align 8
  %85 = bitcast %TVALUE* %value250 to i32*
  %86 = load i32, i32* %85, align 4
  %subttmp = sub nsw i32 %84, %86
  %87 = bitcast %TVALUE* %value351 to i32*
  store i32 %subttmp, i32* %87, align 4
  %self55 = load %TinyVM*, %TinyVM** %self1, align 8
  %88 = getelementptr inbounds %TinyVM, %TinyVM* %self55, i32 0, i32 2
  %89 = load %vector__TVALUE*, %vector__TVALUE** %88, align 8
  %value356 = load %TVALUE, %TVALUE* %value351, align 8
  call void @vector_push_back_TVALUE14_tiny02base(%vector__TVALUE* %89, %TVALUE %value356)
  br label %end_block

after_break57:                                    ; No predecessors!
  br label %cond_else_block31
}

define i1 @TinyVM_run(%TinyVM* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyVM*
  store %TinyVM* %self, %TinyVM** %self1, align 8
  %2 = bitcast %TinyVM** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %i = alloca i32
  %3 = bitcast i32* %i to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i2 = load i32, i32* %i, align 4
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %5 = bitcast i8* %4 to %TinyVM**
  %self3 = load %TinyVM*, %TinyVM** %5, align 8
  %6 = getelementptr inbounds %TinyVM, %TinyVM* %self3, i32 0, i32 1
  %7 = load %vector__TinyNodep*, %vector__TinyNodep** %6, align 8
  %8 = call i32 @vector_length_TinyNodep15_tiny02base(%vector__TinyNodep* %7)
  %letmp = icmp slt i32 %i2, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %10 = bitcast i8* %9 to %TinyVM**
  %self4 = load %TinyVM*, %TinyVM** %10, align 8
  %11 = getelementptr inbounds %TinyVM, %TinyVM* %self4, i32 0, i32 1
  %12 = load %vector__TinyNodep*, %vector__TinyNodep** %11, align 8
  %i5 = load i32, i32* %i, align 4
  %13 = call %TinyNode* @vector_item_TinyNodep16_tiny02base(%vector__TinyNodep* %12, i32 %i5, %TinyNode* null)
  %node = alloca %TinyNode*
  %14 = bitcast %TinyNode** %node to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  store %TinyNode* %13, %TinyNode** %node, align 8
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %16 = bitcast i8* %15 to %TinyVM**
  %self6 = load %TinyVM*, %TinyVM** %16, align 8
  %node7 = load %TinyNode*, %TinyNode** %node, align 8
  %17 = call i1 @TinyVM_compile(%TinyVM* %self6, %TinyNode* %node7)
  %LOGICAL_DIANEAL = icmp eq i1 %17, false
  br i1 %LOGICAL_DIANEAL, label %cond_jump_then, label %cond_end

cond_end_block:                                   ; preds = %loop_top_block
  %self9 = load %TinyVM*, %TinyVM** %self1, align 8
  call void @TinyVM_debug(%TinyVM* %self9)
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret i1 true

cond_jump_then:                                   ; preds = %cond_then_block
  %20 = bitcast [8192 x i8*]* %lvtable to i8*
  %21 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %20, i64 65536)
  ret i1 false

cond_end:                                         ; preds = %cond_then_block
  %i8 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i8, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block
}

define %TinyNode* @TinyNode_createIntNode(%TinyNode* %self, i32 %value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyNode*
  store %TinyNode* %self, %TinyNode** %self1, align 8
  %2 = bitcast %TinyNode** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %value2 = alloca i32
  store i32 %value, i32* %value2, align 4
  %3 = bitcast i32* %value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %self3 = load %TinyNode*, %TinyNode** %self1, align 8
  %4 = getelementptr inbounds %TinyNode, %TinyNode* %self3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %self4 = load %TinyNode*, %TinyNode** %self1, align 8
  %value5 = load i32, i32* %value2, align 4
  %5 = getelementptr inbounds %TinyNode, %TinyNode* %self4, i32 0, i32 1
  %6 = bitcast %anon61* %5 to i32*
  store i32 %value5, i32* %6, align 4
  %self6 = load %TinyNode*, %TinyNode** %self1, align 8
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret %TinyNode* %self6
}

define %TinyNode* @TinyNode_createPlusNode(%TinyNode* %self, %TinyNode* %left, %TinyNode* %right) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyNode*
  store %TinyNode* %self, %TinyNode** %self1, align 8
  %2 = bitcast %TinyNode** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %left2 = alloca %TinyNode*
  store %TinyNode* %left, %TinyNode** %left2, align 8
  %3 = bitcast %TinyNode** %left2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %right3 = alloca %TinyNode*
  store %TinyNode* %right, %TinyNode** %right3, align 8
  %4 = bitcast %TinyNode** %right3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %self4 = load %TinyNode*, %TinyNode** %self1, align 8
  %5 = getelementptr inbounds %TinyNode, %TinyNode* %self4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %self5 = load %TinyNode*, %TinyNode** %self1, align 8
  %left6 = load %TinyNode*, %TinyNode** %left2, align 8
  %6 = getelementptr inbounds %TinyNode, %TinyNode* %self5, i32 0, i32 2
  store %TinyNode* %left6, %TinyNode** %6, align 8
  %self7 = load %TinyNode*, %TinyNode** %self1, align 8
  %right8 = load %TinyNode*, %TinyNode** %right3, align 8
  %7 = getelementptr inbounds %TinyNode, %TinyNode* %self7, i32 0, i32 3
  store %TinyNode* %right8, %TinyNode** %7, align 8
  %self9 = load %TinyNode*, %TinyNode** %self1, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %TinyNode* %self9
}

define %TinyNode* @TinyNode_createMinusNode(%TinyNode* %self, %TinyNode* %left, %TinyNode* %right) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyNode*
  store %TinyNode* %self, %TinyNode** %self1, align 8
  %2 = bitcast %TinyNode** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %left2 = alloca %TinyNode*
  store %TinyNode* %left, %TinyNode** %left2, align 8
  %3 = bitcast %TinyNode** %left2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %right3 = alloca %TinyNode*
  store %TinyNode* %right, %TinyNode** %right3, align 8
  %4 = bitcast %TinyNode** %right3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %self4 = load %TinyNode*, %TinyNode** %self1, align 8
  %5 = getelementptr inbounds %TinyNode, %TinyNode* %self4, i32 0, i32 0
  store i32 2, i32* %5, align 4
  %self5 = load %TinyNode*, %TinyNode** %self1, align 8
  %left6 = load %TinyNode*, %TinyNode** %left2, align 8
  %6 = getelementptr inbounds %TinyNode, %TinyNode* %self5, i32 0, i32 2
  store %TinyNode* %left6, %TinyNode** %6, align 8
  %self7 = load %TinyNode*, %TinyNode** %self1, align 8
  %right8 = load %TinyNode*, %TinyNode** %right3, align 8
  %7 = getelementptr inbounds %TinyNode, %TinyNode* %self7, i32 0, i32 3
  store %TinyNode* %right8, %TinyNode** %7, align 8
  %self9 = load %TinyNode*, %TinyNode** %self1, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %TinyNode* %self9
}

define void @TinyNode_debug(%TinyNode* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyNode*
  store %TinyNode* %self, %TinyNode** %self1, align 8
  %2 = bitcast %TinyNode** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %self2 = load %TinyNode*, %TinyNode** %self1, align 8
  %3 = getelementptr inbounds %TinyNode, %TinyNode* %self2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %eqtmpY = icmp eq i32 %4, 0
  br i1 %eqtmpY, label %cond_then_block, label %cond_else_block

end_block:                                        ; preds = %cond_else_block11, %cond_then_block10, %cond_then_block4, %cond_then_block
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret void

cond_then_block:                                  ; preds = %entry
  %self3 = load %TinyNode*, %TinyNode** %self1, align 8
  %7 = getelementptr inbounds %TinyNode, %TinyNode* %self3, i32 0, i32 1
  %8 = load %anon61, %anon61* %7, align 8
  %9 = bitcast %anon61* %7 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_string, i32 0, i32 0), i32 %10)
  br label %end_block

cond_else_block:                                  ; preds = %after_break, %entry
  %eqtmpY6 = icmp eq i32 %4, 1
  br i1 %eqtmpY6, label %cond_then_block4, label %cond_else_block5

after_break:                                      ; No predecessors!
  br label %cond_else_block

cond_then_block4:                                 ; preds = %cond_else_block
  %12 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_string.1, i32 0, i32 0))
  %self7 = load %TinyNode*, %TinyNode** %self1, align 8
  %13 = getelementptr inbounds %TinyNode, %TinyNode* %self7, i32 0, i32 2
  %14 = load %TinyNode*, %TinyNode** %13, align 8
  call void @TinyNode_debug(%TinyNode* %14)
  %self8 = load %TinyNode*, %TinyNode** %self1, align 8
  %15 = getelementptr inbounds %TinyNode, %TinyNode* %self8, i32 0, i32 3
  %16 = load %TinyNode*, %TinyNode** %15, align 8
  call void @TinyNode_debug(%TinyNode* %16)
  br label %end_block

cond_else_block5:                                 ; preds = %after_break9, %cond_else_block
  %eqtmpY12 = icmp eq i32 %4, 2
  br i1 %eqtmpY12, label %cond_then_block10, label %cond_else_block11

after_break9:                                     ; No predecessors!
  br label %cond_else_block5

cond_then_block10:                                ; preds = %cond_else_block5
  %17 = call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.2, i32 0, i32 0))
  %self13 = load %TinyNode*, %TinyNode** %self1, align 8
  %18 = getelementptr inbounds %TinyNode, %TinyNode* %self13, i32 0, i32 2
  %19 = load %TinyNode*, %TinyNode** %18, align 8
  call void @TinyNode_debug(%TinyNode* %19)
  %self14 = load %TinyNode*, %TinyNode** %self1, align 8
  %20 = getelementptr inbounds %TinyNode, %TinyNode* %self14, i32 0, i32 3
  %21 = load %TinyNode*, %TinyNode** %20, align 8
  call void @TinyNode_debug(%TinyNode* %21)
  br label %end_block

cond_else_block11:                                ; preds = %after_break15, %cond_else_block5
  br label %end_block

after_break15:                                    ; No predecessors!
  br label %cond_else_block11
}

define %vector__TinyNodep* @vector_initialize_TinyNodep0_tiny02base(%vector__TinyNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %self2 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %3 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %4 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %self5 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %5 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = sext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.26, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.27, i32 0, i32 0), i32 403, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_string.28, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_string.29, i32 0, i32 0))
  %8 = bitcast i8* %7 to %TinyNode**
  %9 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self4, i32 0, i32 0
  store %TinyNode** %8, %TinyNode*** %9, align 8
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__TinyNodep* %self6
}

define void @vector_finalize_TinyNodep1_tiny02base(%vector__TinyNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
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
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %13 = bitcast i8* %12 to %vector__TinyNodep**
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %13, align 8
  %14 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
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

define %vector__TVALUE* @vector_initialize_TVALUE2_tiny02base(%vector__TVALUE* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %self2 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %3 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %5 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %sext14 = sext i32 %6 to i64
  %7 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.35, i32 0, i32 0), i32 403, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.36, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.37, i32 0, i32 0))
  %8 = bitcast i8* %7 to %TVALUE*
  %9 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self4, i32 0, i32 0
  store %TVALUE* %8, %TVALUE** %9, align 8
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector__TVALUE* %self6
}

define void @vector_finalize_TVALUE3_tiny02base(%vector__TVALUE* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
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
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %12 = bitcast i8* %11 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %12, align 8
  %13 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %letmp = icmp slt i32 %i5, %14
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
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

define void @vector_push_back_TinyNodep4_tiny02base(%vector__TinyNodep* %self, %TinyNode* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %item2 = alloca %TinyNode*
  store %TinyNode* %item, %TinyNode** %item2, align 8
  %3 = bitcast %TinyNode** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self3 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %4 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %6 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %9 = bitcast i8* %8 to %vector__TinyNodep**
  %self5 = load %vector__TinyNodep*, %vector__TinyNodep** %9, align 8
  %10 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %14 = bitcast i8* %13 to %vector__TinyNodep**
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %14, align 8
  %15 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self6, i32 0, i32 0
  %16 = load %TinyNode**, %TinyNode*** %15, align 8
  %items = alloca %TinyNode**
  %17 = bitcast %TinyNode*** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 370), align 8
  store %TinyNode** %16, %TinyNode*** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %19 = bitcast i8* %18 to %vector__TinyNodep**
  %self7 = load %vector__TinyNodep*, %vector__TinyNodep** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_string.38, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.39, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_string.40, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_string.41, i32 0, i32 0))
  %21 = bitcast i8* %20 to %TinyNode**
  %22 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self7, i32 0, i32 0
  store %TinyNode** %21, %TinyNode*** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end_block, %entry
  %self20 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %26 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self20, i32 0, i32 0
  %27 = load %TinyNode**, %TinyNode*** %26, align 8
  %self21 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %28 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self21, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item22 = load %TinyNode*, %TinyNode** %item2, align 8
  %element_address23 = getelementptr %TinyNode*, %TinyNode** %27, i32 %29
  store %TinyNode* %item22, %TinyNode** %element_address23, align 8
  %self24 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %self25 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %30 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self25, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp26 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self24, i32 0, i32 1
  store i32 %addtmp26, i32* %32, align 4
  %subttmp27 = sub nsw i32 %addtmp26, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %38 = bitcast i8* %37 to %vector__TinyNodep**
  %self10 = load %vector__TinyNodep*, %vector__TinyNodep** %38, align 8
  %39 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %42 = bitcast i8* %41 to %vector__TinyNodep**
  %self11 = load %vector__TinyNodep*, %vector__TinyNodep** %42, align 8
  %43 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self11, i32 0, i32 0
  %44 = load %TinyNode**, %TinyNode*** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 370), align 8
  %48 = bitcast i8* %47 to %TinyNode***
  %items13 = load %TinyNode**, %TinyNode*** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %TinyNode*, %TinyNode** %items13, i32 %i14
  %element = load %TinyNode*, %TinyNode** %element_address, align 8
  %element_address15 = getelementptr %TinyNode*, %TinyNode** %44, i32 %i12
  store %TinyNode* %element, %TinyNode** %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %56 = bitcast i8* %55 to %vector__TinyNodep**
  %self17 = load %vector__TinyNodep*, %vector__TinyNodep** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %TinyNode**, %TinyNode*** %items, align 8
  %58 = load %TinyNode**, %TinyNode*** %items, align 8
  %59 = bitcast %TinyNode** %58 to i8*
  call void @xfree(i8* %59)
  br label %cond_end
}

define void @TinyVM_debug(%TinyVM* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %TinyVM*
  store %TinyVM* %self, %TinyVM** %self1, align 8
  %2 = bitcast %TinyVM** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %i = alloca i32
  %3 = bitcast i32* %i to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %i2 = load i32, i32* %i, align 4
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %5 = bitcast i8* %4 to %TinyVM**
  %self3 = load %TinyVM*, %TinyVM** %5, align 8
  %6 = getelementptr inbounds %TinyVM, %TinyVM* %self3, i32 0, i32 1
  %7 = load %vector__TinyNodep*, %vector__TinyNodep** %6, align 8
  %8 = call i32 @vector_length_TinyNodep5_tiny02base(%vector__TinyNodep* %7)
  %letmp = icmp slt i32 %i2, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %9 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 365), align 8
  %10 = bitcast i8* %9 to %TinyVM**
  %self4 = load %TinyVM*, %TinyVM** %10, align 8
  %11 = getelementptr inbounds %TinyVM, %TinyVM* %self4, i32 0, i32 1
  %12 = load %vector__TinyNodep*, %vector__TinyNodep** %11, align 8
  %i5 = load i32, i32* %i, align 4
  %13 = call %TinyNode* @vector_item_TinyNodep6_tiny02base(%vector__TinyNodep* %12, i32 %i5, %TinyNode* null)
  call void @TinyNode_debug(%TinyNode* %13)
  %i6 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i6, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %self7 = load %TinyVM*, %TinyVM** %self1, align 8
  %14 = getelementptr inbounds %TinyVM, %TinyVM* %self7, i32 0, i32 2
  %15 = load %vector__TVALUE*, %vector__TVALUE** %14, align 8
  call void @vector_each_TVALUE7_tiny02base(%vector__TVALUE* %15, void (%TVALUE, i32, i1*)* @tiny02base_lambda0)
  %16 = bitcast [8192 x i8*]* %lvtable to i8*
  %17 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %16, i64 65536)
  ret void
}

define i32 @vector_length_TinyNodep5_tiny02base(%vector__TinyNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %self2 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %3 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define %TinyNode* @vector_item_TinyNodep6_tiny02base(%vector__TinyNodep* %self, i32 %index, %TinyNode* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %default_value3 = alloca %TinyNode*
  store %TinyNode* %default_value, %TinyNode** %default_value3, align 8
  %4 = bitcast %TinyNode** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %8 = bitcast i8* %7 to %vector__TinyNodep**
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %8, align 8
  %9 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %14 = bitcast i8* %13 to %vector__TinyNodep**
  %self7 = load %vector__TinyNodep*, %vector__TinyNodep** %14, align 8
  %15 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self7, i32 0, i32 1
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
  %self11 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %17 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %20 = bitcast i8* %19 to %vector__TinyNodep**
  %self15 = load %vector__TinyNodep*, %vector__TinyNodep** %20, align 8
  %21 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self15, i32 0, i32 0
  %22 = load %TinyNode**, %TinyNode*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %TinyNode*, %TinyNode** %22, i32 %index16
  %element = load %TinyNode*, %TinyNode** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %TinyNode* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %TinyNode*, %TinyNode** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %TinyNode* %default_value17
}

define void @tiny02base_lambda0(%TVALUE %it, i32 %it2, i1* %it3) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca %TVALUE
  store %TVALUE %it, %TVALUE* %it1, align 8
  %2 = bitcast %TVALUE* %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %it33 = alloca i1*
  store i1* %it3, i1** %it33, align 8
  %4 = bitcast i1** %it33 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %it24 = load i32, i32* %it22, align 4
  %it5 = load %TVALUE, %TVALUE* %it1, align 8
  %5 = bitcast %TVALUE* %it1 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_string.43, i32 0, i32 0), i32 %it24, i32 %6)
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void
}

define void @vector_each_TVALUE7_tiny02base(%vector__TVALUE* %self, void (%TVALUE, i32, i1*)* %block_) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %block_2 = alloca void (%TVALUE, i32, i1*)*
  store void (%TVALUE, i32, i1*)* %block_, void (%TVALUE, i32, i1*)** %block_2, align 8
  %3 = bitcast void (%TVALUE, i32, i1*)** %block_2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %i_ = alloca i32
  %4 = bitcast i32* %i_ to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  store i32 0, i32* %i_, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end, %entry
  %i_3 = load i32, i32* %i_, align 4
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %6 = bitcast i8* %5 to %vector__TVALUE**
  %self4 = load %vector__TVALUE*, %vector__TVALUE** %6, align 8
  %7 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self4, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %letmp = icmp slt i32 %i_3, %8
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %end_flag_ = alloca i1
  %9 = bitcast i1* %end_flag_ to i8*
  store i8* %9, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  store i1 false, i1* %end_flag_, align 1
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 367), align 8
  %11 = bitcast i8* %10 to void (%TVALUE, i32, i1*)**
  %block_5 = load void (%TVALUE, i32, i1*)*, void (%TVALUE, i32, i1*)** %11, align 8
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 366), align 8
  %13 = bitcast i8* %12 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %13, align 8
  %14 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 0
  %15 = load %TVALUE*, %TVALUE** %14, align 8
  %i_7 = load i32, i32* %i_, align 4
  %element_address = getelementptr %TVALUE, %TVALUE* %15, i32 %i_7
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %i_8 = load i32, i32* %i_, align 4
  %end_flag_9 = load i1, i1* %end_flag_, align 1
  call void %block_5(%TVALUE %element, i32 %i_8, i1* %end_flag_)
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

define void @vector_push_back_TVALUE8_tiny02base(%vector__TVALUE* %self, %TVALUE %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %item2 = alloca %TVALUE
  store %TVALUE %item, %TVALUE* %item2, align 8
  %3 = bitcast %TVALUE* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 373), align 8
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %6 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %9 = bitcast i8* %8 to %vector__TVALUE**
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %9, align 8
  %10 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 374), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %14 = bitcast i8* %13 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %14, align 8
  %15 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 0
  %16 = load %TVALUE*, %TVALUE** %15, align 8
  %items = alloca %TVALUE*
  %17 = bitcast %TVALUE** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  store %TVALUE* %16, %TVALUE** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %19 = bitcast i8* %18 to %vector__TVALUE**
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.44, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.45, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_string.46, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_string.47, i32 0, i32 0))
  %21 = bitcast i8* %20 to %TVALUE*
  %22 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 0
  store %TVALUE* %21, %TVALUE** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end21, %entry
  %self22 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %26 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self22, i32 0, i32 0
  %27 = load %TVALUE*, %TVALUE** %26, align 8
  %self23 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %28 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self23, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item24 = load %TVALUE, %TVALUE* %item2, align 8
  %element_address25 = getelementptr %TVALUE, %TVALUE* %27, i32 %29
  store %TVALUE %item24, %TVALUE* %element_address25, align 8
  %self26 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self27 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %30 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self27, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp28 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self26, i32 0, i32 1
  store i32 %addtmp28, i32* %32, align 4
  %subttmp29 = sub nsw i32 %addtmp28, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %38 = bitcast i8* %37 to %vector__TVALUE**
  %self10 = load %vector__TVALUE*, %vector__TVALUE** %38, align 8
  %39 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %42 = bitcast i8* %41 to %vector__TVALUE**
  %self11 = load %vector__TVALUE*, %vector__TVALUE** %42, align 8
  %43 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self11, i32 0, i32 0
  %44 = load %TVALUE*, %TVALUE** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %48 = bitcast i8* %47 to %TVALUE**
  %items13 = load %TVALUE*, %TVALUE** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %TVALUE, %TVALUE* %items13, i32 %i14
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %element_address15 = getelementptr %TVALUE, %TVALUE* %44, i32 %i12
  store %TVALUE %element, %TVALUE* %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %56 = bitcast i8* %55 to %vector__TVALUE**
  %self17 = load %vector__TVALUE*, %vector__TVALUE** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %TVALUE*, %TVALUE** %items, align 8
  %58 = load %TVALUE*, %TVALUE** %items, align 8
  %59 = ptrtoint %TVALUE* %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %cond_then_block20, label %cond_end21

cond_then_block20:                                ; preds = %cond_end_block
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_end_block
  %61 = bitcast %TVALUE* %58 to i8*
  call void @xfree(i8* %61)
  br label %cond_end
}

define %TVALUE @vector_pop_back_TVALUE9_tiny02base(%vector__TVALUE* %self, %TVALUE %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %default_value2 = alloca %TVALUE
  store %TVALUE %default_value, %TVALUE* %default_value2, align 8
  %3 = bitcast %TVALUE* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %7 = bitcast i8* %6 to %TVALUE*
  %default_value4 = load %TVALUE, %TVALUE* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %TVALUE %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %10 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 0
  %11 = load %TVALUE*, %TVALUE** %10, align 8
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %12 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %TVALUE, %TVALUE* %11, i32 %subttmp
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %result = alloca %TVALUE
  %14 = bitcast %TVALUE* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 377), align 8
  store %TVALUE %element, %TVALUE* %result, align 8
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self8 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %15 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %TVALUE, %TVALUE* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %TVALUE %result10
}

define %TVALUE @vector_pop_back_TVALUE10_tiny02base(%vector__TVALUE* %self, %TVALUE %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %default_value2 = alloca %TVALUE
  store %TVALUE %default_value, %TVALUE* %default_value2, align 8
  %3 = bitcast %TVALUE* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %7 = bitcast i8* %6 to %TVALUE*
  %default_value4 = load %TVALUE, %TVALUE* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %TVALUE %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %10 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 0
  %11 = load %TVALUE*, %TVALUE** %10, align 8
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %12 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %TVALUE, %TVALUE* %11, i32 %subttmp
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %result = alloca %TVALUE
  %14 = bitcast %TVALUE* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 377), align 8
  store %TVALUE %element, %TVALUE* %result, align 8
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self8 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %15 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %TVALUE, %TVALUE* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %TVALUE %result10
}

define void @vector_push_back_TVALUE11_tiny02base(%vector__TVALUE* %self, %TVALUE %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %item2 = alloca %TVALUE
  store %TVALUE %item, %TVALUE* %item2, align 8
  %3 = bitcast %TVALUE* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 376), align 8
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %6 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %9 = bitcast i8* %8 to %vector__TVALUE**
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %9, align 8
  %10 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 377), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %14 = bitcast i8* %13 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %14, align 8
  %15 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 0
  %16 = load %TVALUE*, %TVALUE** %15, align 8
  %items = alloca %TVALUE*
  %17 = bitcast %TVALUE** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 378), align 8
  store %TVALUE* %16, %TVALUE** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %19 = bitcast i8* %18 to %vector__TVALUE**
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.48, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.49, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.50, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.51, i32 0, i32 0))
  %21 = bitcast i8* %20 to %TVALUE*
  %22 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 0
  store %TVALUE* %21, %TVALUE** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 379), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 379), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end21, %entry
  %self22 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %26 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self22, i32 0, i32 0
  %27 = load %TVALUE*, %TVALUE** %26, align 8
  %self23 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %28 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self23, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item24 = load %TVALUE, %TVALUE* %item2, align 8
  %element_address25 = getelementptr %TVALUE, %TVALUE* %27, i32 %29
  store %TVALUE %item24, %TVALUE* %element_address25, align 8
  %self26 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self27 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %30 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self27, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp28 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self26, i32 0, i32 1
  store i32 %addtmp28, i32* %32, align 4
  %subttmp29 = sub nsw i32 %addtmp28, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 379), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %38 = bitcast i8* %37 to %vector__TVALUE**
  %self10 = load %vector__TVALUE*, %vector__TVALUE** %38, align 8
  %39 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %42 = bitcast i8* %41 to %vector__TVALUE**
  %self11 = load %vector__TVALUE*, %vector__TVALUE** %42, align 8
  %43 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self11, i32 0, i32 0
  %44 = load %TVALUE*, %TVALUE** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 379), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 378), align 8
  %48 = bitcast i8* %47 to %TVALUE**
  %items13 = load %TVALUE*, %TVALUE** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 379), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %TVALUE, %TVALUE* %items13, i32 %i14
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %element_address15 = getelementptr %TVALUE, %TVALUE* %44, i32 %i12
  store %TVALUE %element, %TVALUE* %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 379), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 379), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %56 = bitcast i8* %55 to %vector__TVALUE**
  %self17 = load %vector__TVALUE*, %vector__TVALUE** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %TVALUE*, %TVALUE** %items, align 8
  %58 = load %TVALUE*, %TVALUE** %items, align 8
  %59 = ptrtoint %TVALUE* %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %cond_then_block20, label %cond_end21

cond_then_block20:                                ; preds = %cond_end_block
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_end_block
  %61 = bitcast %TVALUE* %58 to i8*
  call void @xfree(i8* %61)
  br label %cond_end
}

define %TVALUE @vector_pop_back_TVALUE12_tiny02base(%vector__TVALUE* %self, %TVALUE %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %default_value2 = alloca %TVALUE
  store %TVALUE %default_value, %TVALUE* %default_value2, align 8
  %3 = bitcast %TVALUE* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %7 = bitcast i8* %6 to %TVALUE*
  %default_value4 = load %TVALUE, %TVALUE* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %TVALUE %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %10 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 0
  %11 = load %TVALUE*, %TVALUE** %10, align 8
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %12 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %TVALUE, %TVALUE* %11, i32 %subttmp
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %result = alloca %TVALUE
  %14 = bitcast %TVALUE* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 373), align 8
  store %TVALUE %element, %TVALUE* %result, align 8
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self8 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %15 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %TVALUE, %TVALUE* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %TVALUE %result10
}

define %TVALUE @vector_pop_back_TVALUE13_tiny02base(%vector__TVALUE* %self, %TVALUE %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %default_value2 = alloca %TVALUE
  store %TVALUE %default_value, %TVALUE* %default_value2, align 8
  %3 = bitcast %TVALUE* %default_value2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %eqtmpX = icmp eq i32 %5, 0
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %7 = bitcast i8* %6 to %TVALUE*
  %default_value4 = load %TVALUE, %TVALUE* %7, align 8
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret %TVALUE %default_value4

cond_end:                                         ; preds = %entry
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %10 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 0
  %11 = load %TVALUE*, %TVALUE** %10, align 8
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %12 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %subttmp = sub nsw i32 %13, 1
  %element_address = getelementptr %TVALUE, %TVALUE* %11, i32 %subttmp
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %result = alloca %TVALUE
  %14 = bitcast %TVALUE* %result to i8*
  store i8* %14, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 373), align 8
  store %TVALUE %element, %TVALUE* %result, align 8
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self8 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %15 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %subttmp9 = sub nsw i32 %16, 1
  %17 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 1
  store i32 %subttmp9, i32* %17, align 4
  %addtmp = add nsw i32 %subttmp9, 1
  %result10 = load %TVALUE, %TVALUE* %result, align 8
  %18 = bitcast [8192 x i8*]* %lvtable to i8*
  %19 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %18, i64 65536)
  ret %TVALUE %result10
}

define void @vector_push_back_TVALUE14_tiny02base(%vector__TVALUE* %self, %TVALUE %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TVALUE*
  store %vector__TVALUE* %self, %vector__TVALUE** %self1, align 8
  %2 = bitcast %vector__TVALUE** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %item2 = alloca %TVALUE
  store %TVALUE %item, %TVALUE* %item2, align 8
  %3 = bitcast %TVALUE* %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 372), align 8
  %self3 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %4 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %6 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmpX = icmp eq i32 %5, %7
  br i1 %eqtmpX, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %9 = bitcast i8* %8 to %vector__TVALUE**
  %self5 = load %vector__TVALUE*, %vector__TVALUE** %9, align 8
  %10 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %multtmp = mul nsw i32 %11, 2
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 373), align 8
  store i32 %multtmp, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %14 = bitcast i8* %13 to %vector__TVALUE**
  %self6 = load %vector__TVALUE*, %vector__TVALUE** %14, align 8
  %15 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self6, i32 0, i32 0
  %16 = load %TVALUE*, %TVALUE** %15, align 8
  %items = alloca %TVALUE*
  %17 = bitcast %TVALUE** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 374), align 8
  store %TVALUE* %16, %TVALUE** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %19 = bitcast i8* %18 to %vector__TVALUE**
  %self7 = load %vector__TVALUE*, %vector__TVALUE** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %sext14 = sext i32 %new_size8 to i64
  %20 = call i8* @debug_xcalloc(i64 %sext14, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_string.52, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_string.53, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_string.54, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_string.55, i32 0, i32 0))
  %21 = bitcast i8* %20 to %TVALUE*
  %22 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self7, i32 0, i32 0
  store %TVALUE* %21, %TVALUE** %22, align 8
  %i = alloca i32
  %23 = bitcast i32* %i to i8*
  store i8* %23, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %loop_top_block

cond_end:                                         ; preds = %cond_end21, %entry
  %self22 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %26 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self22, i32 0, i32 0
  %27 = load %TVALUE*, %TVALUE** %26, align 8
  %self23 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %28 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self23, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %item24 = load %TVALUE, %TVALUE* %item2, align 8
  %element_address25 = getelementptr %TVALUE, %TVALUE* %27, i32 %29
  store %TVALUE %item24, %TVALUE* %element_address25, align 8
  %self26 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %self27 = load %vector__TVALUE*, %vector__TVALUE** %self1, align 8
  %30 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self27, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %addtmp28 = add nsw i32 %31, 1
  %32 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self26, i32 0, i32 1
  store i32 %addtmp28, i32* %32, align 4
  %subttmp29 = sub nsw i32 %addtmp28, 1
  %33 = bitcast [8192 x i8*]* %lvtable to i8*
  %34 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %33, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %36 = bitcast i8* %35 to i32*
  %i9 = load i32, i32* %36, align 4
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %38 = bitcast i8* %37 to %vector__TVALUE**
  %self10 = load %vector__TVALUE*, %vector__TVALUE** %38, align 8
  %39 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %letmp = icmp slt i32 %i9, %40
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %41 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %42 = bitcast i8* %41 to %vector__TVALUE**
  %self11 = load %vector__TVALUE*, %vector__TVALUE** %42, align 8
  %43 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self11, i32 0, i32 0
  %44 = load %TVALUE*, %TVALUE** %43, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %46 = bitcast i8* %45 to i32*
  %i12 = load i32, i32* %46, align 4
  %47 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 374), align 8
  %48 = bitcast i8* %47 to %TVALUE**
  %items13 = load %TVALUE*, %TVALUE** %48, align 8
  %49 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %50 = bitcast i8* %49 to i32*
  %i14 = load i32, i32* %50, align 4
  %element_address = getelementptr %TVALUE, %TVALUE* %items13, i32 %i14
  %element = load %TVALUE, %TVALUE* %element_address, align 8
  %element_address15 = getelementptr %TVALUE, %TVALUE* %44, i32 %i12
  store %TVALUE %element, %TVALUE* %element_address15, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %52 = bitcast i8* %51 to i32*
  %i16 = load i32, i32* %52, align 4
  %addtmp = add nsw i32 %i16, 1
  %53 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 375), align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %addtmp, i32* %54, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %55 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 371), align 8
  %56 = bitcast i8* %55 to %vector__TVALUE**
  %self17 = load %vector__TVALUE*, %vector__TVALUE** %56, align 8
  %new_size18 = load i32, i32* %new_size, align 4
  %57 = getelementptr inbounds %vector__TVALUE, %vector__TVALUE* %self17, i32 0, i32 2
  store i32 %new_size18, i32* %57, align 4
  %items19 = load %TVALUE*, %TVALUE** %items, align 8
  %58 = load %TVALUE*, %TVALUE** %items, align 8
  %59 = ptrtoint %TVALUE* %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %cond_then_block20, label %cond_end21

cond_then_block20:                                ; preds = %cond_end_block
  br label %cond_end21

cond_end21:                                       ; preds = %cond_then_block20, %cond_end_block
  %61 = bitcast %TVALUE* %58 to i8*
  call void @xfree(i8* %61)
  br label %cond_end
}

define i32 @vector_length_TinyNodep15_tiny02base(%vector__TinyNodep* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %self2 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %3 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret i32 %4
}

define %TinyNode* @vector_item_TinyNodep16_tiny02base(%vector__TinyNodep* %self, i32 %index, %TinyNode* %default_value) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @xmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector__TinyNodep*
  store %vector__TinyNodep* %self, %vector__TinyNodep** %self1, align 8
  %2 = bitcast %vector__TinyNodep** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %index2 = alloca i32
  store i32 %index, i32* %index2, align 4
  %3 = bitcast i32* %index2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  %default_value3 = alloca %TinyNode*
  store %TinyNode* %default_value, %TinyNode** %default_value3, align 8
  %4 = bitcast %TinyNode** %default_value3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 370), align 8
  %index4 = load i32, i32* %index2, align 4
  %letmp = icmp slt i32 %index4, 0
  br i1 %letmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  %6 = bitcast i8* %5 to i32*
  %index5 = load i32, i32* %6, align 4
  %7 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %8 = bitcast i8* %7 to %vector__TinyNodep**
  %self6 = load %vector__TinyNodep*, %vector__TinyNodep** %8, align 8
  %9 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %addtmp = add nsw i32 %index5, %10
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  %12 = bitcast i8* %11 to i32*
  store i32 %addtmp, i32* %12, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %14 = bitcast i8* %13 to %vector__TinyNodep**
  %self7 = load %vector__TinyNodep*, %vector__TinyNodep** %14, align 8
  %15 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self7, i32 0, i32 1
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
  %self11 = load %vector__TinyNodep*, %vector__TinyNodep** %self1, align 8
  %17 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self11, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %letmp12 = icmp slt i32 %index10, %18
  %andand = and i1 %getmp, %letmp12
  store i1 %andand, i1* %andand_result_var, align 1
  br label %cond_jump_end

cond_jump_end:                                    ; preds = %cond_jump_then9, %cond_end
  %andand_result_value = load i1, i1* %andand_result_var, align 1
  br i1 %andand_result_value, label %cond_jump_then13, label %cond_end14

cond_jump_then13:                                 ; preds = %cond_jump_end
  %19 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 368), align 8
  %20 = bitcast i8* %19 to %vector__TinyNodep**
  %self15 = load %vector__TinyNodep*, %vector__TinyNodep** %20, align 8
  %21 = getelementptr inbounds %vector__TinyNodep, %vector__TinyNodep* %self15, i32 0, i32 0
  %22 = load %TinyNode**, %TinyNode*** %21, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 369), align 8
  %24 = bitcast i8* %23 to i32*
  %index16 = load i32, i32* %24, align 4
  %element_address = getelementptr %TinyNode*, %TinyNode** %22, i32 %index16
  %element = load %TinyNode*, %TinyNode** %element_address, align 8
  %25 = bitcast [8192 x i8*]* %lvtable to i8*
  %26 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %25, i64 65536)
  ret %TinyNode* %element

cond_end14:                                       ; preds = %cond_jump_end
  %default_value17 = load %TinyNode*, %TinyNode** %default_value3, align 8
  %27 = bitcast [8192 x i8*]* %lvtable to i8*
  %28 = call i8* @xmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %27, i64 65536)
  ret %TinyNode* %default_value17
}

attributes #0 = { nounwind }
