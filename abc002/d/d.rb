require 'pp'
n, m = gets.split.map(&:to_i)
xy = []
m.times do
  xy << gets.split.map{|x|x.to_i - 1}
end

gin = Array.new(n){|i| {e: [i]} }

xy.each do |(x,y)|
  gin[x][:e] << y
  gin[y][:e] << x
end

# pp gin

# 3 2 4 1
arr = []
1.upto(n) do |i|
  (0..(n-1)).to_a.combination(i).each do |gss|
    arr << gss
  end
end

# pp arr
max = []
arr.each do |ar|
  # puts "== #{ar.size} =="
  # p gin.select.with_index{|g,i|ar.any?{|a| a == i } }.map{|x|x[:e]}.inject{|memo,item|memo & item}
  if gin.select.with_index{|g,i|ar.any?{|a| a == i } }.map{|x|x[:e]}.inject{|memo,item|memo & item}.size == ar.size
    max << ar.size
  end

end
# p max
p max.max

# 3 2 4 1
