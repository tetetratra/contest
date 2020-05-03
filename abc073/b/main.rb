# abc073 B
n = gets.to_i

lr = n.times.map {
  gets.split.map(&:to_i)
}

p lr.map{|(l,r)| r - l + 1 }.inject(:+)


