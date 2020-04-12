# b
require 'pp'
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = a.inject(:+).to_f
a2 = a.select{|aa|
  aa >= (sum/(4*m))
}






puts (a2.size >= m) ? 'Yes' : 'No'


