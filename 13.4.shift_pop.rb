p "队列"
alpha = ["a", "b", "c", "d", "e"]
p alpha.push("f")   # => ["a", "b", "c", "d", "e", "f"]
p alpha.shift       # => "a"，删除“a”元素
p alpha             # => ["b", "c", "d", "e", "f"]

puts

p "栈"
alpha = ["a", "b", "c", "d", "e"]
p alpha.push("f")   # => ["a", "b", "c", "d", "e", "f"]
p alpha.pop         # => "f"，删除“f”元素
p alpha             # => ["a", "b", "c", "d", "e"]
=begin
           对数组开头的元素的操作      对数组开头的元素的操作
追加元素        unshift                  push
删除元素        shift                    pop
引用元素        first                    last
push 和 shift 方法可以实现队列；
push 和 pop   方法可以实现栈；
=end
