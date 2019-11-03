require 'pp'
s = gets.chomp.chars
sr = s.reverse
puts s.zip(sr).all?{|ss,ssr|
  ss == ssr || ss == '*' || ssr == '*'
} ? 'YES' : 'NO'
