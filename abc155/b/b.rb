require 'pp'
n = gets.to_i
d = gets.split.map(&:to_i)

puts d.select{|x|x % 2 == 0}.all?{|x|x % 3 == 0 || x % 5 == 0} ? 'APPROVED' : 'DENIED'

