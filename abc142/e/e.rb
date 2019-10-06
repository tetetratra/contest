require 'pp'
require 'prime'

n, m = gets.split.map(&:to_i)

kagis = []
m.times do
  a, b = gets.split.map(&:to_i) # 金額、開けれる金庫の種類
  c = gets.split.map(&:to_i)
  kagis << [a,b,c]
end

pp kagis
pp kagis.sort_by{|x|x[0]}

# 購入した鍵は何度でも使うOK
# 必要な費用の最小値

# 25 -1 69942

# 達成できなかったらとりあえず使う。
# できるように成ったら
