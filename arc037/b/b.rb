# 1 4 0
require 'pp'

n, m = gets.split.map(&:to_i)

nodes = Array.new(n) { {e: [], u: false} }
m.times do
  a, b = gets.split.map{|x|x.to_i - 1}
  nodes[a][:e] << b
  nodes[b][:e] << a
end
# pp nodes
cnt = 0
stack = [ [0, nil] ]
istree = true

# puts "~~~~~~~~~~~~~~~"

loop do
  # puts "stack: #{stack}"
  s = stack.pop # 自身の番号、親の番号
  myi = s[0]
  pai = s[1]
  node = nodes[myi]
  # puts "node: #{node}"
  node[:u] = true
  node[:e].size.times do |i|
    ei = node[:e][i]
    # p ei
    next if ei == pai # 親を見てたら飛ばす
    if nodes[ei][:u] # すでに使われているやつがあったら木じゃない
      istree = false
      break # 無限に回ってしまうので
    end
    stack << [ei, myi]
  end
  # p stack
  # puts '----'
  if stack.empty?
    cnt += 1 if istree
    # puts "cnt: #{cnt}"
    nextnodei = nil
    n.times do |i|
      nextnodei = i if nodes[i][:u].!
    end
    if nextnodei
      stack << [nextnodei, nil]
    else
      break
    end
    istree = true
  end
end


p cnt
