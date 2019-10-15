def xgetmaxx(): int
;
def xgetmaxy(): int
;
struct win {
    win:WINDOW*;
    texts:list<string>*%;
}

impl win {
    initialize(width:int, height:int) ;
finalize() ;
def view(self:win*) ;
def input(self:win*) ;

}
struct vivi {
    wins:vector<win*%>*%;
    active_win:win*;
}

impl vivi {
    initialize() ;
finalize() ;
def main_loop(self:vivi*):int ;

}
