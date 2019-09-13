require 'pp'
a, b = gets.split.map(&:to_i)
cnt = 0
while true
  # p [a,b]
  break if a == b
  if a <= b - 8
    a += 10
  elsif a <= b - 4
    a += 5
  elsif a < b
    a += 1
  elsif b + 8 <= a
    a -= 10
  elsif b + 4 <= a
    a -= 5
  elsif b < a
    a -= 1
  end
  cnt += 1
end
p cnt
