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
    def set_value(value:bool):void;
    def to_int():int;
    def to_string():int;
    def to_command():command;
};

class string {
    def set_value(value:string):void;
    def equal(right:string):bool;
    def not_equal(right:string):bool;
    def to_command():command;
};

class object {
    def type_name():string;
    def num_fields():int;
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
    def each(block:lambda(it:T,it2:int,it3:bool):void):void {
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

            var head_prev_it:list_item<T> = null;
            var tail_it:list_item<T> = null;

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

    def equal(right:list<T>):bool {
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
}

save_class object;
save_class int;
save_class bool;
save_class string;
save_class list_item;
save_class list;
