class Integer
  @mod = nil
  def self.set_mod(mod = 10**9 + 7)
    @mod = mod
  end

  def combination(k = self) # 4C2 = 6
    return 1 if k.zero?
    if @mod.nil?
      (self - k + 1..self).inject(:*) / k.factorial
    else
      (self - k + 1..self).inject{|i,m|i * m % @mod} * k.factorial.modinv % @mod
    end
  end

  def permutation(k = self) # 4P2 = 12
    return 1 if k.zero?
    if @mod.nil?
      (self - k + 1..self).inject(:*)
    else
      (self - k + 1..self).inject{|i,m|i * m % @mod}
    end
  end

  def factorial(step = 1) # 4! = 24
    return 1 if self.zero?
    if @mod.nil?
      (1..self).inject(:*)
    else
      (1..self).inject{|i,m|i * m % @mod}
    end
  end

  def modinv # https://qiita.com/drken/items/3b4fdf0a78e7a138cd9a
    a = self; b = @mod; u = 1; v = 0
    while b > 0
      t = a / b
      a -= t * b
      a, b = b, a
      u -= t * v
      u, v = v, u
    end
    u %= m
    u += m if u < 0
    u
  end

  alias :C :combination
  alias :P :permutation
  alias :! :factorial
end

Integer.set_mod
n, k = gets.split.map(&:to_i)
ao  = k
aka = n - k
1.upto(ao) do |i|
  p (aka+1).C(i) * (ao-1).C(i-1) % (10**9 + 7)
end


# 3
# 6
# 1

# 1998
# 3990006
# 327341989
