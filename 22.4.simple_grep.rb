patterm = Regexp.new(ARGV[0])
filename = ARGV[1]

File.open(filename) do |file|
  file.each_line do |line|
    if patterm =~ line
      print line
    end
  end
end

file.close

# 输入 ruby 22.4.simple_grep.rb '孔乙己' kongyiji.txt | wc
