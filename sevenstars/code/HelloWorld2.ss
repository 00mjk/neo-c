load_class object;
load_class int;
load_class bool;
load_class string;
load_class list_item;
load_class list;
load_class buffer;

macro list {
ruby <<'EOS'
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
        print("lambda(");
        i = 0;
        while i < params.size()
            print("param#{i}:any");

            if i != params.size()-1
                print(",")
            end

            i = i + 1;
        end

        puts("):list<any> {");

        puts("var result = new list<any>();");

        i = 0;
        while i < params.size()
            puts("result.push_back(param#{i});");

            i = i + 1;
        end

        puts("result");
        print("}(");
        i = 0;
        while i < params.size()
            print("#{params[i]}");

            if i != params.size()-1
                print(",")
            end

            i = i + 1;
        end

        puts(")");
    end
EOS
}

var xassert = lambda(str:string, exp:bool):void {
    echo("-n", str);

    if(exp) {
        echo("...true");
    }
    else {
        echo("...false");
        exit(1);
    };
};


xassert("normal block", { var xxx = 333; xxx+222+111 } == 666 && { var xxx = 555; xxx + 222 } == 777);



var afun = lambda(x:int, y:int):int {
    var a = x + y;
    a + 1
};

xassert("block test", afun(1,2) == 4);

xassert("block test2", 1+1 == 1+1);
xassert("block test3", { var a = 1+1; a } == { var b = 1+1; b });

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

var ax:EQTest? = new EQTest(1, 1);
var bx = ax;

xassert("eq", ax == bx);

xassert("eq", !(ax == null));

xassert("eq", ax != null);

xassert("object.num_fields", ax.num_fields() == 2);

ax = null;

class VarTestData {
    var a:int;
    var b:int;
}

class VarTest {
    var a:VarTestData?;
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

## test 7
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

## test 6
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

xassert("lambda test", lambda(b:int):int { 1 + b }(1) == 2);

xassert("lambda test", obj2.method(2) { b + 2 } == 6);

obj2.a = 3;
xassert("test4", obj2.a == 3);

## test5
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

var aaa = lambda(a:int):int {
    2 + a
}

xassert("test6", aaa(3) == 5);

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

var str2 = "ABC";

str2.set_value("DEF");

xassert("string test3", str2 == "DEF");

xassert("string test", "aaa" == "aaa");

var br = { 123 };

xassert("normal block test", br == 123);

var li3 = list!(1,2,3);

var li4 = list!(1,2,3);

xassert("list macro", li3 == li4);

var li = new list<int>();

li.push_back(1);
li.push_back(2);
li.push_back(3);
li.insert(2, 111);

xassert("list test", li.item(0, -1) == 1);
xassert("list test2", li.item(1, -1) == 2);
xassert("list test3", li.item(2, -1) == 111);
xassert("list test4", li.item(-1, -1) == 3);

li.delete(2);

xassert("list test5", li.item(2, -1) == 3);

li.delete_range(1, -1);

xassert("list test6", li.length() == 1);

li.replace(0, 999);

xassert("list test7", li.item(0,-1) == 999);

var li1 = new list<int>();
li1.push_back(1);
li1.push_back(2);
li1.push_back(3);

var li2 = new list<int>();
li2.push_back(1);
li2.push_back(2);
li2.push_back(3);

xassert("list equal", li1 == li2);

xassert("XYZ", { 123 } == 123);

xassert("block test", 
        lambda():any { var result = new list<int>(); result }() 
            == lambda():any { new list<int>() }() );

xassert("list sublist", li1.sublist(0,2) == list!(1,2));





var lia = 111;
var lib = 222;
var lic = 333;

xassert("list macro test", list!(lia, lib, lic) == list!(111, 222, 333));

var buf = new buffer();

buf.append_str("aaa");
buf.append_str("bbb");

xassert("buffer test", buf.to_string() == "aaabbb");

var li5 = list!(1, 2, 3);

xassert("list join test", li5.join(",") == "1,2,3");

var li6 = list!(1, 2, 3);

xassert("list map test", li6.map() { it.to_string() } == list!("1", "2","3"));

var li7 = list!(1, 2, 3);

xassert("list filter test", li7.filter() { it > 1 } == list!(2, 3));

var li8 = list!(6, 2, 4, 9, 7, 1);

xassert("list sort", li8.sort() { it.compare(it2) } == list!(1,2,4,6,7,9));

# test 5
#
#try {
#    throw "Exception";
#    xassert("try test", false);
#}
#catch {
#    xassert("try test", it == "Exception");
#    xassert("try test2", true);
#}

#try {
#    lx();
#}
#catch {
#    echo(it);
#}
#
