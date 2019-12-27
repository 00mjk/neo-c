#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <wctype.h>

#include "vig.h"

impl VigWin version 6
{
    initialize(int y, int x, int width, int height) {
        inherit(self, y, x, width, height);

        self.fileName = string("a.txt");
    }
    void statusBarView(VigWin* self, Vig* vig)
    {
        int maxy = getmaxy(self.win);
        int maxx = getmaxx(self.win);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "x %d y %d scroll %d writed %d", self.cursorX, self.cursorY, self.scroll, self.writed);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }
    void openFile(VigWin* self, char* file_name)
    {
        self.texts.reset();

        FILE* f = fopen(file_name, "r");

        char line[4096];

        while(fgets(line, 4096, f) != NULL)
        {
            line[strlen(line)-1] = '\0';
            self.texts.push_back(wstring(line))
        }

        fclose(f);

        self.fileName = string(file_name);
    }
    void writeFile(VigWin* self) {
        FILE* f = fopen(self.fileName, "w");

        self.texts.each {
            fprintf(f, "%s\n", it.to_string());
        }

        fclose(f);

        self.writed = false;
    }
    void writedFlagOn(VigWin* self) {
        self.writed = true;
    }
}

impl Vig version 6
{
    void openFile(Vig* self, int num_files, char** file_names) 
    {
        if(num_files > 0) {
            self.activeWin.openFile(file_names[0]);
        }
    }
}
