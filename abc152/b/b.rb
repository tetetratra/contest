a, b = gets.split.map(&:to_i)

x = a.to_s * b
y = b.to_s * a
puts [x,y].sort[0]

