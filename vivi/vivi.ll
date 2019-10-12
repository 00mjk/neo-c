; ModuleID = 'Module vivi'

%_IO_FILE_plus = type opaque
%_IO_FILE = type opaque
%_win_st = type opaque
%__builtin_va_list = type { i8*, i8*, i8*, i32, i32 }
%anon3 = type { i64, %anon1 }
%anon1 = type { i32, %anon2 }
%anon2 = type { i32 }
%anon9 = type { [16 x i64] }
%timeval = type { i64, i64 }
%timespec = type { i64, i64 }
%anon8 = type { [16 x i64] }
%random_data = type { i32*, i32*, i32*, i32, i32, i32, i32* }
%drand48_data = type { [3 x i16], [3 x i16], i16, i16, i64 }
%anon5 = type { i32, i32 }
%anon6 = type { i64, i64 }
%anon7 = type { i64, i64 }
%anon22 = type { [13 x %__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%__locale_data = type opaque
%screen = type opaque
%anon25 = type { i16, i32, i32, i32, i64 }
%winsize = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%win = type { %_win_st*, %list_char* }
%list_char = type { %list_item_char*, %list_item_char*, i32, %list_item_char*, %list_item_char*, i32 }
%list_item_char = type { i8*, %list_item_char*, %list_item_char*, i8*, %list_item_char*, %list_item_char* }
%vivi = type { %vector_win*, %win* }
%vector_win = type { %win**, i32, i32, %win**, i32, i32 }

@gLVTable = internal global [8192 x i8*] zeroinitializer, align 8
@_IO_2_1_stdin_ = external externally_initialized global %_IO_FILE_plus, align 8
@_IO_2_1_stdout_ = external externally_initialized global %_IO_FILE_plus, align 8
@_IO_2_1_stderr_ = external externally_initialized global %_IO_FILE_plus, align 8
@stdin = external externally_initialized global %_IO_FILE*, align 8
@stdout = external externally_initialized global %_IO_FILE*, align 8
@stderr = external externally_initialized global %_IO_FILE*, align 8
@sys_nerr = external externally_initialized global i32, align 4
@sys_errlist = external externally_initialized global i8**, align 8
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
@__environ = external externally_initialized global i8**, align 8
@optarg = external externally_initialized global i8*, align 8
@optind = external externally_initialized global i32, align 4
@opterr = external externally_initialized global i32, align 4
@optopt = external externally_initialized global i32, align 4
@global_string = private constant [4 x i8] c"aaa\00", align 1
@global_string.1 = private constant [4 x i8] c"bbb\00", align 1
@global_string.2 = private constant [4 x i8] c"ccc\00", align 1

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

declare i32 @_IO_vfscanf(%_IO_FILE*, i8*, %__builtin_va_list, i32*)

declare i32 @_IO_vfprintf(%_IO_FILE*, i8*, %__builtin_va_list)

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

declare i32 @vfprintf(%_IO_FILE*, i8*, %__builtin_va_list)

declare i32 @vprintf(i8*, %__builtin_va_list)

declare i32 @vsprintf(i8*, i8*, %__builtin_va_list)

declare i32 @snprintf(i8*, i64, i8*, ...)

declare i32 @vsnprintf(i8*, i64, i8*, %__builtin_va_list)

declare i32 @vdprintf(i32, i8*, %__builtin_va_list)

declare i32 @dprintf(i32, i8*, ...)

declare i32 @fscanf(%_IO_FILE*, i8*, ...)

declare i32 @scanf(i8*, ...)

declare i32 @sscanf(i8*, i8*, ...)

declare i32 @vfscanf(%_IO_FILE*, i8*, %__builtin_va_list)

declare i32 @vscanf(i8*, %__builtin_va_list)

declare i32 @vsscanf(i8*, i8*, %__builtin_va_list)

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

declare i32 @fgetpos(%_IO_FILE*, %anon3*)

declare i32 @fsetpos(%_IO_FILE*, %anon3*)

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

declare i32 @select(i32, %anon9*, %anon9*, %anon9*, %timeval*)

declare i32 @pselect(i32, %anon9*, %anon9*, %anon9*, %timespec*, %anon8*)

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

declare %anon5 @div(i32, i32)

declare %anon6 @ldiv(i64, i64)

declare %anon7 @lldiv(i64, i64)

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

declare i32 @strcoll_l(i8*, i8*, %anon22*)

declare i64 @strxfrm_l(i8*, i8*, i64, %anon22*)

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

declare i8* @strerror_l(i32, %anon22*)

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

declare i8* @nccalloc(i32, i64)

declare i8* @ncmalloc(i64)

declare i8* @ncmemdup(i8*)

declare void @ncfree(i8*)

declare i8* @ncmemcpy(i8*, i8*, i64)

declare i8* @ncasprintf(i8*, ...)

declare i8* @op_add_charp_charp(i8*, i8*)

declare i8* @string(i8*)

declare void @p(i8*)

declare i8* @char_subString(i8*, i32, i32)

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

declare i32 @vwprintw(%_win_st*, i8*, %__builtin_va_list)

declare i32 @vw_printw(%_win_st*, i8*, %__builtin_va_list)

declare i32 @vwscanw(%_win_st*, i8*, %__builtin_va_list)

declare i32 @vw_scanw(%_win_st*, i8*, %__builtin_va_list)

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

declare i32 @getmouse(%anon25*)

declare i32 @ungetmouse(%anon25*)

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

define i32 @xgetmaxx() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %2 = call i8* @nccalloc(i32 1, i64 16)
  %3 = bitcast i8* %2 to %winsize*
  %ws = alloca %winsize*
  %4 = bitcast %winsize** %ws to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  store %winsize* %3, %winsize** %ws, align 8
  %ws1 = load %winsize*, %winsize** %ws, align 8
  %5 = call i32 (i32, i64, ...) @ioctl(i32 1, i64 21523, %winsize* %ws1)
  %ws2 = load %winsize*, %winsize** %ws, align 8
  %6 = getelementptr inbounds %winsize, %winsize* %ws2, i32 0, i32 1
  %7 = load i16, i16* %6, align 2
  %8 = sext i16 %7 to i32
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  %11 = load %winsize*, %winsize** %ws, align 8
  %12 = bitcast %winsize* %11 to i8*
  call void @ncfree(i8* %12)
  ret i32 %8
}

define i32 @xgetmaxy() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %2 = call i8* @nccalloc(i32 1, i64 16)
  %3 = bitcast i8* %2 to %winsize*
  %ws = alloca %winsize*
  %4 = bitcast %winsize** %ws to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  store %winsize* %3, %winsize** %ws, align 8
  %ws1 = load %winsize*, %winsize** %ws, align 8
  %5 = call i32 (i32, i64, ...) @ioctl(i32 1, i64 21523, %winsize* %ws1)
  %ws2 = load %winsize*, %winsize** %ws, align 8
  %6 = getelementptr inbounds %winsize, %winsize* %ws2, i32 0, i32 0
  %7 = load i16, i16* %6, align 2
  %8 = sext i16 %7 to i32
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  %11 = load %winsize*, %winsize** %ws, align 8
  %12 = bitcast %winsize* %11 to i8*
  call void @ncfree(i8* %12)
  ret i32 %8
}

