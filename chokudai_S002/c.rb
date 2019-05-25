N = gets
res = 0
while g = gets&.split(' ')&.map(&:to_i)
  aa = g[0] + g[1]
  res = res > aa ? res : aa
end

puts res
