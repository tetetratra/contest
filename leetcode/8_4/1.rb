# https://leetcode.com/problems/third-maximum-number/

def third_max(nums)
  nums.uniq.size >= 3 ? nums.uniq.max(3).last : nums.max
end

p third_max([1,4,2,5,7,3,5])
