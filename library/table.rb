require 'pp'
class NilClass
  def [](w)
    nil
  end

  def []=(w, val)
    nil
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

arr = [
  [1,2,3],
  [4,5,6],
  [7,8,9],
  [0,1,2],
  [3,4,5]
]
tiles = Tiles.new(arr)
p tiles
tiles.each_with_index do |a, i|
  h, w = tiles.index_to_hw(i)
  puts "tiles[#{h}][#{w}] = #{a}"
  tiles[h][w] = 0
end
p tiles
# pp tiles.table
