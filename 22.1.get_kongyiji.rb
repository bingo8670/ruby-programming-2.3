require "open-uri"

url = "http://www.ituring.com.cn/article/274457"
filename = "kongyiji.html"

File.open(filename, "wb") do |f|   # wb 以二进制的方式写入文件
  text = open(url, "r:utf-8").read
f.write text        # utf-8 环境使用此段代码
  #f.writetext.encode("GB18030")   # 中文版windows使用此段代码
end
