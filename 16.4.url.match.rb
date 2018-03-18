str = "http://www.ruby-lang/ja"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"
