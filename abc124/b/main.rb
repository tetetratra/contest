# b
n = gets.to_i
h = gets.split.map(&:to_i)
m = h[0]

cnt = 0
h.each do |hh|
  if hh >= m
    cnt += 1
    m = hh
  end
end
p cnt
