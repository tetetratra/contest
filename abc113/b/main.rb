# abc113 B
n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map.with_index(1){|x,i|[x.to_i,i]}

p h.sort_by{|hh|
  (a - (t - hh[0] * 0.006)).abs
}[0][1]


