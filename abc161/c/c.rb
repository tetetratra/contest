# c
require 'pp'
x, k = gets.split.map(&:to_i)

# x >>> k
if x > k

  x2 = x % k

  if x2 == 0
    p 0
    exit
  end

  # x2 < k
  x3 = k % x2
  p x3
else # x <= k
  if k - x > x
    p x
  else
    x2 = k - x
    p x2
  end
end

# 1 2 0







