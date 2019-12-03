
enum eMode { kSearchMode = kVisualMode + 1 };

struct Vig version 9
{
    wstring searchString;
};

impl VigWin version 9
{
    void searchModeView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);

    void inputSearchlMode(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

impl Vig version 9
{
    void enterSearchMode(Vig* self);
    void exitFromSearchMode(Vig* self);

    initialize();
}

