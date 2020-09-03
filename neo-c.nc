
/// others ///
void xassert(char* msg, bool exp) 
{
    printf(msg + "...");
    if(!exp) {
        puts("assertion failed");
        exit(2);
    }
    puts("OK");
}

void p(char* str)
{
    puts(str);
}

string xbasename(char* path)
{
    char* p = path + strlen(path);
    
    while(p >= path) {
        if(*p == '/') {
            break;
        }
        else {
            p--;
        }
    }
    
    if(p < path) {
        return string(path);
    }
    else {
        return string(p+1);  
    }
}

string xrealpath(char* path)
{
    char* result = realpath(path, null);

    string result2 = string(result);

    free(result);

    return result2;
}

/// buffer ///
impl buffer 
{
    initialize() {
        self.size = 128;
        self.buf = malloc(self.size);
        self.buf[0] = '\0'
        self.len = 0;
    }

    finalize() {
        free(self.buf);
    }

    int length(buffer* self) {
        return self.len;
    }

    void append(buffer* self, char* mem, size_t size)
    {
        if(self.len + size + 1 + 1 >= self.size) {
            int new_size = (self.size + size + 1) * 2;
            self.buf = realloc(self.buf, new_size);
            self.size = new_size;
        }

        ncmemcpy(self.buf + self.len, mem, size);
        self.len += size;

        self.buf[self.len] = '\0';
    }

    void append_char(buffer* self, char c)
    {
        if(self.len + 1 + 1 + 1 >= self.size) {
            int new_size = (self.size + 10 + 1) * 2;
            self.buf = realloc(self.buf, new_size);
            self.size = new_size;
        }

        self.buf[self.len] = c;
        self.len++;

        self.buf[self.len] = '\0';
    }

    void append_str(buffer* self, char* str)
    {
        self.append(str, strlen(str));
    }

    void append_nullterminated_str(buffer* self, char* str)
    {
        self.append(str, strlen(str));
        self.append_char('\0');
    }

    string to_string(buffer* self)
    {
        return (string(self.buf));
    }
}
