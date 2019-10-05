struct win {
    win:WINDOW*;
    texts:list<int>*;
}

impl win {
    initialize() ;

}
struct mvi {
    numWinHeight:int;
    numWinWidth:int;

    wins:vector<win*%>%*;
}

impl mvi {
    initialize() ;
finalize() ;

}
struct mvi {
    b:int;
}

impl mvi version 2 {
    initialize() ;
finalize() ;
def main(self:mvi*):int ;

}
