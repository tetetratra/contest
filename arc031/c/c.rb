require 'pp'
n = gets.to_i
b = gets.chomp.split.map.with_index{|x,i|[x,i]}
p b
bb = b.sort_by{|x|x[0]}
# 1 3 1
n.times do
  bb.unshift(bb.pop)
  p bb
end
