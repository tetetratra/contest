require 'pp'
x1, y1, x2, y2 = gets.split.map(&:to_i)

#   3-2
#  /
# 4-1
if x1 <= x2 && y1 <= y2
  x3 = x2 - (y2 - y1)
  y3 = y2 + (x2 - x1)
  x4 = x1 - (y2 - y1)
  y4 = y1 + (x2 - x1)
end

#   4-3
#  /
# 1-2
if x1 <= x2 && y2 <= y1
  x3 = x2 + (y1 - y2)
  y3 = y2 + (x2 - x1)
  x4 = x1 + (y1 - y2)
  y4 = y1 + (x2 - x1)
end

#   1-4
#  /
# 2-3
if x2 <= x1 && y2 <= y1
  x3 = x2 + (y1 - y2)
  y3 = y2 - (x1 - x2)
  x4 = x1 + (y1 - y2)
  y4 = y1 - (x1 - x2)
end

#   2-1
#  /
# 3-4
if x2 <= x1 && y1 <= y2
  x3 = x2 - (y2 - y1)
  y3 = y2 - (x1 - x2)
  x4 = x1 - (y2 - y1)
  y4 = y1 - (x1 - x2)
end


puts [x3,y3,x4,y4].join(' ')
