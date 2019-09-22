# 2 0 5
require 'pp'
n = gets.to_i
s = gets.chomp.chars
# s = s.map.with_index{|ss,i|[ss,i]}
max = 0
1.upto(n) do |i|
  # p i
  # p s.each_cons(i).to_a.map.with_index{|a,i|[a,i]}
  # p s.each_cons(i).to_a.map.with_index{|a,i|[a,i]}
  # .group_by{|x|x[0]}.map{|k,v|v.map{|vv|vv[1]}}
  aaa = s.each_cons(i).map.with_index{|a,i|[a,i]}
  .group_by{|x|x[0]}.map{|k,v|v.map{|vv|vv[1]}}
  # .select{|x|x.size > 1}
  # arr = s.each_cons(i).to_a.map.with_index{|a,i|[a,i]}
  # .group_by{|x|x[0]}.map{|k,v|v.map{|vv|vv[1]}}
  # .select{|x|x.size > 1}.map{|z|z.each_cons(2).map{|(a,b)|b-a}}
  # .flatten#.any?{|z| z < i}
    # p arr
    # bool = arr.any?{|a|a >= i}
    # max = i if bool
  max = i if aaa.any?{|aa|(aa[-1] - aa[0]) >= i}
end

p max