define %win* @win_initialize(%win* %self, i32 %width, i32 %height) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %win*
  store %win* %self, %win** %self1, align 8
  %2 = bitcast %win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %width2 = alloca i32
  store i32 %width, i32* %width2, align 4
  %3 = bitcast i32* %width2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 332), align 8
  %height3 = alloca i32
  store i32 %height, i32* %height3, align 4
  %4 = bitcast i32* %height3 to i8*
  store i8* %4, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 333), align 8
  %self4 = load %win*, %win** %self1, align 8
  %5 = call i8* @nccalloc(i32 1, i64 48)
  %6 = bitcast i8* %5 to %list_char*
  %7 = call %list_char* @list_initialize_charp0_vivi(%list_char* %6)
  %8 = getelementptr inbounds %win, %win* %self4, i32 0, i32 1
  %9 = load %list_char*, %list_char** %8, align 8
  call void @list_finalize_charp1_vivi(%list_char* %9)
  %10 = bitcast %list_char* %9 to i8*
  call void @ncfree(i8* %10)
  store %list_char* %7, %list_char** %8, align 8
  %self5 = load %win*, %win** %self1, align 8
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret %win* %self5
}

define %list_char* @list_initialize_charp0_vivi(%list_char* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 334), align 8
  %self2 = load %list_char*, %list_char** %self1, align 8
  %3 = getelementptr inbounds %list_char, %list_char* %self2, i32 0, i32 0
  store %list_item_char* null, %list_item_char** %3, align 8
  %self3 = load %list_char*, %list_char** %self1, align 8
  %4 = getelementptr inbounds %list_char, %list_char* %self3, i32 0, i32 1
  store %list_item_char* null, %list_item_char** %4, align 8
  %self4 = load %list_char*, %list_char** %self1, align 8
  %5 = getelementptr inbounds %list_char, %list_char* %self4, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %self5 = load %list_char*, %list_char** %self1, align 8
  %6 = bitcast [8192 x i8*]* %lvtable to i8*
  %7 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %6, i64 65536)
  ret %list_char* %self5
}

define void @list_finalize_charp1_vivi(%list_char* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 334), align 8
  %self2 = load %list_char*, %list_char** %self1, align 8
  %eqtmp = icmp eq %list_char* %self2, null
  br i1 %eqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list_char*, %list_char** %self1, align 8
  %5 = getelementptr inbounds %list_char, %list_char* %self3, i32 0, i32 0
  %6 = load %list_item_char*, %list_item_char** %5, align 8
  %it = alloca %list_item_char*
  %7 = bitcast %list_item_char** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  store %list_item_char* %6, %list_item_char** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end6, %cond_end
  %it4 = load %list_item_char*, %list_item_char** %it, align 8
  %noteqtmp = icmp ne %list_item_char* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %11 = bitcast i8* %10 to %list_item_char**
  %it7 = load %list_item_char*, %list_item_char** %11, align 8
  %12 = getelementptr inbounds %list_item_char, %list_item_char* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  call void @ncfree(i8* %14)
  br label %cond_end6

cond_end6:                                        ; preds = %cond_jump_then5, %cond_then_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %16 = bitcast i8* %15 to %list_item_char**
  %it8 = load %list_item_char*, %list_item_char** %16, align 8
  %prev_it = alloca %list_item_char*
  %17 = bitcast %list_item_char** %prev_it to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  store %list_item_char* %it8, %list_item_char** %prev_it, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %19 = bitcast i8* %18 to %list_item_char**
  %it9 = load %list_item_char*, %list_item_char** %19, align 8
  %20 = getelementptr inbounds %list_item_char, %list_item_char* %it9, i32 0, i32 2
  %21 = load %list_item_char*, %list_item_char** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %23 = bitcast i8* %22 to %list_item_char**
  store %list_item_char* %21, %list_item_char** %23, align 8
  %prev_it10 = load %list_item_char*, %list_item_char** %prev_it, align 8
  %24 = load %list_item_char*, %list_item_char** %prev_it, align 8
  %25 = bitcast %list_item_char* %24 to i8*
  call void @ncfree(i8* %25)
  br label %loop_top_block
}

define void @win_finalize(%win* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %win*
  store %win* %self, %win** %self1, align 8
  %2 = bitcast %win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %self2 = load %win*, %win** %self1, align 8
  %eqtmp = icmp eq %win* %self2, null
  br i1 %eqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret void
}

define void @win_view(%win* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %win*
  store %win* %self, %win** %self1, align 8
  %2 = bitcast %win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %self2 = load %win*, %win** %self1, align 8
  %3 = getelementptr inbounds %win, %win* %self2, i32 0, i32 0
  %4 = load %_win_st*, %_win_st** %3, align 8
  %5 = call i32 @werase(%_win_st* %4)
  %self3 = load %win*, %win** %self1, align 8
  %6 = getelementptr inbounds %win, %win* %self3, i32 0, i32 1
  %7 = load %list_char*, %list_char** %6, align 8
  call void @list_each_charp3_vivi(%list_char* %7, void (i8*, i32)* @vivi_lambda0)
  %self4 = load %win*, %win** %self1, align 8
  %8 = getelementptr inbounds %win, %win* %self4, i32 0, i32 0
  %9 = load %_win_st*, %_win_st** %8, align 8
  %10 = call i32 @wrefresh(%_win_st* %9)
  %11 = bitcast [8192 x i8*]* %lvtable to i8*
  %12 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %11, i64 65536)
  ret void
}

