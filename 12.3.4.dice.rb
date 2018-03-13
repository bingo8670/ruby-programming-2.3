def dice
  Random.rand(5) + 1    # +1 避免出现 0 
end

10.times {
  puts dice
}
