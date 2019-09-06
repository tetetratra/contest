require 'pp'
n, k = gets.split.map &:to_i
a = gets.split.map(&:to_i)

sankaku_cnt = 0

sikaku_cnt = 0

a.size.times do |i|
  a.size.times do |ii|
    sikaku_cnt += 1 if a[ii] > a[i]
  end
end
# p sikaku_cnt

x = 1
n.times do |ii|
  x.upto(n-1) do |i|
    sankaku_cnt += 1 if a[ii] > a[i]
  end
  x += 1
end
# p sankaku_cnt

res = sankaku_cnt * k + (((k-1) * k)/2) * sikaku_cnt
p res % (10**9 + 7)
# 3 0 185297239
#     185297239
