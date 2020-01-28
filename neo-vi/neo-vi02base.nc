#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <locale.h>
#include <wctype.h>

#include "neo-vi.h"

impl NeoViWin version 2 
{
    void textsView(NeoViWin* self, NeoVi* nvi)
    {
        int maxy = getmaxy(self.win);
        int maxx = getmaxx(self.win);

        self.texts
            .sublist(self.scroll, self.scroll+maxy-1)
            .each 
        {
            var line = it.substring(0, maxx-1);

            if(self.cursorY == it2 && nvi.activeWin.equals(self)) {
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
    void statusBarView(NeoViWin* self, NeoVi* nvi)
    {
        int maxy = getmaxy(self.win);
        int maxx = getmaxx(self.win);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "x %d y %d scroll %d", self.cursorX, self.cursorY, self.scroll);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }

    void view(NeoViWin* self, NeoVi* nvi) {
        werase(self.win);

        self.textsView(nvi);

        self.statusBarView(nvi);

        wrefresh(self.win);
    }
    
    int getKey(NeoViWin* self) {
        return wgetch(self.win);        
    }

    void input(NeoViWin* self, NeoVi* nvi) {
        var key = self.getKey();

        var event = nvi.events.item(key, null);

        if(event != null) {
            event(nvi, key);
        }
    }

    void modifyUnderCursorYValue(NeoViWin* self)
    {
        if(self.cursorY < 0) {
            self.scroll += self.cursorY;

            if(self.scroll < 0) {
                self.scroll = 0;
            }

            self.cursorY = 0;
        }
    }

    void modifyOverCursorYValue(NeoViWin* self)
    {
        if(self.texts.length() == 0) {
            self.scroll = 0;
            self.cursorY = 0;
            self.cursorX = 0;
        }
        else {
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
        }
    }

    void modifyOverCursorXValue(NeoViWin* self)
    {
        if(self.texts.length() == 0) {
            self.scroll = 0;
            self.cursorY = 0;
            self.cursorX = 0;
        }
        else {
            var cursor_line = self.texts.item(self.scroll+self.cursorY, null);
    
            if(cursor_line) {
                if(self.cursorX >= cursor_line.length())
                {
                    self.cursorX = cursor_line.length()-1;
    
                    if(self.cursorX < 0) {
                        self.cursorX = 0;
                    }
                }
            }
        }
    }

    void modifyUnderCursorXValue(NeoViWin* self)
    {
        if(self.cursorX < 0) {
            self.cursorX = 0;
        }
    }

    void forward(NeoViWin* self) {
        self.cursorX++;
        self.modifyOverCursorXValue();
    }

    void backward(NeoViWin* self) {
        self.cursorX--;
        self.modifyUnderCursorXValue();
    }

    void prevLine(NeoViWin* self) {
        self.cursorY--;

        self.modifyUnderCursorYValue();
        self.modifyOverCursorXValue();
    }

    void nextLine(NeoViWin* self) {
        self.cursorY++;

        self.modifyOverCursorYValue();
        self.modifyOverCursorXValue();
    }

    void halfScrollUp(NeoViWin* self) {
        int maxy = getmaxy(self.win);

        self.cursorY -= maxy/2;

        self.modifyUnderCursorYValue();
        self.modifyOverCursorXValue();
    }

    void halfScrollDown(NeoViWin* self) {
        int maxy = getmaxy(self.win);

        self.cursorY += maxy/2;

        self.modifyOverCursorYValue();
        self.modifyOverCursorXValue();
    }

    void centeringCursor(NeoViWin* self) {
        int maxy = getmaxy(self.win);

        self.scroll += (maxy/2) - self.cursorY; 
        self.cursorY = maxy / 2;
        
        if(self.scroll >= self.texts.length()) {
            self.scroll = self.texts.length() - 1;
            self.cursorY = 0;
        }
        if(self.scroll < 0) {
            self.scroll = 0;
            self.cursorY = 0;
        }
    }
    
    void topCursor(NeoViWin* self) {
        self.scroll = self.scroll + self.cursorY;
        self.cursorY = 0;
    }

    void moveAtHead(NeoViWin* self) {
        self.cursorX = 0;
    }

    void moveAtTail(NeoViWin* self) {
        var cursor_line = self.texts.item(self.scroll+self.cursorY, wstring(""));
        var line_max = cursor_line.length();

        self.cursorX = line_max-1;

        if(self.cursorX < 0) {
            self.cursorX = 0;
        }
    }

    void moveTop(NeoViWin* self) {
        self.scroll = 0;
        self.cursorY = 0;

        self.modifyOverCursorXValue();
    }

    void moveBottom(NeoViWin* self) {
        self.cursorY = self.texts.length()-1;

        self.modifyOverCursorXValue();
        self.modifyOverCursorYValue();
    }
    void openFile(NeoViWin* self, char* file_name, int line_num) {
        /// implemented by the after layer
    }
}

impl NeoVi version 2 
{
    initialize() {
        setlocale(LC_ALL, "");
        
        self.init_curses();

        self.wins = new list<NeoViWin*%>.initialize();

        var maxx = xgetmaxx();
        var maxy = xgetmaxy();

        var win = new NeoViWin.initialize(0,0, maxx-1, maxy);

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

        self.events = new vector<void (*lambda)(NeoVi*, int)>.initialize_with_values(KEY_MAX, null);

        self.events.replace('l', lambda(NeoVi* self, int key) 
        {
            self.activeWin.forward();
        });
        self.events.replace(KEY_RIGHT, lambda(NeoVi* self, int key) 
        {
            self.activeWin.forward();
        });
        self.events.replace('h', lambda(NeoVi* self, int key) 
        {
            self.activeWin.backward();
        });
        self.events.replace(KEY_LEFT, lambda(NeoVi* self, int key) 
        {
            self.activeWin.backward();
        });
        self.events.replace('j', lambda(NeoVi* self, int key) 
        {
            self.activeWin.nextLine();
        });
        self.events.replace(KEY_DOWN, lambda(NeoVi* self, int key) 
        {
            self.activeWin.nextLine();
        });
        self.events.replace('k', lambda(NeoVi* self, int key) 
        {
            self.activeWin.prevLine();
        });
        self.events.replace(KEY_UP, lambda(NeoVi* self, int key) 
        {
            self.activeWin.prevLine();
        });
        self.events.replace('0', lambda(NeoVi* self, int key) 
        {
            self.activeWin.moveAtHead();
        });
        self.events.replace('$', lambda(NeoVi* self, int key) 
        {
            self.activeWin.moveAtTail();
        });
        self.events.replace('D'-'A'+1, lambda(NeoVi* self, int key) 
        {
            self.activeWin.halfScrollDown();
        });
        self.events.replace('U'-'A'+1, lambda(NeoVi* self, int key) 
        {
            self.activeWin.halfScrollUp();
        });
        self.events.replace('L'-'A'+1, lambda(NeoVi* self, int key) 
        {
            clearok(stdscr, true);
            clear();
            self.wins.each {
                clearok(it.win, true);
                wclear(it.win);
                it.view(self);
            }
            refresh();
        });
        self.events.replace('g', lambda(NeoVi* self, int key) 
        {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case 'g':
                    self.activeWin.moveTop();
                    break;
            }
        });
        self.events.replace('G', lambda(NeoVi* self, int key) 
        {
            self.activeWin.moveBottom();
        });
        self.events.replace('z', lambda(NeoVi* self, int key) 
        {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case 'z':
                    self.activeWin.centeringCursor();
                    break;
                    
                case '\n':
                    self.activeWin.topCursor();
                    break;
            }
        });
    }

    int main_loop(NeoVi* self) {
        while(!self.appEnd) {
            //erase();

            self.wins.each {
                it.view(self);
            }
            
            self.activeWin.input(self);
        }

        0
    }

    void openFile(NeoVi* self, char* file_name)
    {
        /// implemented by the after layer
    }
}
