require 'pp'
n, t = gets.split.map(&:to_i)
ab = []
n.times do
  ab << gets.split.map(&:to_i) # w, v
end
dp = Array.new(n){ Array.new(t,0) }
pp dp

n.times do |i|
  t.times do |tt|
    next if i == 0 || t == 0
    dp[i][tt] = [ dp[i-1][tt], dp[i-1][tt - ab[i][0]].to_i + ab[i][1].to_i ].max

  end
end
pp dp

# 110
# 60
# 50
# 145
