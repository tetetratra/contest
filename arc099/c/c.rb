require 'pp'
# 2 1 4
n, k = gets.split.map(&:to_i)
a = gets.split.map.with_index{|x,i|[x.to_i,i]}
# p k
# p a
a2 = a.sort_by{|x|x[0]}.map{|x|x[1]}
# p a2



cnt = 1
flag = true
pre2 = nil # 2個前
pre1 = nil # 1個前
a3 = a2.chunk{|x|
  pre2 = pre1
  pre1 = x
  if (pre2.nil? || (pre2 - x).abs <= 3) && (pre1.nil? || (pre1 - x).abs <= 3) && cnt < 4
    cnt += 1
    true
  else
    pre1 = nil
    pre2 = nil
    false
  end
}.to_a.map{|x|x[1]}

# p a3
p a3.size




