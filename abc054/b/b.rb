require 'pp'
n, m = gets.split.map(&:to_i)
a = []
b = []
n.times do
  a << gets.chomp.chars
end
m.times do
  b << gets.chomp.chars
end
# puts a.map(&:join).join("\n")
# puts
# puts b.map(&:join).join("\n")
# puts
arr = []
0.upto(n-1) do |i|
  0.upto(n-1) do |ii|
    # puts a[i..(b.size-1)].map{|x|x[ii..(b.size-1)]}.map(&:join).join("\n")
    next if (i + b.size-1) >= n || (ii + b.size-1) >= n
    arr << (a[i..(i + b.size-1)].map{|x|x[ii..(ii + b.size-1)]} == b)
  end
end
puts arr.any?{|x|x} ? 'Yes' : 'No'
