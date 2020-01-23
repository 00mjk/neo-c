#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "neo-vi.h"

impl NeoViWin version 7
{
    void pasteAfterCursor(NeoViWin* self, NeoVi* nvi) {
        if(nvi.yankKind == kYankKindLine) {
            self.pushUndo();

            nvi.yank.each {
                self.texts.insert(
                    self.scroll+self.cursorY+it2+1, 
                    clone it);
            }
        }
        else {
            self.pushUndo();

            var line = self.texts.item(self.scroll+self.cursorY, null);

            var yank_first_line = nvi.yank.item(0, null);

            var new_line = line.substring(0, self.cursorX+1) 
                                + yank_first_line 
                                + line.substring(self.cursorX-1, -1);

            self.texts.replace(self.scroll+self.cursorY, clone new_line);
        }
    }

    void pasteBeforeCursor(NeoViWin* self, NeoVi* nvi) {
        if(nvi.yankKind == kYankKindLine) {
            self.pushUndo();
            nvi.yank.each {
                self.texts.insert(
                    self.scroll+self.cursorY+it2, 
                    clone it);
            }
        }
        else {
            self.pushUndo();

            var line = self.texts.item(self.scroll+self.cursorY, null);

            var yank_first_line = nvi.yank.item(0, null);

            var new_line = line.substring(0, self.cursorX) 
                                + yank_first_line 
                                + line.substring(self.cursorX, -1);

            self.texts.replace(self.scroll+self.cursorY, clone new_line);
        }
    }
}

impl NeoVi version 7 
{
    initialize() {
        inherit(self);

        self.yank = new list<wstring>.initialize();

        self.yankKind = 0;

        self.events.replace('p', lambda(NeoVi* self, int key) 
        {
            self.activeWin.pasteAfterCursor(self);
        });

        self.events.replace('P', lambda(NeoVi* self, int key) 
        {
            self.activeWin.pasteBeforeCursor(self);
        });
    }
}
