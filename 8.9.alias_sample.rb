class C1                    # 定义 C1
  def hello                 # 定义 hello
    "Hello"
  end
end

class C2 < C1               # 定义继承了 C1的子类 C2
  alias old_hello hello     # 设定别名 old_hello

  def hello
    "#{old_hello}, again"   # 重定义hello
  end
end

obj = C2.new
p obj.old_hello            # => "Hello"
p obj.hello                # => "Hello, again"
