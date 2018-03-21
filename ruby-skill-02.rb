第二部分 Ruby 的基础
第四章 对象、变量和常量
4.1 对象
在Ruby中，表现数据的基本单位成为对象（object）。

4.2 类
Ruby的类（class）表示的就是对象的种类。

4.3 变量
变量就像是对象的名片。
Ruby中有四种类型的变量：（命名方式决定变量种类）
局部变量（local variable）      ：以英文小写字母或者_开头
全局变量（global variable）     ：以 $ 开头
实例变量（instance variable）   ：以 @ 开头
类变量（class variable）        ：以 @@ 开头

4.4 常量（constant），以大写英文字母开头

4.5 保留字（不可作为变量名）

4.6 多重赋值
4.6.1 合并执行多个赋值操作
4.6.2 交换变量的值
4.6.3 获取数组的元素


第五章 条件判断
5.1 什么是条件判断
if 语句；
unless 语句；
case 语句；

5.2 Ruby中的条件
返回真价值的方法都要以 ？ 结尾。

5.3 逻辑运算符（nil或者false为假，其余为真）
条件1 && 条件2 ：和，一假即假，两真为真；
条件1 || 条件2 ：或，一真即真，两假为假；
！条件        ：非

5.4 if 语句
if 条件1 （then）
  处理1
elsif 条件2 (then)
  处理2
elsif 条件3 (then)
  处理3
else
  处理4
end

5.5 unless 语句（条件为假时执行处理）
unless 条件 (then)
  处理
end

5.6 case 语句（需要比较的对象只有一个，简单便于理解）
case 比较对象
when 值1 （then）
  处理 1
when 值2 （then）
处理 2
when 值3 （then）
  处理 3
else
  处理4
end

5.7 if 修饰符与 unless 修饰符（写在希望执行的代码后面）
puts "a 比 b 大" if a > b

总结：if 与 unless 可互换，使用的条件相反；

第六章 循环
6.3 实现循环的方法
· 使用循环语句
· 使用方法实现循环

6.4 times 方法（单纯执行一定次数的处理）
循环次数.times do
  希望循环的处理
end

循环次数.times {
  希望循环的处理
}
#两种times方法等价

6.5 for 语句
for 变量 in 开始时的数值..结束时的数值 （do）
  希望循环的处理
end

6.6 普通的for 语句
for 变量 in 对象 （do）
  希望循环的处理
end

6.7 while 语句（只要条件成立，就会不断地重复循环处理）
while 条件 (do)
  希望循环的处理
end

6.8 until 语句（一直执行循环处理，直到条件成立为止）
until 条件 （do）
  希望循环的处理
end

6.9 each 方法（块的 do~end 部分可换为 {~}，跨行用 do~end ，一行用 {~} ）
对象.each do |变量|
  希望循环的处理
end

对象.each { |变量|
  希望循环的处理
}

6.10 loop 方法（不断执行循环处理，需要 break 方法，使程序跳出循环）

6.11 循环控制
三种循环控制命令：
break ：终止程序，跳出循环；
next  ：跳到下一个循环；
redo  ：在相同条件下重复刚才的处理； （很少用）

总结：循环语句、方法及其主要用途
times方法 ：确定了循环次数时使用
for 语句  ：从对象中取出元素时使用
while语句 ：希望自由指定循环条件时使用
until语句 ：使用 while 语句使循环条件变得n难懂时使用
each 方法 ：从对象中取出元素时使用
loop 方法 ：不限制循环次数时使用


第七章 方法
7.1 方法的调用
7.1.1 简单的方法调用
对象.方法名（参数1，参数2，···，参数n）

7.2 方法的分类
根据接受者种类的不同，分为三种：实例方法，类方法，函数式方法；

7.3 方法的定义
def 方法名（参数1， 参数2，···）
  希望执行的处理
end


