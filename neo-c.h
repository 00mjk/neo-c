#include <limits.h>

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#ifndef __USE_XOPEN
#define __USE_XOPEN
#endif
#ifndef _USE_MISC
#define _USE_MISC
#endif
#ifndef __USE_BSD
#define __USE_BSD
#endif

#include <wchar.h>

#include <unistd.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pcre.h>

#define __STDC_LIMIT_MACROS 1
#define __STDC_CONSTANT_MACROS 1

#include <stdint.h>

void*% xcalloc(int num, long size);
void*% xmalloc(long size);
void*% xmemdup(void* mem);
void xfree(void*% mem);

char* xstrncpy(char* des, char* src, int size);
char* xstrncat(char* des, char* str, int size);
char* xmemcpy(void* mem, void* mem2, long size);

char*% xasprintf(char* str, ...);

typedef char*% string;
typedef wchar_t*% wstring;

extern string string(char* str);
extern wstring wstring(char* str);

void *% debug_xcalloc(int num, long nsize, char* type_name, char* sname, int sline, char* fun_name, char* real_fun_name);
void debug_show_none_freed_heap_memory();

void p(char* str);

/// int ///
impl int
{
    inline bool equals(int left, int right) 
    {
        return left == right;
    }

    inline int get_hash_key(int value)
    {
        return value;
    }
}

/// char* ///
extern string operator+(char* left, char* right);
extern string operator*(char* left, int num);

impl char
{
    inline bool equals(char* left, char* right)
    {
        return strcmp(left, right) == 0;
    }

    inline int length(char* str)
    {
        return strlen(str);
    }

    inline int get_hash_key(char* value)
    {
        int result = 0;
        char* p = value;
        while(*p) {
            result += (*p);
            p++;
        }
        return result;
    }
}

/// wchar_t ///
extern wstring operator+(wchar_t* left, wchar_t* right);
extern wstring operator*(wchar_t* left, int num);

impl wchar_t
{
    inline bool equals(wchar_t* left, wchar_t* right)
    {
        return wcscmp(left, right) == 0;
    }

    inline int length(wchar_t* str)
    {
        return wcslen(str);
    }

    inline int get_hash_key(wchar_t* value)
    {
        int result = 0;
        wchar_t* p = value;
        while(*p) {
            result += (*p);
            p++;
        }
        return result;
    }
}

/// buffer ///
struct buffer {
    char* buf;
    int len;
    int size;
};

impl buffer 
{
    initialize();
    finalize();

    void append(buffer* self, char* mem, size_t size);
    void append_char(buffer* self, char c);
    void append_str(buffer* self, char* str);

    string to_string(buffer* self);
}

/// regex ///
struct regex_struct {
    string str;
    pcre* regex;

    bool ignore_case;
    bool multiline;
    bool global;
    bool extended;
    bool dotall;
    bool anchored;
    bool dollar_endonly;
    bool ungreedy;
};

typedef regex_struct*% regex;

extern regex regex(char* str, bool ignore_case, bool multiline, bool global, bool extended, bool dotall, bool anchored, bool dollar_endonly, bool ungreedy);

ruby_macro regex {
    param_line = ENV['PARAMS'];

    n = 0;

    if param_line[n] == "/"
      n = n + 1
    end

    str = ""

    ignore_case = false;
    multiline = false;
    global = false;
    extended = false;
    dotall = false;
    anchored = false;
    dollar_endonly = false;
    ungreedy = false;

    while(n < param_line.length()) do
      c = param_line[n];

      if c == "/"
          n = n + 1;

          while(n < param_line.length()) do
              c = param_line[n];

              if c == "i"
                  ignore_case = true;
              elsif c == "m"
                  multiline = true;
              elsif c == "g"
                  global = true;
              elsif c == "s"
                  dotall = true;
              elsif c == "A"
                  anchoared = true;
              elsif c == "D"
                  dollar_endonly = true;
              elsif c == "U"
                  ungreedy = true;
              elsif c == "x"
                  extended = true;
              end

              n = n + 1;
          end
      else
          str = str + c
      end

      n = n + 1;
    end

    puts("regex(\"#{str}\", #{ignore_case}, #{multiline}, #{global}, #{extended}, #{dotall}, #{anchored}, #{dollar_endonly}, #{ungreedy})");
}

