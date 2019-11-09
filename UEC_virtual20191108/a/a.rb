require 'pp'
a = []
10.times do
  a << gets.to_i
end

p a[0] - a[1..-1].inject(:+)
