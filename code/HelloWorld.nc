
char*% xcalloc(int num, long size);
char*% xmalloc(long size);
char*% xmemdup(char* mem);
void xfree(char*% mem);

int puts(char* str);
void exit(int rcode);
int strcmp(char* str1, char* str2);
int printf(char* str, ...);
int snprintf(char* str, int size, ...);
int strcpy(char* mem, char* mem2);
char* memcpy(char* mem, char* mem2, int size);
char* strcat(char* mem, char* mem2);
int strlen(char* mem);
int atoi(char* str);

typedef string char*%;

string operator+(char* left, char* right)
{
    int len1 = strlen(left);
    int len2 = strlen(right);

    string result = new char[len1 + len2 + 1];

    strcpy(result, left);
    strcat(result, right);

    result
}

string string(char* str)
{
    int len = strlen(str);

    string result = new char[len + 1];

    strcpy(result, str);

    result
}

void assert(char* msg, bool exp) 
{
    printf(msg + "...");
    if(!exp) {
        puts("assertion failed");
        exit(2);
    }
    puts("OK");
}

int main()
{
    if(1 == 1) {
        puts("TRUE");
    }
    else {
        puts("FALSE");
    }

    int fun()
    {
        puts("HELLO WORLD");
        1+1
    }

    int a = fun();

    assert("function result test", a == 2);

    int b = 1;

    void fun2(bool exp) 
    {
        assert("function param cast test", exp);
    }

    fun2(b);

    0
}

