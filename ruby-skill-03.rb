第三部分 Ruby 的类
第十二章 数值类
12.1 数值类的构成
Integer   ：整数，分为Float（浮点小数）和Bignum (大数)
Rational  ：有理数，numerator （分子）和 denomination (分母)
Complex   ：复数，real （实数）和imaginary（虚数）

12.2 数值的字面量（字面量的_会被自动忽略，每3位数字间隔一下）
二进制数   ：以0b 开头的数值；
八进制数   ：以0或者0o 开头的数值；
十进制数   ：以0d 开头的数值，或单纯的数字罗列；
十六进制数 ：以0x 开头的数值；
科学计数法 ：有效数字 + e/E + 表示指数的整数

12.3 算数运算
+加  -减  *乘  /除  %取余数  **乘方，幂

除法 ：
· x.duv(y)       ：返回 x 除以 y 后的商的整数；
· x.quo(y)       : 返回 x 除以 y 后的商(可能非整数)；
· x.modulo(y)    : 返回 x 除以 y 后的余数，和 x % y 等价；
· x.divmod(y)    : 以数组形式返回（ x 除以 y 后的商和余数）；
· x.remainder(y) : 返回 x 除以 y 后的余数，正负和 x 一致；

12.4 Math 模块（P158）
提供三角函数/对数函数等常用函数，常量PI（圆周率，3.1415926）和E（自然对数，2.7182818）

12.5 数值类型的转换
to_f : 将对象转换为 Float 对象；
to_i : 将对象转换为 Integer 对象；
to_r : 将对象转换为 Rational 对象；  分数
to_c : 将对象转换为 Complex 对象；   复数
round 方法用于四舍五入；
ceil  方法用于返回比接收者大的最小整数；
round 方法用于返回比接收者小的最大整数；

12.7 随机数
Random.rand ：不指定参数，返回比1小的浮点小数；参数为正整数是，返回0到该正整数之间的整数；

12.8 计数
n.times{|i| ...}                : 循环n次，从0 到n-1 的值会被依次赋值给i;
from.upto(to){|i| ...}          : 从from 开始循环对 i 进行加1处理，直到 i 等于 to.
from.downto(to){|i| ...}        :从from 开始循环对 i 进行减1处理，直到 i 等于 to.
from.stepto(to, step){|i| ...}  :从from 开始循环对 i 进行加 step 处理，直到 i 等于 to.


第十三章 数组类
13.1 数组特征
· 可以从数组中获取某个索引的元素， print name[2]
· 可以将任意值保存到数组的某个索引的元素中， name[0] = "Tom"
· 使用迭代器可以逐个取出数组中的元素， names.each{|name| puts name}


13.2 数组的创建方法
13.2.1 使用 Array,new
Array 类的情况下：
若 new 方法没有参数，则会创建元素个数为 0 的数组；
若 new 方法只有一个参数，则会创建元素个数为该参数个数，且各元素初始值都为 nil 的数组；
若 new 方法有两个参数，则第一个参数代表元素的个数，第二个参数代表元素的初始值；

13.2.2 使用 %w 与 %i (节省书写“”和，的时间;使程序更加简洁)
%w ：创建不包含空白的字符串数组；
%i ：创建元素为符号的数组；

13.2.3 使用 to_a 方法
很多类都定义了 to_a 方法，该方法能把该类的对象转换为数组；

13.2.4 使用字符串的 split 方法
split ：用逗号或者 空白隔开的字符串


13.3 索引的使用方法
13.3.1 获取元素（三种主流方法）
a[n]      ：提取从 0 开始的第 n 个元素，重新排列后创建新数组并返回；
a[n..m]   ：提取从 a[n] 开始到第 a[m] 之间的元素，重新排列后创建新数组并返回；
a[n, len] : 提取从 a[n] 开始的 len 个元素，重新排列后创建新数组并返回；

13.3.2 替换元素
a[n] = item             # 替换一个元素
a[n..m] = [n, ... m]    # 替换多个元素

13.3.3 插入元素
a[n, 0] ：在索引值为 n 的元素前插入新元素；

13.3.4 通过多个索引创建数组
a.values_at(n1, n2, ···)  ：提取元素 n1, n2 ···后重新创建数组并返回；


