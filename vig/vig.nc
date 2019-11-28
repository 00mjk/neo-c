#include "vig.h"

int main(int argc, char** argv)
{
    var vig = new Vig.initialize();
    vig.openFile(argc-1, argv+1);
    int result = vig.main_loop()
    result
}
