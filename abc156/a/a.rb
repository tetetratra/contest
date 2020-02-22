require 'pp'
n, r = gets.split.map(&:to_i)
x = if n >= 10
  r
else
  r + 100 * (10-n)
end

puts x
