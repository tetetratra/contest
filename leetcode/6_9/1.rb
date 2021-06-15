# https://leetcode.com/problems/factorial-trailing-zeroes/description/

def trailing_zeroes(n)
  n / 5 + n / 25 + n / 125
  0.step(5)
  1.upto(10).map { |n| 5**n }.map { |d| n / d }.inject(:+)
end
p trailing_zeroes(3) # 0
p trailing_zeroes(5) # 1
p trailing_zeroes(0) # 0
p trailing_zeroes(7) # 1
p trailing_zeroes(10) # 1
p trailing_zeroes(30) # 7

