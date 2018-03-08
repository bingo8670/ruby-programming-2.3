module M
  def meth
    "meth"
  end
end

class C
  include M         # 包含 M 模块
end

c = C.new
p c.meth            # => meth
p C.include?(M)     # => true
