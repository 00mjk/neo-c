#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "neo-vi.h"

impl NeoViWin version 12
{
    void commandModeView(NeoViWin* self, NeoVi* nvi) {
        //werase(self.win);

        self.textsView(nvi);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, ":%s", nvi.commandString);
        wattroff(self.win, A_REVERSE);

        //wrefresh(self.win);
    }
    void commandModeInput(NeoViWin* self, NeoVi* nvi) {
        var key = self.getKey();

        switch(key) {
            case '\n':
                nvi.exitFromComandMode();
                break;

            case 3:
            case 27:
                nvi.mode = kEditMode;
                break;

            case 8:
            case 127:
            case KEY_BACKSPACE:
                nvi.commandString.delete(-1);
                break;

            default:
                nvi.commandString = nvi.commandString + key.to_string();
                break;
        }
    }

    void view(NeoViWin* self, NeoVi* nvi) {
        if(nvi.mode == kCommandMode && self == nvi.activeWin) {
            self.commandModeView(nvi);
        }
        else {
            inherit(self, nvi);
        }
    }
    void input(NeoViWin* self, NeoVi* nvi) {
        if(nvi.mode == kCommandMode) {
            self.commandModeInput(nvi);
        }
        else {
            inherit(self, nvi);
        }
    }
}

impl NeoVi version 12
{
    void enterComandMode(NeoVi* self) {
        self.mode = kCommandMode;
        self.commandString = string("");
    }
    void exitFromComandMode(NeoVi* self) {
        if(self.commandString.index("w", -1) != -1) {
            self.activeWin.writeFile();
        }
        if(self.commandString.index("q", -1) != -1) {
            bool writed = self.activeWin.writed;

            if(!writed || self.commandString.index("!", -1) != -1) {
                if(self.wins.length() == 1) {
                    self.appEnd = true;
                }
                else {
                    self.closeActiveWin();
                }
            }
        }
        if(self.commandString.index("sp", -1) == 0) {
            self.activateFiler();
        }

        self.mode = kEditMode;
    }
    initialize() {
        inherit(self);

        self.commandString = string("");

        self.events.replace(':', lambda(NeoVi* self, int key) {
            self.enterComandMode();
        });
    }

    /// implemeted after ///
    void activateFiler(NeoVi* self) {
    }
}
