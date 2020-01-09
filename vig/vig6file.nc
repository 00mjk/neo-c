#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <wctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <limits.h>

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
        mvwprintw(self.win, self.height-1, 0, "x %d y %d scroll %d file %s writed %d", self.cursorX, self.cursorY, self.scroll, self.fileName, self.writed);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }
    void saveCursorPosition(VigWin* self, char* file_name) {
        char* home = getenv("HOME");
        
        if(home == null) {
            return;
        }
        
        char file_name2[PATH_MAX];
        
        snprintf(file_name2, PATH_MAX, "%s/.vig", home);
        
        (void)mkdir(file_name2, 0755);
        
        snprintf(file_name2, PATH_MAX, "%s/.vig/%s.pos", home, file_name);
        
        FILE* f = fopen(file_name2, "w");

        if(f == null) {
            return;
        }
        
        fprintf(f, "%d %d\n", self.scroll, self.cursorY);
        
        fclose(f);
    }
    void readCursorPosition(VigWin* self, char* file_name) {
        char* home = getenv("HOME");
        
        if(home == null) {
            return;
        }
        
        char file_name2[PATH_MAX];
        
        snprintf(file_name2, PATH_MAX, "%s/.vig/%s.pos", home, file_name);
        
        FILE* f = fopen(file_name2, "r");

        if(f == null) {
            return;
        }
        
        char line[4096];

        int scroll = 0;
        int cursor_y = 0;
        fscanf(f, "%d %d", &scroll, &cursor_y);
        
        fclose(f);
        
        self.scroll = scroll;
        self.cursorY = cursor_y;
        
        if(self.scroll >= self.texts.length()) {
            self.scroll = self.texts.length() - 1;
        }
        
        self.modifyOverCursorYValue();
    }
    void openFile(VigWin* self, char* file_name, int line_num)
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
        if(line_num == -1) {
            self.readCursorPosition(file_name);
        }
        else {
            self.cursorY = line_num;
            
            self.modifyOverCursorYValue();
        }
    }
    void writeFile(VigWin* self) {
        FILE* f = fopen(self.fileName, "w");

        self.texts.each {
            fprintf(f, "%s\n", it.to_string(""));
        }

        fclose(f);

        self.writed = false;
        self.saveCursorPosition(self.fileName);
    }
    void writedFlagOn(VigWin* self) {
        self.writed = true;
    }
}

impl Vig version 6
{
    void openFile(Vig* self, int num_files, char** file_names, int line_num) 
    {
        if(num_files > 0) {
            self.activeWin.openFile(file_names[0], line_num);
        }
    }
}
