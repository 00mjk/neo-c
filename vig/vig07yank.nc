#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 7
{
    void pasteAfterCursor(VigWin* self, Vig* vig) {
        if(vig.yankKind == kYankKindLine) {
            self.pushUndo();

            vig.yank.each {
                self.texts.insert(
                    self.scroll+self.cursorY+it2+1, 
                    clone it);
            }
        }
        else {
            self.pushUndo();

            var line = self.texts.item(self.scroll+self.cursorY, null);

            var yank_first_line = vig.yank.item(0, null);

            var new_line = line.substring(0, self.cursorX+1) 
                                + yank_first_line 
                                + line.substring(self.cursorX-1, -1);

            self.texts.replace(self.scroll+self.cursorY, clone new_line);
        }
    }

    void pasteBeforeCursor(VigWin* self, Vig* vig) {
        if(vig.yankKind == kYankKindLine) {
            self.pushUndo();
            vig.yank.each {
                self.texts.insert(
                    self.scroll+self.cursorY+it2, 
                    clone it);
            }
        }
        else {
            self.pushUndo();

            var line = self.texts.item(self.scroll+self.cursorY, null);

            var yank_first_line = vig.yank.item(0, null);

            var new_line = line.substring(0, self.cursorX) 
                                + yank_first_line 
                                + line.substring(self.cursorX, -1);

            self.texts.replace(self.scroll+self.cursorY, clone new_line);
        }
    }
}

impl Vig version 7 
{
    initialize() {
        inherit(self);

        self.yank = new list<wstring>.initialize();

        self.yankKind = 0;

        self.events.replace('p', lambda(Vig* self, int key) 
        {
            self.activeWin.pasteAfterCursor(self);
        });

        self.events.replace('P', lambda(Vig* self, int key) 
        {
            self.activeWin.pasteBeforeCursor(self);
        });
    }
}