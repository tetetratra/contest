require 'pp'
n,k = gets.split.map(&:to_i)
s = gets.chomp.chars
ss = s.map.with_index{|s,i|[s,i]}.chunk_while{|a,b|a[0] == b[0]}.map{|a|a.size * (a[0][0] == "R" ? 1 : -1)}.to_a
# 3 9 9 7
p k
p s
p ss
# p ss.map(&:abs).each_cons(2).map{|x|x.inject(:+)}
# p ss.map(&:abs).each_cons(2).map{|x|x.inject(:+)}.max(k).inject(:+)
