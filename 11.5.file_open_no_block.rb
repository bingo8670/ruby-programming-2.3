file = File.open("11.1.hash_each.rb")
begin
  file.each_line do |line|
    print line
  end
ensure
  file.close
end
