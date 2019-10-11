require 'pp'

n = gets.to_i

x = 1
y = 2
z = 3

a = []
n.times do
  a << gets.chomp
end

point = 0
=begin
West
North
Left
South
Right
North
Left
East
=end
# p a
a.each do |aa|
  xx = x
  yy = y
  zz = z
  case aa
  when 'East'
    x = 7 - zz
    z = xx
  when 'Left'
    y = 7 - zz
    z = yy
  when 'North'
    x = yy
    y = 7 - xx
  when 'Right'
    y = zz
    z = 7 - yy
  when 'South'
    x = 7 - yy
    y = xx
  when 'West'
    x = zz
    z = 7 - xx
  end
  # p [x,y,z]
  point += x
end
p point + 1
# 21 34
