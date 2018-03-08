def fetch_and_downcase(ary, index)
  if str = ary[index]
    return str.downcase
  end
end

ary = ["Bob", "Foo", "Woo"]
p fetch_and_downcase(ary, 1)     # => "foo"

hash = {0 => "Boo", 1 => "Foo", 2 => "Woo"}
p fetch_and_downcase(hash, 1)    # => "foo"
