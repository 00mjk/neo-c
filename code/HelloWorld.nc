var n = 1+1;

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

def fun(aaa:bool) {
    assert(c"function param cast test", aaa);
}

var b = 1;

fun(b);

/*
n = 777

var m = n + 1;

def fun2(x:int, y:int):int {
    x + y;
}

fun2(1, 2)

var x = 4;

if(x == 3) {
    puts(c"TRUE");
}
elif(x == 2) {
    puts(c"TRUE2");
}
elif(x == 5) {
    puts(c"TRUE3");
}
else {
    puts(c"FALSE");
}

struct TestStruct {
    a: int;
    b: int;
}

var data = TestStruct();

data.a = 123;
data.b = 234;

def fun3(data:TestStruct*) {
    puts(c"struct test...");

    if(data.a == 123) {
        if(data.b == 234) {
            puts(c"TRUE");
        }
    }
}

fun3(data);

def fun4(str:char*) {
    puts(str);
}

c"aaa".fun4();

var i = 1;

if(i > 0) {
}
*/

/*
var i = 0;
while(i < 3) {
    puts(c"HO!");
    i = i +1;
}
*/


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
