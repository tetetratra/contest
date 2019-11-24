require 'pp'
m = gets.to_i


dc = []
m.times do
  dd,cc = gets.split.map(&:to_i)
  dc << [dd,cc]
end
pp dc

=begin
9
99  => 18 => 9
999 => 189 => 117 => 18 => 9

88 => 16 => 7
888 => 168 =>

=end
