# 9 1000000000 0 254309
a, b, x = gets.split.map(&:to_i)

if a * 10**9 + b * 10 <= x
  p 10**9
  exit
end

n = 10**9 / 2
diff = 10**9 / 4.0
loop do
  # p [n, diff];sleep 0.1
  if a * n + b * n.to_i.to_s.size > x
    n -= diff
  elsif a * n + b * n.to_i.to_s.size < x
    n += diff
  end
  diff /= 2
  break if diff < 0.01
end
if n.round.to_i <= 0
  p 0
else
  n -= 1 if a * n.round.to_i + b * n.round.to_i.to_s.size > x
  p n.round.to_i
end
