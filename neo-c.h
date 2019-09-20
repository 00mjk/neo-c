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

/// int ///
impl int
{
    inline bool equals(int left, int right) {
        return left == right;
    }
}

/// string ///
impl char
{
    inline bool equals(char* left, char* right)
    {
        return strcmp(left, right) == 0;
    }
}

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

    bool equals(vector<T>* left, vector<T>* right)
    {
        if(left.len != right.len) {
            return false;
        }

        for(int i=0; i<left.len; i++) {
            if(!left.item(i).equals(right.item(i)))
            {
                return false;
            }
        }

        return true;
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

    puts("{");
    puts("var result = new vector<typeof(#{params[0]})>.initialize();");

    params.each do |param|
        puts("result.push_back(#{param});");
    end

    puts("result");
    puts("}");
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
    int length;
}

impl list <T>
{
    initialize() {
        self.head = null;
        self.tail = null;
        self.length = 0;
    }

    finalize() {
        var it = self.head;
        while(it != null) {
            if(ismanaged(it.item)) {
                delete it.item;
            }
            var prev_it = it;
            it = it.next;
            delete prev_it;
        }
    }

    void push_back(list<T>* self, T item) {
        if(self.length == 0) {
            list_item<T>*$ litem = new list_item<T>;
            litem.prev = null;
            litem.next = null;
            litem.item = item;
            
            self.tail = litem;
            self.head = litem;
        }
        else if(self.length == 1) {
            list_item<T>*$ litem = new list_item<T>;

            litem.prev = self.head;
            litem.next = null;
            litem.item = item;
            
            self.tail = litem;
            self.head.next = litem;
        }
        else {
            list_item<T>*$ litem = new list_item<T>;

            litem.prev = self.tail;
            litem.next = null;
            litem.item = item;
            
            self.tail.next = litem;
            self.tail = litem;
        }

        self.length++;
    }

    void insert(list<T>* self, int position, T item)
    {
        if(position < 0) {
            position += self.length + 1;
        }
        if(position < 0) {
            position = 0;
        }
        if(self.length == 0 || position >= self.length) 
        {
            self.push_back(item);
            return;
        }

        if(position == 0) {
            list_item<T>$* litem = new list_item<T>;

            litem.prev = null;
            litem.next = self.head;
            litem.item = item;
            
            self.head.prev = litem;
            self.head = litem;

            self.length++;
        }
        else if(self.length == 1) {
            var litem = new list_item<T>;

            litem.prev = self.head;
            litem.next = self.tail;
            litem.item = item;
            
            self.tail.prev = litem;
            self.head.next = litem;

            self.length++;
        }
        else {
            list_item<T>?* it = self.head;
            var i = 0;
            while(it != null) {
                if(position == i) {
                    list_item<T>$* litem = new list_item<T>;

                    litem.prev = it.prev;
                    litem.next = it;
                    litem.item = item;

                    it.prev.next = litem;
                    it.prev = litem;

                    self.length++;
                }

                it = it.next;
                i++;
            }
        }
    }
    
    bool item(list<T>* self, int position, T* result) {
        list_item<T>?* it = self.head;
        var i = 0;
        while(it != null) {
            if(position == i) {
                *result = it.item;
                return true;
            }
            it = it.next;
            i++;
        };

        return false;
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

    bool equals(list<T>* left, list<T>* right)
    {
        if(left.length != right.length) {
            return false;
        }

        list_item<T>?* it = left.head;
        list_item<T>?* it2 = right.head;

        while(it != null) {
            it.item.equals(it2.item);

            it = it.next;
            it2 = it2.next;
        }

        return true;
    }
}

ruby_macro list {
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

    puts("{");
    puts("var result = new list<typeof(#{params[0]})>.initialize();");

    params.each do |param|
        puts("result.push_back(#{param});");
    end

    puts("result");
    puts("}");
}


struct tuple1<T>
{
    T&$ v1;
}

impl tuple1 <T>
{
    initialize() {
    }

