patterm = Regexp.new("(.{10})("+ARGV[0]+")(.{10})")  #显示前后各10个字符
filename = ARGV[1]

count = 0

File.open(filename) do |file|
  file.each_line do |line|
    line.scan(patterm) do |s|
      puts "#{s[0]} << #{s[1]}>> #{s[2]} "
      count += 1
    end
  end
end
puts "count: #{count}"

# 输入 ruby 22.8.simple_match2.rb '孔乙己' kongyiji.txt  显示前后各10个字符
# bug :如果匹配项在前后各10个字符中，则不显示；
