require 'pp'

n = gets.to_i
s = gets.chomp.chars
if n.odd?
  puts "No"
else
  puts s[0..((n/2)-1)] == s[((n/2))..-1] ? "Yes" : 'No'
end
