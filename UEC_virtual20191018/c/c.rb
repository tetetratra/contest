require 'pp'

s = gets.chomp.chars

a1 = "abcdefghijklmnopqrstuvwxyz".chars.map(&:capitalize)
a2 = "defghijklmnopqrstuvwxyzabc".chars.map(&:capitalize)
aa = a2.zip(a1).to_h{|(b,c)|{b => c}}

puts s.map{|x|
  aa[x]
}.join
