#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <dirent.h>
#include <unistd.h>
#include <locale.h>
#include <wctype.h>

#include "vig.h"

impl VigFiler
{
    bool cd(VigFiler* self, char* cwd) {
        self.path = string(cwd);

        self.files = new list<string>.initialize();

        DIR* dir = opendir(cwd);

        if(dir == null) {
            return false;
        }

        while(true) {
            struct dirent* entry = readdir(dir);

            if(entry == null) {
                break;
            }

            self.files.push_back(string(entry->d_name));
        }

        closedir(dir);

        self.files = self.files.sort();
        
        return true;
    }

    initialize() {
        int maxy = xgetmaxy();
        int maxx = xgetmaxx();

        int width = maxx / 5;

        self.win = newwin(maxy, width, 0, 0);
        self.active = false;

        self.scroll = 0;
        self.cursor = 0;
        self.width = width;

        char cwd[PATH_MAX];
        getcwd(cwd, PATH_MAX);

        self.cd(cwd);
    }


    finalize() {
        delwin(self.win);
    }

    void view(VigFiler* self, Vig* vig)
    {
        int maxy = xgetmaxy();
        werase(self.win);
        self.files.sublist(self.scroll, self.scroll+maxy+1).each {
            if(it2 == self.cursor) {
                wattron(self.win, A_REVERSE);
                mvwprintw(self.win, it2, 0, "%s", it);
                wattroff(self.win, A_REVERSE);
            }
            else {
                mvwprintw(self.win, it2, 0, "%s", it);
            }
        }
        wrefresh(self.win);
    }

    void input(VigFiler* self, Vig* vig) {
        var key = wgetch(self.win);

        var file_name = self.files.item(self.scroll+self.cursor, null);
        
        int maxy = xgetmaxy();

        switch(key) {
            case 'j': 
                self.cursor ++;

                if(self.cursor >= maxy) {
                    self.scroll++;
                    self.cursor = maxy-1;

                    if(self.scroll >= self.files.length()) {
                        self.scroll = self.files.length()-1;
                    }
                }

                if(self.cursor >= self.files.length()-self.scroll-1) {
                    self.cursor = self.files.length()-self.scroll-1;
                }
                break;

            case 'k': 
                self.cursor--; 

                if(self.cursor < 0) {
                    self.scroll--;
                    self.cursor = 0;

                    if(self.scroll < 0) {
                        self.scroll = 0;
                    }
                }
                break;

            case '\n': 
                vig.activeWin.writeFile();
                vig.activeWin.openFile(file_name, -1);
                self.active = false;
                break;

            case 'O'-'A'+1:
            case 'C'-'A'+1:
                self.active = false;
                break;
            
            case 'o':
                vig.openNewFile(file_name);
                self.active = false;
                break;
        }
    }
}

impl Vig version 15
{
    initialize() {
        inherit(self);

        self.filer = new VigFiler.initialize();
    }

    void activateFiler(Vig* self) {
        self.filer.active = true;
    }

    int main_loop(Vig* self) {
        while(!self.appEnd) {
            self.filer.view(self);

            self.wins.each {
                it.view(self);
            }
            
            if(self.filer.active) {
                self.filer.input(self);
            }
            else {
                self.activeWin.input(self);
            }
        }

        0
    }
}
