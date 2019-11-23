
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

  # 繰り返し二乗法
  def repeat_squaring(p, mod = (10**9 + 7))
    return 1 if p == 0
    if p % 2 == 0
      t = repeat_squaring(p/2, mod)
      return t*t % mod
    end
    self * repeat_squaring(p - 1, mod) % mod
  end

  alias :C :combination
  alias :P :permutation
  alias :! :factorial
end

def repeat_squaring(n, p, mod = (10**9 + 7))
  return 1 if p == 0
  if p % 2 == 0
    t = repeat_squaring(n, p/2, mod)
    return t*t % mod
  end
  n * repeat_squaring(n, p - 1, mod) % mod
end
