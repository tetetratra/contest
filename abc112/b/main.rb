# abc112 B
n, T = gets.split.map(&:to_i)
ct = n.times.map {
  gets.split.map(&:to_i)
}

puts ct.select{|(c,t)|
  t <= T
}.sort_by{|(c,t)|c}[0]&.[](0) || 'TLE'
