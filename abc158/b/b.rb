require 'pp'
n, a, b = gets.split.map(&:to_i)
x = n / (a + b)
y = n % (a + b)
if y >= a
  y = a
else
  y = y
end
p x * a + y


# 4 0 2

