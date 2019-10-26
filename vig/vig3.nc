#include "neo-c.h"
#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "vig2.h"

enum eMode { kEditMode, kInsertMode };

impl win version 3 {
    void insertModeView(self:win*, vig:vig*)
    {
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

    void view(win* self, vig* vig) {
        if(vig.mode == kInsertMode) {
            self.insertModeView(vig);
        }
        else {
            inherit(self, vig);
        }
    }

    void insertText(win* self, string key) {
        var old_line = self.texts.item(self.curs_y, string(""));

        var new_line = old_line.subString(0, self.curs_x) + key + old_line.subString(self.curs_x, -1);

        self.texts.replace(self.curs_y, new_line);
    }

    void inputInsertMode(win* self, vig* vig)
    {
        var key = wgetch(self.win);

        if(key == 27) {
            vig.mode = kEditMode;
        }
        else {
            self.insertText(ncasprintf("%c", key));
        }
    }

    void input(win* self, vig* vig) {
        if(vig.mode == kInsertMode) {
            self.inputInsertMode(vig);
        }
        else {
            inherit(self, vig);
        }
    }
}

struct vig version 3 {
    int mode;
};

impl vig version 3 {
    initialize() {
        inherit(self);

        self.mode = kEditMode;

        self.events.replace('i', lambda(self:vig*, key:int) 
        {
            self.mode = kInsertMode;
        });
    }

    int main_loop(vig* self) {
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
