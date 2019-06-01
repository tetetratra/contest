# 1_000_003

a = gets.chomp.to_i
while g = gets
  x, d, n = g.split.map(&:to_i)
  num_izen = 1
  num = 1
  n.times do |i|
     if num < 1_000_003
       p (x + d * i).to_s(2).split(//).map(&:to_i)
      num *= (x + d * i)
     else
       p ((x + d * i).to_s(2) % 1_000_003)
      num *= ((x + d * i) % 1_000_003).split(//).map(&:to_i)
     end
    num = num % 1_000_003
  end
  p (num % 1_000_003)

end
