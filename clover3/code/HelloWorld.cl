# test 4
#class HelloClass2 {
#    var a:int;
#    var b:int;
#
#    def method(a:int, block:lambda(b:int):int) : int {
#        a + block(2)
#    }
#}
#
#var obj2 = HelloClass2();
#
#var c = 1;
#
#obj2.method(2) {
#    c + b + 2
#}

#obj2.a = 2;
#obj2.a = 3;

# test5
#ls("-al").grep("src").less();
#jobs;
#fg;
#vim("src/vm.nc");

# test 1
#var a = 1;
#
#if(true) {
#    a = 2;
#    var b = 222;
#}
#
#if(true) {
#    a = 3;
#    var c = 333;
#}

# test 2
#class HelloClass {
#    var a:int;
#    var b:int;
#
#    def method(a:int, b:int) : int {
#        var c = 2;
#        a + b + c
#    }
#}
#
#var obj = HelloClass();
#
#obj.method(2, 2);

# test3
var b = 1;
var aaa = lambda(a:int):int {
    b = 2;
    2 + a + b
}

aaa(3)
b
