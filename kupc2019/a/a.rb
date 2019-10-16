require 'pp'
n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!
p a.count{|aa|aa + x >= a[-1]}
# 3 2
