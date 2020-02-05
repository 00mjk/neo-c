#include "tiny.h"

int main(int argc, char** argv)
{
    var vm = new TinyVM.initialize("test.ti");

    if(!vm.parser()) {
        return 1;
    }

    if(!vm.run()) {
        return 1;
    }
    
    0
}
