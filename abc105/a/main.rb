# abc105 A
n, k = gets.split.map(&:to_i)
p (n == k || n % k == 0) ? 0 : 1
