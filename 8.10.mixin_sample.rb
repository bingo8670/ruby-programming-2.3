module MyModule
  # 共通的方法等
end

class MyClass1
  include MyModule
  # MyClass1 中独有的方法
end

class MyClass2
  include MyModule
  # MyClass2 中独有的方法
end
