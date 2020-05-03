# abc118 A
a, b = gets.split.map(&:to_i)

p (if b % a == 0
  a + b
else
  b - a
end)

