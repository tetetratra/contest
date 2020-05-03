class Integer
  def divisor_list # 約数列挙
    require 'prime'
    list = []
    d = ([1] + prime_division.flat_map { |x,n| [x] * n })
    [true, false].repeated_permutation(d.size) do |arr|
      r = 1
      arr.each_with_index do |a, i|
        r *= d[i] if a
      end
      list << r
    end
    list.uniq
  end
end

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


def newton(f, g, epsilon = 0.01, init_x = 0) # g = df/dx
  x = init_x.to_f
  loop do
    x -= f.call(x) / g.call(x)
    break if f.call(x).abs < epsilon
  end
  x
end

def secant(f, epsilon = 0.01, x = 0.2, prex = 0.1) # g = df/dx
  x    = x.to_f
  prex = prex.to_f
  loop do
    pre = x
    x -= f.call(x) * ( (x - prex) / (f.call(x) - f.call(prex)) )
    prex = pre
    break if f.call(x).abs < epsilon
  end
  x
end

def bisection(f, epsilon = 0.01, x1 = 0.0, x2 = 10.0) # 解がx1とx2で挟まるように決める
  x1 = x1.to_f
  x2 = x2.to_f
  x = (x1 + x2) / 2
  loop do
    x = (x1 + x2) / 2
    if f.call(x1) * f.call(x) < 0
      x2 = x
    else
      x1 = x
    end
    break if f.call(x).abs < epsilon
  end
  x
end

