# https://leetcode.com/problems/intersection-of-two-linked-lists/description/

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val, n)
    @val = val
    @next = n
  end
  def inspect
    val.inspect
  end
end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}

def getIntersectionNode(a, b)
  return a if a.val == b.val
  return nil if a.next.nil? || b.next.nil?
  getIntersectionNode(a.next, b) || getIntersectionNode(a, b.next)
end


def L(h, t)
  ListNode.new(h,t)
end

a = L(
  4,
  L(
    1,
    L(
      8,
      L(
        4,
        L(5, nil)
      )
    )
  )
)

b = L(
  5,
  L(
    6,
    L(
      1,
      L(
        8,
        L(
          4,
          L(5, nil)
        )
      )
    )
  )
)

# a =   [4,1,8,4,5]
# b = [5,6,1,8,4,5]

p getIntersectionNode(a, b)
