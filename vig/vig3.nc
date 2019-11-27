#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

enum eMode { kEditMode, kInsertMode };

impl VigWin version 3 
{
    void insertModeView(VigWin* self, Vig* vig)
    {
        werase(self.win);

        self.texts.each {
            if(self.cursorY == it2) {
                int x = 0;
                wstring head_string = it.subString(0, self.cursorX);
                if(!head_string.equals(wstring("")))
                {
                    mvwprintw(self.win, it2, 0, "%s", head_string.toUtf8String());
                }

                x += wcswidth(head_string, head_string.length());

                wstring cursor_string = it.subString(self.cursorX, self.cursorX+1);

                if(!cursor_string.equals(wstring("")))
                {
                    wattron(self.win, A_REVERSE);
                    mvwprintw(self.win, it2, x, "%s", cursor_string.toUtf8String());
                    wattroff(self.win, A_REVERSE);
                }

                x += wcswidth(cursor_string, cursor_string.length());

                wstring tail_string = it.subString(self.cursorX+1, -1);

                if(!tail_string.equals(wstring("")))
                {
                    mvwprintw(self.win, it2, x, "%s", tail_string.toUtf8String());
                }
            }
            else {
                mvwprintw(self.win, it2, 0, "%s", it.toUtf8String());
            }
        }

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

        var new_line = old_line.subString(0, self.cursorX) + text + old_line.subString(self.cursorX, -1);

        self.texts.replace(self.cursorY, new_line);
        self.cursorX++;
    }

    void enterNewLine(VigWin* self)
    {
        var old_line = self.texts.item(self.cursorY, wstring(""));

        var new_line1 = old_line.subString(0, self.cursorX);
        var new_line2 = old_line.subString(self.cursorX, -1);

        self.texts.replace(self.cursorY, new_line1);
        self.texts.insert(self.cursorY+1, new_line2);
        self.cursorY++;
        self.cursorX = 0;
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
            self.activeWin.enterNewLine();
        });
    }

    int main_loop(Vig* self) {
        while(!self.appEnd) {
            erase();

            self.wins.each {
                it.view(self);
            }

            self.activeWin.input(self);
        }

        0
    }
}
