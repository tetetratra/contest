require 'pp'
t = gets.to_i
n = gets.to_i
a = gets.split.map(&:to_i)
m = gets.to_i
b = gets.split.map(&:to_i)
if n < m # A.size < B.size
  puts 'no'
  exit
end # A.size > B.size

ai = 0
bi = 0
loop do
  if a[ai] <= b[bi] && b[bi] <= a[ai] + t
    ai += 1
    bi += 1
  else
    ai += 1
  end
  break if ai == a.size || bi == b.size
end
puts b[bi].nil? ? 'yes' : 'no'
# y n n n y
