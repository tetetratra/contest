require 'pp'

n = gets.to_i
a = []
n.times do
  a << gets.split
end

m = gets.to_i
b = ''
m.times do
  b += gets.chomp + '@'
end
# p a

# p b.gsub(/@|\*/, '')

a.each do |(from, to)|
  b.gsub!(from + '@', to + '*')
  # p b.gsub(/@|\*/, '')
end
puts b.gsub(/@|\*/, '')
# in
# ABC0145abA
# out
# aBC5144aba
