# 2,2,3
n, d = gets.split.map &:to_i
cnt = 0
len = 0
loop do
  break if len >= n
  len +=(2 * d + 1)
  cnt += 1
end
p cnt
