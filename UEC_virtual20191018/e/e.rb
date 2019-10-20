require 'pp'

a,b,c = gets.split.map(&:to_i)
n = gets.to_i
arr = []
n.times do
  arr << gets.split.map(&:to_i)
end

# pp arr
t = Array.new(a+b+c, 2)
arr.each do |ar|
  # pp ar
  aa,bb,cc,rr = ar
  if rr == 1
    t[aa-1] = t[bb-1] = t[cc-1] = 1
  end
end

arr.each do |ar|
  # pp ar
  aa,bb,cc,rr = ar
  if rr == 1
    t[aa-1] = t[bb-1] = t[cc-1] = 1
  else
    if t[aa-1] == 1 && t[bb-1] == 1
      t[cc-1] = 0
    elsif t[bb-1] == 1 && t[cc-1] == 1
      t[aa-1] = 0
    elsif t[cc-1] == 1 && t[aa-1] == 1
      t[bb-1] = 0
    end
  end
end

puts t.join("\n")


=begin
2
1
1
0
1
0
=end