/// list ///
struct list_item<T>
{
    T& item;
    struct list_item<T>*? prev;
    struct list_item<T>*? next;
}

struct list<T>
{
    list_item<T>*? head;
    list_item<T>*? tail;
    int len;
}

/// string ///
extern string operator+(string& left, string& right);
extern string operator*(string& left, int num);

impl string
{
    extern bool equals(string& left, string& right);
    extern int length(string& str);
    extern int get_hash_key(string& value);
    extern string substring(string& str, int head, int tail);
    extern int index(string& str, char* search_str, int default_value);
    extern int rindex(string& str, char* search_str, int default_value);
    extern string&delete(string& str, int position);
    extern string& delete_range(string& str, int head, int tail);
    extern string printable(string& str);
    string sub(string& self, regex reg, char* replace, list<string>?* group_strings);
}

/// wstring ///
extern wstring operator+(wstring& left, wstring& right);
extern wstring operator*(wstring& left, int num);

impl wstring
{
    extern bool equals(wstring& left, wstring& right);
    extern int length(wstring& str);
    extern int get_hash_key(wstring& value);
    extern wstring substring(wstring& str, int head, int tail);
    extern int index(wstring& str, wchar_t* search_str, int default_value);
    extern int rindex(wstring& str, wchar_t* search_str, int default_value);
    extern wstring& delete(wstring& str, int position);
    extern wstring& delete_range(wstring& str, int head, int tail);

    extern string toUtf8String(wstring& self);
    extern wstring printable(wstring& str);
}

/// vector ///
struct vector<T> 
{
    T&* items;
    int len;
    int size;
};

impl vector<T> 
{
    initialize() 
    {
        self.size = 16;
        self.len = 0;
        self.items = borrow new T[self.size];
    }
    vector<T>%* initialize_with_values(vector<T>%* self, int len, T& value) 
    {
        self.size = len;
        self.len = len;
        self.items = borrow new T[self.size];

        for(int i=0; i<len; i++) {
            if(isheap(T)) {
                self.items[i] = clone value;
            }
            else {
                self.items[i] = value;
            }
        }

        return self;
    }

    vector<T>%* clone(vector<T>* self) {
        var result = new vector<T>.initialize();

        self.each {
            if(isheap(T)) {
                result.push_back(clone it);
            }
            else {
                result.push_back(heap it);
            }
        }

        return result;
    }

    finalize()
    {
        if(isheap(T)) {
            for(int i=0; i<self.len; i++) 
            {
                delete self.items[i];

            }
        }
        delete self.items;
    }
    
    void push_back(vector<T>* self, T item) {
        managed item;

        if(self.len == self.size) {
            var new_size = self.size * 2;
            var items = self.items;

            self.items = borrow new T[new_size];

            int i;
            for(i=0; i<self.size; i++) {
                self.items[i] = items[i];
            }
            for(i=self.size; i<new_size; i++) {
                self.items[i] = 0;
            }

            self.size = new_size;

            delete items;
        }

        self.items[self.len] = item;
        self.len++;
    }

    T pop_back(vector<T>* self, T default_value)
    {
        if(self.len == 0) {
            return default_value;
        }

        T result = (T)self.items[self.len-1];

        self.len--;

        return result;
    }

    T& item(vector<T>* self, int index, T& default_value) 
    {
        if(index < 0) {
            index += self.len;
        }

        if(index >= 0 && index < self.len)
        {
            return self.items[index];
        }

        return default_value;
    }
    void each(vector<T>*  self, void (*block)(T&,int,bool*)) {
        for(int i=0; i<self.len; i++) {
            bool end_flag = false;
            block(self.items[i], i, &end_flag);
            if(end_flag == true) {
                break;
            }
        };
    }

