# https://leetcode.com/problems/balanced-binary-tree/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

def d(n)
  return [true, 0] if n.nil?
  return [true, 1] if n.right.nil? && n.left.nil?

  rb, rh = n.right ? d(n.right) : [true, 0]
  lb, lh = n.left  ? d(n.left)  : [true, 0]

  [
    rb && lb && (rh - lh).abs <= 1,
    [rh, lh].max + 1
  ]
end

def is_balanced(root)
  d(root)[0]
end



