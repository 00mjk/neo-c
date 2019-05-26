def puts(str:char*):int;
def exit(rcode:int);

def assert(msg:char*, exp:bool) {
    puts(msg);
    if(!exp) {
        puts(c"assertion failed");
        exit(2);
    }
    puts(c"OK");
}

def fun():int {
    puts(c"HELLO WORLD");
    1+1;
}

var a = fun();

assert(c"function result test",a == 2);

def fun(exp:bool) {
    assert(c"function param cast test", exp);
}

var b = 1;

fun(b);

var n = 1+1;

assert(c"local variable test", n == 2);

n = 777

assert(c"local variable test", n == 777);

var m = n + 1;

assert(c"local variable test", m == 778);

def fun2(x:int, y:int):int {
    x + y;
}

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


struct TestStruct {
    a: int;
    b: int;
}

var data = TestStruct();

data.a = 123;
data.b = 234;

def fun3(data:TestStruct*) {
    assert(c"struct test", data.a == 123 && data.b == 234);
}

fun3(data);

def fun4(str:char*) {
    puts(str);
}

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

struct OpTest {
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

obj.a = 124;
assert(c"operator test9", --obj.a == 123 && obj.a == 123);



/*
def times(n:int, block:lambda()) {
    var i = 0;
    while(i < n) {
        block();
        n++;
    }
}


3.times(lambda { puts(c"HO!") })
*/
