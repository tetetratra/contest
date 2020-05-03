# b
a, b, c, d = gets.split.map(&:to_i)

until a <= 0 || b <= 0
  c -= b
  break if a <= 0 || b <= 0
  a -= d
end

puts (c <= 0) ? 'Yes' : 'No'

