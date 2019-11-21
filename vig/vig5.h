
struct VigWin version 5
{
    vector<list<wstring>*%>*% undo;
};

impl VigWin version 5
{
    initialize(int y, int x, int width, int height);

    void undo(VigWin* self);
    void pushUndo(VigWin* self);
}

impl Vig version 5
{
    initialize();
    void enterInsertMode(Vig* self);
    void exitFromInsertMode(Vig* self);
}
