require 'pp' # 1 0 2
n = gets.to_i
a = []
n.times do
  a << gets.to_i
end
p a.group_by(&:itself).map{|k,v|v.size}.select(&:odd?).size
