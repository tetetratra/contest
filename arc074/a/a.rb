require 'pp'
# 0 4 2
h, w = gets.split.map(&:to_i).sort
# h < w
ans = []

a = (w/3.0).ceil*h
b = (w/3.0).ceil*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).floor*h
b = (w/3.0).ceil*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).ceil*h
b = (w/3.0).floor*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).ceil*h
b = (w/3.0).ceil*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]



a = (w/3.0).ceil*h
b = ((w-a/h)/2.0).ceil * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).floor*h
b = ((w-a/h)/2.0).ceil * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).ceil*h
b = ((w-a/h)/2.0).floor * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).floor*h
b = ((w-a/h)/2.0).floor * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

###

h,w = w,h

a = (w/3.0).ceil*h
b = (w/3.0).ceil*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).floor*h
b = (w/3.0).ceil*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).ceil*h
b = (w/3.0).floor*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).ceil*h
b = (w/3.0).ceil*h
c = w * h - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]



a = (w/3.0).ceil*h
b = ((w-a/h)/2.0).ceil * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).floor*h
b = ((w-a/h)/2.0).ceil * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).ceil*h
b = ((w-a/h)/2.0).floor * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

a = (w/3.0).floor*h
b = ((w-a/h)/2.0).floor * h
c = h * w - a - b
ans << [a,b,c].sort.tap{|x|break x[2] - x[0]}
p [a,b,c]

p ans.min
