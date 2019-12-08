require 'pp'
m1, d1 = gets.split.map(&:to_i)
m2, d2 = gets.split.map(&:to_i)
puts m1 == m2 ? 0 : 1
