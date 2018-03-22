patterm = Regexp.new(ARGV[0])
filename = ARGV[1]

count = 0

File.open(filename) do |file|
  file.each_line do |line|
    line.scan(patterm) do |s|
      pre  = $`
      post = $'
      puts "#{pre[-10,10]} << #{s}>> #{post[0,10]} "
      count += 1
    end
  end
end
puts "count: #{count}"

# 输入 ruby 22.9.simple_match3.rb '孔乙己' kongyiji.txt  显示前后各10个字符
