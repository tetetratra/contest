require 'pp'
n = gets.to_i
m = gets.to_i
p,q,r = gets.split.map(&:to_i)
xy = []
m.times do
  xy << gets.split.map(&:to_i)
end
a = (1..n).to_a
xy.each do |(x,y)|
  a1 = a[0..(x-1)]
  a2 = a[x..(y-1)]
  a3 = a[y..-1]
  a = a3 + a2 + a1
end
p a[(p-1)..(q-1)].count{|x|x<=r}