/*
struct vector<T> {
    items:heap T*;
    len:int;
    size:int;
}

impl vector<T> {
    def initialize(self:heap vector<T>*, block:nullable lambda(vector<T>*)):heap vector<T>* {
        self.size = 16;
        self.len = 0;
        self.items = new T[self.size];

        if(block != null) {
            block->(self);
        }

        self
    }
    
    def push_back(self: vector<T>*, item:T) {
        if(self.len == self.size) {
            var new_size = self.size;
            var items = self.items;

            self.items = new T[new_size];

            memcpy(self.items->char*, items->char*, 8*self.size);
            self.size = new_size;
        }

        self.items[self.len] = item;
        self.len++;
    }

    def item(self:vector<T>*, index:int):T {
        self.items[index]
    }
    def each(self:vector<T>*, block:lambda(T,int)) {
        for(var i=0; i<self.len; i++) {
            block->(self.items[i], i);
        };
    }

    def <R> map(self:vector<T>*, block:lambda(T):R): heap vector<R>*
    {
        var result = new vector<R>.initialize(null);

        self.each {
            result.push_back(block->(it));
        }

        result
    }
}

def main():int 
{
    var n = 1+1;

    assert("local variable test", n == 2);

    n = 777

    assert("local variable test", n == 777);

    var m = n + 1;

    assert("local variable test", m == 778);

    def fun3(x:int, y:int):int 
    {
        x + y
    }

    var l = fun3(1, 2)

    assert("function result test", l == 3);

    var x = 4;

    if(x == 3) {
    }
    elif(x == 2) {
    }
    elif(x == 4) {
        x = 5;
    }
    else {
    }

    assert("if test", x == 5);


    var i = 1;

    assert("operator test", i > 0);

    def fun4(str:char*) 
    {
        puts(str);
    }

    fun4("aaa");

    i = 0;
    while(i < 3) {
        puts("HO!");
        i++;
    }

    i = 123;
    assert("operator test2", i++ == 123 && i == 124);

    i = 123;
    assert("operator test3", i-- == 123 && i == 122);

    i = 123;
    assert("operator test4", ++i == 124 && i == 124);

    i = 124;
    assert("operator test5", --i == 123 && i == 123);

    struct OpTest 
    {
        a:int;
        b:int;
    }

    var obj = alloca OpTest;

    obj.a = 123;
    assert("operator test6", obj.a++ == 123);

    obj.a = 123;
    assert("operator test7", obj.a-- == 123 && obj.a == 122);

    obj.a = 123;
    assert("operator test8", ++obj.a == 124 && obj.a == 124);

    assert("operator test9", --obj.a == 123 && obj.a == 123);

    i = 2;
    i += 2;

    assert("operator test10", i == 4);

    for(var i=0; i<3; i++) {
        puts("HO!");
    }

    for(var i=0; i<3; i++) {
        puts("HE!");
    }

    var aa = 4;
    var bb = 1;

    var fun = lambda(x:int, y:int):int {
        bb = 222;
        x + y + aa
    }

    def fun5(block:lambda(int,int):int):int 
    {
        block->(1,2)
    }

    var xxx = fun5(fun);

    assert("lambda test", xxx == 7);
    assert("lambda test2", bb == 222);

    var xa = if(false) {
        111
    }
    else {
        222
    }

    assert("if test", xa == 222);

    struct TestData 
    {
        a:int;
        b:int;
    }

    var test11 = alloca TestData;
    test11.a = 123;
    test11.b = 234;

    assert("struct test", test11.a == 123 && test11.b == 234);

    def fun6(data:TestData) 
    {
        assert("struct test2", data.a == 123 && data.b == 234);
    }

    fun6(test11->*);

    var iii = 111;

    var p = iii<-;

    def fun7(value:int*) 
    {
        assert("reffernce test", value->* == 111);
    }

    fun7(p);

    var nn = 0;

    impl int {
        def times(n:int, block:lambda()) 
        {
            for(var i=0; i<n; i++) {
                block->();
            };
        }
    }

    3.times(lambda() {
        puts("HO!");
        nn++;
    })

    assert("lambda test1", nn == 3);

    nn = 0;
    3.times {
        puts("HE!");
        nn++;
    }

    assert("simple lambda param test", nn == 3);

    var xb = 3;

    var xmm = 1;

    def fun8(block:lambda(int,int):int):int
    {
        block->(2,2)
    }

    var mm = fun8() {
        xmm = 9;
        it + it2 + xb
    }

    assert("simple lambda param test2", mm == 7 && xmm == 9);

    struct Data {
        a:int;
        b:int;
    }

    impl Data {
        def initialize(self:heap Data*):heap Data* {
            self.a = 111;
            self.b = 123;

            self
        }
    }

    var ya = new Data;

    var xobj = ya.initialize();

    var xobj2 = xobj;

    assert("std::move test", xobj2.a == 111);

    struct Data2 {
        a:heap Data*;
        b:int;
    }

    impl Data2 {
        def initialize(self:heap Data2*):heap Data2* {
            self.a = new Data;

            self.a.a = 123;
            self.a.b = 234;

            self.b = 123;

            self
        }
    }

    var yb = new Data2.initialize();

    assert("struct test", yb.b == 123 && yb.a.a == 123 && yb.a.b == 234);

    struct Data3 {
        a:int;
        b:int;
    }

    struct Data4 {
        a:Data3;
        b:int;
    }

    var za = new Data4;

    za.a.a = 123;

    assert("struct test X", za.a.a == 123);

    struct Data5 {
        a:int;
        b:int;
    }

    impl Data5 {
        def initialize(self:heap Data5*):heap Data5* {
            self.a = 111;
            self.b = 222;

            self
        }
    }

    var zz = new Data5.initialize();

    var zz2 = clone zz;

    assert("struct test X2", zz2.a == 111 && zz2.b == 222);

    struct Data6 {
        a:heap Data5*;
        b:int;
        c:heap char*;
    }

    impl Data6 {
        def initialize(self:heap Data6*):heap Data6* {
            self.a = new Data5;
            self.a.a = 111;
            self.a.b = 222;
            self.b = 333;
            self.c = new char[5];

            self
        }
    }

    var zz3 = new Data6.initialize();

    var zz4 = clone zz3;

    assert("struct test X3", zz4.a.a == 111 && zz4.a.b == 222 && zz4.b == 333);
    assert("struct test X4", zz3.a.a == 111 && zz3.a.b == 222 && zz3.b == 333);

    var zz5 = new char[5];
    var zz6 = zz5;

    var zz7:char* = zz6;

    def fun_test_borrow(aaa:char*) 
    {
    }

    fun_test_borrow(zz6);

    var zz8 = "AAA" + "BBB"

    puts(zz8);

    struct Data10 {
        a:int;
        b:int;
    }

    struct Data11 {
        a:heap Data10*;
        b:int;
    }

    new Data11.a = new Data10;
    
    assert("string test", strcmp("AAA" + "BBB", "AAABBB") == 0);

    printf("1 + 1 == %d\n", 1 + 1);
    printf("(%s)\n", "AAA" + "BBB");

    var axy = "xyz";
    var str1 = new char[5];

    strcpy(str1, axy);

    printf("str1 %s\n", str1);

    str1[0] = 'X';

    printf("str[0] %c\n", str1[0]);

    var lll = lambda(a:int, b:int):int {
        a + b
    }

    assert("lambda test X", lll->(1,2) == 3);

    struct GenericsTest <T, T2> {
        a:T;
        b:T2;
        c:lambda(T, T):T;
    }

    var gvar = new GenericsTest<int, char>;

    gvar.a = 111;
    gvar.b = 'c';
    gvar.c = lambda(x:int, y:int):int {
        x + y
    }

    assert("generics test", gvar.a == 111 && gvar.b == 'c' && gvar.c->(1, 2) == 3);

    var aaaa = "AAA" + "BBB";

    assert("operator test", strcmp(aaaa, "AAABBB") == 0);

    def <I> method_generics_fun2(a:I, b:I):I
    {
        a + b
    }

    assert("method generics test", method_generics_fun2(1, 2) == 3);

    assert("method generics test2", strcmp(method_generics_fun2("AAA", "BBB"), "AAABBB") == 0);
    assert("method generics test3", method_generics_fun2(2, 3) == 5);

    struct GenericsTest2<T> {
        a:T;
        b:T;
    }

    impl GenericsTest2<T> {
        def add(self:GenericsTest2<T>*, a:T, b:T):T {
            a + b
        }
    }

    var generics_test = new GenericsTest2<int>;

    assert("generics test", generics_test.add(1,2) == 3);

    struct MapTest2<T> {
        a:T;
    }

    struct MapTest<T,T2> {
        a:T;
        b:T2;
    }

    impl MapTest<T,T2> {
        def <R> fun(self:MapTest<T,T2>*, a:R, b:int):heap MapTest2<R>*
        {
            var result = new MapTest2<R>;
            result.a = 1;
            result
        }
        
        def <R> fun2(self:MapTest<T,T2>*, a:R, block:lambda(R)): R
        {
            puts("AAA");
            1
        }
    }

    var map_test = new MapTest<int, int>;

    var aaa2 = map_test.fun2(1, lambda(a:int) {
            puts("BBB");
        }
    );

    assert("method generics test X2", aaa2 == 1);

    var aaa = map_test.fun(1,2);

    assert("method generics test X", aaa.a == 1);

    struct HeapTest2 {
        a:int;
        b:int;
    }

    struct HeapTest<T> {
        a:heap T*;
        b:int;
        c:heap HeapTest2*;
    }

    impl HeapTest<T> {
        def initialize(self:HeapTest<T>*)
        {
            self.a = new T[5];
        }

        def <R> map(self:HeapTest<T>*, data:T, data2:R): heap HeapTest<R>*
        {
            var result = new HeapTest<R>;

            result.initialize();

            snprintf(result.a, 5, "%d", data);

            result
        }
    }

    var ax = new HeapTest<int>;

    ax.initialize();

    var bx = ax.map(1, 'a');

    puts(bx.a);

    var v = new vector<int>.initialize(null);

    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    printf("%d\n", v.item(0));
    printf("%d\n", v.item(1));
    printf("%d\n", v.item(2));

    v.each {
        printf("%d --> %d\n", it2, it);
    }

    var v2 = new vector<int>.initialize(
        lambda(it:vector<int>*) {
            it.push_back(111);
            it.push_back(222);
            it.push_back(333);
        }
    ) 

    v2.each {
        printf("%d --> %d\n", it2, it);
    }

    var v3 = new vector<int>.initialize {
        it.push_back(111);
        it.push_back(555);
        it.push_back(666);
    }

    v3.each {
        printf("%d --> %d\n", it2, it);
    }


    var vv4 = new vector<int>.initialize(null);

    vv4.push_back(1);
    vv4.push_back(2);
    vv4.push_back(3);

    printf("vv4 %d\n", vv4.item(0));
    printf("vv4 %d\n", vv4.item(1));
    printf("vv4 %d\n", vv4.item(2));

    vv4.each {
        printf("vv4 %d\n", it);
    }

    var vv5 = vv4.map(lambda(it:int):heap char* {
        var result = new char[256];
        snprintf(result, 256, "%d", it);
        result + "aaa"
    });

    printf("vv5 %s\n", vv5.item(0));
    printf("vv5 %s\n", vv5.item(1));
    printf("vv5 %s\n", vv5.item(2));

    vv5.each {
        printf("%s\n", it);
    }

    printf("vv5.len %d\n", vv5.len);

    var vvv4 = new vector<heap char*>.initialize(null);

    vvv4.push_back(string("1"));
    vvv4.push_back(string("2"));
    vvv4.push_back(string("3"));

    var vvv5 = vvv4.map {
        atoi(it)
    }

    vvv5.each {
        printf("%d -- > %d\n", it2, it);
    }

    printf("vvv5.len %d\n", vvv5.len);

    struct Hello<T>
    {
        a:T;
    }

    impl Hello<T> {
        def loop(self:Hello<T>*, block:lambda())
        {
            for(var i=0; i < self.a; i++)
            {
                block->();
            }
        }

        def <R> test(self:Hello<T>*, block:lambda():R):R 
        {
            self.a = 3;
            self.loop {
                puts("HO!");
            }
            block->()
        }
    }

    struct Hello2<T>
    {
        a:T;
    }

    impl Hello2<T> {
        def loop(self:Hello2<T>*, block:lambda())
        {
            for(var i=0; i < self.a; i++)
            {
                block->();
            }
        }

        def initialize(self:heap Hello2<T>*): heap Hello2<T>*
        {
            self.a = 3;

            self
        }

        def <R> test(self:Hello2<T>*, block:lambda(T):R): heap Hello2<R>*
        {
            var result = new Hello2<R>.initialize();

            result.loop {
                puts("HO!");
            }

            block->(string("aaa"));

            result
        }
    }

    var aaa3 = new Hello<int>;

    aaa3.test {
        1
    }

    var bb2 = new Hello2<heap char*>;

    var cc = bb2.test {
        3
    }

    cc.loop {
        puts("HE!");
    }

    var vv1 = new vector<int>.initialize(null);

    vv1.push_back(1);
    vv1.push_back(2);
    vv1.push_back(3);

    var vv2 = vv1.map {
        var result = new char[128];
        snprintf(result, 128, "%d", it);
        result
    }

    vv2.each {
        printf("%s\n", it);
    }

    var str3 = string("aaa");

    def fun9(str:string) {
        str[1] = 'b';
        puts(str);
    }

    fun9(str3);

    0
}

*/
