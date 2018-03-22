patterm = Regexp.new(ARGV[0])
filename = ARGV[1]

count = 0

File.read(filename).scan(patterm) do |s|
        count += 1
end
puts "count: #{count}"

# 输入 ruby 22.6.simple_count.rb '孔乙己' kongyiji.txt
