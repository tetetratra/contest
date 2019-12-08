class Integer
  def combination(k = self) # 4C2 = 6
    return 1 if k.zero?
    (self - k + 1..self).inject(:*) / k.factorial
  end

  def factorial(step = 1) # 4! = 24
    return 1 if self.zero?
    (1..self).inject(:*)
  end

  alias :C :combination
  alias :! :factorial
end

n, a, b = gets.split.map(&:to_i)
# p b - a # 選べる数（0からここまで)
# p n - 2 # 自由な数
# p [n, a, b]

if a > b
  p 0
  exit
end

if n == 1 && b != a
  p 0
  exit
end

if n == 1 && b == a
  p 1
  exit
end

if n == 2

end

p n.C(b-a) - (n-2).C(b-a)

# 5 0 0 1
