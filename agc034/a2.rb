n, a, b, c, d = *gets.chomp.split.map(&:to_i)
s = gets.chomp.split(//)
# s[a - 1] = 'A'
# s[b - 1] = 'B'
# s[c - 1] = 'C'
# s[d - 1] = 'D'
s.each_cons(2) do |ss|
  if ss == %w[# #]
    puts 'No'
    exit
  end
end

if c < d
  puts 'Yes'
  exit
end
s.each_cons(3).with_index do |ss, ssi|

  if ss == %w[. . .] && (b-1 <= ssi) && (ssi <= d-2)
    puts 'Yes'
    exit
  end
end
puts 'No'
