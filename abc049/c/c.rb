require 'pp'

s = gets.chomp.chars


loop do
  if s[-7..-1]&.join == "dreamer"
    7.times do
      s.pop
    end
  elsif s[-5..-1]&.join == "dream"
    5.times do
      s.pop
    end
  elsif s[-5..-1]&.join == "erase"
    5.times do
      s.pop
    end
  elsif s[-6..-1]&.join == "eraser"
    6.times do
      s.pop
    end
  else
    puts "NO"
    exit
  end

  if s.empty?
    puts "YES"
    exit
  end
end
