# (1)
a = (1..100).to_a
p a

# (2)
a2 = Array.new(100, 1)
100.times do |i|
  a2[i] = a[i] * 100
end
p a2

# (3)
a3 = Array.new
100.times do |i|
  if a[i] % 3 == 0
    a3.push( a[i] )
    i += 1
  end
end
p a3

# (4)
a4 = a.reverse
p a4

# (5)
sum = 0
100.times do |i|
  sum += a[i]
  i += 1
end
p "数组a的总和为#{sum}"

# (6)
result = Array.new
10.times do |i|
  result << a[i*10, 10]
  # result.push(a[i*10, 10])
end
p result

# (7)
num1 = [1, 2, 3]
num2 = [4, 6, 8]
sum = Array.new
3.times do |i|
  sum << num1[i] + num2[i]
end
p sum
