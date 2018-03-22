htmlfile = "kongyiji.html"
textfile = "kongyiji.txt"

html = File.read(htmlfile)

File.open(textfile, "w") do |f|
  in_header = true
  html.each_line do |line|
    if in_header && /<pre><code>/ !~ line  #开始行
      next
    else
      in_header = false
    end
    break if /<div class="copyright-announce">/ =~ line #结束行
    f.write line
  end
end
