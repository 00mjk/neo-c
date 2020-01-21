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
        werase(self.win);
        self.files.each {
            mvprintw(self.win, it2, 0, "%s", it.substring(0, self.width));
        }
        wrefresh(self.win);
    }

    void input(VigFiler* self, Vig* vig) {
        var key = wgetch(self.win);

        var file_name = self.files.item(self.scroll+self.cursor, null);

        switch(key) {
            case '\n': 
                vig.openNewFile(file_name);
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
