# abc105 C
a, b, c = gets.split.map(&:to_i)
n = gets.to_i
d = gets.split.map(&:to_i)
s = gets.chomp.chars
s = gets.chomp.chars.map(&:to_i)

c = n.times.map {
  gets.to_i
  gets.split.map(&:to_i)
  gets.chomp.chars
  x, y = gets.split.map(&:to_i)
}

# ans = s.match?(//)

# puts (ans) ? 'Yes' : 'No'

# puts (ans) ? 'YES' : 'NO'

# puts c.map{|x| x.map{|xx| format("%2d",xx) }.join }.join("\n")

