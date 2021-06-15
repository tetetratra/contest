# https://leetcode.com/problems/coin-change/description/

def coin_change(coins, amount)
  return 0 if amount.zero?
  coins.reject! { |c| c > amount }
  return -1 if coins.empty?

  dp = Array.new(amount + 1) { nil } # index円をつくるのに必要な最小枚数
  coins.each { |c| dp[c] = 1 }
  1.upto(amount) do |i|
    next if dp[i]

    dp[i] = coins.map { |c|
      i - c >= 0 ? dp[i - c] + 1 : Float::INFINITY
    }.min
  end
  p dp
  dp[amount] == Float::INFINITY ? -1 : dp[amount]
end

coins = [1,2,5]
amount = 11
p coin_change(coins, amount) # 3
puts '------'
coins = [2]
amount = 3
p coin_change(coins, amount) # -1
puts '------'
coins = [1]
amount = 0
p coin_change(coins, amount) # 0
puts '------'
coins = [1]
amount = 1
p coin_change(coins, amount) # 1
puts '------'
coins = [1]
amount = 2
p coin_change(coins, amount) # 2
puts '------'
coins = [2]
amount = 1
p coin_change(coins, amount) # -1
puts '------'
coins = [2147483647]
amount = 2
p coin_change(coins, amount)


