n = gets.to_i
a = gets.split.map &:to_i
# p a
flag = false
boxs = Array.new(n, 0)

n.times do |i|
  s_boxs =  boxs.select.with_index{|b, ii|(ii+1) % (i+1) == 0}
  p s_boxs
  p a[i]
  p s_boxs.inject(:+) % 2 == a[i]
end
