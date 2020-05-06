n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

b = a.map{|aa| (aa + 1) / 2.0}
# p b
max = 0
sum = b[0..(k-1)].inject(:+)
(k).upto(n-1) do |i|
  # p sum
  max = sum if sum > max
  sum += b[i]
  sum -= b[i-(k)]
end
max = sum if sum > max

p max


