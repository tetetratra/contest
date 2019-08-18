l, r = gets.split.map{|a|a.to_i}
if (l..r).any?{|a|a%2019 == 0}
  p 0
  exit
end
p (l % 2019) * ((l+1) % 2019)


# res = []
# l.upto(r) do |i|
#   (i+1).upto(r) do |j|
#     res << [i,j]
#   end
# end
# pp res.map{|i|i.inject(&:*) % 2019}.size
# 2 20
