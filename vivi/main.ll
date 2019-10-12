; ModuleID = 'Module main'
source_filename = "Module main"

%__sFILE = type { i8*, i32, i32, i32, i32, %__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %__sbuf, i8*, i32, [3 x i8], [1 x i8], %__sbuf, i32, i64, i8*, i32, i32, i32, i32, %__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %__sbuf, i8*, i32, [3 x i8], [1 x i8], %__sbuf, i32, i64 }
%__sbuf = type { i8*, i64, i8*, i64 }
%_win_st = type opaque
%__locale_t = type opaque
%__builtin_va_list = type { i8*, i8*, i8*, i32, i32 }
%mallinfo = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%anon9 = type { i32, i32 }
%anon10 = type { i64, i64 }
%anon11 = type { i64, i64 }
%screen = type opaque
%anon14 = type { i16, i32, i32, i32, i32 }
%win = type { %_win_st*, %list_char* }
%list_char = type { %list_item_char*, %list_item_char*, i32, %list_item_char*, %list_item_char*, i32 }
%list_item_char = type { i8*, %list_item_char*, %list_item_char*, i8*, %list_item_char*, %list_item_char* }
%vivi = type { %vector_win*, %win* }
%vector_win = type { %win**, i32, i32, %win**, i32, i32 }

@gLVTable = internal global [8192 x i8*] zeroinitializer, align 8
@stdin = external externally_initialized global %__sFILE*, align 8
@stdout = external externally_initialized global %__sFILE*, align 8
@stderr = external externally_initialized global %__sFILE*, align 8
@acs_map = external externally_initialized global i32*, align 4
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

declare i32 @android_get_application_target_sdk_version()

declare i32 @__system_property_get(i8*, i8*)

declare i32 @strcasecmp(i8*, i8*)

declare i32 @strcasecmp_l(i8*, i8*, %__locale_t*)

declare i32 @strncasecmp(i8*, i8*, i64)

declare i32 @strncasecmp_l(i8*, i8*, i64, %__locale_t*)

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

declare i32 @vfprintf(%__sFILE*, i8*, %__builtin_va_list)

declare i32 @vprintf(i8*, %__builtin_va_list)

declare i32 @dprintf(i32, i8*, ...)

declare i32 @vdprintf(i32, i8*, %__builtin_va_list)

declare i32 @sprintf(i8*, i8*, ...)

declare i32 @vsprintf(i8*, i8*, %__builtin_va_list)

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

declare i32 @fgetpos64(%__sFILE*, i64*)

declare i32 @fsetpos64(%__sFILE*, i64*)

declare i32 @fseeko64(%__sFILE*, i64, i32)

declare i64 @ftello64(%__sFILE*)

declare %__sFILE* @fopen(i8*, i8*)

declare %__sFILE* @fopen64(i8*, i8*)

declare %__sFILE* @freopen(i8*, i8*, %__sFILE*)

declare %__sFILE* @freopen64(i8*, i8*, %__sFILE*)

declare %__sFILE* @tmpfile64()

declare i32 @snprintf(i8*, i64, i8*, ...)

declare i32 @vfscanf(%__sFILE*, i8*, %__builtin_va_list)

declare i32 @vscanf(i8*, %__builtin_va_list)

declare i32 @vsnprintf(i8*, i64, i8*, %__builtin_va_list)

declare i32 @vsscanf(i8*, i8*, %__builtin_va_list)

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

declare i32 @vasprintf(i8**, i8*, %__builtin_va_list)

declare void @clearerr_unlocked(%__sFILE*)

declare i32 @feof_unlocked(%__sFILE*)

declare i32 @ferror_unlocked(%__sFILE*)

declare i32 @fileno_unlocked(%__sFILE*)

declare i32 @open(i8*, i32, ...)

declare i32 @getpid()

declare i32 @unlink(i8*)

declare i8* @malloc(i64)

declare i8* @calloc(i64, i64)

declare i8* @realloc(i8*, i64)

declare void @free(i8*)

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

declare i32 @atoi(i8*)

declare i64 @atol(i8*)

declare i64 @atoll(i8*)

declare i8* @realpath(i8*, i8*)

declare i32 @system(i8*)

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*)

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

declare i32 @arc4random()

declare i32 @arc4random_uniform(i32)

declare void @arc4random_buf(i8*, i64)

declare i32 @rand_r(i32*)

declare double @drand48()

declare double @erand48([3 x i16])

declare i64 @jrand48([3 x i16])

declare void @lcong48([7 x i16])

declare i64 @lrand48()

declare i64 @mrand48()

declare i64 @nrand48([3 x i16])

declare i16* @seed48([3 x i16])

declare void @srand48(i64)

declare i8* @initstate(i32, i8*, i64)

declare i8* @setstate(i8*)

declare i32 @getpt()

declare i32 @posix_openpt(i32)

declare i8* @ptsname(i32)

declare i32 @ptsname_r(i32, i8*, i64)

declare i32 @unlockpt(i32)

declare %anon9 @div(i32, i32)

declare %anon10 @ldiv(i64, i64)

declare %anon11 @lldiv(i64, i64)

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

declare i32 @vwprintw(%_win_st*, i8*, %__builtin_va_list)

declare i32 @vw_printw(%_win_st*, i8*, %__builtin_va_list)

declare i32 @vwscanw(%_win_st*, i8*, %__builtin_va_list)

