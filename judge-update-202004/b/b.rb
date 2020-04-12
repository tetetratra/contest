# b
n = gets.to_i

xc = []
n.times do
  x,c = gets.chomp.split
  xc << [x.to_i, c]
end
# p xc
xc2 = xc.sort{|(x1,c1), (x2,c2)|
  c1 == c2 ? x1<=>x2 : c2 <=> c1
}
# pp xc2
puts xc2.map(&:first).join("\n")
