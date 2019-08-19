a, b, c, d = gets.split.map &:to_i
cd = c.lcm(d)

a -= 1
aaa = a - a/c - a/d + a/(cd)
bbb = b - b/c - b/d + b/(cd)
p bbb - aaa
