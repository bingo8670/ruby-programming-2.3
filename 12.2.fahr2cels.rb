def fahr2cels(fahr)
  cels = (fahr - 32) * 5 / 9
end

for fahr in (1..100) do
  p " 华氏度 #{fahr} 度相当于摄氏度 #{fahr2cels(fahr)} 度"
  fahr += 1
end
