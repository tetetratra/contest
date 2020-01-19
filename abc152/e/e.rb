require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)
mod = 10**9 + 7
lcm = a.inject(:lcm)
# p lcm
b = []
a.each do |aa|
  b << lcm / aa
end
p b.inject(:+) % mod
