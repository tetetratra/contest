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


# d
n = gets.to_i
s = gets.chomp.chars

# 逆を求める(すべて - 反対)
#   => どちらかを満たさない
# 2つ決めると1こは確定

cnt = n * (n**2 - 3 * n  + 2) / 6

p cnt

r = s.count{|ss|ss == ?R}
g = s.count{|ss|ss == ?G}
b = s.count{|ss|ss == ?B}

p [r,g,b]

cnt -= r.P(3)
cnt -= r.P(2)
cnt += r * (r**2 - 3 * r  + 2) / 6
cnt += r * (r - 1) / 2

cnt -= g.P(3)
cnt -= g.P(2)
cnt += g * (g**2 - 3 * g  + 2) / 6
cnt += g * (g - 1) / 2

cnt -= b.P(3)
cnt -= b.P(2)
cnt += b * (b**2 - 3 * b  + 2) / 6
cnt += b * (b - 1) / 2



p cnt


# 満たさないやつを数える処理
1.upto(n) do |k|
  1.upto(k) do |i|
    j = (k + i) / 2
    next unless i < j && j < k

    cnt -= 1 if [s[i-1], s[j-1], s[k-1]].uniq.size == 3 # (すでに引いたものじゃないなら)
  end
end
p cnt

# 1 1800


