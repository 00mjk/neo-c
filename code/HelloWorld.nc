def puts(str:char*):int;
def exit(rcode:int);
def xmalloc(size:long):heap char*;
def xfree(mem:heap char*);
def xcalloc(num:int, size:long):heap char*;
def xmemdup(mem:char*):heap char*;
def xstrapd(str1:char*, str2:char*):heap char*;
def strcmp(str1:char*, str2:char*):int;
def printf(str:char*, ...):int;

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

    def fun(exp:bool) 
    {
        assert("function param cast test", exp);
    }

    fun(b);

    var n = 1+1;

    assert("local variable test", n == 2);

    n = 777

    assert("local variable test", n == 777);

    var m = n + 1;

    assert("local variable test", m == 778);

    def fun2(x:int, y:int):int 
    {
        x + y
    }

    var l = fun2(1, 2)

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

    "aaa".fun4();

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

    var obj = OpTest;

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

    def fun2(block:lambda(int,int):int):int 
    {
        block(1,2)
    }

    var xxx = fun2(fun);

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

    var test11 = TestData;

    test11.a = 123;
    test11.b = 234;

    assert("struct test", test11.a == 123 && test11.b == 234);

    def fun3(data:TestData) 
    {
        assert("struct test2", data.a == 123 && data.b == 234);
    }

    fun3(test11->);

    var iii = 111;

    var p = iii<-;

    def fun3(value:int*) 
    {
        assert("reffernce test", value-> == 111);
    }

    fun3(p);

    def times(n:int, block:lambda()) 
    {
        for(var i=0; i<n; i++) {
            block();
        };
    }

    3.times(lambda() {
        puts("HO!");
    })

    var nn = 0;
    3.times {
        puts("HE!");
        nn++;
    }

    assert("simple lambda param test", nn == 3);

    var xb = 3;

    def funX(block:lambda(int,int):int):int
    {
        block(2,2)
    }

    var xmm = 1;

    var mm = funX() {
        xmm = 9;
        it + it2 + xb
    }

    assert("simple lambda param test2", mm == 7 && xmm == 9);

    struct Data {
        a:int;
        b:int;
    }

    def initialize(self:heap Data*):heap Data* {
        self.a = 111;
        self.b = 123;

        self
    }

    var ya = new Data;

    var xobj = ya.initialize();

    var xobj2 = xobj;

    assert("std::move test", xobj2.a == 111);

    struct Data2 {
        a:heap Data*;
        b:int;
    }

    def initialize(self:heap Data2*):heap Data2* {
        self.a = new Data;

        self.a.a = 123;
        self.a.b = 234;

        self.b = 123;

        self
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

    def initialize(self:heap Data5*):heap Data5* {
        self.a = 111;
        self.b = 222;

        self
    }

    var zz = new Data5.initialize();

    var zz2 = clone zz;

    assert("struct test X2", zz2.a == 111 && zz2.b == 222);

    struct Data6 {
        a:heap Data5*;
        b:int;
        c:heap char*;
    }

    def initialize(self:heap Data6*):heap Data6* {
        self.a = new Data5;
        self.a.a = 111;
        self.a.b = 222;
        self.b = 333;
        self.c = new char[5];

        self
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
    
    assert("string test", ("AAA" + "BBB").strcmp("AAABBB") == 0);
*/

    printf("1 + 1 == %d\n", 1 + 1);

    0
}

