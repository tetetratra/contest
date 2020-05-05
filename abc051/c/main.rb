# abc051 C
sx, sy, tx, ty = gets.split.map(&:to_i)

x = tx - sx
y = ty - sy

r = ""

if x == 0
  r << 'U' * y

  r << 'L'
  r << 'D' * y
  r << 'R'

  r << 'R'
  r << 'U' * y
  r << 'L'

  r << 'U'
  r << 'R' * 2
  r << 'D' * (y + 2)
  r << 'L' * 2
  r << 'U'
elsif y == 0
  r << 'R' * x

  r << 'D'
  r << 'L' * x
  r << 'U'

  r << 'U'
  r << 'R' * x
  r << 'D'

  r << 'R'
  r << 'U' * 2
  r << 'L' * (x + 2)
  r << 'D' * 2
  r << 'R'
else
  r << 'R' * x
  r << 'U' * y

  r << 'L' * x
  r << 'D' * y

  r << 'D'
  r << 'R' * (x + 1)
  r << 'U' * (y + 1)
  r << 'L'

  r << 'U'
  r << 'L' * (x + 1)
  r << 'D' * (y + 1)
  r << 'R'
end

puts r
