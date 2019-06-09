N, M = gets.split.map &:to_i
# p [N, M]
a = gets.split.map { |a| [a.to_i, 1] }
while g = gets&.split&.map(&:to_i)
  a << [g[1], g[0]]
end
a.sort_by! { |aa| aa[0] }.reverse!
sum = 0
N.times do
  a[0][1] -= 1
  sum += a[0][0]
  if a[0][1] == 0
    a.delete_at(0)
  end
  # p a
end
puts sum
# 14, 338, 300
