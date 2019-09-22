require 'pp'
# o o o o n
class NilClass
  def [](w)
    nil
  end

  def []=(w, val)
    nil
  end
end

class Array
  def [](w)
    if 0 <= w && w < self.size
      self.slice(w)
    else
      nil
    end
  end

  alias :_replace_ :[]=
  def []=(w, val)
    if 0 <= w && w < self.size
      self._replace_(w,val)
    else
      nil
    end
  end
end

class Tiles
  attr_accessor :table, :height, :width
  include Enumerable

  def initialize(arr = [[]])
    @height = arr.size
    @width = arr[0].size
    @table = arr
  end

  def each
    @height.times do |hh|
      @width.times do |ww|
        yield(@table[hh][ww])
      end
    end
  end

  def [](h)
    if 0 <= h && h < @height
      @table[h]
    else
      nil
    end
  end

  def []=(h, val)
    if 0 <= h && h < @height
      @table[h] = val
    else
      nil
    end
  end

  def inspect
    puts '  |' + (0..(@width-1)).map{|x|x.to_s[0]}.join
    puts '--+' + '-' * @width
    @table.map.with_index{|x,i| sprintf('%2s|',i) + x.join}.join("\n") + "\n"
  end

  def index_to_hw(i)
    w = i % @width
    h = (i - w) / @width
    [h, w]
  end
end

_h, _w = gets.split.map(&:to_i)
c = []
start_hw = nil
end_hw = nil
_h.times do
  c << gets.chomp.chars
end

tiles = Tiles.new(c)
p tiles

tiles.each_with_index do |t, i|
  h, w = tiles.index_to_hw(i)
  if t == 's'
    start_hw = [h, w]
    tiles[h][w] = '.'
  end
  end_hw = [h, w] if t == 'g'
end

queue = []
queue << start_hw
while queue.empty?.!
  h, w = queue.pop
  [
    [h,w+1],
    [h,w-1],
    [h+1,w],
    [h-1,w]
  ].each do |hh,ww|
    case tiles[hh][ww]
    when '#'
      case tiles[h][w]
      when '.'
        tiles[hh][ww] = '_'
        queue << [hh,ww]
      when '_'
        tiles[hh][ww] = '@'
      end
    when '.'
      case tiles[h][w]
      when '.'
        queue << [hh,ww]
      when '_'
        tiles[hh][ww] = '_'
        queue << [hh,ww]
      end
    end
  end
  tiles[h][w] = '@'
end

p tiles

# queue << start_hw
# while queue.empty?.!
#   h, w = queue.pop
#   [
#     [h,w+1],
#     [h,w-1],
#     [h+1,w],
#     [h-1,w]
#   ].each do |hh,ww|
#     case tiles[hh][ww]
#     when ',', '_', '.'
#       queue << [hh,ww]
#     when '#'
#       tiles[hh][ww] = '-'
#     end
#   end
#   tiles[h][w] = '-'
# end
# p tiles

queue << start_hw
while queue.empty?.!
  h, w = queue.pop
  [
    [h,w+1],
    [h,w-1],
    [h+1,w],
    [h-1,w]
  ].each do |hh,ww|
    queue << [hh,ww] if tiles[hh][ww] == '@' || tiles[hh][ww] == '.'
  end
  tiles[h][w] = '*'
end

p tiles

eh, ew = end_hw
puts [
  [eh,ew+1],
  [eh,ew-1],
  [eh+1,ew],
  [eh-1,ew]
].map{|hh,ww|tiles[hh][ww]}.any?{|x| x == '*'} ? 'YES' : 'NO'
