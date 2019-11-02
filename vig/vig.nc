#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

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

struct VigWin {
    WINDOW* win;
    list<string>*% texts;
    int y;
    int x;
    int width;
    int height;
};

struct Vig {
    vector<VigWin*%>*% wins;
    VigWin* active_win;
};

impl VigWin {
    initialize(int y, int x, int width, int height) 
    {
        keypad(self.win, 4);

        self.texts = new list<string>.initialize();

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
            mvwprintw(self.win, it2, 0, it);
        }

        wrefresh(self.win);
    }

    void input(VigWin* self, Vig* vig) {
        var key = wgetch(self.win);
    }
}

impl Vig {
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

        win.texts.push_back(string("aaa"));
        win.texts.push_back(string("bbb"));
        win.texts.push_back(string("ccc"));

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
