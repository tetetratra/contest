

a, b, c, d = gets.split.map &:to_i


range_cnt = 0
# roop_size = c * d / c.gcd(d)
roop_size = c.gcd(d) # 最大公約数
roop_size = c.lcm(d) # 最小公倍数
if roop_size == c * d
  roop_size = 1
end
# puts'koko'
p roop_size
1.upto(roop_size) do |i|
  if i % c != 0 && i % d != 0
    range_cnt += 1

  end
end
# puts'koko!'

a_miginokori = roop_size - (a % roop_size)

b_hidarinokori = (b % roop_size)

hidari = (a + a_miginokori)

migi = (b - b_hidarinokori)

roop_count = (migi - hidari + 1) / roop_size
roop_count = b - a if roop_size == 1
cnt = 0
p [roop_count ,(range_cnt)]

p cnt += roop_count * (range_cnt)
#
# a.upto(hidari) do |i|
#   cnt += 1 if i % c != 0 && i % d != 0
# end
#
# migi.upto(b) do |i|
#   cnt += 1 if i % c != 0 && i % d != 0
# end

p (c.lcm(d))

p cnt + d + c

# 2, 23, 53210507 1133627368
#        53210507 2968970968
#                 937510582
#                 419716939
