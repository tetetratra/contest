require 'pp'
p [gets.split.map(&:to_i), gets.split.map(&:to_i)].map{|x|x.inject(:+)}.max
