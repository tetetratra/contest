require 'pp'
n, m, p = gets.split.map(&:to_i)

def repeat_squaring(n, p, mod = (10**9 + 7))
  return 1 if p == 0
  if p % 2 == 0
    t = repeat_squaring(n, p/2, mod)
    return t*t % mod
  end
  n * repeat_squaring(n, p - 1, mod) % mod
end

p repeat_squaring(n, p, m)
