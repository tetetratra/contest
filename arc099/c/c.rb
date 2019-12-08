require 'pp'
n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
i = k
p k
pp a
min = a[0..k].min
p min
cnt = 1
cnt = 0 if a[0..k].min == a[0..k].max
while i < n
  if a[i..(i+2)].include?(min)
    cnt += 1
    i += 3
  else
    cnt += 1
    i += 2
  end
end

p cnt
# 2 1 4
