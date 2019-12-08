require 'pp'
n = gets.to_i

a = 0
b = 0
c = 0
d = 0
e = 0
f = 0

n.times do
  max, min = gets.split.map(&:to_f)
  a += 1 if 35 <= max
  b += 1 if 30 <= max && max < 35
  c += 1 if 25 <= max && max < 30
  d += 1 if 25 <= min
  e += 1 if 0 <= max && min < 0
  f += 1 if max < 0
end
puts [a,b,c,d,e,f].join(' ')
