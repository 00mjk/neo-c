
int xgetmaxx();
int xgetmaxy();

struct VigWin 
{
    WINDOW* win;
    list<string>*% texts;
    int y;
    int x;
    int width;
    int height;
};

struct Vig 
{
    vector<VigWin*%>*% wins;
    VigWin* active_win;
};

impl VigWin 
{
    initialize(int y, int x, int width, int height);
    finalize();
    void view(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

impl Vig 
{
    void init_curses(Vig* self);
    initialize();
    finalize();
    int main_loop(Vig* self);
}

