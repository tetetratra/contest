require 'pp'
class UnionFind
  attr_accessor :parent
  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
  end

  def unite(id_x, id_y)
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent

    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
    else
      @parent[x_parent] = y_parent
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end

  def same_parent?(id_x, id_y)
    get_parent(id_x) == get_parent(id_y)
  end
end

n, m, k = gets.split.map(&:to_i)

u = Array.new(n){ [0,0, [] ] } # friend block block_list

ab = []
m.times do
  ab << gets.split.map{|x|x.to_i - 1}
end

cd = []
k.times do
  cd << gets.split.map{|x|x.to_i - 1}
end

pp ab
pp cd

ab.each do |(a,b)|
  u[a][0] += 1
  u[b][0] += 1
end

cd.each do |(c,d)|
  u[c][1] += 1
  u[d][1] += 1
  u[c][2] << d
  u[d][2] << c
end

# n.times do |i|
  # u[i][2] = n - u[i][0] - u[i][1] - 1
# end

pp u

uff = UnionFind.new(n)

ab.each do |(a,b)|
  p [a,b]
  uff.unite(a,b)
  pp uff.parent
end
pp uff

size = Hash.new{0}
uff.parent.each do |pa|
  size[pa] += 1
end
p size

n.times do |i|
  cnt = 0
  u[i][2].each do |blo|
    cnt += 1 if uff.same_parent?(i, blo)
  end
  p size[uff.parent[i]]
  p u[i][0]
  p cnt
  p size[uff.parent[i]] - u[i][0] - cnt - 1
  p '---'
end


# 0 1 0 1
# 0 0 0 0 0
# 1 3 5 4 3 3 3 3 1 0

