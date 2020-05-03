# abc115 B
n = gets.to_i
c = n.times.map {
  gets.to_i
}.sort


p c[0..-2].inject(:+) + c[-1]/2

