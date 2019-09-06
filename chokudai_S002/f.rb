N = gets
res = 0
arr = []
while g = gets&.split(' ')&.map(&:to_i)
  a, b = g[0], g[1]
  arr << g.sort
end
arr.uniq!

puts arr.size
