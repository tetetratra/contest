require 'pp'
a, b = gets.split.map(&:to_i)
if 1 <= a && a <= 9 && 1 <= b && b <= 9
  p a * b
else
  p -1
end
