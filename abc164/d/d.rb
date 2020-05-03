# d
s = gets.chomp.chars.map(&:to_i)

a = []
n = 2019
while n <= 200000
  a << n
  n += 2019
end
r = 0
a.each do |aa|
  s.each_cons(aa.to_s.size) do |ss|
    r += 1 if ss.join.to_i == aa
  end
end
p r
