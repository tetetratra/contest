require 'pp'
a, b, c = gets.split.map &:to_i
n = gets.to_i
s = gets.split(//)
arr = []
while g = gets
  arr << g.to_i
  arr << g.split.map(&:to_i)
  arr << g.chars
end
p a,b,c,s,n
