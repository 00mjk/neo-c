#include "common.h"

int main(int argc, char* argv[])
{
    bool no_load_fudamental_classes = false;

    setlocale(LC_ALL, "");

    set_signal_shell();

    var types = new vector<sCLType*%>.initialize();

    clover3_init(no_load_fudamental_classes);

    heap_init(HEAP_INIT_SIZE, HEAP_HANDLE_INIT_SIZE);

    var ayataka = new Ayataka.initialize();

    if(!ayataka.main_loop()) {
        ayataka.exit();
        fprintf(stderr, "app is faield. exited\n");
        exit(1);
    }

    heap_final();

    clover3_final();

    return 0;
}
