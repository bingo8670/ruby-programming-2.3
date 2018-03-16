# (1)
str = "Ruby is an object oriented programming language"
ary1 = str.split
p ary1

# (2)
ary2 = ary1.sort
p ary2

# (3)
ary3 = ary1.sort_by{ |s| s.downcase }
p ary3

# (4)
# str1 = ary1.map(&:capitalize).join(' ')
# 简洁写法

str1 = ""
ary1.collect {|a| a[0]=a[0].upcase; a}.each{ |item|
  str1 += item + " "
}
p str1

# (5)创建散列，将字符作为键，该字符出现的次数作为值进行记录。最后对字符进行排序，将出现次数转换为星号后输出。

count = Hash.new
str.each_char do |c|
  count[c] = 0 unless count[c]
  count[c] += 1
end
count.keys.sort.each do |c|
  printf("'%s': %s\n", c, "*" * count[c])
end
