require 'pp'
s = gets.chomp.chars
ops = [' ', '+'].repeated_permutation(s.size - 1).to_a
sum = 0
ops.each do |op|
  sum += eval(s.zip(op).map(&:join).join.gsub(' ',''))
end
p sum
# 176 12656242944