    template <R> vector<R>*% map(vector<T>* self, R (*block)(T&))
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
            if(!((T)left.items[i]).equals(((T)right.items[i])))
            {
                return false;
            }
        }

        return true;
    }

    bool replace(vector<T>* self, int index, T value) 
    {
        if(index < 0) {
            index += self.len;
        }

        if(index >= 0 && index < self.len)
        {
            if(isheap(T)) {
                delete self.items[index];
            }

            self.items[index] = value;

            return true;
        }

        return false;
    }

    int length(vector<T>* self)
    {
        return self.len;
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

    if params.length() > 0
        puts("{");
        puts("var result = new vector<typeof(#{params[0]})>.initialize();");

        params.each do |param|
            puts("result.push_back(#{param});");
        end

        puts("result");
        puts("}");
    end
}

/// list ///
impl list <T>
{
    initialize() {
        self.head = null;
        self.tail = null;
        self.len = 0;
    }

    finalize() {
        list_item<T>* it = self.head;
        while(it != null) {
            if(isheap(T)) {
                delete it.item;
            }
            var prev_it = it;
            it = it.next;
            delete prev_it;
        }
    }

    list<T>*% clone(list<T>* self) {
        var result = new list<T>.initialize();

        self.each {
            if(isheap(T)) {
                result.push_back(clone it);
            }
            else {
                result.push_back(heap it);
            }
        }

        return result;
    }

    void reset(list<T>* self) {
        list_item<T>* it = self.head;
        while(it != null) {
            if(isheap(T)) {
                delete it.item;
            }
            var prev_it = it;
            it = it.next;
            delete prev_it;
        }

        self.head = null;
        self.tail = null;

        self.len = 0;
    }

    void push_back(list<T>* self, T item) 
    {
        managed item;

        if(self.len == 0) {
            list_item<T>* litem = borrow new list_item<T>;
            litem.prev = null;
            litem.next = null;
            litem.item = item;
            
            self.tail = litem;
            self.head = litem;
        }
        else if(self.len == 1) {
            list_item<T>* litem = borrow new list_item<T>;

            litem.prev = self.head;
            litem.next = null;
            litem.item = item;
            
            self.tail = litem;
            self.head.next = litem;
        }
        else {
            list_item<T>* litem = borrow new list_item<T>;

            litem.prev = self.tail;
            litem.next = null;
            litem.item = item;
            
            self.tail.next = litem;
            self.tail = litem;
        }

        self.len++;
    }

    T pop_back(list<T>* self, T default_value)
    {
        if(self.len == 0) {
            return default_value;
        }
        else if(self.len == 1) {
            T result = (T)self.head.item;

            delete self.head;

            self.head = null;
            self.tail = null;

            self.len--;

            return result;
        }
        else if(self.len == 2) {
            T result = (T)self.tail.item;

            delete self.tail;

            self.tail = self.head;
            self.head.next = null;
            self.head.prev = null;

            self.len--;

            return result;
        }
        else {
            T result = (T)self.tail.item;

            list_item<T>* it = self.tail;

            self.tail = self.tail.prev;
            self.tail.next = null;

            delete it;

            self.len--;

            return result;
        }
    }

    void insert(list<T>* self, int position, T item)
    {
        if(position < 0) {
            position += self.len + 1;
        }
        if(position < 0) {
            position = 0;
        }
        if(self.len == 0 || position >= self.len) 
        {
            self.push_back(item);
            return;
        }

        managed item;

        if(position == 0) {
            list_item<T>* litem = borrow new list_item<T>;

            litem.prev = null;
            litem.next = self.head;
            litem.item = item;
            
            self.head.prev = litem;
            self.head = litem;

            self.len++;
        }
        else if(self.len == 1) {
            var litem = borrow new list_item<T>;

            litem.prev = self.head;
            litem.next = self.tail;
            litem.item = item;
            
            self.tail.prev = litem;
            self.head.next = litem;

            self.len++;
        }
        else {
            list_item<T>?* it = self.head;
            var i = 0;
            while(it != null) {
                if(position == i) {
                    list_item<T>* litem = borrow new list_item<T>;

                    litem.prev = it.prev;
                    litem.next = it;
                    litem.item = item;

                    it.prev.next = litem;
                    it.prev = litem;

                    self.len++;
                }

                it = it.next;
                i++;
            }
        }
    }

