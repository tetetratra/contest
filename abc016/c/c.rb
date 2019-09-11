require 'pp'
n, m  = gets.split.map(&:to_i)
nodes = Array.new(n+1){[]}
m.times do
  a, b = gets.split.map(&:to_i)
  nodes[a] << b
  nodes[b] << a
end
# pp nodes[1..-1].map.with_index(1){|a,i|[i,a]}
nodes[1..-1].map.with_index(1) do |friends, me|
  p (friends.map{|f|nodes[f]}.flatten - [*friends,me]).uniq.size
end
