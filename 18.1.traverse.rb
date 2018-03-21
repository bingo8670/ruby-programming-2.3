def traverse(path)
  if File.directory?(path)         # 如果是目录
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."          # 忽略当前目录和上级目录
      next if name == ".."         # 忽略当前目录和上级目录
      traverse(path + "/" + name)
    end
    dir.close
  else
    process_file(path)             # 处理文件
  end
end

def process_file(path)
  puts path                        # 输出结果
end

traverse(ARGV[0])
