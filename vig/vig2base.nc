#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <locale.h>

#include "vig.h"

impl VigWin version 2 
{
    void view(VigWin* self, Vig* vig) {
        werase(self.win);

        self.texts.each {
            if(self.cursorY == it2) {
                if(it.length() == 0) {
                    wattron(self.win, A_REVERSE);
                    mvwprintw(self.win, it2, 0, " ");
                    wattroff(self.win, A_REVERSE);
                }
                else {
                    int x = 0;
                    wstring head_string = it.substring(0, self.cursorX);
                    if(!head_string.equals(wstring("")))
                    {
                        mvwprintw(self.win, it2, 0, "%s", head_string.toUtf8String());
                    }

                    x += wcswidth(head_string, head_string.length());

                    wstring cursor_string = it.substring(self.cursorX, self.cursorX+1);

                    if(!cursor_string.equals(wstring("")))
                    {
                        wattron(self.win, A_REVERSE);
                        mvwprintw(self.win, it2, x, "%s", cursor_string.toUtf8String());
                        wattroff(self.win, A_REVERSE);
                    }

                    x += wcswidth(cursor_string, cursor_string.length());

                    wstring tail_string = it.substring(self.cursorX+1, -1);

                    if(!tail_string.equals(wstring("")))
                    {
                        mvwprintw(self.win, it2, x, "%s", tail_string.toUtf8String());
                    };
                }
            }
            else {
                mvwprintw(self.win, it2, 0, "%s", it.toUtf8String());
            }
        }

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "x %d y %d", self.cursorX, self.cursorY);
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

        if(self.cursorY >= self.texts.length())
        {
            self.cursorY = self.texts.length()-1;
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

        self.events = new vector<void lambda(Vig*, int)>.initialize_with_values(KEY_MAX, null);

        self.events.replace('q', lambda(Vig* self, int key) 
        {
            self.appEnd = true;
        });
        self.events.replace('l', lambda(Vig* self, int key) 
        {
            self.activeWin.forward();
        });
        self.events.replace('h', lambda(Vig* self, int key) 
        {
            self.activeWin.backward();
        });
        self.events.replace('j', lambda(Vig* self, int key) 
        {
            self.activeWin.nextLine();
        });
        self.events.replace('k', lambda(Vig* self, int key) 
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
