patterm = Regexp.new(ARGV[0])
filename = ARGV[1]

if /.gz$/ =~ filename    # 用 zcat命令解压 .gz 的文件；
  file = IO.popen("zcat #{filename}")
else
  file = File.open(filename)
end

file.each_line do |line|
  if patterm =~ line
    print line
  end
end
file.close
