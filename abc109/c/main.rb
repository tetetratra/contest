# abc109 C
n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i) + [x]
amin = a.min
a2 = a.map{|aa|aa - amin}
p a2.inject(:gcd)
