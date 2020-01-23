#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <wctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <limits.h>

#include "neo-vi.h"

impl NeoViWin version 6
{
    initialize(int y, int x, int width, int height) {
        inherit(self, y, x, width, height);

        self.fileName = string("a.txt");
    }
    void statusBarView(NeoViWin* self, NeoVi* nvi)
    {
        int maxy = getmaxy(self.win);
        int maxx = getmaxx(self.win);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "x %d y %d scroll %d file %s writed %d", self.cursorX, self.cursorY, self.scroll, self.fileName, (self.writed ? 1:0));
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }
    void saveCursorPosition(NeoViWin* self, char* file_name) {
        char* home = getenv("HOME");
        
        if(home == null) {
            return;
        }
        
        char file_name2[PATH_MAX];
        
        snprintf(file_name2, PATH_MAX, "%s/.nvi", home);
        
        (void)mkdir(file_name2, 0755);
        
        snprintf(file_name2, PATH_MAX, "%s/.nvi/%s.pos", home, file_name);
        
        FILE* f = fopen(file_name2, "w");

        if(f == null) {
            return;
        }
        
        fprintf(f, "%d %d\n", self.scroll, self.cursorY);
        
        fclose(f);
    }
    void readCursorPosition(NeoViWin* self, char* file_name) {
        char* home = getenv("HOME");
        
        if(home == null) {
            self.scroll = 0;
            self.cursorY = 0;
            return;
        }
        
        char file_name2[PATH_MAX];
        
        snprintf(file_name2, PATH_MAX, "%s/.nvi/%s.pos", home, file_name);
        
        FILE* f = fopen(file_name2, "r");

        if(f == null) {
            self.scroll = 0;
            self.cursorY = 0;
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
    void openFile(NeoViWin* self, char* file_name, int line_num)
    {
        self.texts.reset();

        FILE* f = fopen(file_name, "r");
        
        if(f != null) {
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
    }
    void writeFile(NeoViWin* self) {
        FILE* f = fopen(self.fileName, "w");

        self.texts.each {
            fprintf(f, "%s\n", it.to_string(""));
        }

        fclose(f);

        self.writed = false;
        self.saveCursorPosition(self.fileName);
    }
    void writedFlagOn(NeoViWin* self) {
        self.writed = true;
    }
}

impl NeoVi version 6
{
    void toggleWin(NeoVi* self) {
        if(self.toggleWin >= 0 && self.toggleWin < self.wins.length()) {
            int toggle_win = self.wins.find(self.activeWin, -1);
            self.activeWin = self.wins.item(self.toggleWin, null);
            self.toggleWin = toggle_win;
        }
    }

    initialize() {
        inherit(self);

        self.events.replace('W'-'A'+1, lambda(NeoVi* self, int key) 
        {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case 'W'-'A'+1:
                    self.toggleWin();
                    break;
            }
        });

        self.events.replace('O'-'A'+1, lambda(NeoVi* self, int key) 
        {
            self.activateFiler();
        });
    }

    void openFile(NeoVi* self, int num_files, char** file_names, int line_num) 
    {
        if(num_files > 0) {
            self.activeWin.openFile(file_names[0], line_num);
        }
    }

    void repositionWindows(NeoVi* self) {
        int maxy = xgetmaxy();
        int maxx = xgetmaxx();

        int height = maxy / self.wins.length();

        /// determine the position ///
        self.wins.each {
            it.height = height;
            it.y = height * it2;

            delwin(it.win);
            var win = newwin(it.height, it.width, it.y, it.x);
            it.win = win;
        }
    }

    void openNewFile(NeoVi* self, char* file_name) {
        int maxy = xgetmaxy();
        int maxx = xgetmaxx();

        int height = maxy / (self.wins.length() + 1);

        var win = new NeoViWin.initialize(0,0, maxx-1, height);
        win.openFile(file_name, -1);

        self.activeWin = win;

        self.wins.push_back(win);

        self.repositionWindows();

        self.wins.each {
            if(!it.equals(self.activeWin)) {
                self.toggleWin = it2;
            }
        }
    }

    void closeActiveWin(NeoVi* self) {
        int active_pos = self.wins.find(self.activeWin, -1);

        self.wins.delete(active_pos);

        self.repositionWindows();

        self.activeWin = self.wins.item(0, null);
    }
}
