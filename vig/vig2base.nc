#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <locale.h>
#include <wctype.h>

#include "vig.h"

impl VigWin version 2 
{
    void textsView(VigWin* self, Vig* vig)
    {
        int maxy = getmaxy(self.win);
        int maxx = getmaxx(self.win);

        self.texts
            .sublist(self.scroll, self.scroll+maxy-1)
            .each 
        {
            var line = it.substring(0, maxx-1);

            if(self.cursorY == it2) {
                if(line.length() == 0) {
                    wattron(self.win, A_REVERSE);
                    mvwprintw(self.win, it2, 0, " ");
                    wattroff(self.win, A_REVERSE);
                }
                else if(self.cursorX == line.length())
                {
                    mvwprintw(self.win, it2, 0, "%ls", line);
                    wstring line2 = line.printable();

                    wattron(self.win, A_REVERSE);
                    mvwprintw(self.win, it2, wcswidth(line2, line2.length()), " ");
                    wattroff(self.win, A_REVERSE);
                }
                else {
                    int x = 0;
                    wstring head_string = line.substring(0, self.cursorX);
                    wstring printable_head_string = head_string.printable();

                    mvwprintw(self.win, it2, 0, "%ls", printable_head_string);

                    x += wcswidth(printable_head_string, printable_head_string.length());

                    wstring cursor_string = line.substring(self.cursorX, self.cursorX+1);
                    wstring printable_cursor_string = cursor_string.printable();

                    wattron(self.win, A_REVERSE);
                    mvwprintw(self.win, it2, x, "%ls", printable_cursor_string);
                    wattroff(self.win, A_REVERSE);

                    x += wcswidth(printable_cursor_string, printable_cursor_string.length());

                    wstring tail_string = line.substring(self.cursorX+1, -1);

                    mvwprintw(self.win, it2, x, "%ls", tail_string);
                }
            }
            else {
                mvwprintw(self.win, it2, 0, "%ls", line);
            }
        }
    }

    void view(VigWin* self, Vig* vig) {
        werase(self.win);

        self.textsView(vig);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "x %d y %d scroll %d writed %d /%ls", self.cursorX, self.cursorY, self.scroll, self.writed, vig.searchString);
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

    wchar_t* getCursorLine(VigWin* self) {
        return self.texts.item(self.cursorY, wstring(""));
    }

    int getCursorLineLength(VigWin* self) 
    {
        return wcslen(self.getCursorLine());
    }

    void forward(VigWin* self) {
        self.cursorX++;

        var line_max = self.getCursorLineLength();

        if(self.cursorX >= line_max)
        {
            self.cursorX = line_max-1;

            if(self.cursorX < 0) {
                self.cursorX = 0;
            }
        }
    }

    void backward(VigWin* self) {
        self.cursorX--;

        if(self.cursorX < 0)
        {
            self.cursorX = 0;
        }
    }

    void prevLine(VigWin* self) {
        self.cursorY--;

        if(self.cursorY < 0) {
            self.scroll += self.cursorY;

            if(self.scroll < 0) {
                self.scroll = 0;
            }

            self.cursorY = 0;
        }

        if(self.cursorX >= self.getCursorLineLength())
        {
            self.cursorX = self.getCursorLineLength()-1;

            if(self.cursorX < 0) {
                self.cursorX = 0;
            }
        }
    }

    void nextLine(VigWin* self) {
        self.cursorY++;

        int maxy = getmaxy(self.win);

        if(self.cursorY >= maxy-2)
        {
            self.scroll += self.cursorY - (maxy-2);

            if(self.scroll >= self.texts.length()-1) {
                self.scroll = self.texts.length()-1;
            }

            self.cursorY = maxy-2;
        }

        if(self.cursorY + self.scroll >= self.texts.length()-1) {
            self.cursorY = self.texts.length()-self.scroll-1;
        }

        if(self.cursorX >= self.getCursorLineLength())
        {
            self.cursorX = self.getCursorLineLength()-1;

            if(self.cursorX < 0) {
                self.cursorX = 0;
            }
        }
    }

    void moveAtHead(VigWin* self) {
        self.cursorX = 0;
    }

    void moveAtTail(VigWin* self) {
        self.cursorX = 0;

        var line_max = self.getCursorLineLength();

        self.cursorX = line_max-1;

        if(self.cursorX < 0) {
            self.cursorX = 0;
        }
    }
}

impl Vig version 2 
{
    initialize() {
        setlocale(LC_ALL, "");
        
        self.init_curses();

        self.wins = new vector<VigWin*%>.initialize();

        var maxx = xgetmaxx();
        var maxy = xgetmaxy();

        var win = new VigWin.initialize(0,0, maxx-1, maxy);

        win.texts.push_back(wstring("abc"));
        win.texts.push_back(wstring("def"));
        win.texts.push_back(wstring("ghi"));
        win.texts.push_back(wstring("123"));
        win.texts.push_back(wstring("456"));
        win.texts.push_back(wstring("789"));
        win.texts.push_back(wstring("あいうえお"));

        self.activeWin = win;

        self.wins.push_back(win);

        self.appEnd = false;

        self.events = new vector<void (*lambda)(Vig*, int)>.initialize_with_values(KEY_MAX, null);

        self.events.replace('q', lambda(Vig* self, int key) 
        {
            self.appEnd = true;
        });
        self.events.replace('l', lambda(Vig* self, int key) 
        {
            self.activeWin.forward();
        });
        self.events.replace(KEY_RIGHT, lambda(Vig* self, int key) 
        {
            self.activeWin.forward();
        });
        self.events.replace('h', lambda(Vig* self, int key) 
        {
            self.activeWin.backward();
        });
        self.events.replace(KEY_LEFT, lambda(Vig* self, int key) 
        {
            self.activeWin.backward();
        });
        self.events.replace('j', lambda(Vig* self, int key) 
        {
            self.activeWin.nextLine();
        });
        self.events.replace(KEY_DOWN, lambda(Vig* self, int key) 
        {
            self.activeWin.nextLine();
        });
        self.events.replace('k', lambda(Vig* self, int key) 
        {
            self.activeWin.prevLine();
        });
        self.events.replace(KEY_UP, lambda(Vig* self, int key) 
        {
            self.activeWin.prevLine();
        });
        self.events.replace('0', lambda(Vig* self, int key) 
        {
            self.activeWin.moveAtHead();
        });
        self.events.replace('$', lambda(Vig* self, int key) 
        {
            self.activeWin.moveAtTail();
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
