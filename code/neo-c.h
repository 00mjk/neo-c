extern "C"
{
void*% xcalloc(int num, long size);
void*% xmalloc(long size);
void*% xmemdup(void* mem);
void xfree(void*% mem);

char* xmemcpy(void* mem, void* mem2, long size);
char* memcpy(void* mem, void* mem2, long size);

char*% xasprintf(char* str, ...);

typedef char*% string;

extern string operator+(char* left, char* right);
extern string string(char* str);

/// vector ///
struct vector<T> 
{
    T*% items;
    int len;
    int size;
};

impl vector<T> 
{
    initialize() 
    {
        self.size = 16;
        self.len = 0;
        self.items = new T[self.size];
    }
    
    void push_back(vector<T>* self, T item) {
        if(self.len == self.size) {
            var new_size = self.size;
            var items = self.items;

            self.items = new T[new_size];

            memcpy((char*)self.items, (char*)items, 8*self.size);
            self.size = new_size;
        }

        self.items[self.len] = item;
        self.len++;
    }

    T item(vector<T>* self, int index) {
        self.items[index]
    }
    void each(vector<T>*  self, void lambda(T&,int) block) {
        for(int i=0; i<self.len; i++) {
            block(self.items[i], i);
        };
    }

    template <R> vector<R>*% map(vector<T>* self, R lambda(T&) block)
    {
        var result = new vector<R>.initialize();

        self.each {
            result.push_back(block(it));
        }

        result
    }
}

#define count_vector_element_number(T, ...) {  T tmp[] = { __VA_ARGS__ }; sizeof(tmp) / sizeof(T) }

/// others ///
extern void xassert(char* msg, bool exp);
}
