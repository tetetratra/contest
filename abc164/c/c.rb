# c
n = gets.to_i
s = []
n.times do
  s << gets.chomp
end

p s.uniq.size

