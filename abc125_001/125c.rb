gets
a = gets.split.map &:to_i
aaa = []
a.each_with_index do |aa, aai|
  aaa << (a.delete_at(i)).inject{|memo, item|memo.gcd(item)}
end

p aaa.max
