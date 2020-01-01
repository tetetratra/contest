puts gets.chomp.split.reverse.join('')
exit
require 'pp'
a, b, c = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)
n = gets.to_i
s = gets.chomp.chars

arr = []
n.times do
  arr << gets.to_i
  arr << gets.split.map(&:to_i)
  arr << gets.chomp.chars
end