13.4 作为集合的数组
13.4.1 集合的运算
ary = ary 1 & ary2   :取出同时属于两个集合的元素，并创建新的集合（交集）
ary = ary 1 | ary2   :取出两个集合中的所有元素，并创建新的集合（并集，自动去重）
ary = ary 1 + ary2   :取出两个集合中的所有元素，并创建新的集合（并集，不去重）
ary = ary 1 - ary2   :取出 ary1 中不属于 ary2 的元素，并创建新的集合（补集）


13.5 作为列的数组
队列（queue）：按元素被追加时的顺序来获取元素的数据结构，FIFO（First-in First-out，先进先出），类似于排队；
栈（stack）  ：按元素被追加时的相反顺序来获取元素的数据结构，LIFO（Last-in First-out，先进后出），类似于取摞盘子；

           对数组开头的元素的操作      对数组末尾的元素的操作
追加元素        unshift                  push
删除元素        shift                    pop
引用元素        first                    last
push 和 shift 方法可以实现队列；
push 和 pop   方法可以实现栈；

13.6 数组的主要方法
13.6.1 为数组添加元素
a.unshift(item)            : 将item 元素添加到数组的开头；
a << item 或者 a.push(item) : 将item 元素添加到数组的末尾；
a.contact(b) 或者 a + b     : 连接数组 a 和 b, a/b并集；
a[n] = item      ：将数组 a 指定的部分的元素替换为 item.
a[n..m] = item   ：将数组 a 指定的部分的元素替换为 item.
a[n, len] = item : 将数组 a 指定的部分的元素替换为 item.

13.6.2 从数组中删除元素
a.compact      # 从数组 a 中删除 nil 元素；
a.compact!     # 返回删除nil 元素后的数组 a，没删除返回 nil.
a.delete(x)    # 从数组 a 中删除 x 元素；
a.delete_at(n) # 从数组 a 中删除 a[n]元素；

a.delete_if{|item|···}      # 如果块的执行结果为真，
a.reject{|item|···}         # 则删除item
a.reject!{|item|···}        # 破坏性

a.slice!(n)                 # 删除数组 a 中指定的部分，
a.slice!(n..m)              # 并返回剩余部分的值。
a.slice!(n, len)            # 破坏性

a.uniq                      # 删除数组 a 中的重复元素；
a.uniq!                     # 破坏性

a.shift       # 删除数组 a 的开头元素，并返回删除的值；
a.pop         # 删除数组 a 中末尾元素，并返回删除的值；


13.6.3 替换数组元素
a,collect{|item|···}        # 将数组a的各元素item传给块，
a,collect!{|item|···}       # 并用块处理过的结果创建新的数组
a.map{|item|···}
a.map！{|item|···}

a.fill(value)
# 将数组a的元素替换为value；一个参数时，所有元素值都变为value；
a.fill(value, begin)
# 两个参数时，从begin到末尾的元素变为value；
a.fill(value, begin, len)
# 三个参数时，从begin开始的len个元素都变为value；
a.fill(value, n..m)
#当第二个参数指定为[n..m]时，则指定范围内的元素值都变为value；


a.flatten      # 展开嵌套数组，使嵌套数组变成一个大数组；
a.flatten!

a.reverse      # 反转数组a 的元素顺序
a.reverse!

a.sort                # 对数组a 排序，方法可由块指定；
a.sort!               # 没块时使用 <=> 进行比较；
a.sort{|i,j|···}
a.sort！{|i,j|···}

a.sort_by(|i|···)     # 对数组a 排序，根据块运行结果对数组的所有元素进行排序；



13.8 处理数组中的元素

13.9 数组第元素

13.10 同时访问多个数组



第十四章 字符串类
14.1 字符串的创建
%Q 相当于用 "" 创建字符串；
%q 相当于用 '' 创建字符串；

14.2 获取字符串的长度
length/size 方法用于获取字符串的长度
bytesize 方法用于获取字节数
empty？ 方法用于查看字符串长度是否为 0 ；

14.3 字符串的索引（用法和数组的类似）

14.4 字符串的连接
将两个字符串合并为新的字符串：str = a + b
扩展原有的字符串： a << b,   a.concat(b)

