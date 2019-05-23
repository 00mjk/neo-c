var n = 1+1;

def puts(str:char*):int;

def fun():int {
    puts(c"HELLO WORLD");
    1+1;
}

fun();

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

