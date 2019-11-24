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
        self.undoData = new vector<UndoData*%>.initialize();
    }

    void undo(VigWin* self) {
        var undo_data = self.undoData.pop_back(null);

        if(undo_data != null) {
            self.cursorX = undo_data.cursorX;
            self.cursorY = undo_data.cursorY;

            var old_line = self.texts.item(self.cursorY, null);

            var new_line = old_line.subString(0, self.cursorX) + old_line.subString(self.cursorX + undo_data.text.length(), -1);

            self.texts.replace(self.cursorY, new_line);
        }
    }

    void insertText(VigWin* self, wstring text) 
    {
        var undo_data = self.undoData.item(-1, null);

        if(undo_data != null) {
            undo_data.text = undo_data.text + text;
        }

        inherit(self, text);
    }
}

impl Vig version 5
{
    initialize() {
        inherit(self);

        self.events.replace('u', lambda(Vig* self, int key) 
        {
            self.activeWin.undo();
        });
    }
    void enterInsertMode(Vig* self) {
        inherit(self);

        var undo_data = new UndoData;
        undo_data.text = wstring("");

        undo_data.cursorX = self.activeWin.cursorX;
        undo_data.cursorY = self.activeWin.cursorY;

        self.activeWin.undoData.push_back(undo_data);
    }
    void exitFromInsertMode(Vig* self) {
        inherit(self);
    }
}
