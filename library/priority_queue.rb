require 'pp'
class PriorityQueue
  def initialize(array = [], &cmp)
    @cmp = cmp || Proc.new { |small, big| small < big }
    @heap = []
    array.each { |a| push(a) }
  end

  def size
    @heap.size
  end

  def empty?
    @heap.size == 0
  end

  def inspect # デバック用
    @heap.sort.join(' < ')
  end

  def push(x)
    @heap << x
    index = size - 1
    while(@cmp.call(@heap[pi(index)],@heap[index]))
      @heap[pi(index)], @heap[index] = @heap[index], @heap[pi(index)]
      index = pi(index)
      break if index == 0
    end
    self
  end

  def pop
    case size
    when 0 then return nil
    when 1 then return @heap.delete_at(0)
    when 2 then return @cmp.call(@heap[1], @heap[0]) ? @heap.delete_at(0) : @heap.delete_at(1)
    end
    popped = @heap[0]
    @heap[0] = @heap.delete_at(-1)
    index = 0
    loop do
      break if lci(index) >= size || rci(index) >= size
      if @cmp.call(@heap[rci(index)], @heap[lci(index)]) && @cmp.call(@heap[index], @heap[lci(index)])
        swap!(lci(index), index)
        index = lci(index)
      elsif !(@cmp.call(@heap[rci(index)], @heap[lci(index)])) && @cmp.call(@heap[index], @heap[rci(index)])
        swap!(rci(index), index)
        index = rci(index)
      else
        break
      end
    end
    popped
  end

  alias :<< :push

  private

  def swap!(a, b)
    @heap[a], @heap[b] = @heap[b], @heap[a]
    nil
  end

  def parent_index(i)
    i.odd? ? ((i+1)/2)-1 : (i/2)-1
  end

  def left_child_index(i)
    i*2 + 1
  end

  def right_child_index(i)
    i*2 + 2
  end

  alias :pi :parent_index
  alias :lci :left_child_index
  alias :rci :right_child_index
end
