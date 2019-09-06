N = gets
while g = gets&.split(' ')&.map(&:to_i)
  puts(g[0] % g[1])
end
