# a
s,l,r = gets.split.map(&:to_i)

if l <= s && s <= r
  p s
elsif s < l
  p l
else
  p r
end
