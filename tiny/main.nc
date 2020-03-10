#include "common.h"

int main(int argc, char** argv)
{
    if(argc >= 2) {
        var vm = new TinyVM.initialize(argv[1]);

        if(!vm.parser()) {
            return 1;
        }

        if(!vm.run()) {
            return 1;
        }
    }
    
    0
}
