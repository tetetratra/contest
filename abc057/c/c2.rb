require 'pp'
require 'prime'
n = gets.to_i
ans = n.to_s.size
1.upto(n ** (1/2.0)) do |i|
  next if n % i != 0
  ans = [ans,[(n/ i), i].map(&:to_s).map(&:size).max].min
end
p ans