第八章 类和模块
类名的首字母必须大写。
当想知道某个对象的类时，可以使用class 方法；
当想知道某个对象是否属于某个类时，可以使用 instance_of? 方法；

8.2 创建类
class 类名
  类的定义
end

8.2.9 限制方法的调用
public     ：以实例方法的形式向外部公开该方法；（默认值，可省略）
private    ：在指定接收者的情况下不能调用该方法（只能使用缺省接收者的方式用该方法，因此无法从实例的外部访问）
protected  ：在同一个类中时可将该方法作为实例方法调用。

8.3.2 继承(在不修改已有类的前提下，通过增加新功能或重定义已有功能等来创建新的类)
class 类名 < 父类名
  类定义
end

8.4 alias 与 undef
alias 方法可以给方法设置别名：
alias 别名 原名      # 直接使用方法名
alias :别名 :原名    # 使用符号名

undef 方法用于删除已定义的方法：
undef 方法名      # 直接使用方法名
undef 方法名      # 使用符号名

8.6 模块是什么
模块与类的两点不同：模块不能拥有实例；模块不能被继承；

8.7 模块的使用方法
8.7.1 利用 Mix-in 扩展功能
Mix-in 就是将模块混合到类中。在定义类时使用include，模块中的方法、常量就能被类使用。可解决的问题：
· 虽然两个类拥有相似的功能，但是不希望把它们作为相同的种类（class）来考虑；
· Ruby 不支持父类的多重继承，因此无法对已经继承的类添加共通的功能；

8.7.2 提供命名空间（namespace）
命名空间（namespace）就是对方法、常量、类等名称进行区分及管理的单位。

8.8 创建模块
module 模块名
  模块定义
end

8.10 面向对象程序设计
8.10.2 面向对象的特征
· 封装（encapsulation）：使对象管理的数据不能直接从外部进行操作，数据的更新、查询等操作都必须通过调用对象的方法来完成。
封装的好处：
可以防止因把非法数据设置给对象而使程序产生异常的情况发生；
可以隐藏对象内部数据处理的具体细节，把内部逻辑抽象地表现出来。
· 多态（polymorphism） ：各个对象都有自己独有的消息解释权。同名方法属于多个对象（不同对象的处理结果也不一样）的现象。

8.10.3 鸭子类型（duck typing）
对象的特征并不是由其种类（类及其继承关系）决定的，而是由对象本身具有什么样的行为（拥有什么方法）决定的。

第九章 运算符
9.1 赋值运算符（将二元运算符与赋值“=”组合起来的运算符）
&&=  ||=   ^=   &=   |=   <<=   >>=   +=   -=   *=   /=   %=   **=

9.2 逻辑运算符的应用
特征：
· 表达式的执行顺序是从左到右；
· 如果逻辑表达式的真假已经可以确定，则不会再判断剩余的表达式；
· 最后一个表达式的v之为整体逻辑表达式的值。

9.3 条件运算符
条件？ 表达式1 ： 表达式2

9.4 范围运算符( .. 和 ... 两种)
x..y  的范围是从 x 到 y；
x...y 的范围是从 x 到 y 的前一个元素；

9.5 运算符的优先级
P120 图9.1查看优先级

第十章 错误处理与异常
10.1 关于错误处理
程序错误类型：数据错误，系统错误，程序错误；
debug方法：排除错误的原因，忽略错误，回复错误发生前的状态，重试一回，终止程序。

10.3 异常处理的写法（begin~rescue~end）
begin
  可能会发生异常的处理
rescue
  发生异常时的处理
end

10.4 后处理
不管是否发生异常都希望执行的处理，用 ensure来定义；
begin
  有可能发生异常的处理
rescue => 变量
  发生异常后的处理
ensure
  不管是否发生异常都希望执行的处理
end


第十一章 块
11.2 块的使用方法
11.2.1 循环
11.2.2 隐藏常规处理
11.2.3 替换部分算法

11.3 定义带块的方法