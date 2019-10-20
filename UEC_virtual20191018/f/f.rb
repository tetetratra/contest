require 'pp'
a,b = gets.split.map(&:to_i)
n = gets.to_i
arr = []
n.times do
  arr << gets.split.map(&:to_i)
end
# pp arr
dp = Array.new(b){Array.new(a)}
arr.each do |(aa,bb)|
  dp[bb-1][aa-1] = 0
end
dp[0][0] = 1
# pp dp
b.times do |bb|
  a.times do |aa|
    next if dp[bb][aa]
    dp[bb][aa] = dp[bb-1][aa].to_i + dp[bb][aa-1].to_i
  end
end
# pp dp
pp dp[-1][-1]

# 5
