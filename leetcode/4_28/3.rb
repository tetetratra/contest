# https://leetcode.com/problems/largest-number/description/

def largest_number(nums)
  p n = nums.map(&:to_s.to_proc >> :chars.to_proc).map { |a| a.map(&:to_i) }
  p size_max = n.map(&:size).max
  p n2 = n.map { |nn| nn + [nn.first.to_f + 0.1] * (size_max - nn.size) }
  p n3 = n2.sort.reverse
  p n3.map { |nn| nn.reject { |x| x.class == Float }.join }.join
end


nums = [10,2]
nums = [3,30,34,5,9]
# nums = [1]
# nums = [10]

nums = [432,43243] # 43243243
# nums = [34323,3432] # 343234323

largest_number(nums)
