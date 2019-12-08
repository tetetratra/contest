require 'pp'
n = gets.to_i
s = gets.chomp.chars
t = gets.chomp.chars
# p s
# p t
# puts '------------'
size = 2 * n
n.times do |i|
  # p s[i..-1].zip(t[0..(n-i-1)])
  if s[i..-1].zip(t[0..(n-i-1)]).all?{|(a,b)|a==b}
    size = 2 * n - s[i..-1].zip(t[0..(n-i-1)]).size
    break
  end
end
p size

# 5 2 4
