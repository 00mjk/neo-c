
enum { kYankKindLine, kYankKindNoLine };
enum eMode { kVisualMode = kInsertMode + 1 };

struct VigWin version 8
{
    int visualModeHead;
};


impl VigWin version 8 
{
    initialize(int y, int x, int width, int height);
    void visualModeView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);
    void inputVisualMode(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

impl Vig version 8
{
    void enterVisualMode(Vig* self);
    void exitFromVisualMode(Vig* self);
    initialize();
}
