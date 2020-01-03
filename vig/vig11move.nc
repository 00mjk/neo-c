#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 11
{
    void toggleBraceForward(VigWin* self, wchar_t head, wchar_t tail) {
        int cursor_y = self.scroll + self.cursorY;
        int cursor_x = -1;

        int nest = 0;

        var line = self.texts.item(cursor_y, null);

        wchar_t* p = line + self.cursorX+1;

        while(p < line + line.length()) {
            if(*p == tail) {
                if(nest == 0) {
                    cursor_x = (p - line) / sizeof(wchar_t);
                    self.cursorX = cursor_x;
                    break;
                }

                p++;
                nest--;
            }
            else if(*p == head) {
                p++;

                nest++;
            }
            else {
                p++;
            }
        }

        if(cursor_x == -1) {
            cursor_y++;

            self.texts.sublist(self.scroll+self.cursorY+1, -1).each {
                wchar_t* p = it;

                while(p < it + it.length()) {
                    if(*p == tail) {
                        if(nest == 0) {
                            cursor_x = (p - it) / sizeof(wchar_t);
                            self.cursorY += it2 + 1;
                            self.modifyOverCursorYValue();
                            self.cursorX = cursor_x;
                            *it3 = true;
                            return;
                        }

                        p++;
                        nest--;
                    }
                    else if(*p == head) {
                        p++;

                        nest++;
                    }
                    else {
                        p++;
                    }
                }

                cursor_y++;
            }
        }
    }
    void toggleBraceBack(VigWin* self, wchar_t head, wchar_t tail) {
        int cursor_y = self.scroll + self.cursorY;
        int cursor_x = -1;

        int nest = 0;

        var line = self.texts.item(cursor_y, null);

        wchar_t* p = line + self.cursorX-1;

        while(p >= line) {
            if(*p == head) {
                if(nest == 0) {
                    cursor_x = (p - line) / sizeof(wchar_t);
                    self.cursorX = cursor_x;
                    break;
                }

                p--;
                nest--;
            }
            else if(*p == tail) {
                p--;

                nest++;
            }
            else {
                p--;
            }
        }

        if(cursor_x == -1) {
            cursor_y--;

            self.texts.sublist(0, self.scroll+self.cursorY).reverse().each {
                wchar_t* p = it + it.length();

                while(p >= it) {
                    if(*p == head) {
                        if(nest == 0) {
                            cursor_x = (p - it) / sizeof(wchar_t);
                            self.cursorY = self.cursorY - it2 -1;
                            self.modifyUnderCursorYValue();
                            self.cursorX = cursor_x;
                            *it3 = true;
                            return;
                        }

                        p--;
                        nest--;
                    }
                    else if(*p == tail) {
                        p--;

                        nest++;
                    }
                    else {
                        p--;
                    }
                }

                cursor_y--;
            }
        }
    }
    void gotoBraceEnd(VigWin* self, Vig* vig) {
        var line = self.texts.item(self.scroll+self.cursorY, null);

        var c = line[self.cursorX];

        switch(c) {
            case '(':
                self.toggleBraceForward('(', ')');
                break;

            case '{':
                self.toggleBraceForward('{', '}');
                break;

            case '[':
                self.toggleBraceForward('[', ']');
                break;

            case '<':
                self.toggleBraceForward('<', '>');
                break;

            case ')':
                self.toggleBraceBack('(', ')');
                break;

            case '}':
                self.toggleBraceBack('{', '}');
                break;

            case ']':
                self.toggleBraceBack('[', ']');
                break;

            case '>':
                self.toggleBraceBack('<', '>');
                break;
        }
    }

    void gotoFunctionTop(VigWin* self, Vig* vig) {
        self.texts.sublist(0, self.scroll+self.cursorY).reverse().each() {
            if(it.to_string("").match(regex!</^\\s*[a-zA-Z0-9%*?_]+\\s+[a-zA-Z0-9_]+\\(/>, null) || it.to_string("").match(regex!</^\\s*initialize\\(/>, null) || it.to_string("").match(regex!</^\\s*finalize\\(/>, null)) 
            {
                *it3 = true;
                self.cursorY = self.cursorY - it2 -1;
                self.modifyUnderCursorYValue();
                self.modifyOverCursorYValue();
                return;
            }
        }
    }

    void gotoFunctionBottom(VigWin* self, Vig* vig) {
        int cursor_y = self.scroll+self.cursorY + 1;

        self.texts.sublist(self.scroll+self.cursorY+1, -1).each() {
            if(it.to_string("").match(regex!</^\\s*[a-zA-Z0-9%*?_]+\\s+[a-zA-Z0-9_]+\\(/>, null) || it.to_string("").match(regex!</^\\s*initialize\\(/>, null) || it.to_string("").match(regex!</^\\s*finalize\\(/>, null)) 
            {
                *it3 = true;
                self.cursorY += it2 + 1;
                self.cursorX = 0;
                self.modifyOverCursorYValue();
                return;
            }

            cursor_y++;
        }
    }
}

impl Vig version 11
{
    initialize() {
        inherit(self);

        self.events.replace('%', lambda(Vig* self, int key) {
            self.activeWin.gotoBraceEnd(self);
        });

        self.events.replace('[', lambda(Vig* self, int key) {
            var key2 = wgetch(self.activeWin.win);

            switch(key2) {
                case '[':
                    self.activeWin.gotoFunctionTop(self);
                    break;
            }
        });

        self.events.replace(']', lambda(Vig* self, int key) {
            var key2 = wgetch(self.activeWin.win);

            switch(key2) {
                case ']':
                    self.activeWin.gotoFunctionBottom(self);
                    break;
            }
        });
    }
}
