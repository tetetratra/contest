require 'pp'
s = gets.chomp.chars
x, y = gets.split.map(&:to_i)
p [x,y]
p s.chunk_while{|a,b| a == b }.to_a

# O O X X O X
