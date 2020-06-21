class int {
    def set_value(value:int):void;
    def plus(right:int):int {
        self \+ right
    }
    def minus(right:int):int {
        self \- right
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
    def equal(right:int?):bool {
        self \== right
    }
    def not_equal(right:int?):bool {
        self \!= right
    }
    def to_string():string;
    def to_command():command;
    def compare(right:int):int {
        if(self < right) {
            return -1;
        }
        elif(self > right) {
            return 1;
        }

        0
    }
};

class bool {
    def set_value(value:bool):void;
    def to_int():int;
    def to_string():string;
    def to_command():command;

    def compare(right:bool):int {
        if(!self && right) {
            return -1;
        }
        elif(self && !right) {
            return 1;
        }

        0
    }

    def xassert(str:string):void {
        echo("-n", str);

        if(self) {
            echo("...true");
        }
        else {
            echo("...false");
            exit(1);
        };
    }
};

class string {
    def set_value(value:string):void;
    def equal(right:string?):bool;
    def not_equal(right:string?):bool;
    def to_command():command;
    def compare(right:string):int;
    def item(position:int, default_value:string) : string;
    def length():int;
    def to_string():string {
        self
    }
    def plus(right:string):string;
    def print():void {
        echo(self);
    }
    def write(file_name:string):void;
    def append(file_name:string):void;
    def substring(head:int, tail:int):string;
};

class object {
    def type_name():string;
    def num_fields():int;
    def field(n:int, default_value:any):any;
    def equal(right:object?):bool {
        self \== right
    }
    def not_equal(right:object?):bool {
        self \!= right
    }
}

class buffer
{
    def initialize():buffer;

    def append(mem:string, size:int):void;
    def append_char(c:int):void;
    def append_str(str:string):void;
    def append_nullterminated_str(str:string):void;
    def append_int(value:int):void;
    def alignment():int;

    def to_string():string;

    def length():int;

    def compare(right:buffer):int;
}

class object {
    def to_string():string {
        var buf = new buffer();

        var i = 0;
        while(i < self.num_fields()) {
            buf.append_str(self.field(i, null).to_string());
            if(i != self.num_fields()-1) {
                buf.append_str(",");
            }
            i++;
        }

        buf.to_string()
    }
}

class list_item<T>
{
    var item:T?;
    var prev:list_item<T>?;
    var next:list_item<T>?;
}

class list<T>
{
    var head: list_item<T>?;
    var tail: list_item<T>?;
    var len:int;

    def initialize():list<T> {
        self.head = null;
        self.tail = null;
        self.len = 0;

        self
    }

    def push_back(item:T):void {
        if(self.len == 0) {
            var litem = new list_item<T>;

            litem.prev = null;
            litem.next = null;
            litem.item = item;
            
            self.tail = litem;
            self.head = litem;
        }
        elif(self.len == 1) {
            var litem = new list_item<T>;

            litem.prev = self.head;
            litem.next = null;
            litem.item = item;
            
            self.tail = litem;
            self.head.next = litem;
        }
        else {
            var litem = new list_item<T>;

            litem.prev = self.tail;
            litem.next = null;
            litem.item = item;
            
            self.tail.next = litem;
            self.tail = litem;
        }

        self.len++;
    }

    def item(position:int, default_value:T) : T
    {
        if(position < 0) {
            position += self.len;
        }

        var it = self.head;
        var i = 0;
        while(it != null) {
            if(position == i) {
                return it.item;
            }
            it = it.next;
            i++;
        };

        default_value
    }
    def reset():T {
        self.head = null;
        self.tail = null;

        self.len = 0;
    }

    def insert(position:int, item:T):void
    {
        if(position < 0) {
            position += self.len + 1;
        }
        if(position < 0) {
            position = 0;
        }
        if(self.len == 0 || position >= self.len) 
        {
            self.push_back(item);
            return null;
        }

        if(position == 0) {
            var litem = new list_item<T>;

            litem.prev = null;
            litem.next = self.head;
            litem.item = item;
            
            self.head.prev = litem;
            self.head = litem;

            self.len++;
        }
        elif(self.len == 1) {
            var litem = new list_item<T>;

            litem.prev = self.head;
            litem.next = self.tail;
            litem.item = item;
            
            self.tail.prev = litem;
            self.head.next = litem;

            self.len++;
        }
        else {
            var it = self.head;
            var i = 0;
            while(it != null) {
                if(position == i) {
                    var litem = new list_item<T>;

                    litem.prev = it.prev;
                    litem.next = it;
                    litem.item = item;

                    it.prev.next = litem;
                    it.prev = litem;

                    self.len++;
                }

                it = it.next;
                i++;
            }
        }
    }
    def delete(position:int): void
    {
        if(position < 0) {
            position += self.len + 1;
        }

        if(position >= 0 && position < self.len)
        {
            if(self.len == 1) {
                self.head = null;
                self.tail = null;

                self.len = 0;
            }
            elif(self.len == 2) {
                if(position == 0) {
                    self.head = self.head.next;

                    self.head.prev = null;
                    self.head.next = null;

                    self.tail = self.head;

                    self.len--;
                }
                else {
                    self.head.next = null;
                    self.head.prev = null;

                    self.tail = self.head;

                    self.len--;
                }
            }
            else {
                var it = self.head;
                var i = 0;
                while(it != null) {
                    if(position == i) {
                        if(i == 0) {
                            self.head = it.next;
                            self.head.prev = null;

                            self.len--;
                        }
                        elif(i == self.len-1)
                        {
                           self.tail = it.prev;
                           self.tail.next = null;

                           self.len--;
                        }
                        else {
                            it.prev.next = it.next;
                            it.next.prev = it.prev;

                            self.len--;
                        }
                        break;
                    }

                    it = it.next;
                    i++;
                }
            }
        }
    }
    def replace(position:int, item:T):void
    {
        if(position < 0) {
            position += self.len;
        }

        var it = self.head;
        var i = 0;
        while(it != null) {
            if(position == i) {
                it.item = item;
                break;
            }
            it = it.next;
            i++;
        };
    }

    def delete_range(head:int, tail:int):void
    {
        if(head < 0) {
            head += self.len;
        }
        if(tail < 0) {
            tail += self.len + 1;
        }

        if(head > tail) {
            var tmp = tail;
            tail = head;
            head = tmp;
        }

        if(head < 0) {
            head = 0;
        }

        if(tail > self.len) {
            tail = self.len;
        }

        if(head == tail) {
            return null;
        }

        if(head == 0 && tail == self.len) 
        {
            self.reset();
        }
        elif(head == 0) {
            var it = self.head;
            var i = 0;
            while(it != null) {
                if(i < tail) {
                    it = it.next;
                    i++;

                    self.len--;
                }
                elif(i == tail) {
                    self.head = it;
                    self.head.prev = null;
                    break;
                }
                else {
                    it = it.next;
                    i++;
                }
            }
        }
        elif(tail == self.len) {
            var it = self.head;
            var i = 0;
            while(it != null) {
                if(i == head) {
                    self.tail = it.prev;
                    self.tail.next = null;
                }

                if(i >= head) {
                    it = it.next;
                    i++;

                    self.len--;
                }
                else {
                    it = it.next;
                    i++;
                }
            }
        }
        else {
            var it = self.head;

            var head_prev_it:list_item<T>? = null;
            var tail_it:list_item<T>? = null;

            var i = 0;
            while(it != null) {
                if(i == head) {
                    head_prev_it = it.prev;
                }
                if(i == tail) {
                    tail_it = it;
                }

                if(i >= head && i < tail) 
                {
                    var prev_it = it;

                    it = it.next;
                    i++;

                    self.len--;
                }
                else {
                    it = it.next;
                    i++;
                }
            }

            if(head_prev_it != null) {
                head_prev_it.next = tail_it;
            }
            if(tail_it != null) {
                tail_it.prev = head_prev_it;
            }
        }
    }

    def sublist(begin:int, tail:int):list<T> {
        var result = new list<T>();

        if(begin < 0) {
            begin += self.len;
        }

        if(tail < 0) {
            tail += self.len + 1;
        }

        if(begin < 0) {
            begin = 0;
        }

        if(tail >= self.len) {
            tail = self.len;
        }

        var it = self.head;
        var i = 0;
        while(it != null) {
            if(i >= begin && i < tail) {
                result.push_back(it.item);
            }
            it = it.next;
            i++;
        };

        result
    }

    def length(): int {
        self.len
    }

    def equal(right:list<T>?):bool {
        if(self.type_name() == "void" || right.type_name() == "void") {
            return self.type_name() == right.type_name();
        }

        #if(self.type_name() != right.type_name()) {
        #    return false;
        #}

        if(self.length() != right.length())
        {
            return false;
        }

        var it = self.head;
        var it2 = right.head;

        while(it != null) {
            if(it.item != it2.item) {
                return false;
            }
            it = it.next;
            it2 = it2.next;
        }

        true
    }
    def not_equal(right:list<T>?):bool {
        !self.equal(right)
    }

    def set_value(right:list<T>):void {
        self.reset();
        var i = 0;
        while(i < right.length()) {
            var it = right.item(i, null);

            self.push_back(it);
            i++;
        }
    }

    def clone():list<T> {
        var result = new list<T>();

        var i = 0;
        while(i < self.length()) {
            var it = self.item(i, null);

            result.push_back(it);
            i++;
        }

        result
    }

    def reverse(): list<T> {
        var result = new list<T>();

        var it = self.tail;
        while(it != null) {
            result.push_back(it.item);
            it = it.prev;
        }

        result
    }

    def join(separator:string):string {
        var buf = new buffer();

        var it = self.head;
        var i = 0;
        while(it != null) {
            if(i == self.length() - 1) {
                buf.append_str(it.item.to_string());
            }
            else {
                buf.append_str(it.item.to_string());
                buf.append_str(separator);
            }

            it = it.next;
            i++;
        }

        buf.to_string()
    }
    def map(block:lambda(it:T):any):list<any>
    {
        var result = new list<any>();

        var it = self.head;
        while(it != null) {
            result.push_back(block(it.item));

            it = it.next;
        }

        result
    }

    def filter(block:lambda(it:T):bool):list<T>
    {
        var result = new list<T>();

        var it = self.head;
        while(it != null) {
            if(block(it.item)) {
                result.push_back(it.item);
            }

            it = it.next;
        }

        result
    } 

    def merge_list(right:list<T>, compare:lambda(it:T,it2:T):int) : list<T>
    {
        var result = new list<T>();

        var it = self.head;
        var it2 = right.head;

        while(true) {
            if(it != null && it2 != null) {
                if(it.item == null) {
                    it = it.next;
                }
                elif(it2.item == null) {
                    it2 = it2.next;
                }
                elif(compare(it.item, it2.item) <= 0) 
                {
                    result.push_back(it.item);
                    it = it.next;
                }
                else {
                    result.push_back(it2.item);

                    it2 = it2.next;
                }
            }

            if(it == null) {
                if(it2 != null) {
                    while(it2 != null) {
                        result.push_back(it2.item);

                        it2 = it2.next;
                    }
                }
                break;
            }
            elif(it2 == null) {
                if(it != null) {
                    while(it != null) {
                        result.push_back(it.item);

                        it = it.next;
                    }
                }
                break;
            }
        }

        result
    }
    def merge_sort(compare:lambda(it:T,it2:T):int) : list<T>
    {
        if(self.head == null) {
            return self.clone();
        }
        if(self.head.next == null) {
            return self.clone();
        }

        var list1 = new list<T>();
        var list2 = new list<T>();

        var it = self.head;

        while(true) {
            list1.push_back(it.item);

            list2.push_back(it.next.item);

            if(it.next.next == null) {
                break;
            }

            it = it.next.next;

            if(it.next == null) {
                list1.push_back(it.item);
                break;
            }
        }

        list1.merge_sort(compare).merge_list(list2.merge_sort(compare), compare)
    }
    def sort(compare:lambda(it:T,it2:T):int):list<T> 
    {
        self.merge_sort(compare)
    }
    def each(block:lambda(it:T,it2:int,it3:bool):void):list<T> {
        var it = self.head;
        var i = 0;
        while(it != null) {
           var end_flag = false;
            block(it.item, i, end_flag);

            if(end_flag == true) {
                break;
            }
            it = it.next;
            i++;
        }

        self
    }

    def to_string():string {
        var buf = new buffer();

        buf.append_str("list(");

        var it = self.head;
        while(it != null) {
            buf.append_str(it.item.to_string());
            it = it.next;
            if(it != null) {
                buf.append_str(",");
            }
        }

        buf.append_str(")");

        buf.to_string()
    }
}

class string 
{
    def to_list():list<string> {
        var result = new list<string>();

        var line = new buffer();
        var n = 0;
        while(n < self.length()) {
            var c = self.item(n, "")

            if(c == "\n") {
                result.push_back(line.to_string());
                line = new buffer();
            }
            else {
                line.append_str(c);
            }

            n++;
        }

        if(line.length() > 0) {
            result.push_back(line.to_string());
        }

        result
    }
}

class map<T>
{
    def initialize():map<T>;
    def insert(key:string, item:T):void;
    def at(key:string, default_value:T?):T?;
    def find(key:string):bool;
    def length():int;
    def equal(right:map<T>?):bool;
    def not_equal(right:map<T>?):bool;
    def to_string():string;
}

class tuple1<T>
{
    var value1:T?;
    
    def initialize():tuple1<T> {
        self.value1 = null;
        
        self
    }
    
    def equal(right:tuple1<T>?):bool {
        if(self.type_name() == "void" || right.type_name() == "void") {
            return self.type_name() == right.type_name();
        }

        self.value1 == right.value1
    }
    
    def not_equal(right:tuple1<T>?):bool {
        !self.equal(right)
    }

    def to_string() : string {
        "tuple(" + self.value1.to_string() + ")"
    }
}

class tuple2<T, T2>
{
    var value1:T?;
    var value2:T2?;
    
    def initialize():tuple2<T,T2> {
        self.value1 = null;
        self.value2 = null;
        
        self
    }
    
    def equal(right:tuple2<T,T2>?):bool {
        if(self.type_name() == "void" || right.type_name() == "void") {
            return self.type_name() == right.type_name();
        };

        (self.value1 == right.value1) && (self.value2 == right.value2)
    }
    
    def not_equal(right:tuple2<T,T2>?):bool {
        !self.equal(right)
    }

    def to_string() : string {
        "tuple(" + self.value1.to_string() + "," + self.value2.to_string() + ")"
    }
}

class tuple3<T, T2, T3>
{
    var value1:T?;
    var value2:T2?;
    var value3:T3?;
    
    def initialize():tuple3<T,T2,T3> {
        self.value1 = null;
        self.value2 = null;
        self.value3 = null;
        
        self
    }
    
    def equal(right:tuple3<T,T2,T3>?):bool {
        if(self.type_name() == "void" || right.type_name() == "void") {
            return self.type_name() == right.type_name();
        };

        (self.value1 == right.value1) 
            && (self.value2 == right.value2)
            && (self.value3 == right.value3)
    }
    def not_equal(right:tuple3<T,T2,T3>?):bool {
        !self.equal(right)
    }
    def to_string() : string {
        "tuple(" + self.value1.to_string() + "," + self.value2.to_string() + "," + self.value3.to_string() + ")"
    }
}

class tuple4<T, T2, T3, T4>
{
    var value1:T?;
    var value2:T2?;
    var value3:T3?;
    var value4:T4?;
    
    def initialize():tuple4<T,T2,T3,T4> {
        self.value1 = null;
        self.value2 = null;
        self.value3 = null;
        self.value4 = null;
        
        self
    }
    
    def equal(right:tuple4<T,T2,T3,T4>?):bool {
        if(self.type_name() == "void" || right.type_name() == "void") {
            return self.type_name() == right.type_name();
        };

        (self.value1 == right.value1) 
            && (self.value2 == right.value2)
            && (self.value3 == right.value3)
            && (self.value4 == right.value4)
    }
    def not_equal(right:tuple4<T,T2,T3,T4>?):bool {
        !self.equal(right)
    }
    def to_string() : string {
        "tuple(" + self.value1.to_string() + "," + self.value2.to_string() + "," + self.value3.to_string() + "," + self.value4.to_string() + ")"
    }
}

class command
{
    def to_string():string;
    def to_list():list<string> {
        self.to_string().to_list()
    }
}

class type
{
    def initialize(name:string):type;

    def name():string;
    def class():class;
    def equal(right:type?): bool;
    def not_equal(right:type?): bool;
}

class class
{
    def initialize(name:string):class;

    def name():string;
    def parent(default_value:class?):class;
    def method(name:string, default_value:method?):method;
    def field(name:string, default_value:method?):field;
    def equal(right:class?): bool;
    def not_equal(right:class?): bool;
}

class method
{
    def name():string;
    def param_name(n:int, default_value:string?):string;
    def param_type(n:int, default_value:type?):type;
    def num_params():int;
    def result_type():type;
    def equal(right:method?): bool;
    def not_equal(right:method?): bool;
}

class field
{
    def name():string;
    def result_type():type;
    def equal(right:field?): bool;
    def not_equal(right:field?): bool;
}

save_class object;
save_class int;
save_class bool;
save_class string;
save_class list_item;
save_class list;
save_class buffer;
save_class map;
save_class command;
save_class tuple1;
save_class tuple2;
save_class tuple3;
save_class tuple4;
save_class class;
save_class method;
save_class field;
save_class type;
