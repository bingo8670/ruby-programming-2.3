patterm = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
  if patterm =~ line
    print line
  end
end
file.close
