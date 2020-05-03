# abc045 B
a = gets.chomp.chars.reverse
b = gets.chomp.chars.reverse
c = gets.chomp.chars.reverse

x = a.pop

loop do
  x = case x
  when 'a'
    if a.empty?
      puts 'A'
      exit
    end
    a.pop
  when 'b'
    if b.empty?
      puts 'B'
      exit
    end
    b.pop
  when 'c'
    if c.empty?
      puts 'C'
      exit
    end
    c.pop
  end
end





