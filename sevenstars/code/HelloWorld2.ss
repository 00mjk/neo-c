load_class object;
load_class int;
load_class bool;
load_class string;
load_class list_item;
load_class list;

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
        puts("{");
        puts("var result = new list<any>();");

        params.each do |param|
            puts("result.push_back(#{param});");
        end

        puts("result");
        puts("}");
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


#xassert("normal block", { var xxx = 333; xxx+222+111 } == 666 && { var xxx = 555; xxx + 222 } == 777);
#
#
#
#var afun = lambda(x:int, y:int):int {
#    var a = x + y;
#    a + 1
#};
#
#xassert("block test", afun(1,2) == 4);
#
#xassert("block test2", 1+1 == 1+1);
#xassert("block test3", { var a = 1+1; a } == { var b = 1+1; b });
#
#class EQTest {
#    var a:int;
#    var b:int;
#
#    def initialize(a:int, b:int):EQTest {
#        self.a = a;
#        self.b = b;
#
#        self
#    }
#
#    def method():int {
#        self.a
#    }
#    def method2():int {
#        self.b
#    }
#}
#
#class EQTest2 extends EQTest {
#
#}
#
#var ax = new EQTest(1, 1);
#var bx = ax;
#
#xassert("eq", ax == bx);
#
#xassert("eq", !(ax == null));
#
#xassert("eq", ax != null);
#
#xassert("object.num_fields", ax.num_fields() == 2);
#
#ax = null;
