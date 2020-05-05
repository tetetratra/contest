# abc083 B
n, a, b = gets.split.map(&:to_i)

p 1.upto(n).select { |i|
  r = i.to_s.chars.map(&:to_i).inject(:+)
  a <= r && r <= b
}.inject(:+)
