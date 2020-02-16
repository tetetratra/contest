N = read_line.to_i
a = read_line.split.map(&.to_i64)
t = read_line.to_i
n = (0..(N)).to_a

sum = 0

a.each.with_index(0){|aa, i|
  ns = n - [i]
  # p i
  # p ns
  sum += aa * ns.map{|nn|t - nn}.reduce{|m,i|m*i} / ns.map{|nn|i - nn}.reduce{|m,i|m*i}
  sum %= 10**9 + 7
}

p sum


# 13 999984471

