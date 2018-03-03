filename = ARGV[0]
file = File.open(filename)   # (1)
text = file.read             # (2)
print text                   # (3)
file.close                   # (4)
