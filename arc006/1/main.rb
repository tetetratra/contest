# arc006 B
e = gets.split.map(&:to_i)
b = gets.to_i
l = gets.split.map(&:to_i)


puts case (e & l).size
when 6
  1
when 5
  if (l - (e & l)).first == b
    2
  else
    3
  end
when 4
  4
when 3
  5
else
  0
end

