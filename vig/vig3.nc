#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "vig2.h"

enum eMode { kEditMode, kInsertMode };

impl VigWin version 3 {
    void insertModeView(VigWin* self, Vig* vig)
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
        mvwprintw(self.win, self.height-1, 0, "INSERT MODE x %d y %d", self.curs_x, self.curs_y);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }

    void view(VigWin* self, Vig* vig) {
        if(vig.mode == kInsertMode) {
            self.insertModeView(vig);
        }
        else {
            inherit(self, vig);
        }
    }

    void insertText(VigWin* self, string key) {
        var old_line = self.texts.item(self.curs_y, string(""));

        var new_line = old_line.subString(0, self.curs_x) + key + old_line.subString(self.curs_x, -1);

        self.texts.replace(self.curs_y, new_line);
        self.curs_x++;
    }

    void enterNewLine(VigWin* self)
    {
        var old_line = self.texts.item(self.curs_y, string(""));

        var new_line1 = old_line.subString(0, self.curs_x);
        var new_line2 = old_line.subString(self.curs_x, -1);

        self.texts.replace(self.curs_y, new_line1);
        self.texts.insert(self.curs_y+1, new_line2);
        self.curs_y++;
        self.curs_x = 0;
    }

    void inputInsertMode(VigWin* self, Vig* vig)
    {
        var key = wgetch(self.win);

        if(key == 3 || key == 27) {
            vig.mode = kEditMode;
        }
        else if(key == 10) {
            self.enterNewLine();
        }
        else {
            self.insertText(xasprintf("%c", key));
        }
    }

    void input(VigWin* self, Vig* vig) {
        if(vig.mode == kInsertMode) {
            self.inputInsertMode(vig);
        }
        else {
            inherit(self, vig);
        }
    }
}

struct Vig version 3 {
    int mode;
};

impl Vig version 3 {
    initialize() {
        inherit(self);

        self.mode = kEditMode;

        self.events.replace('i', lambda(Vig* self, int key) 
        {
            self.mode = kInsertMode;
        });
        self.events.replace('a', lambda(Vig* self, int key) 
        {
            self.mode = kInsertMode;
            self.active_win.curs_x++;
        });
        self.events.replace('o', lambda(Vig* self, int key) 
        {
            self.mode = kInsertMode;
            self.active_win.enterNewLine();
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
