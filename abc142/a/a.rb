require 'pp'

n = gets.to_i
if n.even?
  p 0.5
else
  n = n.to_f
  p ((n+1)/2)/n
end
