require 'pp'

class Heap
  attr_reader :heap

  def initialize
    @heap = []
  end

  def size
    @heap.size
  end

  def push(x)
    @heap << x
    index = size - 1
    while(@heap[pi(index)] < @heap[index])
      @heap[pi(index)], @heap[index] = @heap[index], @heap[pi(index)]
      index = pi(index)
      break if index == 0
    end
    self
  end


  def pop
    # return nil if size.zero?
    # return @heap.delete_at(0) if size == 1


    case size
    when 0 then return nil
    when 1 then return @heap.delete_at(0)
    when 2 then return @heap[0] > @heap[1] ? @heap.delete_at(0) : @heap.delete_at(1)
    end


    popped = @heap[0]
    @heap[0] = @heap.delete_at(-1)
    index = 0
    loop do
      break if lci(index) >= size || rci(index) >= size
      if @heap[lci(index)] > @heap[rci(index)] && @heap[lci(index)] > @heap[index]
        @heap[lci(index)], @heap[index] = @heap[index], @heap[lci(index)]
        index = lci(index)
      elsif @heap[rci(index)] >= @heap[lci(index)] && @heap[rci(index)] > @heap[index]
        @heap[rci(index)], @heap[index] = @heap[index], @heap[rci(index)]
        index = rci(index)
      else
        break
      end
    end
    popped
  end

  alias :<< :push

  private

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

heap = Heap.new

arr = []
10.times do
  heap << rand(19)
end
10.times do
  arr << heap.pop
end
p a1 = arr
p a2 = arr.sort.reverse
p a1 == a2
