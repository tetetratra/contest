require 'pp'
n = gets.to_i
x = gets.split.map(&:to_i)

min = 10**10

sum = 0
(x.min).upto(x.max) do |a|
  sum = x.map{|b| (b-a)**2 }.inject(:+)
  min = sum if sum <= min
  sum = 0
end

p min
