w, h, x, y = gets.split.map &:to_i

center_x = w / 2
center_y = h / 2

trans_x = w - x
trans_y = h - y
if trans_x == x && trans_y == y
  bool = 1 # 複数ある
else
  bool = 0
end
menseki = ((w * h)/2.0)
puts "#{menseki} #{bool}"
