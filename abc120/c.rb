n, a, b, c = gets.split.map &:to_i # a,b,cの竹が欲しい
arr = []
mp = 0
n.times do
  arr << gets.to_i
end
# 最悪の全探索で行ける
# 逆にゴールからたどる?
# 11以上のをくっつけるなら結合魔法
# 大きのを結合して引く と 小さいのを結合して引く がある
# 23
# 0
# 243
