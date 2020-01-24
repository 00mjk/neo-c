#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>
#include <wctype.h>

#include "neo-vi.h"

impl NeoViWin version 10
{
    void modifyCursorOnDeleting(NeoViWin* self) {
        self.modifyOverCursorYValue();
        self.modifyOverCursorXValue();
    }

    void deleteLines(NeoViWin* self, int head, int tail, NeoVi* nvi)
    {
        self.pushUndo();
        self.texts.delete_range(head, tail);
        self.modifyCursorOnDeleting();
    }

    void deleteOneLine(NeoViWin* self, NeoVi* nvi) {
        var line = self.texts.item(self.scroll+self.cursorY, null);
        if(line != null) {
            self.pushUndo();
            nvi.yank.reset();
            nvi.yank.push_back(clone line);
            nvi.yankKind = kYankKindLine;
            self.texts.delete(self.scroll+self.cursorY);

            self.modifyCursorOnDeleting();
        }
    }

    void deleteWord(NeoViWin* self, NeoVi* nvi) {
        wstring& line = self.texts.item(self.scroll+self.cursorY, wstring(""));

        if(wcslen(line) == 0) {
            self.deleteOneLine(nvi);
        }
        else {
            int x = self.cursorX;

            wchar_t* p = line + x;

            if((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z'))
            {
                while((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z'))
                {
                    p++;
                    x++;

                    if(x >= line.length())
                    {
                        break;
                    }
                }
            }
            else if((*p >= '!' && *p <= '/') || (*p >= ':' && *p <= '@') || (*p >= '{' && *p <= '~' ))
            {
                while((*p >= '!' && *p <= '/') || (*p >= ':' && *p <= '@') || (*p >= '{' && *p <= '~' ))
                {
                    p++;
                    x++;

                    if(x >= line.length())
                    {
                        break;
                    }
                }
            }
            else if(iswalpha(*p)) {
                while(iswalpha(*p)) {
                    p++;
                    x++;

                    if(x >= line.length())
                    {
                        break;
                    }
                }
            }
            else if(iswblank(*p)) {
                while(iswblank(*p)) {
                    p++;
                    x++;

                    if(x >= line.length())
                    {
                        break;
                    }
                }
            }
            else if(iswdigit(*p)) {
                while(iswdigit(*p)) {
                    p++;
                    x++;

                    if(x >= line.length())
                    {
                        break;
                    }
                }
            }

            nvi.yank.reset();
            nvi.yank.push_back(line.substring(self.cursorX, x));
            nvi.yankKind = kYankKindNoLine;
            line.delete_range(self.cursorX, x);

            self.modifyCursorOnDeleting();
        }
    }
    void deleteCursorCharactor(NeoViWin* self) {
        self.pushUndo();

        var line = self.texts.item(self.scroll+self.cursorY, null);
        line.delete(self.cursorX);

        self.modifyOverCursorXValue();
    }
    void joinLines(NeoViWin* self) {
        self.pushUndo();

        if(self.scroll+self.cursorY+1 < self.texts.length()) {
            var line = self.texts.item(self.scroll+self.cursorY, null);
            var next_line = self.texts.item(self.scroll+self.cursorY+1, null);

            self.texts.replace(self.scroll+self.cursorY, line + next_line);
            self.texts.delete(self.scroll+self.cursorY+1);
        }

        self.modifyOverCursorXValue();
    }
}

impl NeoVi version 10
{
    initialize() {
        inherit(self);

        self.events.replace('d', lambda(NeoVi* self, int key) {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case 'd':
                    self.activeWin.deleteOneLine(self);
                    self.activeWin.writed = true;
                    break;
                
                case 'w':
                case 'e':
                    self.activeWin.pushUndo();
                    self.activeWin.deleteWord(self);
                    self.activeWin.writed = true;
                    break;
            }

            self.activeWin.saveInputedKey();
        });

        self.events.replace('c', lambda(NeoVi* self, int key) {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case 'w':
                case 'e':
                    self.activeWin.pushUndo();
                    self.activeWin.deleteWord(self);
                    self.enterInsertMode();
                    self.activeWin.writed = true;
                    break;
            }
        });
        self.events.replace('x', lambda(NeoVi* self, int key) {
            self.activeWin.deleteCursorCharactor();
            self.activeWin.writed = true;

            self.activeWin.saveInputedKey();
        });
        self.events.replace('J', lambda(NeoVi* self, int key) {
            self.activeWin.joinLines();
            self.activeWin.writed = true;

            self.activeWin.saveInputedKey();
        });
    }
}
