#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 12
{
}

impl Vig version 12
{
    initialize() {
        inherit(self);

        self.events.replace('%', lambda(Vig* self, int key) {
        });
    }
}
