#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <locale.h>
#include <wctype.h>

#include "vig.h"

impl VigWin version 14
{
    initialize(int y, int x, int width, int height) {
        inherit(self, y, x, width, height);

        self.inputedKeys = new vector<int>.initialize();
        self.autoInput = FALSE;
        self.autoInputIndex = 0;
    }
    
    int getKey(VigWin* self) {
        if(self.autoInput) {
            if(self.autoInputIndex < self.inputedKeys.length()) {
                int key = self.inputedKeys.item(self.autoInputIndex, -1);
                self.autoInputIndex++;

                return key;
            }
            else {
                self.inputedKeys.reset();
                self.autoInput = FALSE;
            }
        }
        else {
            int key = wgetch(self.win);
            self.inputedKeys.push_back(key);
            return key;
        }
    }

    void clearInputedKey(VigWin* self) {
        self.inputedKeys.reset();
    }
}

impl Vig version 14
{
    initialize() {
        inherit(self);

        self.events.replace('.', lambda(Vig* self, int key) 
        {
        });
    }
}
