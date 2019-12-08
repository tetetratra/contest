require 'pp'
h, w = gets.split.map(&:to_i)
n = gets.to_i
a = gets.split.map(&:to_i) # 個数
c = Array.new(h){ Array.new(w) }

n.times do |i|
  a[i]
end

aa = a.flat_map.with_index(1){|x,i|[i] * x}
vec = true
h.times do |i|
  if vec
    0.upto(w-1) do |ii|
      c[i][ii] = aa.pop
    end
  else
    (w-1).downto(0) do |ii|
      c[i][ii] = aa.pop
    end
  end
  vec = !vec
end
puts c.map{|cc|cc.join(' ')}.join("\n")
