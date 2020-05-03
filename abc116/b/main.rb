# abc116 B
s = gets.to_i

u = Array.new(1000000, false)
u[s] = true
1000000.times do |i|
  s = s.even? ? s/2 : s*3+1
  if u[s]
    p i+2
    exit
  else
    u[s] = true
  end
end