14.5 字符串的比较
用 == 或者 != 来判断字符串是否相同，但意思相反；
用 正则表达式 来判断是否为相似的字符串；

字符串也有大小关系，但字符串的大小关系不是由字符串蛋长度决定的，是由字符编码但顺序决定的；

string.ord 方法可获取字符的码位；


14.6 字符串的分割（split 方法）
split 方法 ：用字符串中的特定字符l莱分割时使用； string.split(/:/)

14.7 换行符的使用方法
                 删除最后一个字符       删除换行符
非破坏性的            chop               chomp
破坏性的              chop!              chomp!

chomp！ 方法删除换行符
f.each_line do |line|
  line.chomp!
  处理 line
end

14.7 字符串的检索与替换
检索方法：
index   :从右到左检查字符串是否存在参数指定的字符串，返回字符串首个字符的索引值；
rindex  :从左到右检查字符串是否存在参数指定的字符串，返回字符串首个字符的索引值（最后一次出现的索引值）；
include ：字符串中是否存在参数指定的字符串，返回true或false；

替换方法：sub,gsub


14.9 字符串与数组的共通方法
14.9.1 与索引操作相关的方法
s[n]      = str
s[n..m]   = str
s[n, len] = str

s.slice(n)
s.slice(n..m)
s.slice(n, len)

s.slice!(n)       # 删除字符串s 的一部分，并返回删除的部分；
s.slice!(n..m)
s.slice!(n, len)

14.9.2 返回 Enumerator 对象的方法
each_line ：以 行 为单位进行循环处理
each_byte ：以字节为单位进行循环处理
each_char ：以字符为单位进行循环处理

14.9.3 与连接（concat）、反转（reverse）相关的方法
s.concat(s2)        # 连接
s+s2

s.delete(str)       # 从字符串 s 中删除字符串str
s.delete!(str)

s.reverse           # 反转字符串 s
s.reverse!

14.10 其他方法
s.strip             # 删除字符串 s 开头和末尾的空白字符；
s.strip!

s.upcase            # 字符串 s 内容全部大写
s.upcase!

s.downcase          # 字符串 s 内容全部小写
s.downcase!

s.swapcase          # 字符串 s 内容大小写互换
s.swapcase!

s.capitalize        # 字符串 s 仅首字母大写
s.capitalize!

s.tr("B", "b")      # 替换字符
s.tr!



第十五章 散列类
15.2 散列的创建
15.2.1 使用{}
{键 => 值}，键值对直接用 ，隔开；
{键 ：值}，符号作为键时使用

15.2.2 使用 Hash.new


15.3 值的获取与设定
h = Hash.new
h["key"] = "value"
p h["key"]    # => "value"

h.store("key", "value")         # store 方法设定值；
p h.fetch("key")   #=>"value"   # fetch 方法获取值；

15.3.1 一次性获取索引的键、值
获取键:      keys
获取值 :     values
获取键值对:   to_a

15.3.2 散列的默认值（防止指定了不存在的键，程序发生错误）
·创建散列时指定默认值    Hash.new()
·指定生成散列默认值的块
·用fetch 方法指定（优先级高于默认值及其块）


15.4 查看指定对象是否为散列的键或值(返回true/false)
h.key?(key)
h.has_key?(key)
h.include?(key)
h.member?(key)

h.value?(value)
h.has_value?(value)


15.5 查看散列的大小
h.size     # 查看散列的大小（键的数量）
h.length

h.empty?   # 查看散列的大小是否为 0 （不存在任何键）


15.6 删除键值
h.delete(key)   # 删除指定的键，没有的话返回 nil

h.delete_if{|key, val| ···}
h.reject!{|key, val| ···}
# 删除符合某种条件的键值；不符合删除条件时，delete_if 方法返回原来的散列，而reject！方法返回 nil。


15.7 初始化散列
h.clear   清空使用过的散列
h = Hash.new


15.8 合并两个散列
Hash#merge 方法可以合并两个散列，创建一个新的散列；
Hash#merge! 方法可以合并两个散列，更新作为接收者的散列。



第十六章 正则表达式类
16.1 正则表达式的创建方法
用 / / 将正则表达式模式的字符串括起来。
Regexp.new(str)        # 已经指定了字符串对象str

