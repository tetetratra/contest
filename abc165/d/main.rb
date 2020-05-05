# abc165 D
A, B, n = gets.split.map(&:to_i)

def f(x)
  (A * x / B) - A * (x / B)
end

max = 0
n = (10**6) if n > (10**7)

n = 100


(1..n).each do |n|
  # r = f(n)
  # puts '@' * r
  # max = r if max < r
  p (A * n / B)
end
p max


