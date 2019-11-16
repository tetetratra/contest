require 'pp'
h, w = gets.split.map(&:to_i)

c = []

h.times do
  c << gets.chomp.chars
end

shw = nil
ghw = nil
h.times do |hh|
  w.times do |ww|
    case c[hh][ww]
    when "s"
      shw = [hh,ww]
    when "g"
      ghw = [hh,ww]
    end
  end
end


s = [shw]

while !s.empty?
  ss = s.pop
  hh, ww = *ss
  [
    [hh+1, ww],
    [hh-1, ww],
    [hh, ww+1],
    [hh, ww-1]
  ].select{|y,x| 0 <= y && y < h && 0 <= x && x < w }.each do |y,x|
    if c[y][x] == "." || c[y][x] == 's' || c[y][x] == 'g'
      s << [y,x]
    end
  end 
  c[hh][ww] = "@"
end
puts c[ghw[0]][ghw[1]] == "@" ? "Yes" : "No"