%r(模式)                # 正则表达式中包含 / 时使用，方便
%r<模式>
%r|模式|
%r!模式!


16.2 正则表达式的模式与匹配
正则表达式 =~ 字符串，返回该字符串起始字符的位置，没有的话nil。

if 正则表达式 =~ 字符串
  匹配时的处理
else
  不匹配时的处理
end

16.2.2 匹配行首和行尾
元字符：不用于匹配字符的特殊字符；
^  表示匹配行首；
$  表示匹配行尾；
\A 表示匹配字符串的开头；（可能多行，只匹配第一行）
\z 表示匹配字符串的末尾；（可能多行， 常用）
\Z 表示匹配字符串的末尾；如果末尾时换行符\n，则匹配换行符前一个字符；（ 不常用 ）


16.2.3 指定匹配字符的范围（可使用多个[]）
[AB]            :A或B
[ABC] [CAB]     :A或B或C (与顺序无关)
[012ABC]        :0,1,2,A,B,C 中的一个字符

[A-Z]           :从 A到 Z的全部大写英文字母
[a-z]           :从 a到 z的全部小写英文字母
[0-9]           :从 0到 9的全部数字
[A-Za-z]        :从 A到 Z与从 a到 z的全部英文字母
[A-Za-z_]       :全部英文字母与 _
[A-Za-z0-9_-]   :全部英文字母、全部数字、 _ 、-

# 在[] 的开头使用 ^时，^表示指定的字符以外的字符；
[^ABC]          :A、B、C 以外的字符
[^a-zA-Z]       :a到z,A到Z（英文字母）以外的字符


16.2.4 匹配任意字符（元字符 . ）
.               : 匹配任意字符（只能是一个字符，不可空）
/^...$/         :匹配字符数为3的行（指定字符数时使用）


16.2.5 使用反斜杠的模式
\s              :表示空白符，匹配空格、制表符、换行符、换页符
\d              :匹配从 0到 9的数字，等效于[0-9]
\w              :匹配大小英文字母与数字，等效于[A-Za-z0-9]
\A              :匹配字符串的开头（可能多行，只匹配第一行）
\z              :匹配字符串的末尾；（可能多行， 常用）

用 \ 对元字符进行转义：在 \ 后添加^,$,等非字母数字的元字符后，元字符不在发挥元字符的功能，当作 字符本身 用于匹配。


16.2.6 重复（元字符只对前一个字符发生作用。）
*               :重复 0 次以上
+               :重复 1 次以上
?               :重复 0 次或 1 次
{n}             :重复 n 次
{n, m}          :重复 n~m 次


16.2.7 最颠匹配
*?              : 0 次以上的重复中最短的部分；
+?              : 1 次以上的重复中最短的部分；



16.3 使用 quote 方法的正则表达式（转义元字符）

16.4 正则表达式的选项 （ /···/ i x m ）
i               : 忽略英文字母大小写的选项；
x               : 忽略正则表达式的k空白字符以及 # 后面的字符的选项；（正则表达式中写注释）
i               : 指定这个选项后，就可以使用 .匹配换行符了；


16.5 捕获（后向引用，提取正则表达式的匹配部分中的部分字符，$1）


16.6 使用正则表达式的方法
16.6.1 sub 方法与 gsub 方法（两个参数，用指定的字符串替换字符串中的某部分字符）
sub     # 只替换首次匹配的部分；
gsub    # 替换所有匹配的部分；


16.6.2 scan 方法(可匹配字符，但不同替换；对匹配部分进行处理)



第十七章 IO类
17.1 输入/输出的种类
17.1.1 标准输入/输出
标准输入         ：STDIN,   $stdin
标准输出         ：STDOUT,  $stdout
标准错误输出      ：STDERR,  $stderr

在执行程序时，在命令后加上“> 文件名”，就可以将程序执行时的输出结果保存到文件中。（重定向）


17.1.2 文件输入/输出（File 类）
io = File.open(file[, mode[, perm]] [, opt])
io = open(file[, mode[, perm]] [, opt])

file.close     关闭已打开的文件
file.close?    检查文件是否关闭

File.read(file[, length [, offset]])    # 不创建File对象，直接读取file 里面的数据。参数 length指定读取的长度，offset 指定从前面几个字节开始读取数据。

