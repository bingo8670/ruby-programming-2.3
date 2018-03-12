x = y = z =0                  # 初始化 x,y,z
ary = [1, 2, 3]

ary.each do |x, y|            # 使用块变量x，块局部变量y
  y = x                       # 对块局部变量y赋值
  z = x                       # 对不是块局部变量的变量z赋值
  p [x, y ,z]                 # 确认块内 x,y,z 的值
end

puts                          # 输出空行
p [x, y, z]                   # 确认 x,y,z 的值
