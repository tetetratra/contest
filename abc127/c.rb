N, M = gets.chomp.split.map &:to_i
g = gets&.split&.map(&:to_i)
a = g[0]
b = g[1]
res = (a..b).to_a
while g = gets&.split&.map(&:to_i)
  a = g[0]
  b = g[1]
  res = res & (a..b).to_a
end
p res.size
