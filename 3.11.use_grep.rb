require_relative "grep"             # 读取 gerp.rb

patterm = Regexp.new(ARGV[0])
filename = ARGV[1]
simple_grep(patterm, filename)      # 调用 simple_grep 方法
