#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 7
{
    void deleteLines(VigWin* self, int head, int tail, Vig* vig)
    {
        self.pushUndo();
        self.texts.delete_range(head, tail);
    }
    void deleteOneLine(VigWin* self, Vig* vig) {
        var line = self.texts.item(self.cursorY, null);
        if(line != null) {
            self.pushUndo();
            vig.yank.reset();
            vig.yank.push_back(clone line);
            vig.yankKind = kYankKindLine;
            self.texts.delete(self.cursorY);
        }
    }

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

        self.events.replace('d', lambda(Vig* self, int key) 
        {
            var key2 = getch();

            if(key2 == 'd') {
                self.activeWin.deleteOneLine(self);
            }
        });

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
