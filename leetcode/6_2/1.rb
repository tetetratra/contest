# https://leetcode.com/problems/majority-element/

def majority_element(nums)
  nums.group_by(&:itself).map { |k,v| [k, v.size] }
    .max_by { |(i, c)| c }.first
end

nums = [2,2,1,1,1,2,2]
p majority_element(nums)
