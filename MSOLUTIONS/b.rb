s = gets.chomp.split(//).map{|a|a=='o' ? 1 : 0}

if (15 - s.size) + s.select{|a|a == 1}.size >= 8
  puts 'YES'
else
  puts 'NO'
end
