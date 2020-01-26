require 'pp'
# 4 100 139815
H, N = gets.split.map(&:to_i)
# p [H, N]
a = [] # 減らせる体力
b = [] # 使う魔力
N.times do
  a_, b_ = gets.split.map(&:to_i)
  a << a_
  b << b_
end
ab = a.zip(b)

ab.sort_by!{|(aa,bb)|aa}
a = ab.map{|x|x[0]}
b = ab.map{|x|x[1]}

# p a
# p b
dp = Array.new(N){ Array.new(H+1, 0) } # nまでの技でhp:hの敵を倒すのにかかる魔力

N.times do |n| # hp = 0は0回, hp = 1は1回
  dp[n][0] = 0
end

(H+1).times do |h| # hp = 0は0回, hp = 1は1回
  dp[0][h] = (h.to_f / a[0]).ceil * b[0]
end

bmin = a.sort[0]

inf = 10**11
1.upto(N-1) do |n| # 使える技
  1.upto(H) do |h|
    # dp[n][h] = [  (h-a[n] >= 0 ? dp[n-1][h - a[n]] + b[n] : inf),  dp[n-1][h]  ].min
    dp[n][h] = [  (h-a[n] >= 0 ? dp[n][h - a[n]] + b[n] : inf),  dp[n-1][h]  ].min
  end
end

# pp dp

pp dp[-1][-1]
