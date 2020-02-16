require 'pp'
N = gets.to_i
a = gets.split.map(&:to_i)
t = gets.to_i
n = (0..(N)).to_a

sum = 0

a.each.with_index(0){|aa, i|
  ns = n - [i]
  # p i
  # p ns
  sum += aa * ns.map{|nn|t - nn}.inject(:*) / ns.map{|nn|i - nn}.inject(:*)
  sum %= 10**9 + 7
}

p sum


# 13 999984471

