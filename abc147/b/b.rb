require 'pp'

s = gets.chomp.chars

sr = s.reverse

cnt = 0

i = 0
s.zip(sr).each do |(a1,a2)|
  cnt += 1 if a1 != a2
  i += 1
  break if i == s.size / 2
end
p cnt

# p s
# p sr
# 1 0 2