declare i32 @vw_scanw(%_win_st*, i8*, %__builtin_va_list)

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

declare i32 @getmouse(%anon14*)

declare i32 @ungetmouse(%anon14*)

declare i32 @mousemask(i32, i32*)

declare i1 @wenclose(%_win_st*, i32, i32)

declare i32 @mouseinterval(i32)

declare i1 @wmouse_trafo(%_win_st*, i32*, i32*, i1)

declare i1 @mouse_trafo(i32*, i32*, i1)

declare i1 @has_mouse_sp(%screen*)

declare i32 @getmouse_sp(%screen*, %anon14*)

declare i32 @ungetmouse_sp(%screen*, %anon14*)

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

declare i8* @unctrl(i32)

declare i8* @unctrl_sp(%screen*, i32)

declare %win* @win_initialize(%win*, i32, i32)

declare void @win_finalize(%win*)

declare void @win_view(%win*)

declare void @win_input(%win*)

declare %vivi* @vivi_initialize(%vivi*)

declare void @vivi_finalize(%vivi*)

declare i32 @vivi_main_loop(%vivi*)

define i32 @main() {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %2 = call i8* @nccalloc(i32 1, i64 16)
  %3 = bitcast i8* %2 to %vivi*
  %4 = call %vivi* @vivi_initialize(%vivi* %3)
  %vivi = alloca %vivi*
  %5 = bitcast %vivi** %vivi to i8*
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 14), align 8
  store %vivi* %4, %vivi** %vivi, align 8
  %vivi1 = load %vivi*, %vivi** %vivi, align 8
  %6 = call i32 @vivi_main_loop(%vivi* %vivi1)
  %7 = load %vivi*, %vivi** %vivi, align 8
  call void @vivi_finalize(%vivi* %7)
  %8 = getelementptr inbounds %vivi, %vivi* %7, i32 0, i32 0
  %9 = load %vector_win*, %vector_win** %8, align 8
  call void @vector_finalize_winp0_main(%vector_win* %9)
  %10 = bitcast %vector_win* %9 to i8*
  call void @ncfree(i8* %10)
  %11 = bitcast %vivi* %7 to i8*
  call void @ncfree(i8* %11)
  %12 = bitcast [8192 x i8*]* %lvtable to i8*
  %13 = call i8* @ncmemcpy(i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i8* %12, i64 65536)
  ret i32 %6
}

define void @vector_finalize_winp0_main(%vector_win* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %vector_win*
  store %vector_win* %self, %vector_win** %self1, align 8
  %2 = bitcast %vector_win** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 15), align 8
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
  store i8* %5, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 16), align 8
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
  %12 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 15), align 8
  %13 = bitcast i8* %12 to %vector_win**
  %self6 = load %vector_win*, %vector_win** %13, align 8
  %14 = getelementptr inbounds %vector_win, %vector_win* %self6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %letmp = icmp slt i32 %i5, %15
  br i1 %letmp, label %cond_then_block, label %cond_end_block

cond_then_block:                                  ; preds = %loop_top_block
  %16 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 15), align 8
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
  call void @list_finalize_charp1_main(%list_char* %22)
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

define void @list_finalize_charp1_main(%list_char* %self) {
entry:
  %lvtable = alloca [8192 x i8*]
  %0 = bitcast [8192 x i8*]* %lvtable to i8*
  %1 = call i8* @ncmemcpy(i8* %0, i8* bitcast ([8192 x i8*]* @gLVTable to i8*), i64 65536)
  %self1 = alloca %list_char*
  store %list_char* %self, %list_char** %self1, align 8
  %2 = bitcast %list_char** %self1 to i8*
  store i8* %2, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 17), align 8
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
  store i8* %7, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 18), align 8
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
  %10 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 18), align 8
  %11 = bitcast i8* %10 to %list_item_char**
  %it7 = load %list_item_char*, %list_item_char** %11, align 8
  %12 = getelementptr inbounds %list_item_char, %list_item_char* %it7, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  call void @ncfree(i8* %14)
  br label %cond_end6

cond_end6:                                        ; preds = %cond_jump_then5, %cond_then_block
  %15 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 18), align 8
  %16 = bitcast i8* %15 to %list_item_char**
  %it8 = load %list_item_char*, %list_item_char** %16, align 8
  %prev_it = alloca %list_item_char*
  %17 = bitcast %list_item_char** %prev_it to i8*
  store i8* %17, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 19), align 8
  store %list_item_char* %it8, %list_item_char** %prev_it, align 8
  %18 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 18), align 8
  %19 = bitcast i8* %18 to %list_item_char**
  %it9 = load %list_item_char*, %list_item_char** %19, align 8
  %20 = getelementptr inbounds %list_item_char, %list_item_char* %it9, i32 0, i32 2
  %21 = load %list_item_char*, %list_item_char** %20, align 8
  %22 = load i8*, i8** getelementptr inbounds ([8192 x i8*], [8192 x i8*]* @gLVTable, i32 0, i32 18), align 8
  %23 = bitcast i8* %22 to %list_item_char**
  store %list_item_char* %21, %list_item_char** %23, align 8
  %prev_it10 = load %list_item_char*, %list_item_char** %prev_it, align 8
  %24 = load %list_item_char*, %list_item_char** %prev_it, align 8
  %25 = bitcast %list_item_char* %24 to i8*
  call void @ncfree(i8* %25)
  br label %loop_top_block
}
