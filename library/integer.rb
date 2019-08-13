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

p 4.!
p 4.C(2)
p 4.P(2)
