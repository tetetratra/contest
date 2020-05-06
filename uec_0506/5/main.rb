# uec_0506 E
a, b, x = gets.split.map(&:to_f)

if a * a * b / 2 >= x
  p Math.atan( ((2/a**3) * (a**2 * b - x)) / a ) * (180 / Math::PI)
else
  p Math.atan( (a * b**2) / (2*x) ) * (180 / Math::PI)
end

# 3.14 = 180^


