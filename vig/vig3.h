
impl VigWin version 3 
{
    initialize(int y, int x, int width, int height);
    void insertModeView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);
    void insertText(VigWin* self, wstring key);
    void inputInsertMode(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

struct Vig version 3 
{
    int mode;
};

impl Vig version 3 
{
    void enterInsertMode(Vig* self);
    void exitFromInsertMode(Vig* self);

    initialize();
    int main_loop(Vig* self);
}
