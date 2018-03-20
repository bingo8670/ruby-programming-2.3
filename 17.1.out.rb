5.times do |i|
  $stdout.puts "#{Random.rand}"      # 标准输出
  $stdout.puts "已经输出了 #{i+1}次"   # 标准输出
end


# 试着执行 ruby 17.1.out.rb > log.txt 
