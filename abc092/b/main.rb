# abc092 B
n = gets.to_i
d, x = gets.split.map(&:to_i)
A = n.times.map {
  gets.to_i
}
p A.map { |a|
  (1..d).step(a).size
}.inject(:+) + x



