# abc168 C
a, b, h, m = gets.split.map(&:to_i)
h = h + (m / 60.0)

ac = h * (Math::PI / 6)
ax = a * Math.sin(ac)
ay = a * Math.cos(ac)

bc = m * 6  * (Math::PI / 180)
bx = b * Math.sin(bc)
by = b * Math.cos(bc)

p ( (ax - bx) ** 2 + (ay - by) ** 2 ) ** (1.0/2)
