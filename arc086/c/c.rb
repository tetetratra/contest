require 'pp'
m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
aa = a.group_by(&:itself).map{|k,v|v.size}.sort.reverse
# p aa
# p k
cnt = 0
until aa.size <= k
  ap = aa.pop
  cnt += ap
end
p cnt
