class AccTest
  def pub
    puts "pub is a public method."
  end

  public :pub    # 把 pub 方法设定为public（默认为public，可省略）

  def priv
    puts "priv is a private method."
  end

  private :priv  # 把 priv 方法设定为 private
end

acc = AccTest.new
acc.pub
acc.priv
