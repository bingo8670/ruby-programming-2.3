def power_of(n)
  lambda do |x|
    return x ** n            # 计算 x 的 n次幂
  end
end

cube = power_of(3)
p cube.call(5)         # => 125
