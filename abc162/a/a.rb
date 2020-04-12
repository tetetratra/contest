# a
d = gets.chomp.chars.map(&:to_i)
puts (d.any?{|x|x == 7}) ? 'Yes' : 'No'


