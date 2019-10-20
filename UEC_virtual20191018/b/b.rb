require 'pp'
a = []
28.times do |i|
  a << gets.to_i
end

puts ((1..30).to_a - a).join("\n")
