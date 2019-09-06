N = gets
res = 0
while g = gets&.split(' ')&.map(&:to_i)
  res += g.max
end

puts res
