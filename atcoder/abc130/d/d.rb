# 2, 3, 36
n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
# p a
arr = Array.new(n, 0)
arr[0] = a[0] >= k ? 1 : 0

ruiseki_arr = []
ruiseki_num = 0
n.times do |i|
  ruiseki_num += a[i]
  ruiseki_arr << ruiseki_num
end
# p ruiseki_arr

1.upto(n-1) do |i|
  tmp = 0
  (i+1).times do |ii|
    # p a[ii..i]
    # p [ii, i]

    summ = a[ii..i].inject(&:+) # おそい

    tmp += 1 if summ >= k
  end

  arr[i] = arr[i-1] + tmp
end
# p arr

p arr[-1]
