require 'pp'
class PriorityQueue
  attr_accessor :data
  def initialize(array = [], cmp = nil)
    @cmp = cmp || Proc.new{ |a,b| a < b }
    @data = []
    array.each{|a| self << a}
  end

  def <<(element)
    @data.push(element)
    bottom_up
  end
  alias :push :<<

  def peek
    @data[0]
  end

  def pop
    if size == 0
      return nil
    elsif size == 1
      return @data.pop
    else
      min = @data[0]
      @data[0] = @data.pop
      top_down
      return min
    end
  end

  # @return Integer
  def size
    @data.size
  end

  def empty?
    @data.size == 0
  end

  def inspect
    arr = []
    while self.empty?.!
      arr << self.pop
    end
    str = arr.pretty_inspect
    arr.each {|a| self << a }
    str
  end

  private

  def swap(i, j)
    @data[i], @data[j] = @data[j], @data[i]
  end

  def bottom_up
    idx = size - 1
    while(has_parent?(idx))
      parent_idx = parent_idx(idx)
      if @cmp.call(@data[idx],@data[parent_idx])
        swap(parent_idx, idx)
        idx = parent_idx
      else
        return
      end
    end
  end

  def top_down
    idx = 0
    while (has_child?(idx))
      a = left_child_idx(idx)
      b = right_child_idx(idx)
      if @data[b].nil?
        c = a
      else
        c = @cmp.call(@data[a], @data[b]) ? a : b
      end
      if @cmp.call(@data[c], @data[idx])
        swap(idx, c)
        idx = c
      else
        return
      end
    end
  end

  def parent_idx(idx)
    (idx - (idx.even? ? 2 : 1)) / 2
  end

  def left_child_idx(idx)
    (idx * 2) + 1
  end

  def right_child_idx(idx)
    (idx * 2) + 2
  end

  def has_child?(idx)
    ((idx * 2) + 1) < @data.size
  end

  def has_parent?(idx)
    idx > 0
  end
end

arr = Array.new(20){ [rand(2), rand(10)] }
f = Proc.new{|a,b| a[0] != b[0] ? a[0] < b[0] : a[1] < b[1]}
pq = PriorityQueue.new(arr, f)
pp pq
arr2 = []
while pq.empty?.!
  arr2 << pq.pop
end
pp arr2
