require 'pp'
n = gets.to_i
k = gets.to_i


a = []
n.times do
  a << gets.to_i
end
# 7 68
p a.permutation(k).to_a.map{|x|x.map(&:to_s).join}.uniq.size
