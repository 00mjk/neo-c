
struct VigWin version 5
{
    list<list<wstring>*%>%* undo;
    list<int>%* undoCursorX;
    list<int>%* undoCursorY;
    int undoIndex;
};

impl VigWin version 5
{
    initialize(int y, int x, int width, int height);

    void pushUndo(VigWin* self);

    void undo(VigWin* self);
    void redo(VigWin* self);
}

impl Vig version 5
{
    initialize();

    void enterInsertMode(Vig* self);
}
