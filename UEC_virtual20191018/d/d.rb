require 'pp'

n = gets.to_i
m = gets.to_i
s = []
m.times do
  s << gets.to_i
end
a = (1..(2*n)).to_a

s.each do |ss|
  if ss == 0
    a1 = a[0..(n-1)]
    a2 = a[(n)..-1]
    a = a1.zip(a2).flatten
  else
    a1 = a[0..(ss-1)]
    a2 = a[(ss)..-1]
    a = a2 + a1
  end
end
puts a.join("\n")
