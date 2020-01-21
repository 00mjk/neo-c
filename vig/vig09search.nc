#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 9
{
    void searchModeView(VigWin* self, Vig* vig)
    {
        werase(self.win);

        self.textsView(vig);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "/%ls", vig.searchString);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }

    void view(VigWin* self, Vig* vig) {
        if(vig.mode == kSearchMode && self.equals(vig.activeWin)) {
            self.searchModeView(vig);
        }
        else {
            inherit(self, vig);
        }
    }

    void search(VigWin* self, Vig* vig) {
        var cursor_line = self.texts.item(self.scroll+self.cursorY, null);

        int x = cursor_line.substring(self.cursorX+1, -1).index(vig.searchString, -1)

        if(x != -1) {
            x += self.cursorX + 1;
            self.cursorX = x;
        }
        else {
            self.texts.sublist(self.scroll+self.cursorY+1, -1).each {
                int x = it.index(vig.searchString, -1);

                if(x != -1) {
                    self.cursorY += it2 + 1;
                    self.modifyOverCursorYValue();
                    self.cursorX = x;
                    *it3 = true;
                    return;
                }
            }
        }
    }

    void searchReverse(VigWin* self, Vig* vig) {
        var cursor_line = self.texts.item(self.scroll+self.cursorY, null);

        int x;
        if(self.cursorX < vig.searchString.length())
        {
            x = -1;
        }
        else {
            x = cursor_line.substring(0, self.cursorX-1).rindex(vig.searchString, -1)
        }

        if(x != -1) {
            self.cursorX = x;
        }
        else {
            self.texts.sublist(0, self.scroll+self.cursorY).reverse().each {
                int x = it.rindex(vig.searchString, -1);

                if(x != -1) {
                    self.cursorY = self.cursorY - it2 -1;
                    self.modifyUnderCursorYValue();
                    self.cursorX = x;
                    *it3 = true;
                    return;
                }
            }
        }
    }

    void searchWordOnCursor(VigWin* self, Vig* vig)
    {
        wchar_t* line = self.texts.item(self.scroll+self.cursorY, wstring(""));

        if(self.cursorX < line.length()) {
            wchar_t* p = line + self.cursorX;


            if((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9'))
            {
                while((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9'))
                {
                    p--;
                    self.cursorX--;
                }

                self.cursorX++;
            }

            int scroll_before = self.scroll;
            int cursor_y_before = self.cursorY;
            int cursor_x_before = self.cursorX;

            self.forwardWord();

            if((cursor_y_before == self.cursorY) && (scroll_before == self.scroll)) 
            {
                var search_word = self.texts.item(self.scroll+self.cursorY, null).substring(cursor_x_before, self.cursorX+1);
                vig.searchString = clone search_word;

                self.search(vig);
            }
        }
    }

    void inputSearchlMode(VigWin* self, Vig* vig)
    {
        var key = self.getKey();

        switch(key) {
            case 27:
                vig.exitFromSearchMode();
                break;

            case 'C'-'A'+1:
                vig.exitFromSearchMode();
                break;

            case 10:
                self.search(vig);
                vig.exitFromSearchMode();
                break;
                
            case 8:
            case 127:
            case KEY_BACKSPACE:
                vig.searchString.delete(-1);
                break;

            default:
                vig.searchString = vig.searchString + wstring(xasprintf("%c", key));
                break;
        }
    }

    void input(VigWin* self, Vig* vig) {
        if(vig.mode == kSearchMode) {
            self.inputSearchlMode(vig);
        }
        else {
            inherit(self, vig);
        }
    }
}

impl Vig version 9
{
    void enterSearchMode(Vig* self) {
        self.mode = kSearchMode;
        self.searchString = wstring("");
    }
    void exitFromSearchMode(Vig* self) {
        self.mode = kEditMode;
    }

    initialize() {
        inherit(self);

        self.events.replace('/', lambda(Vig* self, int key) 
        {
            self.enterSearchMode();
        });

        self.events.replace('n', lambda(Vig* self, int key) 
        {
            self.activeWin.search(self);
        });
        self.events.replace('N', lambda(Vig* self, int key) 
        {
            self.activeWin.searchReverse(self);
        });

        self.events.replace('*', lambda(Vig* self, int key) 
        {
            self.activeWin.searchWordOnCursor(self);
        });
    }
}
