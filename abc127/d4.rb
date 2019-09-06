require 'irb'
N, M = gets.split.map &:to_i
aaa = gets.split.map(&:to_i)
bbb = []

binding.irb
while g = gets&.split&.map(&:to_i)
  bbb << [g[0]] * g[1]
  break if bbb.size >= N
end
bbb.sort_by { |b| b[1] }
sum = 0
N.times do |i|
  sum += aaa[aaa.size - i - 1]
end
puts sum
