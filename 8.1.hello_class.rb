class HelloWorld                     # class 语句
  def initialize(myname = "Ruby")    # initialize 方法
    @name = myname                   # 初始化实例变量
  end

  def hello                          # 实例方法
    puts "Hello, world. I am #{@name}"
  end

  def name                           # 获取 @name
    @name
  end

  def name=(value)                   # 修改 @name
    @name = value
  end
end

bob   = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby  = HelloWorld.new

bob.hello
