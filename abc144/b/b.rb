require 'pp'

n = gets.to_i
1.upto(9) do |i|
  if n % i == 0 && 0 < n / i && n / i < 10
    puts "Yes"
    exit
  end
end

puts "No"
