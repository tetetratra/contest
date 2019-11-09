require 'pp'
w,h = gets.split.map(&:to_i)
dp = Array.new(h){Array.new(w){[0,0,0]}}


h.times do |hh|
  dp[hh][0] = [1,0,0]
end

w.times do |ww|
  dp[0][ww] = [1,0,0]
end


1.upto(h-1) do |hh|
  1.upto(w-1) do |ww|
    a = dp[hh-1][ww][1] + dp[hh][ww-1][1]
    b = dp[hh-1][ww][] + dp[hh][ww-1][]
    # a = dp[hh-1][ww][2] + dp[hh][ww-1][1]#+ dp[hh][ww-1][2]+ dp[hh-1][ww][1]
    # b = dp[hh][ww-1][0] + dp[hh][ww-1][1]
    # c = dp[hh-1][ww][0] + dp[hh-1][ww][2]
    dp[hh-1][ww][1]
    dp[hh][ww-1][2]
    dp[hh][ww] = [a,b,c]
  end
end
pp dp.reverse
p dp[-1][-1]
p dp[-1][-1].inject(:+) % 100000