File.binread(file[, length[, offset]])  # 以二进制模式打开并读取 file。

File.write(file[, date[, offset]])      # 不创建File对象，直接向 file写入 data。 省略参数 offset时，会将文件的内容全部替换为 data；指定了该参数时，则会将前面 offset个字节写入文件，后面的数据保持不变。

File.binwrite(file[, data[, offset]])   # 以二进制模式打开并写入 file。



17.2 基本的输入/输出操作
17.2.1 输入操作
io.gets(rs)              # 读取对象 iov中的一行数据
io.each(rs)
io.each_lines(rs)
io.readlines(rs)

io.lineno                # 记录读取的行数
io.lineno=(number)

io.each_char    # 逐个字符地读取 io中的数据并执行块；string
io.each_byte    # 逐个字节地读取 io中的数据并启动块；ASCII

io.getc         # 只读取 io的一个字符；

io.ungetc(ch)   # 将参数 ch指定的字符退回到 io的输入缓冲区中

io.getbyte

io.ungetbyte(byte)

io.read(size)   # 读取参数 size中指定的大小的数据；


17.2.2 输出操作
io.puts(str0, str1, ···)   # 在字符串末尾添加换行符后输出；

io.putc(ch)  # 输出参数 ch指定的字符编码对应的字符，为字符串时输出首字母；

io.print(str0, str1, ···)       # 输出指定的字符串

io.printf(fmt, arg0, arg1, ···) # 按指定格式输出指定的字符串

io.write(str)  # 返回输入字符串的字节数



17.3 文件指针(file pointer)
文件指针(file pointer)或当前文件偏移量(current file offset) 表示 IO 对象指向文件的位置；

io.pos                   # 获取文件指针现在的位置
io.pos=(position)        # 改变文件指针的位置

io.seek(offset, whence)  # 移动文件指针

io.rewind                # 将文件指针返回到文件到开头；

io.truncate(size)        # 按参数指定大小截断文件



17.4 二进制模式与文本模式
io.binmode               # 默认是文本格式，使用 binmode 方法变更为二进制模式；


17.5 缓冲（buffering）
程序内部开辟出用来保存临时生成到数据副本的一定的空间，称为缓冲区（buffer）。缓冲区里累积一定量的数据后，就会进行输出处理，然后清空缓冲区。

io.flush  # 立即输出缓冲区中的数据

io.sync            # sync 是 synchronize 同步的意思；
io.sync=(state)    #  = true 时，同步写入操作；


17.6 与命令进行交互
IO.popen(command, mode)     # 用生成的IO对象输入/输出，会关联启动的命令command的标准输入/输出。

open("|command", mode)      # 将带有管道符号的命令传给open方法；


17.7 open-uri 库
require "open-uri"


17.8 stringio 库
require "stringio"



第十八章 File类与Dir类
18.1 File 类（操作文件系统的方法）
18.1.1 变更文件名
File.rename(before, after)

18.1.2 复制文件
FileUtils.cp      # 文件复制
FileUtils.mv      # 文件移动

18.1.3 删除文件
File.delete(file)
File.unlink(file)


18.2 目录的操作
Dir.pwd           # 当前目录
Dir.chdir(dir)    # 变更当前目录（dir 指定相对于当前目录的相对路径，也可以指定相对于根目录的绝对路径）

18.2.1 读取目录内容
Dir.open(path)
Dir.close

dir.read          # 逐个读取最先打开的目录下的内容；

Dir.glob
dir.glob("*")     # 获取当前目录中所有的文件名（非隐藏文件）
dir.glob(".*")    # 获取当前目录中所有的隐藏文件名

dir.glob("*.html", "*.htm")    # 获取当前目录中扩展名为.html或者.htm 的文件名；

