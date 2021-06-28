# https://leetcode.com/problems/minimum-size-subarray-sum/

# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  l = r = 0
  min = 10**10
  s = nums.first
  until l == nums.size || r == nums.size
    p [s, nums[l..r]]
    if s < target
      r += 1
      s += nums[r] if nums[r]
    elsif s > target
      s -= nums[l]
      l += 1
    else
      puts 'OK'
      min = [min, (r - l + 1)].min
      r += 1
      s += nums[r] if nums[r]
    end
  end
  min == 10**10 ? 0 : min
end

target = 7
nums = [2,3,1,2,4,3]
p min_sub_array_len(target, nums) # 2
puts

target = 4
nums = [1,4,4]
p min_sub_array_len(target, nums) # 1
puts

target = 11
nums = [1,1,1,1,1,1,1,1]
p min_sub_array_len(target, nums) # 0
puts

target = 11
nums = [1,2,3,4,5]
p min_sub_array_len(target, nums) # 3 <- なんで?



