require 'pp'
n = gets.to_i
a = []
n.times do |i|
  a << gets.split.map(&:to_i)
end
# 3 4 -1
hoge = a.transpose.map{|a|a.map.with_index(1){|aa,i|[aa,i].sort}}
.flatten(1)
pp hoge
while hoge.size > n
  tmp = hoge.shift(n)
  tmp.group_by{|a|a}.reject{|k,v|v.size == 2}.map{|k,v|k}
  .each{|a| hoge.unshift(a) }
  pp hoge
end