Dir.glob(%w(*.html, "*.htm)    # 用 %w(...)生成字符串组使程序更加易懂；

Dir.glob("*/*.html", "*/*.htm")    # 获取子目录中扩展名为.html或者.htm 的文件名；

Dir.glob("foo.?")    # 获取文件名为foo,扩展名只有 1 个字符的文件；

Dir.glob("foo.[cho]")    # 获取文件名为foo.c、foo.h、foo.o 的文件；

Dir.glob("**/*")         # 获取当前目录及其子目录中所有的文件名；

Dir.glob("foo/**/*.html")   # 获取目录 foo 及其子目录中所有扩展名为 .html 的文件名。


18.2.2 创建与产出目录
Dir.mkdir(path)          # 创建新目录
Dir.rmdir(path)          # 删除指定的空目录


18.3 文件与目录的属性
File.stat(path)          # 获取文件/目录的属性

File.ctime(path)         # 等效与File::Stat#ctime，文件状态的最后更改时间
File.mtime(path)         # 等效与File::Stat#mtime，文件的最后修改时间
File.atime(path)         # 等效与File::Stat#atime，文件的最后访问时间

File.utime(atim, mtime, path) # 改变文件属性中的atime,mtime。

File.chmod(mod, path)    # 修改文件path 的访问权限permission (mode 的值为整数，表示新的访问权限值)

File.chown(owner, group, path)   # 改变文件path的所有者


18.4 文件名的操作
File.basename(path[, suffix])   # 返回路径名path中最后一个“/”以后的部分。如果指定了扩展名suffix，返回文件名；

File.dirname(path)   # 返回返回路径名path中最后一个“/”之前的部分。路径不包含“/”则返回 "."。

File.extname(path)   # 返回路径名path中最basename 方法返回结果中的扩展名；没有扩展名或者隐藏文件"."，返回空字符串“”

File.split(path)     # 将路径名path 分割为目录名与文件名；

File.join(name[, name2, ···])  # 连接参数指定的字符串

File.expand_path(path[, default_dir]) # 将绝对路径 default_dir换为相对路径；



18.5 与文件操作相关的库
18.5.1 find 库
Find.find(dir){|path|···}    # 将目录dir下的所有文件路径逐个传递给path
Find.prume      # 跳过当前查找目录下的所有路径


18.5.2 tempfile 库
Tempfile.new(basename[, tempdir])    # 创建临时文件，格式为”basename + 进程ID + 流水号“”

tempfile.close(real)    # 关闭临时文件（real默认为false，为true时，马上删除临时文件）

tempfile.open    # 再次打开close 方法关闭的临时文件
tempfile.path    # 返回临时文件的路径名


18.5.3 fileutils 库
FileUtils.cp(from, to)      # 把文件从 from 复制到 to。
FileUtils.cp_r(from, to)    # 把文件从 from 复制到 to。from 为目录是，进行递归复制；

FileUtils.mv(from, to)      # 把文件从 from 移动到 to。
FileUtils.rm(path)          # 删除path(发生异常中断处理)
FileUtils.rm_f(path)        # 删除path(忽略异常继续处理)

FileUtils.compare(from, to) # 比较from/to 内容，返回 true/false

FileUtils.install(from, to[, option]) # 把文件从 from 复制到 to。如果to 已经存在，且与from 内容相同，则不会复制。option 参数用于指定目标文化的访问权限；

FileUtils.mkdir_p(path)     # 用于创建多层目录



第十九章 Encoding 类
19.1 Ruby的编码与字符串
脚本编码：决定字面量字符串对象的编码的信息，与脚本的字符编码一致
内部编码：从外部获取的数据在程序中如何处理的信息；
外部编码：从程序向外部输出时与编码相关的信息；


19.2 脚本编码与魔法注释
脚本编码：脚本自身的编码。（script encoding）
魔法注释：指定脚本编码的注释。（magic comment）

19.3 Encoding 类
string.encoding 方法会返回 Encoding 对象；
Encoding.compatible?(str1, str2)   # 检查两个字符串的兼容性。

Encoding.default_external    # 返回默认的外部编码
Encoding.default_internal    # 返回默认的内部编码
Encoding.find(name)          # 返回编码名为name对应的Encoding 对象。

Encoding.list                # 返回Encoding一览表
Encoding.name_list           # 返回编码名的字符串一览表

enc.name              # 返回 Encoding 对象 enc的编码名
enc.names        # 返回包含 Encoding 对象的名称一览表的数组


19.4 正则表达式与编码

19.5 IO类与编码
io.set_encoding(encoding)
File.open(file, "mode:encoding")
