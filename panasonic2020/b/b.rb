# b
require 'pp'
h, w = gets.split.map(&:to_i)


if h == 1 || w == 1
  p 1
  exit
end

if h.even? || w.even?
  p h*w / 2
elsif
  p h*w / 2 + 1
end