    void delete(list<T>* self, int position)
    {
        if(position < 0) {
            position += self.len + 1;
        }

        if(position >= 0 && position < self.len)
        {
            if(self.len == 1) {
                if(isheap(T)) {
                    delete self.head.item;
                }
                delete self.head;

                self.head = null;
                self.tail = null;

                self.len = 0;
            }
            else if(self.len == 2) {
                if(position == 0) {
                    list_item<T>?* it = self.head;
                    self.head = it.next;

                    self.tail = it.next;

                    if(isheap(T)) {
                        delete it.item;
                    }
                    delete it;

                    self.len--;
                }
                else {
                    list_item<T>?* it = self.tail;
                    self.head.next = null;

                    self.tail = self.head;

                    if(isheap(T)) {
                        delete it.item;
                    }
                    delete it;

                    self.len--;
                }
            }
            else {
                list_item<T>?* it = self.head;
                var i = 0;
                while(it != null) {
                    if(position == i) {
                        if(i == 0) {
                            self.head = it.next;
                            self.head.prev = null;

                            if(isheap(T)) {
                                delete it.item;
                            }
                            delete it;

                            self.len--;
                        }
                        else if(i == self.len-1)
                        {
                            self.tail = it.prev;
                           if(isheap(T)) 
                           {
                                delete it.item;
                            }
                            delete it;

                            self.len--;
                        }
                        else {
                            it.prev.next = it.next;
                            it.next.prev = it.prev;
                            if(isheap(T)) {
                                delete it.item;
                            }
                            delete it;

                            self.len--;
                        }
                        break;
                    }

                    it = it.next;
                    i++;
                }
            }
        }
    }

    void delete_range(list<T>* self, int head, int tail)
    {
        if(head < 0) {
            head += self.len;
        }
        if(tail < 0) {
            tail += self.len + 1;
        }

        if(head > tail) {
            int tmp = tail;
            tail = head;
            head = tmp;
        }

        if(head < 0) {
            head = 0;
        }

        if(tail > self.len) {
            tail = self.len;
        }

        if(head == tail) {
            return;
        }

        if(head == 0 && tail == self.len) 
        {
            self.reset();
        }
        else if(head == 0) {
            list_item<T>?* it = self.head;
            var i = 0;
            while(it != null) {
                if(i < tail) {
                    if(isheap(T)) {
                        delete it.item;
                    }
                    list_item<T>?* prev_it = it;

                    it = it.next;
                    i++;

                    delete prev_it;

                    self.len--;
                }
                else if(i == tail) {
                    self.head = it;
                    self.head.prev = null;
                    break;
                }
                else {
                    it = it.next;
                    i++;
                }
            }
        }
        else if(tail == self.len) {
            list_item<T>?* it = self.head;
            var i = 0;
            while(it != null) {
                if(i == head) {
                    self.tail = it.prev;
                    self.tail.next = null;
                }

                if(i >= head) {
                    if(isheap(T)) {
                        delete it.item;
                    }
                    list_item<T>?* prev_it = it;

                    it = it.next;
                    i++;

                    delete prev_it;

                    self.len--;
                }
                else {
                    it = it.next;
                    i++;
                }
            }
        }
        else {
            list_item<T>?* it = self.head;

            list_item<T>?* head_prev_it = null;
            list_item<T>?* tail_it = null;


            var i = 0;
            while(it != null) {
                if(i == head) {
                    head_prev_it = it.prev;
                }
                if(i == tail) {
                    tail_it = it;
                }

                if(i >= head && i < tail) 
                {
                    if(isheap(T)) {
                        delete it.item;
                    }
                    list_item<T>?* prev_it = it;

                    it = it.next;
                    i++;

                    delete prev_it;

                    self.len--;
                }
                else {
                    it = it.next;
                    i++;
                }
            }

            if(head_prev_it != null) {
                head_prev_it.next = tail_it;
            }
            if(tail_it != null) {
                tail_it.prev = head_prev_it;
            }
        }
    }

    void replace(list<T>* self, int position, T item)
    {
        managed item;

        if(position < 0) {
            position += self.len;
        }

        list_item<T>?* it = self.head;
        var i = 0;
        while(it != null) {
            if(position == i) {
                if(isheap(T)) {
                    delete it.item;
                }

                it.item = item;
                break;
            }
            it = it.next;
            i++;
        };
    }
    
