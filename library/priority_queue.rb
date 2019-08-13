require 'pp'

class PriorityQueue
  def initialize(array = [])
    @heap = []
    array.each { |a| push(a) }
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

class PriorityQueueWithoutHeap
  def initialize(array = [])
    @data = []
    array.each{|a| push(a)}
  end

  def push(element)
    @data.push(element)
  end

  def pop
    @data.sort!.shift
  end
end

require 'benchmark'
@test_data = 100_000.times.map{rand(100_000)}
@test_cnt = 1_000
Benchmark.bm 10 do |r|
  r.report 'PQWH' do
    pq = PriorityQueueWithoutHeap.new(@test_data)
    @test_cnt.times do
      pq.push(rand(100_000))
      pq.pop
    end
  end

  r.report 'PQ' do
    pq = PriorityQueue.new(@test_data)
    @test_cnt.times do
      pq.push(rand(100_000))
      pq.pop
    end
  end
end
