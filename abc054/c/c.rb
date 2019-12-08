require 'pp'
n, m = gets.split.map(&:to_i)

nodes = Array.new(n){ {e: [], u: false} }

m.times do
  a, b = gets.split.map(&:to_i).map{|x|x-1}
  nodes[a][:e] << b
  nodes[b][:e] << a
end

routes = (0..(n-1)).to_a.permutation.to_a.select{|x| x[0] == 0}
cnt = 0
routes.each do |r|
  f = true
  r.each_cons(2) do |a,b|
    f = false if !nodes[a][:e].any?{|x|x==b}
  end
  cnt += 1 if f
end
p cnt