    finalize() {
        if(ismanaged(self.v1))
        {
            delete self.v1;
        }
    }

    bool equals(tuple1<T>* left, tuple1<T>* right)
    {
        if(!left.v1.equals(right.v1)) {
            return false;
        }

        return true;
    }
}

struct tuple2<T, T2>
{
    T&$ v1;
    T2&$ v2;
}

impl tuple2 <T, T2>
{
    initialize() {
    }

    finalize() {
        if(ismanaged(self.v1))
        {
            delete self.v1;
        }
        if(ismanaged(self.v2))
        {
            delete self.v2;
        }
    }

    bool equals(tuple2<T, T2>* left, tuple2<T, T2>* right)
    {
        if(!left.v1.equals(right.v1)) {
            return false;
        }
        if(!left.v2.equals(right.v2)) {
            return false;
        }

        return true;
    }
}

struct tuple3<T, T2, T3>
{
    T&$ v1;
    T2&$ v2;
    T3&$ v3;
}

impl tuple3 <T, T2, T3>
{
    initialize() {
    }

    finalize() {
        if(ismanaged(self.v1)) {
            delete self.v1;
        }
        if(ismanaged(self.v2)) {
            delete self.v2;
        }
        if(ismanaged(self.v3)) {
            delete self.v3;
        }
    }

    bool equals(tuple3<T, T2, T3>* left, tuple3<T, T2, T3>* right)
    {
        if(!left.v1.equals(right.v1)) {
            return false;
        }
        if(!left.v2.equals(right.v2)) {
            return false;
        }
        if(!left.v3.equals(right.v3)) {
            return false;
        }

        return true;
    }
}

struct tuple4<T, T2, T3, T4>
{
    T&$ v1;
    T2&$ v2;
    T3&$ v3;
    T4&$ v3;
}

impl tuple4 <T, T2, T3, T4>
{
    initialize() {
    }

    finalize() {
        if(ismanaged(self.v1)) {
            delete self.v1;
        }
        if(ismanaged(self.v2)) {
            delete self.v2;
        }
        if(ismanaged(self.v3)) {
            delete self.v3;
        }
        if(ismanaged(self.v4)) {
            delete self.v4;
        }
    }

    bool equals(tuple4<T, T2, T3, T4>* left, tuple4<T, T2, T3, T4>* right)
    {
        if(!left.v1.equals(right.v1)) {
            return false;
        }
        if(!left.v2.equals(right.v2)) {
            return false;
        }
        if(!left.v3.equals(right.v3)) {
            return false;
        }
        if(!left.v4.equals(right.v4)) {
            return false;
        }

        return true;
    }
}

ruby_macro tuple {
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

    if params.length() == 1
    then
        puts("{");
        puts("var result = new tuple1<typeof(#{params[0]})>;");

        puts("result.v1 = #{params[0]};");

        puts("result");
        puts("}");
    end

    if params.length() == 2 
    then
        puts("{");
        puts("var result = new tuple2<typeof(#{params[0]}),typeof(#{params[1]})>;");

        puts("result.v1 = #{params[0]};");
        puts("result.v2 = #{params[1]};");

        puts("result");
        puts("}");
    end

    if params.length() == 3
    then
        puts("{");
        puts("var result = new tuple3<typeof(#{params[0]}),typeof(#{params[1]}),typeof(#{params[2]})>;");

        puts("result.v1 = #{params[0]};");
        puts("result.v2 = #{params[1]};");
        puts("result.v3 = #{params[2]};");

        puts("result");
        puts("}");
    end

    if params.length() == 4
    then
        puts("{");
        puts("var result = new tuple4<typeof(#{params[0]}),typeof(#{params[1]}),typeof(#{params[2]}),typeof(#{params[3]})>;");

        puts("result.v1 = #{params[0]};");
        puts("result.v2 = #{params[1]};");
        puts("result.v3 = #{params[2]};");
        puts("result.v4 = #{params[3]};");

        puts("result");
        puts("}");
    end
}

/// others ///
extern void xassert(char* msg, bool exp);
}
