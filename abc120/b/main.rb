# abc120 B
a, b, k = gets.split.map(&:to_i)

p (1..10000).select { |x|
  a % x == 0 && b % x == 0
}[-k]


