require 'pp'
n, k = gets.split.map(&:to_i)
a = [(k-1) * (n-k) * (6),
(n-k) * 3,
(k-1) * 3,
1]

p a.inject(:+) / (n**3).to_f
