#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <wctype.h>

#include "vig4.h"

impl VigWin version 5
{
    void undo(VigWin* self) {
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
}
