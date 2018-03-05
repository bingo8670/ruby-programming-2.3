patterm = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10        # 输出的最大行数
matches = 0             # 已匹配的行数

file = File.open(filename)
file.each_line do |line|
  if matches >= max_matches
    break
  end

  if patterm =~ line
    matches += 1
    print line
  end
end
file.close

# 输入 ruby 6.14.ten_lines_grep.rb 模式 文件名，例如 ruby 6.14.ten_lines_grep.rb if 6.14.ten_lines_grep.rb
