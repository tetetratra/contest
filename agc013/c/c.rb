require 'pp'
n, l, t = gets.split.map(&:to_i)
xw = []
n.times do |i|
  xx, ww = gets.split.map(&:to_i) # 位置、向き
  ww = -1 if ww == 2
  xw << [xx,ww]
end

p xw
xw2 = xw.map{|z| (z[0] + z[1] * t) % l }
p xw2
