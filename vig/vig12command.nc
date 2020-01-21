#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 12
{
    void commandModeView(VigWin* self, Vig* vig) {
        werase(self.win);

        self.textsView(vig);

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, ":%s", vig.commandString);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }
    void commandModeInput(VigWin* self, Vig* vig) {
        var key = self.getKey();

        switch(key) {
            case '\n':
                vig.exitFromComandMode();
                break;

            case 3:
            case 27:
                vig.mode = kEditMode;
                break;

            case 8:
            case 127:
            case KEY_BACKSPACE:
                vig.commandString.delete(-1);
                break;

            default:
                vig.commandString = vig.commandString + key.to_string();
                break;
        }
    }

    void view(VigWin* self, Vig* vig) {
        if(vig.mode == kCommandMode && self == vig.activeWin) {
            self.commandModeView(vig);
        }
        else {
            inherit(self, vig);
        }
    }
    void input(VigWin* self, Vig* vig) {
        if(vig.mode == kCommandMode) {
            self.commandModeInput(vig);
        }
        else {
            inherit(self, vig);
        }
    }
}

impl Vig version 12
{
    void enterComandMode(Vig* self) {
        self.mode = kCommandMode;
        self.commandString = string("");
    }
    void exitFromComandMode(Vig* self) {
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

        self.events.replace(':', lambda(Vig* self, int key) {
            self.enterComandMode();
        });
    }

    /// implemeted after ///
    void activateFiler(Vig* self) {
    }
}
