class HelloCount
  @@count = 0               # 调用 hello 方法的次数

  def HelloCount.count      # 读取调用次数的类方法
    @@count
  end

  def initialize(myname="Ruby")
    @name = myname
  end

  def hello
    @@count += 1            # 累加调用次数
    puts "Hello, world. I am #{@name}.\n"
  end
end

bob   = HelloCount.new("Bob")
alice = HelloCount.new("Alice")
ruby  = HelloCount.new

p HelloCount.count          # => 0
bob.hello
alice.hello
ruby.hello
p HelloCount.count
