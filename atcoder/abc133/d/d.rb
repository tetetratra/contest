require 'pp'
# 4 0 4
# 2 4 12 2 8

n = gets.to_i
a = gets.split.map(&:to_i)
yama = Array.new(n,nil)
yama[0] = a.map.with_index{|a, i|i.even? ? a : -a}.inject(&:+)
1.upto(n-1) do |i|
  yama[i] = 2 * a[i-1]- yama[i-1]
end
puts yama.join(' ')