define void @vivi_lambda0(i8* %it, i32 %it2) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %it1 = alloca i8*
  store i8* %it, i8** %it1, align 8
  %2 = bitcast i8** %it1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 332), align 8
  %it22 = alloca i32
  store i32 %it2, i32* %it22, align 4
  %3 = bitcast i32* %it22 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 333), align 8
  %4 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %5 = bitcast i8* %4 to %win**
  %self = load %win*, %win** %5, align 8
  %6 = getelementptr inbounds %win, %win* %self, i32 0, i32 0
  %7 = load %_win_st*, %_win_st** %6, align 8
  %it23 = load i32, i32* %it22, align 4
  %it4 = load i8*, i8** %it1, align 8
  %8 = call i32 (%_win_st*, i32, i32, i8*, ...) @mvwprintw(%_win_st* %7, i32 %it23, i32 0, i8* %it4)
  %9 = bitcast [8192 x i8*]* %lvtable to i8*
  %10 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %9, i64 65536)
  ret void
}

define void @list_each_charp3_vivi(%list_char* %self, void (i8*, i32)* %block) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 332), align 8
  %block2 = alloca void (i8*, i32)*
  store void (i8*, i32)* %block, void (i8*, i32)** %block2, align 8
  %3 = bitcast void (i8*, i32)** %block2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 333), align 8
  %self3 = load %list_char*, %list_char** %self1, align 8
  %4 = getelementptr inbounds %list_char, %list_char* %self3, i32 0, i32 0
  %5 = load %list_item_char*, %list_item_char** %4, align 8
  %it = alloca %list_item_char*
  %6 = bitcast %list_item_char** %it to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 334), align 8
  store %list_item_char* %5, %list_item_char** %it, align 8
  %i = alloca i32
  %7 = bitcast i32* %i to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_then_block, %entry
  %it4 = load %list_item_char*, %list_item_char** %it, align 8
  %noteqtmp = icmp ne %list_item_char* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 333), align 8
  %9 = bitcast i8* %8 to void (i8*, i32)**
  %block5 = load void (i8*, i32)*, void (i8*, i32)** %9, align 8
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 334), align 8
  %11 = bitcast i8* %10 to %list_item_char**
  %it6 = load %list_item_char*, %list_item_char** %11, align 8
  %12 = getelementptr inbounds %list_item_char, %list_item_char* %it6, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %15 = bitcast i8* %14 to i32*
  %i7 = load i32, i32* %15, align 4
  call void %block5(i8* %13, i32 %i7)
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 334), align 8
  %17 = bitcast i8* %16 to %list_item_char**
  %it8 = load %list_item_char*, %list_item_char** %17, align 8
  %18 = getelementptr inbounds %list_item_char, %list_item_char* %it8, i32 0, i32 2
  %19 = load %list_item_char*, %list_item_char** %18, align 8
  %20 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 334), align 8
  %21 = bitcast i8* %20 to %list_item_char**
  store %list_item_char* %19, %list_item_char** %21, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %23 = bitcast i8* %22 to i32*
  %i9 = load i32, i32* %23, align 4
  %addtmp = add nsw i32 %i9, 1
  %24 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %addtmp, i32* %25, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  %26 = bitcast [8192 x i8*]* %lvtable to i8*
  %27 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %26, i64 65536)
  ret void
}

define void @win_input(%win* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %win*
  store %win* %self, %win** %self1, align 8
  %2 = bitcast %win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %self2 = load %win*, %win** %self1, align 8
  %3 = getelementptr inbounds %win, %win* %self2, i32 0, i32 0
  %4 = load %_win_st*, %_win_st** %3, align 8
  %5 = call i32 @wgetch(%_win_st* %4)
  %key = alloca i32
  %6 = bitcast i32* %key to i8*
  store i8* %6, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 332), align 8
  store i32 %5, i32* %key, align 4
  %7 = bitcast [8192 x i8*]* %lvtable to i8*
  %8 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %7, i64 65536)
  ret void
}

define %vivi* @vivi_initialize(%vivi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vivi*
  store %vivi* %self, %vivi** %self1, align 8
  %2 = bitcast %vivi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %self2 = load %vivi*, %vivi** %self1, align 8
  %3 = call i8* @nccalloc(i32 1, i64 32)
  %4 = bitcast i8* %3 to %vector_win*
  %5 = call %vector_win* @vector_initialize_winp4_vivi(%vector_win* %4)
  %6 = getelementptr inbounds %vivi, %vivi* %self2, i32 0, i32 0
  %7 = load %vector_win*, %vector_win** %6, align 8
  call void @vector_finalize_winp5_vivi(%vector_win* %7)
  %8 = bitcast %vector_win* %7 to i8*
  call void @ncfree(i8* %8)
  store %vector_win* %5, %vector_win** %6, align 8
  %9 = call i32 @xgetmaxx()
  %maxx = alloca i32
  %10 = bitcast i32* %maxx to i8*
  store i8* %10, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 332), align 8
  store i32 %9, i32* %maxx, align 4
  %11 = call i32 @xgetmaxy()
  %maxy = alloca i32
  %12 = bitcast i32* %maxy to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 333), align 8
  store i32 %11, i32* %maxy, align 4
  %13 = call i8* @nccalloc(i32 1, i64 16)
  %14 = bitcast i8* %13 to %win*
  %maxx3 = load i32, i32* %maxx, align 4
  %subttmp = sub nsw i32 %maxx3, 1
  %maxy4 = load i32, i32* %maxy, align 4
  %15 = call %win* @win_initialize(%win* %14, i32 %subttmp, i32 %maxy4)
  %win = alloca %win*
  %16 = bitcast %win** %win to i8*
  store i8* %16, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 334), align 8
  store %win* %15, %win** %win, align 8
  %win5 = load %win*, %win** %win, align 8
  %17 = getelementptr inbounds %win, %win* %win5, i32 0, i32 1
  %18 = load %list_char*, %list_char** %17, align 8
  %19 = call i8* @string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string, i32 0, i32 0))
  call void @list_push_back_charp8_vivi(%list_char* %18, i8* %19)
  %win6 = load %win*, %win** %win, align 8
  %20 = getelementptr inbounds %win, %win* %win6, i32 0, i32 1
  %21 = load %list_char*, %list_char** %20, align 8
  %22 = call i8* @string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.1, i32 0, i32 0))
  call void @list_push_back_charp9_vivi(%list_char* %21, i8* %22)
  %win7 = load %win*, %win** %win, align 8
  %23 = getelementptr inbounds %win, %win* %win7, i32 0, i32 1
  %24 = load %list_char*, %list_char** %23, align 8
  %25 = call i8* @string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_string.2, i32 0, i32 0))
  call void @list_push_back_charp10_vivi(%list_char* %24, i8* %25)
  %self8 = load %vivi*, %vivi** %self1, align 8
  %win9 = load %win*, %win** %win, align 8
  %26 = getelementptr inbounds %vivi, %vivi* %self8, i32 0, i32 1
  store %win* %win9, %win** %26, align 8
  %self10 = load %vivi*, %vivi** %self1, align 8
  %27 = getelementptr inbounds %vivi, %vivi* %self10, i32 0, i32 0
  %28 = load %vector_win*, %vector_win** %27, align 8
  %win11 = load %win*, %win** %win, align 8
  call void @vector_push_back_winp11_vivi(%vector_win* %28, %win* %win11)
  %self12 = load %vivi*, %vivi** %self1, align 8
  %29 = bitcast [8192 x i8*]* %lvtable to i8*
  %30 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %29, i64 65536)
  ret %vivi* %self12
}

