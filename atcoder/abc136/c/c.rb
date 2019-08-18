require 'pp'
n = gets.to_i
h = gets.split.map(&:to_i)
# p n
# p h
1.upto(n-1) do |i|
  if h[i-1] < h[i]
    h[i] -= 1
  elsif h[i-1] > h[i]
    puts 'No'
    exit
  end
end
# p h
puts 'Yes'
#y n y y
