def total(from, to)
  result = 0                         # 合计值
  from.upto(to) do |num|             # 处理从from到to 到值
    if block_given?                  # 如果有块到话
      result += yield(num)           # 累加经过块处理到值
    else                             # 如果没有块到话
      result += num                  # 直接累加
    end
  end
  return result                      # 返回方法到结果
end

p total(1, 10)                       # 从1到10到和 =>55
p total(1, 10){ |num| num ** 2 }     # 从1到10的2次幂的和=> 385

n = total(1, 10) do |num|
  if num == 5
   break      # 块中使用break，程序会马上返回到调用块到地方；
  end
  num
end
p n                                  # => nil

n = total(1, 10) do |num|
  if num % 2 != 0
   next 0    # 块中使用next，程序就会中断当前处理，并继续执行下面到处理；
  end
  num
end
p n                                  # => 30