    T& item(list<T>* self, int position, T& default_value) 
    {
        if(position < 0) {
            position += self.len;
        }

        list_item<T>?* it = self.head;
        var i = 0;
        while(it != null) {
            if(position == i) {
                return it.item;
            }
            it = it.next;
            i++;
        };

        return default_value;
    }
    
    void each(list<T>* self, void (*block)(T&,int,bool*)) {
        list_item<T>?* it = self.head;
        var i = 0;
        while(it != null) {
            bool end_flag = false;
            block(it.item, i, &end_flag);

            if(end_flag == true) {
                break;
            }
            it = it.next;
            i++;
        }
    }

    list<T>*% sublist(list<T>* self, int begin, int tail) {
        list<T>%* result = new list<T>.initialize();

        if(begin < 0) {
            begin += self.len;
        }

        if(tail < 0) {
            tail += self.len + 1;
        }


        list_item<T>?* it = self.head;
        var i = 0;
        while(it != null) {
            if(i >= begin && i < tail) {
                result.push_back(clone it.item);
            }
            it = it.next;
            i++;
        };

        return result;
    }

    list<T>*% reverse(list<T>* self) {
        list<T>%* result = new list<T>.initialize();

        list_item<T>?* it = self.tail;
        while(it != null) {
            result.push_back(clone it.item);
            it = it.prev;
        };

        return result;
    }
    string join(list<string>* self, char* separator) {
        string result = string("");

        self.each {
            if(it2 == self.length() - 1) {
                result = result + it;
            }
            else {
                result = result + it + string(separator);
            }
        }

        return result;
    }

    bool equals(list<T>* left, list<T>* right)
    {
        if(left.len != right.len) {
            return false;
        }

        list_item<T>?* it = left.head;
        list_item<T>?* it2 = right.head;

        while(it != null) {
            ((T)it.item).equals(((T)it2.item));

            it = it.next;
            it2 = it2.next;
        }

        return true;
    }

