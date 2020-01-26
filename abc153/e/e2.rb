require 'pp'
# 4 100 139815
H, N = gets.split.map(&:to_i)
# p [H, N]
ab = []
a = [] # 減らせる体力
b = [] # 使う魔力
N.times do
  ab << gets.split.map(&:to_i)
end

ab.sort_by!{|x|x[0]}

a = ab.map{|x|x[0]}
b = ab.map{|x|x[1]}

dp = Array.new(N){ Array.new(H+1, 10**10) } # nまでの技でhp:hの敵を倒すのにかかる魔力
dp[0][0]=0

# (H+1).times do |h| # hp = 0は0回, hp = 1は1回
  # dp[0][h] = (h.to_f / a[0]).ceil * b[0]
# end

N.times do |n| # hp = 0は0回
  dp[n][0] = 0
  # if n == 0
    # dp[0][1] = b[0]
    # next
  # end
  # dp[n][1] = [dp[n-1][1], b[n]].min
end
# pp dp

0.upto(N-1) do |n| # 使える技
  1.upto(H) do |h|
    if h-a[n] >= 0
      dp[n][h] = [
        dp[n][h - a[n]] + b[n],
        dp[n-1][h]
      ].min
    else
      dp[n][h] = dp[n-1][h]
    end
  end
end
# pp dp
p dp[-1][-1]


