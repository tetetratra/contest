require 'pp'
n = gets.to_i
t = []
n.times do
  t << gets.to_i
end
ans = []
[true,false].repeated_permutation(n).map do |b|
  ans << [
    t.select.with_index{|tt,i|b[i]}.inject(:+).to_i,
    t.reject.with_index{|tt,i|b[i]}.inject(:+).to_i
  ].max
end
p ans.min
