#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 3 
{
    void insertModeView(VigWin* self, Vig* vig)
    {
        werase(self.win);

        self.textsView(vig);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "INSERT MODE x %d y %d", self.cursorX, self.cursorY);
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

    void insertText(VigWin* self, wstring text) {
        var old_line = self.texts.item(self.cursorY, wstring(""));

        var new_line = old_line.substring(0, self.cursorX) + text + old_line.substring(self.cursorX, -1);

        self.texts.replace(self.cursorY, new_line);
        self.cursorX++;
    }

    void enterNewLine(VigWin* self)
    {
        var old_line = self.texts.item(self.cursorY, wstring(""));

        var new_line1 = old_line.substring(0, self.cursorX);
        var new_line2 = old_line.substring(self.cursorX, -1);

        self.texts.replace(self.cursorY, new_line1);
        self.texts.insert(self.cursorY+1, new_line2);
        self.cursorY++;
        self.cursorX = 0;
    }

    void enterNewLine2(VigWin* self)
    {
        var line = self.texts.item(self.cursorY, null);
        int num_spaces = 0;
        for(int i=0; i<line.length(); i++)
        {
            if(line[i] == ' ') {
                num_spaces++;
            }
            else {
                break;
            }
        }

        var new_line = wstring(" ") * num_spaces;

        self.texts.insert(self.cursorY+1, new_line);
        self.cursorY++;
        self.cursorX = num_spaces;
    }

    void inputInsertMode(VigWin* self, Vig* vig)
    {
        var key = wgetch(self.win);

        if(key == 3 || key == 27) {
            vig.exitFromInsertMode();
        }
        else if(key == 10) {
            self.enterNewLine();
        }
        else if(key == 127) {
        }
        else if(key > 127) {
            var size = ((key & 0x80) >> 7) + ((key & 0x40) >> 6) + ((key & 0x20) >> 5) + ((key & 0x10) >> 4);

            char keys[MB_LEN_MAX];

            keys[0] = key;

            int i;
            for(i = 1; i<size; i++)
            {
                keys[i] = wgetch(self.win);
            }
            keys[i] = '\0';

            self.insertText(wstring(keys));
        }
        else {
            self.insertText(wstring(xasprintf("%c", key)));
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

impl Vig version 3 
{
    void enterInsertMode(Vig* self) {
        self.mode = kInsertMode;
    }
    void exitFromInsertMode(Vig* self) {
        self.mode = kEditMode;
    }

    initialize() {
        inherit(self);

        self.mode = kEditMode;

        self.events.replace('i', lambda(Vig* self, int key) 
        {
            self.enterInsertMode();
        });
        self.events.replace('I', lambda(Vig* self, int key) 
        {
            self.activeWin.moveAtHead();
            self.enterInsertMode();
        });
        self.events.replace('a', lambda(Vig* self, int key) 
        {
            self.enterInsertMode();
            self.activeWin.cursorX++;
        });
        self.events.replace('A', lambda(Vig* self, int key) 
        {
            self.activeWin.moveAtTail();
            self.enterInsertMode();
            self.activeWin.cursorX++;
        });
        self.events.replace('o', lambda(Vig* self, int key) 
        {
            self.enterInsertMode();
            self.activeWin.enterNewLine2();
        });
    }

    int main_loop(Vig* self) {
        while(!self.appEnd) {
            //erase();

            self.wins.each {
                it.view(self);
            }

            self.activeWin.input(self);
        }

        0
    }
}
