require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i).sort

# p a

y = a[-1]
# p y

x = a[0..-2].map{|xx| [y - xx, xx].min }.max

if a.include?(x)
  puts "#{y} #{x}"
else
  puts "#{y} #{y - x}"
end
