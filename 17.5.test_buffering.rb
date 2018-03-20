filename = "buffering.txt"
File.open(filename, "w") do |file|
  3.times do |i|
    # 检查每写入5个字节后文件的大小
    file.write("a" * 5)
    puts " 第 #{i+1} 次：#{File.size(filename)}"
  end
end

puts " 结束后：#{File.size(filename)}"   # => 再检查一次
p File.read(filename)                  # => 确认输出

# 程序并不是在调用write 方法时写入文件，而是在完成所有写入操作并关闭文件后才最终将数据写入文件；
