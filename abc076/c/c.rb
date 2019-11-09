require 'pp'
s = gets.chomp.chars
t = gets.chomp.chars
# p s
# p t
# pp s.each_cons(t.size).to_a



arr = []
0.upto(s.size - t.size) do |i|

  before_x = (i-1) < 0 ? [] : s[0..(i-1)]
  x = s[i..(i+(t.size-1))]
  after_x = s[(i+(t.size))..-1]
  if Regexp.new(x.join.gsub('?', '\w')) === t.join
    arr << before_x.join + t.join + after_x.join
  else
    nil
  end
end
if arr.empty?
  puts 'UNRESTORABLE'
  exit
end
puts arr.map{|ss|ss.gsub('?','a')}.sort[0]
