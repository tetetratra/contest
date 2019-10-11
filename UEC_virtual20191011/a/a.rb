require 'pp'

n = gets.to_i
a = []
b = []
n.times do
  aa, bb = gets.split.map(&:to_i)
  a << aa
  b << bb
end

ap = 0
bp = 0
n.times do |i|
  if a[i] < b[i]
    bp += a[i] + b[i]
  elsif a[i] > b[i]
    ap += a[i] + b[i]
  else
    ap += a[i]
    bp += b[i]
  end
end
puts "#{ap} #{bp}"
# 19 8
# 20 0
# 15 14
