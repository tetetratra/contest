require 'pp'
a = gets.split.map(&:to_i)
pp a.combination(3).map{|x|x.inject(:+)}.max(3)[-1]
