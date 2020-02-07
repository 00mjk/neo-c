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
#include <signal.h>
#include <fcntl.h>
#include <sys/stat.h>

#include "common.h"

impl ViWin version 15
{
    initialize(int y, int x, int width, int height) {
        int maxx = xgetmaxx();

        int filer_width = maxx / 5;

        inherit(self, y, x + filer_width, width-filer_width, height);
    }

    void textsView(ViWin* self, Vi* nvi)
    {
        int maxy = getmaxy(self.win);
        int maxx = getmaxx(self.win);

        self.texts
            .sublist(self.scroll, self.scroll+maxy-1)
            .each 
        {
            var line = it.substring(0, maxx-1);

            if(self.cursorY == it2 && nvi.activeWin.equals(self) && !nvi.filer.active) {
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
}

impl ViFiler
{
    bool cd(ViFiler* self, char* cwd) {
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

        self.files = self.files.sort_block {
            if(strcmp(it, ".") == 0) {
                return -1;
            }
            if(strcmp(it2, ".") == 0) {
                return 1;
            }
            if(strcmp(it, "..") == 0) {
                return -1;
            }
            if(strcmp(it2, "..") == 0) {
                return 1;
            }

            char* p = it + strlen(it);

            while(p >= it) {
                if(*p == '.') {
                    break;
                }
                else {
                    p--;
                }
            }

            int name_len = p - it;

            char* p2 = it2 + strlen(it2);

            while(p2 >= it2) {
                if(*p2 == '.') {
                    break;
                }
                else {
                    p2--;
                }
            }

            int name_len2 = p2 - it2;

            if(name_len == 0 && name_len2 == 0) {
                return strcmp(it, it2);
            }
            if(name_len == 0) {
                return -1;
            }
            if(name_len2 == 0) {
                return 1;
            }

            string ext_name = it.substring(name_len+1, -1);
            string ext_name2 = it2.substring(name_len2+1, -1);
            
            if(strcmp(ext_name, ext_name2) != 0) {
                return strcmp(ext_name, ext_name2);
            }

            return strcmp(it, it2);
        }
        
        return true;
    }

    initialize() {
        int maxy = xgetmaxy();
        int maxx = xgetmaxx();

        int width = maxx / 5;

        self.win = newwin(maxy, width, 0, 0);
        keypad(self.win, true);
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

    void view(ViFiler* self, Vi* nvi)
    {
        //werase(self.win);
        
        int maxy = xgetmaxy();
        self.files.sublist(self.scroll, self.scroll+maxy+1).each {
            if(it2 == self.cursor && self.active) {
                wattron(self.win, A_REVERSE);
                mvwprintw(self.win, it2, 0, "%s", it);
                wattroff(self.win, A_REVERSE);
            }
            else {
                mvwprintw(self.win, it2, 0, "%s", it);
            }
        }
        //wrefresh(self.win);
    }
    
    void find(ViFiler* self, Vi* nvi) {
        var command = nvi.commandBox(null);
        
        if(command != null) {
            FILE* fp = popen(command, "r");
    
            var command_output = new buffer.initialize(); 
            
            while(!feof(fp)) {
                char buf[BUFSIZ];
    
                fgets(buf, BUFSIZ, fp);
    
                command_output.append_str(buf);
            }
    
            pclose(fp);
    
            var selected_files = command_output.to_string()
                                   .split(regex!(/\n/));
    
            var new_files = new list<string>.initialize();
            self.cd(self.path);
            
            self.files.each {
                if(selected_files.find(it, -1) != -1) {
                    new_files.push_back(clone it);
                }
            }
    
            self.files = new_files;
            
            self.scroll = 0;
            self.cursor = 0;
        }
    }

    void input(ViFiler* self, Vi* nvi) {
        var key = wgetch(self.win);

        var file_name = self.files.item(self.scroll+self.cursor, null);
        
        int maxy = xgetmaxy();

        switch(key) {
            case 'j': 
            case KEY_DOWN:
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
            case KEY_UP:
                self.cursor--; 

                if(self.cursor < 0) {
                    self.scroll--;
                    self.cursor = 0;

                    if(self.scroll < 0) {
                        self.scroll = 0;
                    }
                }
                break;
                
            case 'D'-'A'+1: 
                self.cursor += 10;

                if(self.cursor >= maxy) {
                    int scroll_num = self.cursor - maxy;
                    self.scroll += scroll_num;
                    self.cursor -= scroll_num;
                    self.cursor --;

                    if(self.scroll >= self.files.length()) {
                        self.scroll = self.files.length()-1;
                    }
                }

                if(self.cursor >= self.files.length()-self.scroll-1) {
                    self.cursor = self.files.length()-self.scroll-1;
                }
                break;

            case 'U'-'A'+1: 
                self.cursor-=10; 

                if(self.cursor < 0) {
                    int scroll_num = -self.cursor;
                    self.scroll-= scroll_num;
                    self.cursor = 0;

                    if(self.scroll < 0) {
                        self.scroll = 0;
                    }
                }
                break;

            case '\n': {
                var path = xasprintf("%s/%s", self.path, file_name);
                
                stat stat_;
                
                stat(path, &stat_); 
                
                if(S_ISDIR(stat_.st_mode)) {
                    self.cd(path);
                }
                else {
                    nvi.activeWin.writeFile();
                    nvi.openFile(path, -1);
                    self.active = false;
                }
                }
                break;
                
            case 8:
            case 127:
            case KEY_BACKSPACE:
                //self.moveParent(nvi);
                break; 

            case 'O'-'A'+1:
            case 'C'-'A'+1:
                self.active = false;
                break;

            case 'f':
                self.find(nvi);
                break;
            
            case 'o':
                nvi.openNewFile(file_name);
                self.active = false;
                break;
        }
    }
}

void xclear(WINDOW* win)
{
//    wclear(win);
    werase(win);
/*
    int maxx = getmaxx(win);
    int maxy = getmaxy(win);

    for(int i=0; i< maxy; i++) {
        for(int j=0; j<maxx-1; j++) {
            mvwprintw(win, i, j, " ");
        }
    }

    wrefresh(win);
*/
}

Vi* gVi;

void sig_winch(int sig_num)
{
    gVi.repositionWindows();
    gVi.repositionFiler();

    gVi.clearView();
    gVi.view();
}

impl Vi version 15
{
    initialize() {
        inherit(self);

        self.filer = new ViFiler.initialize();

        gVi = self;
        signal(SIGWINCH, sig_winch);
    }
    
    string commandBox(Vi* self, string default_value) {
        int maxx = xgetmaxx();
        
        var win = newwin(3,maxx-1, 0, 0);
        
        var command = string("");
        
        int end = false;
        
        while(!end) {
            self.view();
            
            box(win, '|', '-');
            
            mvwprintw(win, 1, 1
                        , command.substring(0,maxx-3));
            
            wrefresh(win);
            
            var key = wgetch(win);
            
            switch(key) {
                case '\n':
                    end = true;
                    break;
                    
                case 'C'-'A'+1:
                    delwin(win);
                    return default_value;
                    
                default:
                    command = command 
                            + key.to_string().printable();
                    break;
            }
        }
        
        delwin(win);
        
        return command;
    }

    void activateFiler(Vi* self) {
        self.filer.active = true;
    }

    void view(Vi* self) {
        xclear(self.filer.win);

        self.wins.each {
            xclear(it.win);
        }

        self.filer.view(self);

        self.wins.each {
            it.view(self);
        }

        wrefresh(self.filer.win);

        self.wins.each {
            wrefresh(it.win);
        }
    }

    void clearView(Vi* self)
    {
        clearok(stdscr, true);
        clear();
        clearok(stdscr, false);

        clearok(self.filer.win, true);
        wclear(self.filer.win);
        clearok(self.filer.win, false);

        self.filer.view(self);
        wrefresh(self.filer.win);

        self.wins.each {
            clearok(it.win, true);
            wclear(it.win);
            clearok(it.win, false);
            it.view(self);
            wrefresh(it.win);
        }

        refresh();
    }

    int main_loop(Vi* self) {
        while(!self.appEnd) {
            self.view();

            if(self.mode != kInsertMode) {
                self.activeWin.clearInputedKey();
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

    void repositionFiler(Vi* self) {
        int maxy = xgetmaxy();
        int maxx = xgetmaxx();

        delwin(self.filer.win);

        int width = maxx / 5;
        var win = newwin(maxy, width, 0, 0);
        keypad(win, true);

        self.filer.win = win;
    }
}
