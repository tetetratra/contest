require 'pp'
n = gets.to_i
h = gets.split.map(&:to_i)
# 2 3 0
pp h.chunk_while{|a,b| a >= b}.to_a.map(&:size).max - 1
