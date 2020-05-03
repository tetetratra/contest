# abc072 B
s = gets.chomp.chars

puts s.select.with_index{|s,i|i % 2 == 0}.join
