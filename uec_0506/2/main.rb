# uec_0506 B
x1, y1, x2, y2 = gets.split.map(&:to_i)

if x2 <= x1
  x3 = x2 + (y2 - y1)
  y3 = y2 + (x1 - x2)

  x4 = x3 + (x1 - x2)
  y4 = y1 + (x1 - x2)
else
  x3 = x2 + (y1 - y2)
  y3 = y2 + (x2 - x1) # OK

  x4 = x1 + (y1 - y2)
  y4 = y1 + (x2 - x1) # OK
end
puts [x3, y3, x4, y4].join(" ")

exit


x = (x1 - x2).abs
y = (y1 - y2).abs

if x2 <= x1
  if y2 <= y1
    x3 = x2 + y
    y3 = y2 - x
    x4 = x1 + y
    y4 = y1 - x
  else
    x3 = 0
    y3 = 0
    x4 = 0
    y4 = 0
  end
else
  if y2 <= y1
    x3 = 0
    y3 = 0
    x4 = 0
    y4 = 0
  else
    x3 = x2 - y
    y3 = y2 + x
    x4 = x1 - y
    y4 = y1 + x
  end
end


puts [x3, y3, x4, y4].join(" ")

