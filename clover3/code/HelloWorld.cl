var xassert = lambda(str:string, exp:bool):void {
    echo("-n", str);

    if(exp) {
        echo("...true");
    }
    else {
        echo("...false");
        exit(1);
    }
}

class int {
    def plus(right:int):int {
        self \+ right
    }
    def lesser(right:int):bool {
        self \< right
    }
    def lesserEqual(right:int):bool {
        self \<= right
    }
    def greater(right:int):bool {
        self \> right
    }
    def greaterEqual(right:int):bool {
        self \>= right
    }
    def equal(right:int):bool {
        self \== right
    }
    def notEqual(right:int):bool {
        self \!= right
    }
    def toString():string;
    def toCommand():command;
};

class bool {
    def toInteger():int;
    def toString():int;
    def toCommand():command;
};

class string {
    def equal(left:string):bool;
};

class list_item<T>
{
    var item:T;
    var prev:list_item<T>;
    var next:list_item<T>;
}

class list<T>
{
    var head: list_item<T>;
    var tail: list_item<T>;
    var len:int;
}

# test

xassert("test1", (3 <= 2).toInteger() == 0);

# test 7
var m = 0;
while(m < 2) {
    var n = 0;

    while(n < 5) {
        #n.toCommand().less();
        n = n + 1;

       if(n >= 3) {
           break;
        }
    };

    m = m + 1;
};

# test 7

#echo(1.toString()).less();
xassert("test1.5", (1+3) == 4);

# test 6
class HellClass3 {
    def method(a:int, b:string): int {
        123
    }
}

var obj3 = HellClass3();

xassert("test2", obj3.method(1, "ABC") == 123);



# test 4
class HelloClass2 {
    var a:int;
    var b:int;

    def method(a:int, block:lambda(b:int):int) : int {
        a + block(2)
    }
}

var obj2 = HelloClass2();

var c = 1;

xassert("test3", obj2.method(2) {
    c + b + 2
} == 7);

obj2.a = 3;
xassert("test4", obj2.a == 3);

# test5
#ls("-al").grep("src").less();
#jobs;
#fg;
#vim("src/vm.nc");

# test 1
var a = 1;

if(true) {
    a = 2;
    var b = 222;
}

if(true) {
    a = 3;
    var c = 333;
}

xassert("test5", a == 3);

# test 2
class HelloClass {
    var a:int;
    var b:int;

    def method(a:int, b:int) : int {
        var c = 3;
        a + b + c
    }
}

var obj = HelloClass();

xassert("test5.5", obj.method(2, 2) == 7);

# test3
var b = 1;
var aaa = lambda(a:int):int {
    b = 2;
    2 + a + b
}

xassert("test6", aaa(3) == 7);
xassert("test7", b == 2)

# test 5

try {
    throw "Exception";
    xassert("try test", false);
}
catch {
    xassert("try test", it == "Exception");
    xassert("try test2", true);
}

var fun = lambda(a:int, b:int): int {
    if(true) {
        return a + b;
    }

    1 + 1
}

xassert("return test", fun(1, 2) == 3);

class GenericsTest <T>
{
    var a:T;
    var b:T;

    def method(c:T): T {
        self.a + self.b + c
    }
}

var gg = GenericsTest<int>();

gg.a = 1;

xassert("generics test", gg.a == 1);

gg.b = 2;

xassert("generics test2", gg.b == 2);
xassert("generics test3", gg.method(4) == 7);

try {
    lx();
}
catch {
    echo(it);
}
