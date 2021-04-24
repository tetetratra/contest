# https://leetcode.com/problems/min-stack/description/

class MinStack
  def initialize
    @stack = []
    @min_accumulation = []
  end

  def push(val)
    @stack << val
    @min_accumulation << [@min_accumulation.last, val].compact.min
    nil
  end

  def pop
    @min_accumulation.pop
    @stack.pop
  end

  def top
    @stack.last
  end

  def get_min
    @min_accumulation.last
  end
end

