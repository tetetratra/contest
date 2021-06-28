# https://leetcode.com/problems/path-sum/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}

def has_path_sum(root, target_sum)
  return false if root.nil?
  return true if (target_sum - root.val).zero? && root.right.nil? && root.left.nil?
  r = (root.right && has_path_sum(root.right, target_sum - root.val)) ||
    (root.left && has_path_sum(root.left, target_sum - root.val))
  !!r
end
