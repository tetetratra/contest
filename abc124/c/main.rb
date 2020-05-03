
# 10010010

# 10101010

# 01010101

s = gets.chomp.split(//).map &:to_i

count01 = 0
count10 = 0
s.each_with_index do |ss, ind|
  is01 = ind % 2
  if (ss != is01)
    count01 += 1
  else
    count10 += 1
  end
end

puts [count01, count10].min
