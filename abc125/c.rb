gets
a = gets.split.map(&:to_i)
start_arr = []
end_arr = []

tmp1 = a[0]
tmp2 = a[-1]
a.size.times do |i|
  tmp1 = tmp1.gcd(a[i])
  start_arr << tmp1
  tmp2 = tmp2.gcd(a[-1 - i])
  end_arr << tmp2
end
end_arr.reverse!
# p a
# p start_arr
# p end_arr
m = 1
a.size.times do |i|
  if i == 0
    # p [end_arr[i+1]]
    m = [end_arr[i+1], m].max
  elsif i == a.size-1
    # p [start_arr[i-1]]
    m = [start_arr[i-1], m].max
  else
    # p [start_arr[i-1].gcd(end_arr[i+1]), m]
    m = [start_arr[i-1].gcd(end_arr[i+1]), m].max
  end
end
p m
