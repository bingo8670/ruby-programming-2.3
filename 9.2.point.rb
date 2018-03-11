class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect                 # 用 p 方法显示（x,y）
    "(#{x}, #{y})"
  end

  def +@
    dup                       # 返回自己的副本
  end

  def -@
    self.class.new(-x, -y)    # 颠倒 x,y 各自的正负
  end

  def ~@
    self.class.new(-y, x)    # 使坐标翻转 90 度
  end
end

point = Point.new(3,6)

p +point              # => ( 3, 6)
p -point              # => (-3, -6)
p ~point              # => (-6, 3)
