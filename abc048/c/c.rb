require 'pp'
n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
cnt = 0
(a.size-1).times do |i|
  if a[i] + a[i+1] > x
    if x >= a[i]
      cnt += a[i] + a[i+1] - x
      a[i+1] = x - a[i]
    else
      cnt += a[i+1]
      cnt += a[i] - x
      a[i+1] = 0
      a[i] = x
    end
  end
end
p cnt
# 1 11 0 10
