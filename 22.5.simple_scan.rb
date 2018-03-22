patterm = Regexp.new(ARGV[0])
filename = ARGV[1]

count = 0

File.open(filename) do |file|
  file.each_line do |line|
    if patterm =~ line
      line.scan(patterm) do |s|
        count += 1
      end
      print line
    end
  end
end
puts "count: #{count}"

# 输入 ruby 22.5.simple_scan.rb '孔乙己' kongyiji.txt
