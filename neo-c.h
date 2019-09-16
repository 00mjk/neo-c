extern "C"
{
typedef char*% string;

void*% xcalloc(int num, long size);
void*% xmalloc(long size);
void*% xmemdup(void* mem);
void xfree(void*% mem);

char* xmemcpy(void* mem, void* mem2, long size);
char* memcpy(void* mem, void* mem2, long size);

char*% xasprintf(char* str, ...);

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

    finalize()
    {
        if(isheap(T)) {
            for(int i=0; i<self.len; i++) {
                delete self.items[i];

            }
        }
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

    T& item(vector<T>* self, int index) {
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

struct list_item<T>
{
    T&$ item;
    struct list_item<T>*? prev;
    struct list_item<T>*?$ next;
}

struct list<T>
{
    list_item<T>*?$ head;
    list_item<T>*? tail;
}

impl list <T>
{
    initialize() {
        self.head = null;
        self.tail = null;
    }

    finalize() {
        var it = self.head;
        while(it != null) {
            if(isheap(it.item)) {
                delete it.item;
            }
            var prev_it = it;
            it = it.next;
            delete prev_it;
        }
    }

    void push_back(list<T>* self, T item) {
        if(self.head == self.tail)
        {
            if(self.head == null) 
            {
                var litem = new list_item<T>;
                litem.prev = null;
                litem.next = null;
                litem.item = item;
                
                self.tail = litem;
                self.head = litem;
            }
            else {
                var litem = new list_item<T>;
                litem.prev = self.head;
                litem.next = null;
                litem.item = item;
                
                self.tail = litem;
                self.head.next = litem;
            }
        }
        else {
            var litem = borrow new list_item<T>;

            litem.prev = self.tail;
            litem.next = null;
            litem.item = item;
            
            self.tail.next = litem;
            self.tail = litem;
        }
    }
    
    void each(list<T>* self, void lambda(T&,int) block) {
        list_item<T>?* it = self.head;
        var i = 0;
        while(it != null) {
            block(it.item, i);
            it = it.next;
            i++;
        };
    }
}

ruby_macro vec {
    params = [];
    param = "";
    dquort = false;
    squort = false;
    param_line = ENV['PARAMS'];
    n = 0;
    while(n < param_line.length()) do
        c = param_line[n];
        n = n + 1;

        if (dquort || squort) && c == "\\"
            param.concat(c);
            
            c = param_line[n];
            n = n + 1;

            param.concat(c);
        elsif c == "\""
            param.concat(c);
            dquort = !dquort
        elsif c == "'"
            param.concat(c);
            squort = !squort
        elsif dquort || squort
            param.concat(c);
        elsif c == ","
            if param.length() > 0
                params.push(param); param = ""
            end
        else
            param.concat(c);
        end
    end

    if param.length() != 0
        params.push(param);
    end

    puts("extern \"C\" {");
    puts("var result = new vector<typeof(#{params[0]})>.initialize();");

    params.each do |param|
        puts("result.push_back(#{param});");
    end

    puts("result");
    puts("}");
}

/// others ///
extern void xassert(char* msg, bool exp);
}
