# 2, 0
n, k = gets.split.map &:to_i # N本の木。K本選ぶ。
# p [n,k]
x = [] # 木の高さ
while xx = gets
  x << xx.to_i
end
x.sort! # logM
mini = 10**9
(x.size-k+1).times do |i| # N
  mini = [mini,x[i+k-1] - x[i+0]].min
end

p mini
# each_cons使うと計算量が不明になる。のでやめよう。
# sortして3こずつ調べて、直接minをする、で少し早く処理しよう
