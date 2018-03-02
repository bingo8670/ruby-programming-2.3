代码范式：

条件判断：if~then~end
if 条件 （then）      #括号里的内容可省略
  条件成立时执行的处理
end

if 条件 （then）      #括号里的内容可省略
  条件成立时执行的处理
else
  条件不成立时执行的处理
end

循环：while语句，times方法     
while 循环条件 （do）  #括号里的内容可省略
  希望循环的处理
end

循环次数.times do
  希望循环的处理
end

数组的循环
数组.each do |变量|
  希望循环的处理
end

散列的循环
散列.each do | 键变量， 值变量 |
  希望循环的处理
end
