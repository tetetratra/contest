# abc119 B
n = gets.to_i
r = 0
p n.times.map {
  xx, yy = gets.split
  x = xx.to_f
  y = yy.chomp
  case y
  when 'JPY' then x
  when 'BTC' then x * 380000
  end
}.inject(:+)









