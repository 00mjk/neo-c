#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <wctype.h>

#include "vig.h"

impl VigWin version 5
{
    initialize(int y, int x, int width, int height) 
    {
        inherit(self, y, x, width, height);
        self.undo = new vector<list<wstring>*%>;
    }

    void undo(VigWin* self) {
    }
    void pushUndo(VigWin* self) {
    }
}

impl Vig version 5
{
    initialize() {
        inherit(self);

        self.events.replace('u', lambda(Vig* self, int key) 
        {
            self.active_win.undo();
        });
    }
    void enterInsertMode(Vig* self) {
        inherit(self);
        self.active_win.pushUndo();
    }
    void exitFromInsertMode(Vig* self) {
        inherit(self);
    }
}
