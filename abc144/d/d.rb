require 'pp'
a, b, x = gets.split.map(&:to_f)
r = 0

p r = Math.atan(a*b*b/x)
p (r / Math::PI * 180)


rr = Math.atan( (b/a) - x/a**3 )
p (rr / Math::PI * 180)
