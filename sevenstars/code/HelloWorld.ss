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
    def to_string():int;
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
};

class string {
    def set_value(value:string):void;
    def equal(right:string?):bool;
    def not_equal(right:string?):bool;
    def to_command():command;
    def compare(right:string):int;
};

class object {
    def type_name():string;
    def num_fields():int;
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
}

class map<T, T2>
{
    def initialize():map<T,T2>;
}

save_class object;
save_class int;
save_class bool;
save_class string;
save_class list_item;
save_class list;
save_class buffer;
save_class map;
