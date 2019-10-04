struct win {
    win:WINDOW*;
    texts:list<int>*;
}

impl win {
    initialize() ;
def view() ;

}
struct mvi {
    numWinHeight:int;
    numWinWidth:int;

    wins:vector<win*$>$*;
}

impl mvi {
    initialize() ;
finalize() ;
def main(self:mvi*):int ;

}
