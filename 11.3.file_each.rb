file = File.open("11.1.hash_each.rb")
file.each_line do |line|
  print line
end
file.close
