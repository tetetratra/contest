require 'pp'

n = gets.to_i

max = n + 1
1.upto(n ** (0.5) + 1).map do |i|
  if n % i == 0
    max = [max,(n/i) + i].min
  end
end

p max - 2
