# b
require 'pp'
A, B, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

xyc = []
M.times do
  xyc << gets.split.map(&:to_i)
end


min = [a.min + b.min]
M.times do |i|
  x = xyc[i][0] - 1
  y = xyc[i][1] - 1
  c = xyc[i][2]
  min << a[x] + b[y] - c
end
p min.min


