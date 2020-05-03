# b
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

r = n - a.sum

p r < 0 ? -1 : r

