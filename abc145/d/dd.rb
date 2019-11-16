require 'pp'
x,y = gets.split.map(&:to_i)

mod = 10**9 + 7
p [x/2, y/2]

exit
dp = Array.new(x){Array.new(y, 0)}

x.times do |xx|
  dp[xx][0] = 1
end
y.times do |yy|
  dp[0][yy] = 1
end
dp[0][0] = 1
