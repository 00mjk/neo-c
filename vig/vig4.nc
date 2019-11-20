#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <wctype.h>
#include <ctype.h>

#include "vig.h"

impl VigWin version 4
{
    void forwardWord(VigWin* self) {
        wchar_t* line = self.texts.item(self.curs_y, wstring(""));

        wchar_t* p = line + self.curs_x;

        if(self.curs_x == wcslen(line)) 
        {
            self.curs_x--;
            p--;

            if(self.curs_x < 0) {
                self.curs_x++;
                p++;
            }
        }

        if(wcslen(line) == 0) {
            while(wcslen(line) == 0) {
                self.curs_y++;

                if(self.curs_y >= self.texts.length())
                {
                    self.curs_y--;
                    break;
                }

                line = self.texts.item(self.curs_y, wstring(""));
            }

            self.curs_x = 0;
        }
        else if((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z'))
        {
            while((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z'))
            {
                p++;
                self.curs_x++;

                if(self.curs_x >= line.length())
                {
                    self.curs_y++;

                    if(self.curs_y >= self.texts.length())
                    {
                        self.curs_y--;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));
                    p = line;
                    self.curs_x = 0;
                }
            }
        }
        else if(iswalpha(*p)) {
            while(iswalpha(*p)) {
                p++;
                self.curs_x++;

                if(self.curs_x >= line.length())
                {
                    self.curs_y++;

                    if(self.curs_y >= self.texts.length())
                    {
                        self.curs_y--;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));
                    p = line;
                    self.curs_x = 0;
                }
            }
        }
        else if(iswblank(*p)) {
            while(iswblank(*p)) {
                p++;
                self.curs_x++;

                if(self.curs_x >= line.length())
                {
                    self.curs_y++;

                    if(self.curs_y >= self.texts.length())
                    {
                        self.curs_y--;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));
                    p = line;
                    self.curs_x = 0;
                }
            }
        }
        else if(iswdigit(*p)) {
            while(iswdigit(*p)) {
                p++;
                self.curs_x++;

                if(self.curs_x >= line.length())
                {
                    self.curs_y++;

                    if(self.curs_y >= self.texts.length())
                    {
                        self.curs_y--;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));
                    p = line;
                    self.curs_x = 0;
                }
            }
        }
    }
    void backwardWord(VigWin* self) {

        wchar_t* line = self.texts.item(self.curs_y, wstring(""));

        wchar_t* p = line + self.curs_x;

        if(self.curs_x == wcslen(line)) 
        {
            self.curs_x--;
            p--;

            if(self.curs_x < 0) {
                self.curs_x++;
                p++;
            }
        }

        if(wcslen(line) == 0) {
            while(wcslen(line) == 0) {
                self.curs_y--;

                if(self.curs_y < 0) {
                    self.curs_y++;
                    break;
                }

                line = self.texts.item(self.curs_y, wstring(""));
            }

            self.curs_x = wcslen(self.texts.item(self.curs_y, wstring(""))) -1;

            if(self.curs_x < 0) {
                self.curs_x = 0;
            }
        }
        else if((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z'))
        {
            while((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z'))
            {
                p--;
                self.curs_x--;

                if(self.curs_x < 0)
                {
                    self.curs_x = 0;
                    self.curs_y--;

                    if(self.curs_y < 0)
                    {
                        self.curs_y++;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));

                    if(wcslen(line) == 0)
                    {
                        p = line;
                        self.curs_x = 0;
                    }
                    else {
                        self.curs_x = wcslen(line) -1;
                        p = line + self.curs_x;
                    }
                }
            }
        }
        else if(iswalpha(*p)) {
            while(iswalpha(*p)) {
                p--;
                self.curs_x--;

                if(self.curs_x < 0)
                {
                    self.curs_x = 0;
                    self.curs_y--;

                    if(self.curs_y < 0)
                    {
                        self.curs_y++;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));

                    if(wcslen(line) == 0)
                    {
                        p = line;
                        self.curs_x = 0;
                    }
                    else {
                        self.curs_x = wcslen(line) -1;
                        p = line + self.curs_x;
                    }
                }
            }
        }
        else if(iswdigit(*p)) {
            while(iswdigit(*p)) {
                p--;
                self.curs_x--;

                if(self.curs_x < 0)
                {
                    self.curs_x = 0;
                    self.curs_y--;

                    if(self.curs_y < 0)
                    {
                        self.curs_y++;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));

                    if(wcslen(line) == 0)
                    {
                        p = line;
                        self.curs_x = 0;
                    }
                    else {
                        self.curs_x = wcslen(line) -1;
                        p = line + self.curs_x;
                    }
                }
            }
        }
        else if(iswblank(*p)) {
            while(iswblank(*p)) {
                p--;
                self.curs_x--;

                if(self.curs_x < 0)
                {
                    self.curs_x = 0;
                    self.curs_y--;

                    if(self.curs_y < 0)
                    {
                        self.curs_y++;
                        break;
                    }

                    line = self.texts.item(self.curs_y, wstring(""));

                    if(wcslen(line) == 0)
                    {
                        p = line;
                        self.curs_x = 0;
                    }
                    else {
                        self.curs_x = wcslen(line) -1;
                        p = line + self.curs_x;
                    }
                }
            }
        }
    }
}

impl Vig version 4
{
    initialize() {
        inherit(self);

        self.events.replace('w', lambda(Vig* self, int key) 
        {
            self.active_win.forwardWord();
        });
        self.events.replace('b', lambda(Vig* self, int key) 
        {
            self.active_win.backwardWord();
        });
    }
}
