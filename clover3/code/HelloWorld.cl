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
    def lesser_equal(right:int):bool {
        self \<= right
    }
    def greater(right:int):bool {
        self \> right
    }
    def greater_equal(right:int):bool {
        self \>= right
    }
    def equal(right:int):bool {
        self \== right
    }
    def not_equal(right:int):bool {
        self \!= right
    }
    def to_string():string;
    def to_command():command;
};

class bool {
    def to_int():int;
    def to_string():int;
    def to_command():command;
};

class string {
    def equal(right:string):bool;
    def not_equal(right:string):bool;
};

class object {
    def type_name():string;
    def equal(right:object):bool {
        if(self.type_name() == "void" && right.type_name() == "void") {
            return true;
        }

        self \== right
    }
    def not_equal(right:object):bool {
        if(self.type_name() == "void" && right.type_name() == "void") {
            return false;
        }

        self \!= right
    }
}

#class list_item<T>
#{
#    var item:T;
#    var prev:list_item<T>;
#    var next:list_item<T>;
#}
#
#class list<T>
#{
#    var head: list_item<T>;
#    var tail: list_item<T>;
#    var len:int;
#
#    def initialize():list<T> {
#        self.head = null;
#        self.tail = null;
#        self.len = 0;
#
#        self
#    }
#
#    def push_back(item:T):void {
#        if(self.len == 0) {
#            var litem = new list_item<T>;
#
#            litem.prev = null;
#            litem.next = null;
#            litem.item = item;
#            
#            self.tail = litem;
#            self.head = litem;
#        }
#        elif(self.len == 1) {
#            var litem = new list_item<T>;
#
#            litem.prev = self.head;
#            litem.next = null;
#            litem.item = item;
#            
#            self.tail = litem;
#            self.head.next = litem;
#        }
#        else {
#            var litem = new list_item<T>;
#
#            litem.prev = self.tail;
#            litem.next = null;
#            litem.item = item;
#            
#            self.tail.next = litem;
#            self.tail = litem;
#        }
#
#        self.len++;
#    }
#
#    def item(position:int, default_value:T) : T
#    {
#        if(position < 0) {
#            position += self.len;
#        }
#
#        var it = self.head;
#        var i = 0;
#        while(it != null) {
#            if(position == i) {
#                return it.item;
#            }
#            it = it.next;
#            i++;
#        };
#
#        return default_value;
#    }
#}
#
#var li = new list<int>();
#
#li.push_back(1);
#li.push_back(2);
#
#xassert("list test", li.item(0, -1) == 1);
#xassert("list test2", li.item(1, -1) == 2);

class EQTest {
    var a:int;
    var b:int;

    def initialize(a:int, b:int):EQTest {
        self.a = a;
        self.b = b;

        self
    }

    def method():int {
        self.a
    }
    def method2():int {
        self.b
    }
}

class EQTest2 extends EQTest {

}

var ax = new EQTest(1, 1);
var bx = ax;

xassert("eq", ax == bx);

xassert("eq", !(ax == null));

xassert("eq", ax != null);

ax = null;

xassert("eq", ax == null);

var ax2 = new EQTest2(1, 2);

xassert("eq", ax2.method() == 1 && ax2.method2() == 2);

class VarTestData {
    var a:int;
    var b:int;
}

class VarTest {
    var a:VarTestData;
    var b:int

    def initialize():VarTest {
        self.a = null;
        self.b = 0;
        self
    }

    def push():void {
        var v = new VarTestData;

        self.a = v;
        self.a.a = 123;
        self.a.b = 234;

        self.b++;
    }
}

var data = new VarTest();

data.push();

xassert("TEST", data.a.a == 123);

# test

xassert("test1", (3 <= 2).to_int() == 0);

# test 7
var m = 0;
while(m < 2) {
    var n = 0;

    while(n < 5) {
        #n.to_command().less();
        n = n + 1;

       if(n >= 3) {
           break;
        }
    };

    m = m + 1;
};

# test 7

#echo(1.to_string()).less();
xassert("test1.5", (1+3) == 4);

# test 6
class HellClass3 {
    def method(a:int, b:string): int {
        123
    }
}

var obj3 = new HellClass3;

xassert("test2", obj3.method(1, "ABC") == 123);



# test 4
class HelloClass2 {
    var a:int;
    var b:int;

    def method(a:int, block:lambda(b:int):int) : int {
        a + block(2)
    }
}

var obj2 = new HelloClass2;

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

var obj = new HelloClass;

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

var gg = new GenericsTest<int>;

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

class GenericsTest2<T>
{
    var a:T;
    var b:T;

    def initialize(a:T, b:T):GenericsTest2<T> {
        self.a = a;
        self.b = b;

        self
    }
}

var gg2 = new GenericsTest2<int>(1, 2);

xassert("generics test b", gg2.a == 1);
xassert("generics test b2", gg2.b == 2);

xassert("string test", "abc" == "abc");
xassert("string test2", "abc" != "ABC");
