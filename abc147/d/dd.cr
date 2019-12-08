# require 'pp'

mod = 10 ** 9 + 7
n = read_line.to_i
a = read_line.split.map(&.to_i64)

# p a
ans = 0
a2 = a.map do |aa|
  # p aa
  tmp = Array(Int64).new(60,0)
  60.times do |i|
    tmp[i] = (aa % 2).to_i64
    aa /= 2
  end
  tmp
end

def kai(n, mod)
  r = 1
  n.times do
    r = r * 2 % mod
  end
  r
end

a2_transpose = Array( Array(Int64) ).new(60) { Array(Int64).new(n, 0) }
# p a2_transpose

n.times do |i|
  60.times do |ii|
    a2_transpose[ii][i] = a2[i][ii]
  end
end


p a2_transpose.map{|x|x.reduce{|m,i|m+i}}.map{|x|x * (n - x)}.map_with_index{|x,i|x * kai(i,mod)}.reduce{|m,i|m+i} % mod
# 1 237 103715602
