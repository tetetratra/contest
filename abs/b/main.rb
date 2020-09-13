# abs B
class Object
  def _?
    ->(a,b){self ? a : b}.curry
  end
end
puts(gets.split.map(&:to_i).inject(:*).odd?._?.('Odd').('Even'))

