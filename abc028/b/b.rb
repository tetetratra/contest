s = gets.chomp.chars
puts %w(A B C D E F).map{|x|s.count(x)}.join(" ")
