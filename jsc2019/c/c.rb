require 'pp'
# 4 288 0
n = gets.to_i
s = gets.chars
s.sort!.reverse!
p s.select{|a|a == 'B'}.size * 2

p s


# 操作の順はどこから始めても同じ
# => 右からでいいっか

# ？しゃくとり
# B=1でW=0の和の偶奇がNの遇機と一致しないなら0
