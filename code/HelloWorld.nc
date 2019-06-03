def puts(str:char*):int;
def exit(rcode:int);
def malloc(size:long):char*;
def free(mem:char*);

def assert(msg:char*, exp:bool) 
{
    puts(msg);
    if(!exp) {
        puts(c"assertion failed");
        exit(2);
    }
    puts(c"OK");
}

def fun():int 
{
    puts(c"HELLO WORLD");
    1+1
}

def fun(exp:bool) 
{
    assert(c"function param cast test", exp);
}

def fun2(x:int, y:int):int 
{
    x + y
}

def fun4(str:char*) 
{
    puts(str);
}

def fun2(block:lambda(int,int):int):int 
{
    block(1,2)
}

def times(n:int, block:lambda()) 
{
    for(var i=0; i<n; i++) {
        block();
    };
}

def funX(block:lambda(int,int):int):int
{
    block(2,2)
}

struct TestData 
{
    a:int;
    b:int;
}

def fun3(data:TestData) 
{
    assert(c"struct test2", data.a == 123 && data.b == 234);
}

def fun3(value:int*) 
{
    assert(c"reffernce test", value-> == 111);
}

def main():int 
{
    if(1 == 1) {
        puts(c"TRUE");
    }
    else {
        puts(c"FALSE");
    }

    var a = fun();

    assert(c"function result test",a == 2);

    var b = 1;

    fun(b);

    var n = 1+1;

    assert(c"local variable test", n == 2);

    n = 777

    assert(c"local variable test", n == 777);

    var m = n + 1;

    assert(c"local variable test", m == 778);

    var l = fun2(1, 2)

    assert(c"function result test", l == 3);

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

    assert(c"if test", x == 5);

    c"aaa".fun4();

    var i = 1;

    assert(c"operator test", i > 0);

    i = 0;
    while(i < 3) {
        puts(c"HO!");
        i++;
    }

    i = 123;
    assert(c"operator test2", i++ == 123 && i == 124);

    i = 123;
    assert(c"operator test3", i-- == 123 && i == 122);

    i = 123;
    assert(c"operator test4", ++i == 124 && i == 124);

    i = 124;
    assert(c"operator test5", --i == 123 && i == 123);


    struct OpTest 
    {
        a:int;
        b:int;
    }

    var obj = OpTest();

    obj.a = 123;
    assert(c"operator test6", obj.a++ == 123);

    obj.a = 123;
    assert(c"operator test7", obj.a-- == 123 && obj.a == 122);

    obj.a = 123;
    assert(c"operator test8", ++obj.a == 124 && obj.a == 124);

    assert(c"operator test9", --obj.a == 123 && obj.a == 123);

    i = 2;
    i += 2;

    assert(c"operator test10", i == 4);

    for(var i=0; i<3; i++) {
        puts(c"HO!");
    }

    for(var i=0; i<3; i++) {
        puts(c"HE!");
    }

    var aa = 4;
    var bb = 1;

    var fun = lambda(x:int, y:int):int {
        bb = 222;
        x + y + aa
    }

    var xxx = fun2(fun);

    assert(c"lambda test", xxx == 7);
    assert(c"lambda test2", bb == 222);

    var xa = if(false) {
        111
    }
    else {
        222
    }

    assert(c"if test", xa == 222);


    var test11 = TestData();

    test11.a = 123;
    test11.b = 234;

    assert(c"struct test", test11.a == 123 && test11.b == 234);

    fun3(test11->);

    var iii = 111;

    var p = iii<-;

    fun3(p);

    3.times(lambda() {
        puts(c"HO!");
    })

    var nn = 0;
    3.times {
        puts(c"HE!");
        nn++;
    }

    assert(c"simple lambda param test", nn == 3);

    var xb = 3;

    var mm = funX() {
        it + it2 + xb
    }

    assert(c"simple lambda param test2", mm == 7);

    0
}


