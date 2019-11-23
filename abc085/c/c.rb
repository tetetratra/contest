n, y = gets.split.map(&:to_i)
0.upto(n) do |man|
  0.upto(n-man) do |gosen|
    sen = n-man-gosen
    if man*10000 + gosen*5000 + sen*1000 == y
      puts [man, gosen, sen].join(' ')
      exit
    end
  end
end
puts "-1 -1 -1"
