# c
require 'pp'
a, b, c = gets.split.map(&:to_i)

if a + b - c >= 0
  puts 'No'
else
  puts ((a + b - c)**2) > (4*a*b) ? 'Yes' : 'No'
end





