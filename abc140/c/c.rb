require 'pp'

n = gets.to_i
b = gets.split.map(&:to_i)
b = b + [b[-1]]

p b[0] + b.each_cons(2).map{|a|a.min}.inject(:+)


# 9 6 53
