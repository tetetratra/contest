n, k = gets.split.map &:to_i
if k == 1
  p 0
else
  p(n - k)
end
