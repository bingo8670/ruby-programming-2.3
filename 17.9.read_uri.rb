require "open-uri"

# 通过 HTTP 读取数据
open("http://www.ruby-lang.org/zh_cn/") do |io|
  puts io.read       # 将ruby 的官方网页输出到控制台
end

# 通过 FTP 读取数据
filename = "ruby-2.3.0.tar.gz"
url = "ftp://www.ruby-lang.org/pub/ruby/2.3/#{filename}"
open(url) do |io|
  File.binwrite(filename, io.read)   # 写入文件
end
