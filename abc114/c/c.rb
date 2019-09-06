# 4 13 26484
require 'pp'
class Integer
  def combination(k = self) # 4C2 = 6
    return 1 if k.zero?
    (self - k + 1..self).inject(:*) / k.factorial
  end

  def permutation(k = self) # 4P2 = 12
    return 1 if k.zero?
    (self - k + 1..self).inject(:*)
  end

  def factorial(step = 1) # 4! = 24
    return 1 if self.zero?
    (1..self).inject(:*)
  end

  alias :C :combination
  alias :P :permutation
  alias :! :factorial
end

n = gets.to_i
keta = n.to_s.chars.size

p ans = (1..n).to_a.map{|a|a.to_s.chars}.reject{|a|a.size != keta}.select{|arr|
  arr.any?{|a|a=='3'} && arr.any?{|a|a=='5'} && arr.any?{|a|a=='7'} &&\
  arr.all?{|a|a=='3' || a=='5' || a=='7'}
}.size

p tmp = (1..999).to_a.map{|a|a.to_s.chars}.reject{|a|a.size != keta}.select{|arr|
#  arr.any?{|a|a=='3'} && arr.any?{|a|a=='5'} && arr.any?{|a|a=='7'} &&\
  arr.all?{|a|a=='3' || a=='5' || a=='7'}
}.size


p tmp - 2**keta
