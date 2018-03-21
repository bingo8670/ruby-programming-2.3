def counter
  c = 0                  # 初始化计数器
  Proc.new do            # 每调用 1次call方法，计数器加1
    c += 1               # 返回加 1后的Proc 对象
  end
end

c1 = counter             # 创建计数器 c1 并计数
p c1.call                # => 1
p c1.call                # => 2
p c1.call                # => 3


c2 = counter             # 创建计数器 c2 并计数
p c2.call                # => 1
p c2.call                # => 2

p c1.call                # => 4