define %vector_win* @vector_initialize_winp4_vivi(%vector_win* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector_win*
  store %vector_win* %self, %vector_win** %self1, align 8
  %2 = bitcast %vector_win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %self2 = load %vector_win*, %vector_win** %self1, align 8
  %3 = getelementptr inbounds %vector_win, %vector_win* %self2, i32 0, i32 2
  store i32 16, i32* %3, align 4
  %self3 = load %vector_win*, %vector_win** %self1, align 8
  %4 = getelementptr inbounds %vector_win, %vector_win* %self3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %self4 = load %vector_win*, %vector_win** %self1, align 8
  %self5 = load %vector_win*, %vector_win** %self1, align 8
  %5 = getelementptr inbounds %vector_win, %vector_win* %self5, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @nccalloc(i32 %6, i64 8)
  %8 = bitcast i8* %7 to %win**
  %9 = getelementptr inbounds %vector_win, %vector_win* %self4, i32 0, i32 0
  store %win** %8, %win*** %9, align 8
  %self6 = load %vector_win*, %vector_win** %self1, align 8
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret %vector_win* %self6
}

define void @vector_finalize_winp5_vivi(%vector_win* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector_win*
  store %vector_win* %self, %vector_win** %self1, align 8
  %2 = bitcast %vector_win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %self2 = load %vector_win*, %vector_win** %self1, align 8
  %eqtmp = icmp eq %vector_win* %self2, null
  br i1 %eqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  br i1 true, label %cond_jump_then3, label %cond_end4

cond_jump_then3:                                  ; preds = %cond_end
  %i = alloca i32
  %5 = bitcast i32* %i to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  store i32 0, i32* %i, align 4
  br label %loop_top_block

cond_end4:                                        ; preds = %cond_end_block, %cond_end
  %self10 = load %vector_win*, %vector_win** %self1, align 8
  %6 = getelementptr inbounds %vector_win, %vector_win* %self10, i32 0, i32 0
  %7 = load %win**, %win*** %6, align 8
  %8 = load %win**, %win*** %6, align 8
  %9 = bitcast %win** %8 to i8*
  call void @ncfree(i8* %9)
  %10 = bitcast [8192 x i8*]* %lvtable to i8*
  %11 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %10, i64 65536)
  ret void

loop_top_block:                                   ; preds = %cond_then_block, %cond_jump_then3
  %i5 = load i32, i32* %i, align 4
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %13 = bitcast i8* %12 to %vector_win**
  %self6 = load %vector_win*, %vector_win** %13, align 8
  %14 = getelementptr inbounds %vector_win, %vector_win* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %17 = bitcast i8* %16 to %vector_win**
  %self7 = load %vector_win*, %vector_win** %17, align 8
  %18 = getelementptr inbounds %vector_win, %vector_win* %self7, i32 0, i32 0
  %19 = load %win**, %win*** %18, align 8
  %i8 = load i32, i32* %i, align 4
  %element_address = getelementptr %win*, %win** %19, i32 %i8
  %element = load %win*, %win** %element_address, align 8
  %20 = load %win*, %win** %element_address, align 8
  call void @win_finalize(%win* %20)
  %21 = getelementptr inbounds %win, %win* %20, i32 0, i32 1
  %22 = load %list_char*, %list_char** %21, align 8
  call void @list_finalize_charp6_vivi(%list_char* %22)
  %23 = bitcast %list_char* %22 to i8*
  call void @ncfree(i8* %23)
  %24 = bitcast %win* %20 to i8*
  call void @ncfree(i8* %24)
  %i9 = load i32, i32* %i, align 4
  %addtmp = add nsw i32 %i9, 1
  store i32 %addtmp, i32* %i, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  br label %loop_top_block

cond_end_block:                                   ; preds = %loop_top_block
  br label %cond_end4
}

define void @list_finalize_charp6_vivi(%list_char* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  %self2 = load %list_char*, %list_char** %self1, align 8
  %eqtmp = icmp eq %list_char* %self2, null
  br i1 %eqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %self3 = load %list_char*, %list_char** %self1, align 8
  %5 = getelementptr inbounds %list_char, %list_char* %self3, i32 0, i32 0
  %6 = load %list_item_char*, %list_item_char** %5, align 8
  %it = alloca %list_item_char*
  %7 = bitcast %list_item_char** %it to i8*
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 338), align 8
  store %list_item_char* %6, %list_item_char** %it, align 8
  br label %loop_top_block

loop_top_block:                                   ; preds = %cond_end6, %cond_end
  %it4 = load %list_item_char*, %list_item_char** %it, align 8
  %noteqtmp = icmp ne %list_item_char* %it4, null
  br i1 %noteqtmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  br i1 true, label %cond_jump_then5, label %cond_end6

cond_end_block:                                   ; preds = %loop_top_block
  %8 = bitcast [8192 x i8*]* %lvtable to i8*
  %9 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %8, i64 65536)
  ret void

cond_jump_then5:                                  ; preds = %cond_then_block
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 338), align 8
  %11 = bitcast i8* %10 to %list_item_char**
  %it7 = load %list_item_char*, %list_item_char** %11, align 8
  %12 = getelementptr inbounds %list_item_char, %list_item_char* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  call void @ncfree(i8* %14)
  br label %cond_end6

