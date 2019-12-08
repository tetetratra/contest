require 'pp'
n, m, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
masu = Array.new(n+1, 0)
a.each do |aa|
  masu[aa] = 1
end
p [masu[0..x].inject(:+),masu[x..-1].inject(:+)].min

# 1 0 3
