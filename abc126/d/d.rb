require 'pp'
n = gets.to_i
nodes = Array.new(n+1){ {
  color: nil, to: [], used: false,
  blen: nil, wlen: nil
}}
# nodes[0] は使わない
(n-1).times do
  u, v, w = gets.split.map(&:to_i)
  nodes[u][:to] << [v,w]
  nodes[v][:to] << [u,w]
end

queue = []
queue << 1
nodes[1][:color] = 'b'
nodes[1][:blen] = 0
# p queue
nodes[1][:used] = true
while queue.empty?.!
  p_node = nodes[queue.pop]
  p_node[:used] = true
  p_node[:to].each do |(to, len)|
    unless nodes[to][:used]
      queue << to
      to_node = nodes[to]
      if p_node[:color] == 'b' # black
        to_node[:blen] = len
        to_node[:wlen] = p_node[:wlen] ? p_node[:wlen] + len : nil
      elsif p_node[:color] == 'w' # white
        to_node[:wlen] = len
        to_node[:blen] = p_node[:blen] ? p_node[:blen] + len : nil
      end
      to_node[:color] = to_node[:blen] % 2 == 0 ? 'b' : 'w'
    end
  end
  # pp nodes[1..-1].map.with_index(1){|a,i|[i,*a]}
  # p queue
end

# pp nodes[1..-1].map.with_index(1){|a,i|[i,*a]}
puts nodes[1..-1].map{|x|x[:color] == 'w' ? '1' : '0'}.join("\n")
