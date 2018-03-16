#（1）
wday = {
  "sunday"    => "星期天",
  "monday"    => "星期一",
  "tuesday"   => "星期二",
  "wedensday" => "星期三",
  "thursday"  => "星期四",
  "friday"    => "星期五",
  "saturday"  => "星期六"
}
p wday

#(2)
p wday.size

#(3)
wday.each do |key, value|
  puts " “#{key}” 是 #{value}。"
end
