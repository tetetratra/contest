require 'pp'
n, k = gets.split.map(&:to_i)
s = gets.chomp.chars.slice_when{|a,b|a==?1 && b==?0}
p s.to_a
# 4 8 1
