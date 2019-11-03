require 'pp'
n = gets.to_i
a = []
n.times do
  a << gets.to_i
end

p a.group_by(&:itself).map{|k,v|v.size-1}.inject(:+)
