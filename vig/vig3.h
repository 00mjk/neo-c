#include "vig2.h"

impl VigWin version 3 {
    void insertModeView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);
    void insertText(VigWin* self, string key);
    void inputInsertMode(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

struct Vig version 3 {
    int mode;
};

impl Vig version 3 {
    initialize();
    int main_loop(Vig* self);
}
