n = gets.to_i
a = []
n.times do
  a << gets.to_i
end
migi_a = []
migi_max = 0
a.size.times do |i|
  migi_max = [migi_max, a[i]].max
  migi_a << migi_max
end
# p migi_a

hidari_a = []
hidari_max = 0
a.size.times do |i|
  hidari_max = [hidari_max, a[(a.size) - 1 - i]].max
  hidari_a << hidari_max
end
hidari_a.reverse!
# p hidari_a

p hidari_a[1]
(a.size - 2).times do |i|
  p [migi_a[i], hidari_a[i+2]].max
end
p migi_a[-2]

=begin
4
3
4
#
5
5
=end
