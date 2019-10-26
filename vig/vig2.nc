#include "neo-c.h"
#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "vig.h"

struct VigWin version 2 {
    int curs_y;
    int curs_x;
};

impl VigWin version 2 {
    void view(VigWin* self, Vig* vig) {
        werase(self.win);

        self.texts.each {
            if(self.curs_y == it2) {
                mvwprintw(self.win, it2, 0, "%s", it.subString(0, self.curs_x));
                wattron(self.win, A_REVERSE);
                mvwprintw(self.win, it2, self.curs_x, "%s", it.subString(self.curs_x, self.curs_x+1));
                wattroff(self.win, A_REVERSE);
                mvwprintw(self.win, it2, self.curs_x+1, "%s", it.subString(self.curs_x+1, -1));
            }
            else {
                mvwprintw(self.win, it2, 0, "%s", it);
            }
        }

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "x %d y %d", self.curs_x, self.curs_y);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }

    void input(VigWin* self, Vig* vig) {
        var key = wgetch(self.win);

        var event = vig.events.item(key, null);

        if(event != null) {
            event(vig, key);
        }
    }

    char* getCursorLine(VigWin* self) {
        return self.texts.item(self.curs_y, string(""));
    }

    int getCursorLineLength(VigWin* self) 
    {
        return strlen(self.getCursorLine());
    }

    void forward(VigWin* self) {
        self.curs_x++;

        var line_max = self.getCursorLineLength();

        if(self.curs_x >= line_max)
        {
            self.curs_x = line_max-1;
        }
    }

    void backward(VigWin* self) {
        self.curs_x--;

        if(self.curs_x < 0)
        {
            self.curs_x = 0;
        }
    }

    void prevLine(VigWin* self) {
        self.curs_y--;

        if(self.curs_y < 0) {
            self.curs_y = 0;
        }
    }

    void nextLine(VigWin* self) {
        self.curs_y++;

        if(self.curs_y >= self.texts.length())
        {
            self.curs_y = self.texts.length()-1;
        }
    }
}

struct Vig version 2 {
    vector<void lambda(Vig*, int)>*% events;
    bool app_end;
};

impl Vig version 2 {
    initialize() {
        self.init_curses();

        self.wins = new vector<VigWin*%>.initialize();

        var maxx = xgetmaxx();
        var maxy = xgetmaxy();

        var win = new VigWin.initialize(0,0, maxx-1, maxy);

        win.texts.push_back(string("123"));
        win.texts.push_back(string("456"));
        win.texts.push_back(string("789"));

        self.active_win = win;

        self.wins.push_back(win);

        self.app_end = false;

        self.events = new vector<void lambda(Vig*, int)>.initialize_with_values(KEY_MAX, null);

        self.events.replace('q', lambda(Vig* self, int key) 
        {
            self.app_end = true;
        });
        self.events.replace('l', lambda(Vig* self, int key) 
        {
            self.active_win.forward();
        });
        self.events.replace('h', lambda(Vig* self, int key) 
        {
            self.active_win.backward();
        });
        self.events.replace('j', lambda(Vig* self, int key) 
        {
            self.active_win.nextLine();
        });
        self.events.replace('k', lambda(Vig* self, int key) 
        {
            self.active_win.prevLine();
        });
    }

    int main_loop(Vig* self) {
        while(!self.app_end) {
            erase();

            self.wins.each {
                it.view(self);
            }

            self.active_win.input(self);
        }

        0
    }
}
