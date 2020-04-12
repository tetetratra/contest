# c
a, b, c = gets.split.map(&:to_i)
s = [a,b,c].sum

cnt = 0
r = (1..s).to_a.permutation(s).to_a.map do |arr|
  f = true
  aa = []
  bb = []
  cc = []
  a.times do |i|
    aa << arr.pop
  end
  b.times do |i|
    bb << arr.pop
  end
  c.times do |i|
    cc << arr.pop
  end
  (a-1).times do |i|
    f = false if aa[i+1] < aa[i]
  end
  (b-1).times do |i|
    f = false if bb[i+1] < bb[i]
  end
  (c-1).times do |i|
    f = false if cc[i+1] < cc[i]
  end
  (b).times do |i|
    f = false if bb[i] < aa[i]
  end
  (c).times do |i|
    f = false if cc[i] < bb[i]
  end
  cnt += 1 if f
end

p cnt

# 1 3 5



