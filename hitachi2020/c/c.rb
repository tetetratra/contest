# c
require 'pp'
n = gets.to_i
N = n
nodes = Array.new(n) { { chi: [], col: nil, vi: false, v:nil } }

ab = []
(n-1).times do
  ab << gets.split.map{|x|x.to_i - 1}
end

ab.each do |(a,b)|
  nodes[a][:chi] << b
  nodes[b][:chi] << a
end

 # pp nodes.map.with_index(0){|x,i|[i,x]}

stack = [0]
color = 1
nodes[0][:col] = 1
until stack.empty?
  n = stack.pop
  node = nodes[n]
  node[:vi]  = true
  if color == 1
    color = 2
  else
    color = 1
  end

  node[:chi].each do          |cn|
    nodes[cn][:chi].each do   |cn2|
      nodes[cn2][:chi].each do |cn3|
        next if nodes[cn3][:vi]
        cnode = nodes[cn3]
        cnode[:col] = color
        stack << cn3
      end
    end
  end
end


n1 = 1
n2 = 2
n3 = 3
# p '^~~~~~~~~~~~~'
nodes.each_with_index do |node,i|
 # pp nodes.map.with_index(0){|x,i|[i,x]}
  case node[:col]
  when 1
#     p n1
#     p n
    if n1
      node[:v] = n1
      n1 += 3
      n1 = false if n1 > N
    else
      node[:v] = n3
      n3 += 3
    end
  when 2
#     p n2
#     p n
    if n2
      node[:v] = n2
      n2 += 3
      n2 = false if n2 > N
    else
      node[:v] = n3
      n3 += 3
    end
  end
end

# pp nodes.map.with_index(0){|x,i|[i,x]}
puts nodes.map{|x|x[:v]}.join(' ')

