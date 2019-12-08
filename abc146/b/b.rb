require 'pp'

n = gets.to_i
s = gets.chomp.chars

s2 = s.map{|ss|
  n.times do
    ss = ss.next[0]
  end
  ss
}.join
puts s2
