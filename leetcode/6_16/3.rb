# https://leetcode.com/problems/rotate-function/

def max_rotate_function(nums)
  nums.size.times.map { |n| nums.rotate(n) }.map { |arr|
    arr.map.with_index { |a, i| a * i }.sum
  }.max
end
nums = [4,3,2,6]
max_rotate_function(nums)