cond_end6:                                        ; preds = %cond_jump_then5, %cond_then_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 338), align 8
  %16 = bitcast i8* %15 to %list_item_char**
  %it8 = load %list_item_char*, %list_item_char** %16, align 8
  %prev_it = alloca %list_item_char*
  %17 = bitcast %list_item_char** %prev_it to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 339), align 8
  store %list_item_char* %it8, %list_item_char** %prev_it, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 338), align 8
  %19 = bitcast i8* %18 to %list_item_char**
  %it9 = load %list_item_char*, %list_item_char** %19, align 8
  %20 = getelementptr inbounds %list_item_char, %list_item_char* %it9, i32 0, i32 2
  %21 = load %list_item_char*, %list_item_char** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 338), align 8
  %23 = bitcast i8* %22 to %list_item_char**
  store %list_item_char* %21, %list_item_char** %23, align 8
  %prev_it10 = load %list_item_char*, %list_item_char** %prev_it, align 8
  %24 = load %list_item_char*, %list_item_char** %prev_it, align 8
  %25 = bitcast %list_item_char* %24 to i8*
  call void @ncfree(i8* %25)
  br label %loop_top_block
}

define void @list_push_back_charp8_vivi(%list_char* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %self3 = load %list_char*, %list_char** %self1, align 8
  %4 = getelementptr inbounds %list_char, %list_char* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmp = icmp eq i32 %5, 0
  br i1 %eqtmp, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @nccalloc(i32 1, i64 48)
  %7 = bitcast i8* %6 to %list_item_char*
  %litem = alloca %list_item_char*
  %8 = bitcast %list_item_char** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %7, %list_item_char** %litem, align 8
  %litem4 = load %list_item_char*, %list_item_char** %litem, align 8
  %9 = getelementptr inbounds %list_item_char, %list_item_char* %litem4, i32 0, i32 1
  store %list_item_char* null, %list_item_char** %9, align 8
  %litem5 = load %list_item_char*, %list_item_char** %litem, align 8
  %10 = getelementptr inbounds %list_item_char, %list_item_char* %litem5, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %10, align 8
  %litem6 = load %list_item_char*, %list_item_char** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item_char, %list_item_char* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %15 = bitcast i8* %14 to %list_char**
  %self8 = load %list_char*, %list_char** %15, align 8
  %litem9 = load %list_item_char*, %list_item_char** %litem, align 8
  %16 = getelementptr inbounds %list_char, %list_char* %self8, i32 0, i32 1
  store %list_item_char* %litem9, %list_item_char** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %18 = bitcast i8* %17 to %list_char**
  %self10 = load %list_char*, %list_char** %18, align 8
  %litem11 = load %list_item_char*, %list_item_char** %litem, align 8
  %19 = getelementptr inbounds %list_char, %list_char* %self10, i32 0, i32 0
  store %list_item_char* %litem11, %list_item_char** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list_char*, %list_char** %self1, align 8
  %20 = getelementptr inbounds %list_char, %list_char* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmp13 = icmp eq i32 %21, 1
  br i1 %eqtmp13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @nccalloc(i32 1, i64 48)
  %23 = bitcast i8* %22 to %list_item_char*
  %litem14 = alloca %list_item_char*
  %24 = bitcast %list_item_char** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %23, %list_item_char** %litem14, align 8
  %litem15 = load %list_item_char*, %list_item_char** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %26 = bitcast i8* %25 to %list_char**
  %self16 = load %list_char*, %list_char** %26, align 8
  %27 = getelementptr inbounds %list_char, %list_char* %self16, i32 0, i32 0
  %28 = load %list_item_char*, %list_item_char** %27, align 8
  %29 = getelementptr inbounds %list_item_char, %list_item_char* %litem15, i32 0, i32 1
  store %list_item_char* %28, %list_item_char** %29, align 8
  %litem17 = load %list_item_char*, %list_item_char** %litem14, align 8
  %30 = getelementptr inbounds %list_item_char, %list_item_char* %litem17, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %30, align 8
  %litem18 = load %list_item_char*, %list_item_char** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item_char, %list_item_char* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %35 = bitcast i8* %34 to %list_char**
  %self20 = load %list_char*, %list_char** %35, align 8
  %litem21 = load %list_item_char*, %list_item_char** %litem14, align 8
  %36 = getelementptr inbounds %list_char, %list_char* %self20, i32 0, i32 1
  store %list_item_char* %litem21, %list_item_char** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %38 = bitcast i8* %37 to %list_char**
  %self22 = load %list_char*, %list_char** %38, align 8
  %39 = getelementptr inbounds %list_char, %list_char* %self22, i32 0, i32 0
  %40 = load %list_item_char*, %list_item_char** %39, align 8
  %litem23 = load %list_item_char*, %list_item_char** %litem14, align 8
  %41 = getelementptr inbounds %list_item_char, %list_item_char* %40, i32 0, i32 2
  store %list_item_char* %litem23, %list_item_char** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @nccalloc(i32 1, i64 48)
  %43 = bitcast i8* %42 to %list_item_char*
  %litem24 = alloca %list_item_char*
  %44 = bitcast %list_item_char** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %43, %list_item_char** %litem24, align 8
  %litem25 = load %list_item_char*, %list_item_char** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %46 = bitcast i8* %45 to %list_char**
  %self26 = load %list_char*, %list_char** %46, align 8
  %47 = getelementptr inbounds %list_char, %list_char* %self26, i32 0, i32 1
  %48 = load %list_item_char*, %list_item_char** %47, align 8
  %49 = getelementptr inbounds %list_item_char, %list_item_char* %litem25, i32 0, i32 1
  store %list_item_char* %48, %list_item_char** %49, align 8
  %litem27 = load %list_item_char*, %list_item_char** %litem24, align 8
  %50 = getelementptr inbounds %list_item_char, %list_item_char* %litem27, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %50, align 8
  %litem28 = load %list_item_char*, %list_item_char** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item_char, %list_item_char* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %55 = bitcast i8* %54 to %list_char**
  %self30 = load %list_char*, %list_char** %55, align 8
  %56 = getelementptr inbounds %list_char, %list_char* %self30, i32 0, i32 1
  %57 = load %list_item_char*, %list_item_char** %56, align 8
  %litem31 = load %list_item_char*, %list_item_char** %litem24, align 8
  %58 = getelementptr inbounds %list_item_char, %list_item_char* %57, i32 0, i32 2
  store %list_item_char* %litem31, %list_item_char** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %60 = bitcast i8* %59 to %list_char**
  %self32 = load %list_char*, %list_char** %60, align 8
  %litem33 = load %list_item_char*, %list_item_char** %litem24, align 8
  %61 = getelementptr inbounds %list_char, %list_char* %self32, i32 0, i32 1
  store %list_item_char* %litem33, %list_item_char** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list_char*, %list_char** %self1, align 8
  %self35 = load %list_char*, %list_char** %self1, align 8
  %62 = getelementptr inbounds %list_char, %list_char* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list_char, %list_char* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @list_push_back_charp9_vivi(%list_char* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %self3 = load %list_char*, %list_char** %self1, align 8
  %4 = getelementptr inbounds %list_char, %list_char* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmp = icmp eq i32 %5, 0
  br i1 %eqtmp, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @nccalloc(i32 1, i64 48)
  %7 = bitcast i8* %6 to %list_item_char*
  %litem = alloca %list_item_char*
  %8 = bitcast %list_item_char** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %7, %list_item_char** %litem, align 8
  %litem4 = load %list_item_char*, %list_item_char** %litem, align 8
  %9 = getelementptr inbounds %list_item_char, %list_item_char* %litem4, i32 0, i32 1
  store %list_item_char* null, %list_item_char** %9, align 8
  %litem5 = load %list_item_char*, %list_item_char** %litem, align 8
  %10 = getelementptr inbounds %list_item_char, %list_item_char* %litem5, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %10, align 8
  %litem6 = load %list_item_char*, %list_item_char** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item_char, %list_item_char* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %15 = bitcast i8* %14 to %list_char**
  %self8 = load %list_char*, %list_char** %15, align 8
  %litem9 = load %list_item_char*, %list_item_char** %litem, align 8
  %16 = getelementptr inbounds %list_char, %list_char* %self8, i32 0, i32 1
  store %list_item_char* %litem9, %list_item_char** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %18 = bitcast i8* %17 to %list_char**
  %self10 = load %list_char*, %list_char** %18, align 8
  %litem11 = load %list_item_char*, %list_item_char** %litem, align 8
  %19 = getelementptr inbounds %list_char, %list_char* %self10, i32 0, i32 0
  store %list_item_char* %litem11, %list_item_char** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list_char*, %list_char** %self1, align 8
  %20 = getelementptr inbounds %list_char, %list_char* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmp13 = icmp eq i32 %21, 1
  br i1 %eqtmp13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @nccalloc(i32 1, i64 48)
  %23 = bitcast i8* %22 to %list_item_char*
  %litem14 = alloca %list_item_char*
  %24 = bitcast %list_item_char** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %23, %list_item_char** %litem14, align 8
  %litem15 = load %list_item_char*, %list_item_char** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %26 = bitcast i8* %25 to %list_char**
  %self16 = load %list_char*, %list_char** %26, align 8
  %27 = getelementptr inbounds %list_char, %list_char* %self16, i32 0, i32 0
  %28 = load %list_item_char*, %list_item_char** %27, align 8
  %29 = getelementptr inbounds %list_item_char, %list_item_char* %litem15, i32 0, i32 1
  store %list_item_char* %28, %list_item_char** %29, align 8
  %litem17 = load %list_item_char*, %list_item_char** %litem14, align 8
  %30 = getelementptr inbounds %list_item_char, %list_item_char* %litem17, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %30, align 8
  %litem18 = load %list_item_char*, %list_item_char** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item_char, %list_item_char* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %35 = bitcast i8* %34 to %list_char**
  %self20 = load %list_char*, %list_char** %35, align 8
  %litem21 = load %list_item_char*, %list_item_char** %litem14, align 8
  %36 = getelementptr inbounds %list_char, %list_char* %self20, i32 0, i32 1
  store %list_item_char* %litem21, %list_item_char** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %38 = bitcast i8* %37 to %list_char**
  %self22 = load %list_char*, %list_char** %38, align 8
  %39 = getelementptr inbounds %list_char, %list_char* %self22, i32 0, i32 0
  %40 = load %list_item_char*, %list_item_char** %39, align 8
  %litem23 = load %list_item_char*, %list_item_char** %litem14, align 8
  %41 = getelementptr inbounds %list_item_char, %list_item_char* %40, i32 0, i32 2
  store %list_item_char* %litem23, %list_item_char** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @nccalloc(i32 1, i64 48)
  %43 = bitcast i8* %42 to %list_item_char*
  %litem24 = alloca %list_item_char*
  %44 = bitcast %list_item_char** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %43, %list_item_char** %litem24, align 8
  %litem25 = load %list_item_char*, %list_item_char** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %46 = bitcast i8* %45 to %list_char**
  %self26 = load %list_char*, %list_char** %46, align 8
  %47 = getelementptr inbounds %list_char, %list_char* %self26, i32 0, i32 1
  %48 = load %list_item_char*, %list_item_char** %47, align 8
  %49 = getelementptr inbounds %list_item_char, %list_item_char* %litem25, i32 0, i32 1
  store %list_item_char* %48, %list_item_char** %49, align 8
  %litem27 = load %list_item_char*, %list_item_char** %litem24, align 8
  %50 = getelementptr inbounds %list_item_char, %list_item_char* %litem27, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %50, align 8
  %litem28 = load %list_item_char*, %list_item_char** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item_char, %list_item_char* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %55 = bitcast i8* %54 to %list_char**
  %self30 = load %list_char*, %list_char** %55, align 8
  %56 = getelementptr inbounds %list_char, %list_char* %self30, i32 0, i32 1
  %57 = load %list_item_char*, %list_item_char** %56, align 8
  %litem31 = load %list_item_char*, %list_item_char** %litem24, align 8
  %58 = getelementptr inbounds %list_item_char, %list_item_char* %57, i32 0, i32 2
  store %list_item_char* %litem31, %list_item_char** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %60 = bitcast i8* %59 to %list_char**
  %self32 = load %list_char*, %list_char** %60, align 8
  %litem33 = load %list_item_char*, %list_item_char** %litem24, align 8
  %61 = getelementptr inbounds %list_char, %list_char* %self32, i32 0, i32 1
  store %list_item_char* %litem33, %list_item_char** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list_char*, %list_char** %self1, align 8
  %self35 = load %list_char*, %list_char** %self1, align 8
  %62 = getelementptr inbounds %list_char, %list_char* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list_char, %list_char* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @list_push_back_charp10_vivi(%list_char* %self, i8* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %item2 = alloca i8*
  store i8* %item, i8** %item2, align 8
  %3 = bitcast i8** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %self3 = load %list_char*, %list_char** %self1, align 8
  %4 = getelementptr inbounds %list_char, %list_char* %self3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %eqtmp = icmp eq i32 %5, 0
  br i1 %eqtmp, label %cond_jump_then, label %"cond_jump_elif0\0A"

cond_jump_then:                                   ; preds = %entry
  %6 = call i8* @nccalloc(i32 1, i64 48)
  %7 = bitcast i8* %6 to %list_item_char*
  %litem = alloca %list_item_char*
  %8 = bitcast %list_item_char** %litem to i8*
  store i8* %8, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %7, %list_item_char** %litem, align 8
  %litem4 = load %list_item_char*, %list_item_char** %litem, align 8
  %9 = getelementptr inbounds %list_item_char, %list_item_char* %litem4, i32 0, i32 1
  store %list_item_char* null, %list_item_char** %9, align 8
  %litem5 = load %list_item_char*, %list_item_char** %litem, align 8
  %10 = getelementptr inbounds %list_item_char, %list_item_char* %litem5, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %10, align 8
  %litem6 = load %list_item_char*, %list_item_char** %litem, align 8
  %11 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %12 = bitcast i8* %11 to i8**
  %item7 = load i8*, i8** %12, align 8
  %13 = getelementptr inbounds %list_item_char, %list_item_char* %litem6, i32 0, i32 0
  store i8* %item7, i8** %13, align 8
  %14 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %15 = bitcast i8* %14 to %list_char**
  %self8 = load %list_char*, %list_char** %15, align 8
  %litem9 = load %list_item_char*, %list_item_char** %litem, align 8
  %16 = getelementptr inbounds %list_char, %list_char* %self8, i32 0, i32 1
  store %list_item_char* %litem9, %list_item_char** %16, align 8
  %17 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %18 = bitcast i8* %17 to %list_char**
  %self10 = load %list_char*, %list_char** %18, align 8
  %litem11 = load %list_item_char*, %list_item_char** %litem, align 8
  %19 = getelementptr inbounds %list_char, %list_char* %self10, i32 0, i32 0
  store %list_item_char* %litem11, %list_item_char** %19, align 8
  br label %cond_end

"cond_jump_elif0\0A":                             ; preds = %entry
  %self12 = load %list_char*, %list_char** %self1, align 8
  %20 = getelementptr inbounds %list_char, %list_char* %self12, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %eqtmp13 = icmp eq i32 %21, 1
  br i1 %eqtmp13, label %"cond_jump_elif_then0\0A", label %cond_else_block

"cond_jump_elif_then0\0A":                        ; preds = %"cond_jump_elif0\0A"
  %22 = call i8* @nccalloc(i32 1, i64 48)
  %23 = bitcast i8* %22 to %list_item_char*
  %litem14 = alloca %list_item_char*
  %24 = bitcast %list_item_char** %litem14 to i8*
  store i8* %24, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %23, %list_item_char** %litem14, align 8
  %litem15 = load %list_item_char*, %list_item_char** %litem14, align 8
  %25 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %26 = bitcast i8* %25 to %list_char**
  %self16 = load %list_char*, %list_char** %26, align 8
  %27 = getelementptr inbounds %list_char, %list_char* %self16, i32 0, i32 0
  %28 = load %list_item_char*, %list_item_char** %27, align 8
  %29 = getelementptr inbounds %list_item_char, %list_item_char* %litem15, i32 0, i32 1
  store %list_item_char* %28, %list_item_char** %29, align 8
  %litem17 = load %list_item_char*, %list_item_char** %litem14, align 8
  %30 = getelementptr inbounds %list_item_char, %list_item_char* %litem17, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %30, align 8
  %litem18 = load %list_item_char*, %list_item_char** %litem14, align 8
  %31 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %32 = bitcast i8* %31 to i8**
  %item19 = load i8*, i8** %32, align 8
  %33 = getelementptr inbounds %list_item_char, %list_item_char* %litem18, i32 0, i32 0
  store i8* %item19, i8** %33, align 8
  %34 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %35 = bitcast i8* %34 to %list_char**
  %self20 = load %list_char*, %list_char** %35, align 8
  %litem21 = load %list_item_char*, %list_item_char** %litem14, align 8
  %36 = getelementptr inbounds %list_char, %list_char* %self20, i32 0, i32 1
  store %list_item_char* %litem21, %list_item_char** %36, align 8
  %37 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %38 = bitcast i8* %37 to %list_char**
  %self22 = load %list_char*, %list_char** %38, align 8
  %39 = getelementptr inbounds %list_char, %list_char* %self22, i32 0, i32 0
  %40 = load %list_item_char*, %list_item_char** %39, align 8
  %litem23 = load %list_item_char*, %list_item_char** %litem14, align 8
  %41 = getelementptr inbounds %list_item_char, %list_item_char* %40, i32 0, i32 2
  store %list_item_char* %litem23, %list_item_char** %41, align 8
  br label %cond_end

cond_else_block:                                  ; preds = %"cond_jump_elif0\0A"
  %42 = call i8* @nccalloc(i32 1, i64 48)
  %43 = bitcast i8* %42 to %list_item_char*
  %litem24 = alloca %list_item_char*
  %44 = bitcast %list_item_char** %litem24 to i8*
  store i8* %44, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store %list_item_char* %43, %list_item_char** %litem24, align 8
  %litem25 = load %list_item_char*, %list_item_char** %litem24, align 8
  %45 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %46 = bitcast i8* %45 to %list_char**
  %self26 = load %list_char*, %list_char** %46, align 8
  %47 = getelementptr inbounds %list_char, %list_char* %self26, i32 0, i32 1
  %48 = load %list_item_char*, %list_item_char** %47, align 8
  %49 = getelementptr inbounds %list_item_char, %list_item_char* %litem25, i32 0, i32 1
  store %list_item_char* %48, %list_item_char** %49, align 8
  %litem27 = load %list_item_char*, %list_item_char** %litem24, align 8
  %50 = getelementptr inbounds %list_item_char, %list_item_char* %litem27, i32 0, i32 2
  store %list_item_char* null, %list_item_char** %50, align 8
  %litem28 = load %list_item_char*, %list_item_char** %litem24, align 8
  %51 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %52 = bitcast i8* %51 to i8**
  %item29 = load i8*, i8** %52, align 8
  %53 = getelementptr inbounds %list_item_char, %list_item_char* %litem28, i32 0, i32 0
  store i8* %item29, i8** %53, align 8
  %54 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %55 = bitcast i8* %54 to %list_char**
  %self30 = load %list_char*, %list_char** %55, align 8
  %56 = getelementptr inbounds %list_char, %list_char* %self30, i32 0, i32 1
  %57 = load %list_item_char*, %list_item_char** %56, align 8
  %litem31 = load %list_item_char*, %list_item_char** %litem24, align 8
  %58 = getelementptr inbounds %list_item_char, %list_item_char* %57, i32 0, i32 2
  store %list_item_char* %litem31, %list_item_char** %58, align 8
  %59 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %60 = bitcast i8* %59 to %list_char**
  %self32 = load %list_char*, %list_char** %60, align 8
  %litem33 = load %list_item_char*, %list_item_char** %litem24, align 8
  %61 = getelementptr inbounds %list_char, %list_char* %self32, i32 0, i32 1
  store %list_item_char* %litem33, %list_item_char** %61, align 8
  br label %cond_end

cond_end:                                         ; preds = %cond_else_block, %"cond_jump_elif_then0\0A", %cond_jump_then
  %self34 = load %list_char*, %list_char** %self1, align 8
  %self35 = load %list_char*, %list_char** %self1, align 8
  %62 = getelementptr inbounds %list_char, %list_char* %self35, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %addtmp = add nsw i32 %63, 1
  %64 = getelementptr inbounds %list_char, %list_char* %self34, i32 0, i32 2
  store i32 %addtmp, i32* %64, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %65 = bitcast [8192 x i8*]* %lvtable to i8*
  %66 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %65, i64 65536)
  ret void
}

define void @vector_push_back_winp11_vivi(%vector_win* %self, %win* %item) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector_win*
  store %vector_win* %self, %vector_win** %self1, align 8
  %2 = bitcast %vector_win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %item2 = alloca %win*
  store %win* %item, %win** %item2, align 8
  %3 = bitcast %win** %item2 to i8*
  store i8* %3, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 336), align 8
  %self3 = load %vector_win*, %vector_win** %self1, align 8
  %4 = getelementptr inbounds %vector_win, %vector_win* %self3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %self4 = load %vector_win*, %vector_win** %self1, align 8
  %6 = getelementptr inbounds %vector_win, %vector_win* %self4, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %eqtmp = icmp eq i32 %5, %7
  br i1 %eqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %8 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %9 = bitcast i8* %8 to %vector_win**
  %self5 = load %vector_win*, %vector_win** %9, align 8
  %10 = getelementptr inbounds %vector_win, %vector_win* %self5, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %new_size = alloca i32
  %12 = bitcast i32* %new_size to i8*
  store i8* %12, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 337), align 8
  store i32 %11, i32* %new_size, align 4
  %13 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %14 = bitcast i8* %13 to %vector_win**
  %self6 = load %vector_win*, %vector_win** %14, align 8
  %15 = getelementptr inbounds %vector_win, %vector_win* %self6, i32 0, i32 0
  %16 = load %win**, %win*** %15, align 8
  %items = alloca %win**
  %17 = bitcast %win*** %items to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 338), align 8
  store %win** %16, %win*** %items, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %19 = bitcast i8* %18 to %vector_win**
  %self7 = load %vector_win*, %vector_win** %19, align 8
  %new_size8 = load i32, i32* %new_size, align 4
  %20 = call i8* @nccalloc(i32 %new_size8, i64 8)
  %21 = bitcast i8* %20 to %win**
  %22 = getelementptr inbounds %vector_win, %vector_win* %self7, i32 0, i32 0
  store %win** %21, %win*** %22, align 8
  %23 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %24 = bitcast i8* %23 to %vector_win**
  %self9 = load %vector_win*, %vector_win** %24, align 8
  %25 = getelementptr inbounds %vector_win, %vector_win* %self9, i32 0, i32 0
  %26 = load %win**, %win*** %25, align 8
  %27 = bitcast %win** %26 to i8*
  %items10 = load %win**, %win*** %items, align 8
  %28 = bitcast %win** %items10 to i8*
  %29 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %30 = bitcast i8* %29 to %vector_win**
  %self11 = load %vector_win*, %vector_win** %30, align 8
  %31 = getelementptr inbounds %vector_win, %vector_win* %self11, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %multtmp = mul nsw i32 8, %32
  %33 = sext i32 %multtmp to i64
  %34 = call i8* @memcpy(i8* %27, i8* %28, i64 %33)
  %35 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 335), align 8
  %36 = bitcast i8* %35 to %vector_win**
  %self12 = load %vector_win*, %vector_win** %36, align 8
  %new_size13 = load i32, i32* %new_size, align 4
  %37 = getelementptr inbounds %vector_win, %vector_win* %self12, i32 0, i32 2
  store i32 %new_size13, i32* %37, align 4
  br label %cond_end

