#include "common.h"

impl TinyParser 
{
    initialize(char* source_name)
    {
        self.sourceName = string(source_name);
        self.sourceLine = 1;
        self.source = new buffer.initialize();
        
        FILE* f = fopen(source_name, "r");
        
        if(f) {
            char line[4096];
            while(fgets(line, 4096, f) != null) {
                line[strlen(line)-1] = '\n';
                line[strlen(line)] = '\0';
                self.source.append_str(line);
            }
        }
        
        fclose(f);
        
        self.p = self.source.buf;
    }
    void debug(TinyParser* self) {
        printf(self.source.buf);
    }
}
