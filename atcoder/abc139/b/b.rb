require 'pp'
a, b = gets.split.map &:to_i
cnt = 0
while (a-1) * cnt + 1 < b
  cnt += 1
end
p cnt
# 3 2 1
