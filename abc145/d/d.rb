require 'pp'
x,y = gets.split.map(&:to_i)


# dp = Array.new(x){Array.new(y, 0)}
mod = 10**9 + 7

if (x+y) % 3 != 0
  p 0
  exit
end
p [x,y]
p fuga = x + y
p hoge = (x + y) / 3
diff = hoge-1
arr = []
sa = 1
hoge.upto(fuga-x + 1).each do |xx|
  # diff *= -1 if (fuga-xx) - xx == 1 || (fuga-xx) - xx == 0

  arr << [xx, fuga-xx, sa % mod]
  sa += diff
  diff -= 1
  sa %= mod

  # break if (fuga-xx) - xx == 1 || (fuga-xx) - xx == 0
end
pp arr
exit

arr2 = []
arr.each do |ar|
  arr2 << ar
  arr2 << [ar[1], ar[0], ar[2]]
end
arr2.uniq!
pp arr2

p arr2.find{|a|a[0] == x && a[1] == y}
666165506
151840682


# x.times do |xx|
#   dp[xx][0] = 0
# end
#
# y.times do |yy|
#   dp[0][yy] = 0
# end
# dp[0][0] = 1
#
# pp dp
# mod = 10**9 + 7
# x.times do |xx|
#   y.times do |yy|
#     next if x == 0 || y == 0
#     dp[xx][yy] += dp[xx-1][yy-2] if (yy-2 >= 0)
#     dp[xx][yy] += dp[xx-2][yy-1] if (xx-2 >= 0)
#     dp[xx][yy] %= mod
#   end
# end
#
# pp dp
#
# p dp[-1][-1]
