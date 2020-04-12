# b
n = gets.to_i
sum = 0
(1..n).each do |x|
  if !(x % 3 == 0 || x % 5 == 0)
    sum += x
  end
end
p sum

