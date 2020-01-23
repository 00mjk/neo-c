#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <locale.h>
#include <wctype.h>

#include "neo-vi.h"

impl NeoViWin version 14
{
    initialize(int y, int x, int width, int height) {
        inherit(self, y, x, width, height);

        self.inputedKeys = new vector<int>.initialize();
        self.autoInput = false;
        self.autoInputIndex = 0;
    }
    
    int getKey(NeoViWin* self) {
        if(self.autoInput && self.savedInputedKeys) {
            if(self.autoInputIndex < self.savedInputedKeys.length()) {
                int key = self.savedInputedKeys.item(self.autoInputIndex, -1);
                self.autoInputIndex++;

                return key;
            }
            else {
                if(self.pressedDot) {
                    self.autoInputIndex = 0;
                    self.autoInput = false;
                    self.pressedDot = false;

                    int key = wgetch(self.win);
                    self.inputedKeys.push_back(key);
                    return key;
                }
                else {
                    self.savedInputedKeys.reset();
                    self.autoInput = false;
                    self.autoInputIndex = 0;
                    self.pressedDot = false;

                    int key = wgetch(self.win);
                    self.inputedKeys.push_back(key);
                    return key;
                }
            }
        }
        else {
            self.pressedDot = false;
            int key = wgetch(self.win);
            self.inputedKeys.push_back(key);
            return key;
        }

    }

    void clearInputedKey(NeoViWin* self) {
        self.inputedKeys.reset();
    }

    void saveInputedKey(NeoViWin* self) {
        if(!self.autoInput && !self.pressedDot) {
            self.savedInputedKeys = clone self.inputedKeys;
        }
    }
}

impl NeoVi version 14
{
    initialize() {
        inherit(self);

        self.events.replace('.', lambda(NeoVi* self, int key) 
        {
            self.activeWin.autoInput = true;
            self.activeWin.pressedDot = true;
        });
    }
}
