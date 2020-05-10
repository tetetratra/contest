# abc105 B
n = gets.to_i

dp = Array.new(n+1, false)
dp[3] = true
dp[6] = true
1.upto(n+1) do |i|
  next if i == 3 || i == 7

  dp[i] = (i-4 >= 0 && dp[i-4]) || (i-7 >= 0 && dp[i-7])
end
puts dp[n-1] ? 'Yes' : 'No'
