require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)

abs = nil

ruiseki_migi = [0]
tmp = 0
n.times do |i|
  tmp += a[i]
  ruiseki_migi << (tmp)
end
ruiseki_hidari = []
tmp = 0
n.times do |i|
  tmp += a[n-i-1]
  ruiseki_hidari << (tmp)
end
ruiseki_hidari.reverse!
ruiseki_hidari << 0

p ruiseki_migi.zip(ruiseki_hidari).map{|x|(x[0]-x[1]).abs}.min
