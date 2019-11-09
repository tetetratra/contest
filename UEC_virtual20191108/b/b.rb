require 'pp'
N, M = gets.split.map(&:to_i)

n = []
N.times do
  n << gets.to_i
end

m = []
M.times do
  m << gets.to_i
end
cnt = 0

x = 1
m.each do |mm|
  x += mm
  x += n[x-1] || 0
  cnt += 1
  break if x >= N
end
p cnt