cond_end:                                         ; preds = %cond_jump_then, %entry
  %self14 = load %vector_win*, %vector_win** %self1, align 8
  %38 = getelementptr inbounds %vector_win, %vector_win* %self14, i32 0, i32 0
  %39 = load %win**, %win*** %38, align 8
  %self15 = load %vector_win*, %vector_win** %self1, align 8
  %40 = getelementptr inbounds %vector_win, %vector_win* %self15, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %item16 = load %win*, %win** %item2, align 8
  %element_address = getelementptr %win*, %win** %39, i32 %41
  store %win* %item16, %win** %element_address, align 8
  %self17 = load %vector_win*, %vector_win** %self1, align 8
  %self18 = load %vector_win*, %vector_win** %self1, align 8
  %42 = getelementptr inbounds %vector_win, %vector_win* %self18, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %addtmp = add nsw i32 %43, 1
  %44 = getelementptr inbounds %vector_win, %vector_win* %self17, i32 0, i32 1
  store i32 %addtmp, i32* %44, align 4
  %subttmp = sub nsw i32 %addtmp, 1
  %45 = bitcast [8192 x i8*]* %lvtable to i8*
  %46 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %45, i64 65536)
  ret void
}

define void @vivi_finalize(%vivi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vivi*
  store %vivi* %self, %vivi** %self1, align 8
  %2 = bitcast %vivi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %self2 = load %vivi*, %vivi** %self1, align 8
  %eqtmp = icmp eq %vivi* %self2, null
  br i1 %eqtmp, label %cond_jump_then, label %cond_end

cond_jump_then:                                   ; preds = %entry
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret void

cond_end:                                         ; preds = %entry
  %5 = bitcast [8192 x i8*]* %lvtable to i8*
  %6 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %5, i64 65536)
  ret void
}

define i32 @vivi_main_loop(%vivi* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vivi*
  store %vivi* %self, %vivi** %self1, align 8
  %2 = bitcast %vivi** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 331), align 8
  %3 = bitcast [8192 x i8*]* %lvtable to i8*
  %4 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %3, i64 65536)
  ret i32 0
}
