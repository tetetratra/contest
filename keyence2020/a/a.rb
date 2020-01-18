h = gets.to_i
w = gets.to_i
n = gets.to_i
cnt = 0
m = [h,w].max
ii = 0
m.times do |i|
  ii += 1
  i += 1
  cnt += m
  break if cnt >= n
end
p ii

