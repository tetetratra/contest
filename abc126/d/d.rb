require 'pp'
n = gets.to_i
nodes = {}
n.times do |i|
  nodes[i+1] = [[], nil] # to, color
end

(n-1).times do
  from, to, len = gets.split.map(&:to_i)
  nodes[from][0] << [to,len]
end
pp nodes.to_a
