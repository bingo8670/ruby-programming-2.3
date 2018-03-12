def block_args_test
  yield()              # 0 哥块变量
  yield(1)             # 1 哥块变量
  yield(1, 2, 3)       # 3 哥块变量
end

puts "通过 |a| 接收块变量 "
block_args_test do |a|
  p [a]
end
puts

puts "通过 |a, b, c| 接收块变量 "
block_args_test do |a, b, c|
  p [a, b, c]
end
puts

puts "通过 |*a| 接收块变量 "
block_args_test do |*a|
  p [a]
end
puts
