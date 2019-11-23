require 'pp'
n = gets.to_i
xy = []
n.times do
  xy << gets.split.map(&:to_f)
end

arr = xy.permutation(2).to_a.map{|((ax,ay),(bx,by))|
  ((ax-bx)**2 + (ay-by)**2)**(0.5)
}
pp arr.max
