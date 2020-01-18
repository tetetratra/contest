require "pp"
t, b, u, d, l, r = gets.split.map(&:to_i)
# puts "[t, b, u, d, l, r]"
# p [t,b,u,d,l,r]
# tが上。uがゴール方向
n = gets.to_i # 1000
a = []
n.times do
  a << gets.to_i
end
# p a
cnt = 0
n.times do |i|
  aa = a[i]
  if t == aa
    next
  end

  if b == aa
    cnt += 2
    b,t = t,b
    r,l = l,r
    next
  end

  if u == aa
    t, u, d, b, = u, b, t, d
    cnt += 1
  end

  if d == aa
    t, u, d, b, = d, t, b, u
    cnt += 1
  end

  if r == aa
    t, r, b, l, = r, b, l, t
    cnt += 1
  end

  if l == aa
    t, r, b, l, = l, t, r, b
    cnt += 1
  end

end
# p '===-'
p cnt
# 4 8
#
