#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>

#include "vig.h"

impl VigWin version 8 
{
    initialize(int y, int x, int width, int height) {
        inherit(self, y, x, width, height);

        self.visualModeHead = 0;
    }

    void visualModeView(VigWin* self, Vig* vig)
    {
        int maxy = getmaxy(self.win);
        int maxx = getmaxx(self.win);

        werase(self.win);

        self.texts
            .sublist(self.scroll, self.scroll+maxy-1)
            .each 
        {
            var line = it.substring(0, maxx-1);

            if(it2 >= (self.visualModeHead-self.scroll) && it2 <= self.cursorY) {
                wattron(self.win, A_REVERSE);
                mvwprintw(self.win, it2, 0, "%s", line.to_string(""));
                wattroff(self.win, A_REVERSE);
            }
            else if(it2 <= (self.visualModeHead-self.scroll) && it2 >= self.cursorY) {
                wattron(self.win, A_REVERSE);
                mvwprintw(self.win, it2, 0, "%s", line.to_string(""));
                wattroff(self.win, A_REVERSE);
            }
            else {
                mvwprintw(self.win, it2, 0, "%s", line.to_string(""));
            }
        }

        wattron(self.win, A_REVERSE);
        mvwprintw(self.win, self.height-1, 0, "VISUAL MODE x %d y %d", self.cursorX, self.cursorY);
        wattroff(self.win, A_REVERSE);

        wrefresh(self.win);
    }

    void view(VigWin* self, Vig* vig) {
        if(vig.mode == kVisualMode) {
            self.visualModeView(vig);
        }
        else {
            inherit(self, vig);
        }
    }

    void yankOnVisualMode(VigWin* self, Vig* vig) {
        int head = self.visualModeHead;
        int tail = self.scroll+self.cursorY;

        if(head >= tail) {
            int tmp = tail;
            tail = head;
            head = tmp;
        }

        vig.yank.reset();
        self.texts.sublist(head, tail+1).each {
            vig.yank.push_back(clone it);
        }
    }

    void indentVisualMode(VigWin* self, Vig* vig) {
        self.pushUndo();

        int head = self.visualModeHead;
        int tail = self.scroll+self.cursorY;

        if(head >= tail) {
            int tmp = tail;
            tail = head;
            head = tmp;
        }

        self.texts.sublist(head, tail+1).each {
            wstring new_line = wstring("    ") + it;

            self.texts.replace(it2+head, new_line);
        }

        self.modifyOverCursorXValue();
    }

    void backIndentVisualMode(VigWin* self, Vig* vig) 
    {
        self.pushUndo();

        int head = self.visualModeHead;
        int tail = self.scroll+self.cursorY;

        if(head >= tail) {
            int tmp = tail;
            tail = head;
            head = tmp;
        }

        self.texts.sublist(head, tail+1).each {
            wstring new_line = wstring("") + it;

            if(new_line.index(wstring("    "), -1) == 0) {
                for(int i=0; i<4; i++) {
                    new_line.delete(0);
                }

                self.texts.replace(it2+head, new_line);
            }
        }

        self.modifyOverCursorXValue();
    }

    void deleteOnVisualMode(VigWin* self, Vig* vig) {
        self.pushUndo();

        self.yankOnVisualMode(vig);

        int head = self.visualModeHead;
        int tail = self.scroll+self.cursorY;

        if(head >= tail) {
            int tmp = tail;
            tail = head;
            head = tmp;
        }

        self.texts.delete_range(head, tail+1);

        if(self.scroll+self.cursorY >= self.visualModeHead) {
            self.cursorY -= tail - head;

            self.modifyUnderCursorYValue();
        }
    }

    void inputVisualMode(VigWin* self, Vig* vig)
    {
        var key = wgetch(self.win);

        switch(key) {
            case 'l':
                self.forward();
                break;
            
            case 'h':
                self.backward();
                break;

            case 'j':
                self.nextLine();
                break;
        
            case 'k':
                self.prevLine();
                break;

            case '0':
                self.moveAtHead();
                break;

            case '$':
                self.moveAtTail();
                break;

            case 'C'-'A'+1:
                vig.exitFromVisualMode();
                break;

            case 'y':
                self.yankOnVisualMode(vig);
                vig.exitFromVisualMode();
                break;

            case 'd':
                self.deleteOnVisualMode(vig);
                vig.exitFromVisualMode();
                break;

            case '>':
                self.indentVisualMode(vig);
                vig.exitFromVisualMode();
                break;

            case '<':
                self.backIndentVisualMode(vig);
                vig.exitFromVisualMode();
                break;

            case 27:
                vig.exitFromVisualMode();
                break;
        }
    }

    void input(VigWin* self, Vig* vig) {
        if(vig.mode == kVisualMode) {
            self.inputVisualMode(vig);
        }
        else {
            inherit(self, vig);
        }
    }
}

impl Vig version 8
{
    void enterVisualMode(Vig* self) {
        self.mode = kVisualMode;
        self.activeWin.visualModeHead = self.activeWin.cursorY + self.activeWin.scroll;
    }
    void exitFromVisualMode(Vig* self) {
        self.mode = kEditMode;
    }

    initialize() {
        inherit(self);

        self.events.replace('V', lambda(Vig* self, int key) 
        {
            self.enterVisualMode();
        });
    }
}
