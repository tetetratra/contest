require 'pp'
s = gets.chomp.chars
Q = gets.to_i
mu = 1
q = []
Q.times do
  n, f, c = gets.split
  n = n.to_i
  if n == 1
    mu *= -1
  else # n == 2
    f = f.to_i
    if mu == 1
      if f == 1
        s.unshift c
      else # f == 2
        s << c
      end
    else
      if f == 1
        s << c
      else # f == 2
        s.unshift c
      end
    end

  end
end
if mu == 1
  puts s.join
else
  puts s.reverse.join
end

