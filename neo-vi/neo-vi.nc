#include "neo-vi.h"

int main(int argc, char** argv)
{
    var nvi = new NeoVi.initialize();
    
    int line_num = -1;
    char* file_names[128];
    int num_file_names = 0;
    
    for(int i=1; i<argc; i++) {
        if(argv[i][0] == '+') {
            sscanf(argv[i], "+%d", &line_num);
            line_num--;

            if(line_num < 0) {
                line_num = 0;
            }
        }
        else {
            file_names[num_file_names] = argv[i];
            num_file_names++;
            
            if(num_file_names >= 128) {
                fprintf(stderr, "overflow file names\n");
                exit(2);
            }
        }
    }
    nvi.openFile(num_file_names, file_names, line_num);
    int result = nvi.main_loop()
    result
}