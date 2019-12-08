require 'pp'
n, m, X, Y = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort
y = gets.split.map(&:to_i).sort
if x[-1] >= y[0]
  puts 'War'
  exit
end
# p [x[-1], y[0]]
# p ((x[-1]+1)..y[0]).to_a
puts ((x[-1]+1)..y[0]).to_a.any?{|z| X < z && z <= Y} ? 'No War' : 'War'
# n w w
