patterm = Regexp.new(ARGV[0])
filename = ARGV[1]
len = ARGV[2].to_i

count = 0

File.open(filename) do |file|
  file.each_line do |line|
    line.scan(patterm) do |s|
      pre  = $`
      post = $'
      puts "#{pre[-len,len]} << #{s}>> #{post[0,len]} "
      count += 1
    end
  end
end
puts "count: #{count}"

# 输入 ruby 22.10.simple_match4.rb '孔乙己' kongyiji.txt 5 显示前后各 len 个字符
