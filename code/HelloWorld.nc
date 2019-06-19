def xcalloc(num:int, size:long):heap char*;
def xmalloc(size:long):heap char*;
def xmemdup(mem:char*):heap char*;
def xfree(mem:heap char*);

def puts(str:char*):int;
def exit(rcode:int);
def strcmp(str1:char*, str2:char*):int;
def printf(str:char*, ...):int;
def strcpy(mem:char*, mem2:char*):int;
def memcpy(mem:char*, mem2:char*, size:int):char*;
def strcat(mem:char*, mem2:char*):char*;
def strlen(mem:char*):int;

def operator+(left:char*, right:char*): heap char*
{
    var len1 = strlen(left);
    var len2 = strlen(right);

    var result = new char[len1 + len2 + 1];

    strcpy(result, left);
    strcat(result, right);

    result
}

def assert(msg:char*, exp:bool) 
{
    printf(msg + "...");
    if(!exp) {
        puts("assertion failed");
        exit(2);
    }
    puts("OK");
}

def main():int 
{
/*
    if(1 == 1) {
        puts("TRUE");
    }
    else {
        puts("FALSE");
    }

    def fun():int 
    {
        puts("HELLO WORLD");
        1+1
    }

    var a = fun();

    assert("function result test",a == 2);

    var b = 1;

    def fun2(exp:bool) 
    {
        assert("function param cast test", exp);
    }

    fun2(b);

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
        x = 5
    }
    else {
    }

    assert("if test", x == 5);

    def fun4(str:char*) 
    {
        puts(str);
    }

    fun4("aaa");

    var i = 1;

    assert("operator test", i > 0);

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

    impl int {
        def times(n:int, block:lambda()) 
        {
            for(var i=0; i<n; i++) {
                block->();
            };
        }
    }

    var nn = 0;
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

    def fun8(block:lambda(int,int):int):int
    {
        block->(2,2)
    }

    var xmm = 1;

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
            }
        }
        def <R:any> map(self:vector<T>*, block:lambda(T):R): heap vector<R>
        {
            var result = new vector<R>;
            self.each {
                result.push_back(block(it));
            }
            return result;
        }
    }

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

    var v4 = new vector<int>;

    v4.push_back(1);
    v4.push_back(2);
    v4.push_back(3);

    var v5 = v4.map(lambda(it:int):heap char* {
        var result = new char[256];
        snprintf(result, 256, "%d", it);
        result
    });
*/

    def <I> method_generics_fun2(a:I, b:I):I
    {
        a + b
    }

    assert("method generics test", method_generics_fun2(1, 2) == 3);
    assert("method generics test2", strcmp(method_generics_fun2("AAA", "BBB"), "AAABBB") == 0);
    assert("method generics test3", method_generics_fun2(2, 3) == 5);

    0
}

