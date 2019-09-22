require 'pp'
n, k = gets.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)
p p

p p.chunk_while{|a,b| a <= b}.to_a
# 2 1 6
