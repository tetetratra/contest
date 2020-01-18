require 'pp'
# 2 1 4
n, k = gets.split.map(&:to_i)
a, b = gets.chomp.split('1').map{|x|x.split.map(&:to_i)}.map(&:size)
# p k
# p '------'
# p a
# p b
a2 = if a.odd?
  (a + 1)/(k-1)
else
  a/(k-1)
end

b2 = if b.odd?
  (b + 1)/(k-1)
else
  b/(k-1)
end

# p '------'
# p a2
# p b2

p a2 + b2
=begin
0: 0
1: 1
2: 1
3: 2
4: 2
5: 3
6: 3
7: 4
8: 4
=end
