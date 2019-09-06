# n, a, b, c = *gets.chomp.split.map(&:to_i)
num = 1



15.times do |i|
  if num < 23
    num *= (7 + 5 * i)
  else
    num *= ((7 + 5 * i) % 23)
  end
  num = num % 23
  p num
end
puts
p (num % 23)
