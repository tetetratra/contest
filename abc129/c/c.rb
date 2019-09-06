# 4, 0, 608200469

waru = 1_000_000_007 # あまりを出す
n, m = gets.split.map &:to_i # N段目まで行きたい
a = []
while aa = gets # 壊れてる階段
  a << aa.to_i
end
# p [n, m]

arr = Array.new(n, -1)

a.each do |aa|
  arr[aa] = 0
end
0.upto(n) do |i|
  next if arr[i] == 0
  if i == 0 || i == 1
    arr[i] = 1
    next
  end
  arr[i] = arr[i - 1] + arr[i - 2]
end

# p arr
p (arr[-1] % waru)
