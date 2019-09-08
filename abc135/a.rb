a,b = gets.split.map(&:to_r)
c = (a**2-b**2) / (2*(a-b))
puts c % 1 == 0 ? c.to_i : 'IMPOSSIBLE'
