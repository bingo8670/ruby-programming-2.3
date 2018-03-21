def my_collect(obj, &block)
  buf = []
  obj.each do |item|
    buf << block.call(item)
  end
  buf
end

ary = my_collect([1, 2, 3, 4, 5]) do |i|
  i * 2
end

p ary     # => [2, 4, 6, 8, 10]
