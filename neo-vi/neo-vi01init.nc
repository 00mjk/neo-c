#include "neo-vi.h"

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

impl NeoViWin 
{
    initialize(int y, int x, int width, int height) {
        self.texts = new list<wstring>.initialize();

        self.y = y;
        self.x = x;
        self.width = width;
        self.height = height;

        self.scroll = 0;

        var win = newwin(height, width, y, x);
        self.win = win;

        keypad(self.win, true);

    }

    finalize() {
        delwin(self.win);
    }

    void view(NeoViWin* self, NeoVi* nvi) {
        werase(self.win);

        self.texts.each {
            mvwprintw(self.win, it2, 0, it.to_string(""));
        }

        wrefresh(self.win);
    }

    void input(NeoViWin* self, NeoVi* nvi) {
        var key = wgetch(self.win);
    }

    bool equals(NeoViWin* left, NeoViWin* right) {
        return left == right;
    }
}

impl NeoVi 
{
    void init_curses(NeoVi* self) {
        initscr();
        noecho();
        keypad(stdscr, true);
        raw();

        //setEscapeDelay(0);
    }

    initialize() {
        self.init_curses();

        self.wins = new list<NeoViWin*%>.initialize();

        var maxx = xgetmaxx();
        var maxy = xgetmaxy();

        var win = new NeoViWin.initialize(0, 0, maxx-1, maxy);

        win.texts.push_back(wstring("aaa"));
        win.texts.push_back(wstring("bbb"));
        win.texts.push_back(wstring("ccc"));

        self.activeWin = win;

        self.wins.push_back(win);
    }

    finalize() {
        endwin();
    }

    int main_loop(NeoVi* self) {
        //erase();

        self.wins.each {
            it.view(self);
        }

        self.activeWin.input(self);

        1
    }
}
