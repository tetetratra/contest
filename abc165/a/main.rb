# abc165 A
k = gets.to_i
a, b = gets.split.map(&:to_i)
puts ((a..b).to_a.any?{|x|x % k == 0}) ? 'OK' : 'NG'


