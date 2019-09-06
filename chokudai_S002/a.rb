N = gets
while x = gets&.split(' ')&.map(&:to_i)
  a, b = x[0], x[1]
  puts(a * b)
end
