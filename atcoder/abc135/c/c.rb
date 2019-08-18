require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
# p a # monster
# p b # soldier
sum1 = a.inject(&:+)
n.times do |i|
  if a[i] >= b[i]
    a[i] -= b[i]
    b[i] = 0
  else
    b[i] -= a[i]
    a[i] = 0
    if a[i+1] >= b[i]
      a[i+1] -= b[i]
      b[i] = 0
    else
      b[i] -= a[i+1] # 多分この計算はいらない
      a[i+1] = 0
    end
  end

end
# p a # monster
# p b # soldier
sum2 = a.inject(&:+)
p sum1 - sum2
