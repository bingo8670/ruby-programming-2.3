def accumlator
  total = 0
  Proc.new do |n|
    total += n
  end
end

acc = accumlator

p acc.call(1)      # => 1
p acc.call(2)      # => 3
p acc.call(3)      # => 6
p acc.call(4)      # => 10
