# abc166 E
n = gets.to_i
a = gets.split.map.with_index{|gg,i|[gg.to_i, i]}

ap = []
am = []

a.each do |(h, i)|
  ap << i + h
  am << i - h
end


aaa = {}


( 0..(am.max) ).each do |ii|
  aaa[ii] = [0 ,0]
end

am_max = am.max

ap.each do |x|
  next if x > am_max

  aaa[x][0] += 1
end

am.each do |x|
  next if x < 0
  next if aaa[x][0] == 0

  aaa[x][1] += 1
end

p aaa.map { |x, v|
  v[0] * v[1]
}.sum

