# abc151 B
n, k, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = a.sum
x = (m * n) - sum
puts (if x <= 0
  0
elsif x > k
  -1
else
  x
end)
