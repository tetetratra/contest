require 'pp'
n, q = gets.split.map &:to_i
# a = []
# b = []
nodes = Array.new(n, {pa: nil, cos: 0})
(n-1).times do
  aa, bb = gets.split.map(&:to_i)
  # a << aa # 親の数字
  # b << bb # 子(node番号)
  nodes[bb-1] = {
    pa: aa,
    cos: 0
  }
end

# p = []
# x = []
q.times do
  pp, xx = gets.split.map(&:to_i)
  # p << pp # node番号
  # x << xx # cost
  nodes[pp-1][:cos] += xx
end

nodes.reverse!
cost_dp = Array.new(n,0)

# pp nodes
index = 0
while nodes.size != 0
  nod = nodes.pop
  index += 1
  # p nod
  if nod[:pa] == nil
    cost_dp[index] = nod[:cos]
  else
    cost_dp[index] = nod[:cos] + cost_dp[nod[:pa]]
  end
end
puts cost_dp[1..-1].join(' ')
