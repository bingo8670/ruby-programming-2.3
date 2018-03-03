def simple_grep(patterm, filename)
  file = File.open(filename)
  file.each_line do |line|
    if patterm =~ line
      print line
    end
  end
  file.close
end
