=begin
Array 类的情况下：
若 new 方法没有参数，则会创建元素个数为 0 的数组；
若 new 方法只有一个参数，则会创建元素个数为该参数个数，且各元素初始值都为 nil 的数组；
若 new 方法有两个参数，则第一个参数代表元素的个数，第二个参数代表元素的初始值；
=end

a = Array.new
p a                       # => []

a = Array.new(5)          # => [nil, nil, nil, nil, nil]
p a

a = Array.new(5, 0)     # => [0, 0, 0, 0, 0]
p a
