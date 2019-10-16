require 'pp'
n, m, W = gets.split.map(&:to_i)

w = []
v = []
n.times do
  g = gets.split.map(&:to_i)
  w << g[0]
  v << g[1]
end

ab = []
m.times do
  ab << gets.split.map(&:to_i)
end

arr = Array.new(n,nil)
arr.map!.with_index{|ar,i|[i]}

ab.each do |(a,b)|
  a-=1;b-=1
  aind = arr.index{|ar|ar.include?(a)}
  bind = arr.index{|ar|ar.include?(b)}
  if aind != bind
    arr[aind] |= arr[bind]
    arr.delete_at(bind)
  end
end
# p arr
# puts '---'
# p v
# p w
# puts '---'
v2 = []
w2 = []
arr.each do |ar|
  v2 << ar.map{|a|v[a]}.inject(:+)
  w2 << ar.map{|a|w[a]}.inject(:+)
end
# p v2
# p w2
v = v2
w = w2

dp = Array.new(w.size+1){Array.new(W+1, nil)}
dp[0].fill(0)
# pp W
# pp dp
# puts "[i,j, v[i], w[i]]\n================="
w.size.times do |i| # 品物
  (W+1).times do |j| # 重さ制限
    # p [i,j, v[i], w[i]]
    if j < w[i]
      dp[i+1][j] = dp[i][j]
    else
      dp[i+1][j] = [ dp[i][j], dp[i][j - w[i]]+v[i] ].max
    end
    # pp dp
    # puts
  end
end

# pp dp
p dp[-1][-1]
# 6 10 0 10000000
