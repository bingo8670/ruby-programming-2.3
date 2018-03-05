patterm = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
  if patterm =~ line
    print line
  end
end
file.close

# 输入 ruby 3.8.simple_grep.rb 模式 文件名，例如ruby 3.8.simple_grep.rb file 3.7.read_line.rb
