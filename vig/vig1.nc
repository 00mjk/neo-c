#include "vig.h"

int xgetmaxx()
{
    var ws = new winsize;
    ioctl(STDOUT_FILENO, TIOCGWINSZ, ws);

    return ws.ws_col;
}

int xgetmaxy()
{
    var ws = new winsize;
    ioctl(STDOUT_FILENO, TIOCGWINSZ, ws);

    return ws.ws_row;
}

impl VigWin 
{
    initialize(int y, int x, int width, int height) {
        keypad(self.win, 4);

        self.texts = new list<wstring>.initialize();

        self.y = y;
        self.x = x;
        self.width = width;
        self.height = height;

        var win = newwin(height, width, y, x);

        self.win = win;
    }

    finalize() {
        delwin(self.win);
    }

    void view(VigWin* self, Vig* vig) {
        werase(self.win);

        self.texts.each {
            mvwprintw(self.win, it2, 0, it.toUtf8String());
        }

        wrefresh(self.win);
    }

    void input(VigWin* self, Vig* vig) {
        var key = wgetch(self.win);
    }
}

impl Vig 
{
    void init_curses(Vig* self) {
        initscr();
        noecho();
        keypad(stdscr, true);
        raw();

        //setEscapeDelay(0);
    }

    initialize() {
        self.init_curses();

        self.wins = new vector<VigWin*%>.initialize();

        var maxx = xgetmaxx();
        var maxy = xgetmaxy();

        var win = new VigWin.initialize(0,0, maxx-1, maxy);

        win.texts.push_back(wstring("aaa"));
        win.texts.push_back(wstring("bbb"));
        win.texts.push_back(wstring("ccc"));

        self.active_win = win;

        self.wins.push_back(win);
    }

    finalize() {
        endwin();
    }

    int main_loop(Vig* self) {
        erase();

        self.wins.each {
            it.view(self);
        }

        self.active_win.input(self);

        1
    }
}
