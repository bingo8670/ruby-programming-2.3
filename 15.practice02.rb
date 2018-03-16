#(4)
def str2hash(str)
  hash = Hash.new()
  array = str.split(/\s+/)   # 用空白符作为分割位置
  while key = array.shift    # shift 方法删除数组第一个元素
    value = array.shift      # 并返回删除的元素；
    hash[key] = value
  end
  return hash
end

p str2hash("bule 蓝 white 白\nred 红")
