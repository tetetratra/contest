require 'pp'
n = gets.to_i

def f(x)
  return 1 if x < 2
  x * f(x-2)
end

if n.odd?
  p 0
  exit
end
p f(n)

