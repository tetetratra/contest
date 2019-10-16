require 'pp'
n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

s = (1..n).map{|i|[gets.chomp, false]}
a.each do |aa|
  s[aa-1][1] = true
end
p s.sort_by!{|x|x[0]}


# ab -1 (空)
