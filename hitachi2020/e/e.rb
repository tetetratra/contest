# e
require 'pp'
a, b, c = gets.split.map(&:to_i)
n = gets.to_i
d = gets.split.map(&:to_i)
s = gets.chomp.chars

c = []
n.times do
  c << gets.to_i
  c << gets.split.map(&:to_i)
  c << gets.chomp.chars
end
# puts c.map{|x| x.map{|xx| format("%2d",xx) }.join }.join("\n")

puts () ? 'Yes' : 'No'
puts () ? 'YES' : 'NO'


