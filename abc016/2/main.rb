# abc016 B
a, b, c = gets.split.map(&:to_i)

pls = (a + b == c)
mns = (a - b == c)

if pls && mns
  puts '?'
elsif pls
  puts '+'
elsif mns
  puts '-'
else
  puts '!'
end


