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
                    self.cursorY+it2+1, 
                    clone it);
            }
        }
    }

    void pasteBeforeCursor(VigWin* self, Vig* vig) {
        if(vig.yankKind == kYankKindLine) {
            self.pushUndo();
            vig.yank.each {
                self.texts.insert(
                    self.cursorY+it2, 
                    clone it);
            }
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
