require 'pp'
s = gets.chomp.chars.map(&:to_i)

ans = nil
s.each_cons(3) do |arr|
  n = arr.join.to_i
  ans = (n-753).abs if ans.nil? || ans > (n - 753).abs
end
p ans

