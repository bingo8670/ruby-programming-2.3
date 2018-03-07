def myloop
  while true
    yield     # 执行块
  end
end

num = 1                  # 初始化 num
myloop do
  puts "num is #{num}"   # 输出num
  break if num > 10      # num 超过10时跳出循环
  num *= 2               # num 乘 2
end
