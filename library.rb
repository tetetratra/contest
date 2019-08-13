require 'pp'
# require 'prime'
# require 'matrix'
# require 'cmath'
# require 'set'
class Object
  def yield_self(*args)
    yield(self, *args)
  end
  alias :then :yield_self
end

a, b, c = gets.split.map &:to_i
n = gets.to_i
s = gets.split(//)
arr = []
while g = gets
  arr << g.to_i
  arr << g.split.map(&:to_i)
  arr << g.chars
end
p a,b,c,s,n
