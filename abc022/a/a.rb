require 'pp'
n, s, t = gets.split.map(&:to_i)
a = []
n.times do
  a << gets.to_i
end
aa = []
a.inject(0) do|m,i|
  aa << m+i
  m+i
end
p aa.count{|x|s <=x && x <= t}
