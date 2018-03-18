str = "abc    def  g    hi"
p str.sub(/\s+/, ' ')     # => "abc def  g     hi"
p str.gsub(/\s+/, ' ')    # => "abc def g hi"
# 将匹配的空白部分替换为一个空白

str  = "abracatabra"
nstr = str.sub(/.a/) do |matched|
  '<'+matched.upcase+'>'
end
p nstr                    # => "ab<RA>catabra"

nstr = str.gsub(/.a/) do |matched|
  '<'+matched.upcase+'>'
end
p nstr                   # => "ab<RA><CA><TA>b<RA>"

# sub     只替换首次匹配的部分；
# gsub    替换所有匹配的部分；
