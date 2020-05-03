# abc120 C
a, b, c = gets.split.map(&:to_i)
n = gets.to_i
d = gets.split.map(&:to_i)
s = gets.chomp.chars
s = gets.chomp.chars.map(&:to_i)

c = []

n.times do
  c << gets.to_i
  c << gets.split.map(&:to_i)

  c << gets.chomp.chars

  x, y = gets.split.map(&:to_i)
end

# ans = s.match?(//)

# puts () ? 'Yes' : 'No'
# puts () ? 'YES' : 'NO'

# puts c.map{|x| x.map{|xx| format("%2d",xx) }.join }.join("\n")

