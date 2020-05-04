# abc083 C
x, y = gets.split.map(&:to_i)

n = x
cnt = 0
max = y - (y % x)

while n <= max
  n *= 2
  cnt += 1
end

p cnt
