require 'pp'

n = gets.to_i
s = gets.chomp.chars.map(&:to_i).map.with_index{|x,i|[x,i]}
# p s
pp s.permutation(3).to_a.select{|arr| arr.map{|x|x[1]} == arr.map{|x|x[1]}.sort }.map{|arr| arr.map{|x|x[0] }}.uniq
.size
