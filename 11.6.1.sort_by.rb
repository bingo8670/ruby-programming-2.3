# %w(...)是一个用于生成以各单词为元素的数组的字面量
ary = %w(
  Ruby is a open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write
)

sorted = ary.sort_by{ |item| item.length }
p sorted
