#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 10
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

    void deleteWord(VigWin* self, Vig* vig) {
    }
}

impl Vig version 10
{
    initialize() {
        inherit(self);

        self.events.replace('d', lambda(Vig* self, int key) {
            var key2 = getch();

            switch(key2) {
                case 'd':
                    self.activeWin.deleteOneLine(self);
                    break;
                
                case 'w':
                    self.activeWin.deleteWord(self);
                    break;
            }
        });
    }
}
