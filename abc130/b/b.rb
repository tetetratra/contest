# 2, 4
n, x = gets.split.map &:to_i
l = gets.chomp.split.map &:to_i

count = 1
pos = 0


1.upto(n) do |i|

  pos = pos + l[i-1]
  count += 1 if pos <= x
end
p count