    int length(list<T>* self)
    {
        return self.len;
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

    if params.length() > 0
        puts("{");
        puts("var result = new list<typeof(#{params[0]})>.initialize();");

        params.each do |param|
            puts("result.push_back(#{param});");
        end

        puts("result");
        puts("}");
    end
}


struct tuple1<T>
{
    T v1;
}

impl tuple1 <T>
{
    initialize() {
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
    T v1;
    T2 v2;
}

impl tuple2 <T, T2>
{
    initialize() {
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
    T v1;
    T2 v2;
    T3 v3;
}

impl tuple3 <T, T2, T3>
{
    initialize() {
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
    T v1;
    T2 v2;
    T3 v3;
    T4 v3;
}

impl tuple4 <T, T2, T3, T4>
{
    initialize() {
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

struct map<T, T2>
{
    T&* keys;
    bool* item_existance;
    T2&* items;
    int size;
    int len;
}

#define MAP_TABLE_DEFAULT_SIZE 128

impl map <T, T2>
{
    initialize() {
        self.keys = borrow new T[MAP_TABLE_DEFAULT_SIZE];
        self.items = borrow new T2[MAP_TABLE_DEFAULT_SIZE];
        self.item_existance = borrow new bool[MAP_TABLE_DEFAULT_SIZE];

        for(int i=0; i<MAP_TABLE_DEFAULT_SIZE; i++)
        {
            self.item_existance[i] = false;
        }

        self.size = MAP_TABLE_DEFAULT_SIZE;
        self.len = 0;
    }

    finalize() {
        for(int i=0; i<self.size; i++) {
            if(self.item_existance[i]) {
                if(isheap(T2)) {
                    delete self.items[i];
                }
            }
        }
        delete self.items;

        for(int i=0; i<self.size; i++) {
            if(self.item_existance[i]) {
                if(isheap(T)) {
                    delete self.keys[i];
                }
            }
        }
        delete self.keys;

        delete self.item_existance;
    }

    map<T, T2>*% clone(map<T, T2>* self)
    {
        var result = new map<T,T2>.initialize();

        self.each {
            if(isheap(T)) {
                if(isheap(T2)) {
                    result.insert(clone it, clone it2);
                }
                else {
                    result.insert(clone it, heap it2);
                }
            }
            else {
                if(isheap(T2)) {
                    result.insert(heap it, clone it2);
                }
                else {
                    result.insert(heap it, heap it2);
                }
            }
        }

        return result;
    }

    void each(map<T, T2>* self, void (*block)(T&,T2&,bool*)) 
    {
        for(int i=0; i<self.size; i++) {
            if(self.item_existance[i]) {
                bool end_flag = false;
                block(self.keys[i], self.items[i], &end_flag);
                if(end_flag == true) {
                    break;
                }
            }
        }
    }

    void rehash(map<T,T2>* self) {
        int size = self.size * 3;
        T&* keys = borrow new T[size];
        T2&* items = borrow new T2[size];
        bool* item_existance = borrow new bool[size];

        int len = 0;

        self.each {
            int hash = ((T)it).get_hash_key() % size;
            int n = hash;

            while(true) {
                if(item_existance[n])
                {
                    n++;

                    if(n >= size) {
                        n = 0;
                    }
                    else if(n == hash) {
                        fprintf(stderr, "unexpected error in map.rehash\n");
                        exit(2);
                    }
                }
                else {
                    item_existance[n] = true;
                    keys[n] = it;
                    items[n] = it2;

                    len++;
                }
            }
        }

        delete self.items;
        delete self.item_existance;
        delete self.keys;

        self.keys = keys;
        self.items = items;
        self.item_existance = item_existance;

        self.size = size;
        self.len = len;
    }

    bool find(map<T, T2>* self, T& key) {
        int hash = ((T)key).get_hash_key() % self.size;
        int it = hash;

        while(true) {
            if(self.item_existance[it])
            {
                if(((T)self.keys[it]).equals(((T)key)))
                {
                    return true;
                }

                it++;

                if(it >= self.size) {
                    it = 0;
                }
                else if(it == hash) {
                    return false;
                }
            }
            else {
                return false;
            }
        }

        return false;
    }

    T2& at(map<T, T2>* self, T& key, T2& default_value) 
    {
        int hash = ((T)key).get_hash_key() % self.size;
        int it = hash;

        while(true) {
            if(self.item_existance[it])
            {
                if(((T)self.keys[it]).equals(((T)key)))
                {
                    return self.items[it];
                }

                it++;

                if(it >= self.size) {
                    it = 0;
                }
                else if(it == hash) {
                    return default_value;
                }
            }
            else {
                return default_value;
            }
        }

        return default_value;
    }

    void insert(map<T,T2>* self, T key, T2 item) 
    {
        managed key;
        managed item;

        if(self.len*2 >= self.size) {
            self.rehash();
        }

        int hash = ((T)key).get_hash_key() % self.size;
        int it = hash;

        while(true) {
            if(self.item_existance[it])
            {
                it++;

                if(it >= self.size) {
                    it = 0;
                }
                else if(it == hash) {
                    fprintf(stderr, "unexpected error in map.insert\n");
                    exit(2);
                }
            }
            else {
                self.item_existance[it] = true;
                self.keys[it] = key;
                self.items[it] = item;

                self.len++;

                break;
            }
        }
    }

    bool equals(map<T, T2>* left, map<T, T2>* right)
    {
        if(left.len != right.len) {
            return false;
        }

        bool result = true;
        left.each {
            if(right.find(it)) {
                T2& default_value;
                T2& item = right.at(it, default_value);
                if(!((T2)it2).equals((T2)item))) {
                    result = false;
                }
            }
            else {
                result = false;
            }
        }

        return result;
    }
}

ruby_macro map {
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
        elsif c == ":"
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

    if params.length() >= 2
    then
        puts("{");
        puts("var result = new map<typeof(#{params[0]}), typeof(#{params[1]})>.initialize();");

        key = nil;
        for it in params do
            if key == nil
            then
                key = it;
            else
                puts("result.insert(#{key}, #{it});");
                key = nil;
            end
        end

        puts("result");
        puts("}");
    end
}

/// others ///
extern void xassert(char* msg, bool exp);
