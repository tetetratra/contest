# arc006 B
n, l = gets.split.map(&:to_i)

c = l.times.map {
  gets.chomp.chars
}

goal = gets.chomp.chars

# puts c.map{|xx|xx.join}.join("\n")
# puts goal.join

y = l - 1
x = goal.find_index{|x|x=='o'}

# p [y, x]

(l).times do
  if x+1 < (2*n) && c[y][x+1] == '-'
    x += 2
  elsif x-1 >= 0 && c[y][x-1] == '-'
    x -= 2
  end
  y -= 1
end

# p [y, x]
p x/2 + 1
