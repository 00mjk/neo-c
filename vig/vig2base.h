
struct VigWin version 2 
{
    int cursorY;
    int cursorX;
};

impl VigWin version 2 
{
    void textsView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
    wchar_t* getCursorLine(VigWin* self);
    int getCursorLineLength(VigWin* self);
    void forward(VigWin* self);
    void backward(VigWin* self);
    void prevLine(VigWin* self);
    void nextLine(VigWin* self);
    void moveAtHead(VigWin* self);
    void moveAtTail(VigWin* self);
}

struct Vig version 2 
{
    vector<void (*lambda)(Vig*, int)>*% events;
    bool appEnd;
}

impl Vig version 2 
{
    initialize();

    int main_loop(Vig* self);
}
