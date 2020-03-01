require 'pp'
n = gets.to_i
s = gets.chomp.chars
q = gets.to_i

a = []
q.times do
  qqq = gets.split
  if qqq[0] == "1"
    a << [1, qqq[1].to_i, qqq[2]]
  else
    a << [2, qqq[1].to_i, qqq[2].to_i]
  end
end

p s

a.each do |aa|
  p aa

end

# 3 1 5


