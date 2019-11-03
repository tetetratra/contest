s = gets.chomp.chars.map{|ss|ss == '<' ? 1 : 0}
# p s
# p s.chunk_while{|a,b|a==b}.to_a

a = [0]
s.chunk_while{|a,b|a==b}.to_a.each do |cs|
  if cs[0] == 1 # <
    (1..(cs.size)).each do |x|
      a << x
    end
  else # >
    if a[-1] <= (cs.size-1)
      a[-1] = (cs.size-1)+1
    end
    (0..(cs.size-1)).to_a.reverse.each do |x|
      a << x
    end
  end
end
sum = 0
a.each do |aa|
  sum += aa
end
p sum

# p s.chunk_while{|a,b|a==b}.to_a
# p s.sort
# a = [0]
# i = 1
# s.each{|ss|
#   if ss == "<"
#     a[i] = a[i-1]+1
#   else
#     a[i] = a[i-1]-1
#   end
#   i += 1
# }
# p a
# p a.min
# if a.min < 0
#   a.map!{|aa|aa - a.min}
# end
# p a
# p a.inject(:+)
# 3 28
