class Node
  attr_accessor :ele, :next, :pre
  def initialize(ele = nil)
    @ele = ele
    @next = nil
    @pre= nil
  end

  def next=(ele)
    @next = ele
  end

  def pre=(ele)
    @pre = ele
  end

  def inspect
    str = "[#{self.ele},"
    tmp_next = self.next
    while tmp_next
      str += "#{tmp_next.ele},"
      tmp_next = tmp_next.next
    end
    str = str.chop + ']'
    str
  end

end

n = Node.new(1)
n.next = Node.new(2)
n.next.next = Node.new(3)
