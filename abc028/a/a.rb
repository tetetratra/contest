n = gets.to_i

puts case n
when 0..59
  "Bad"
when 60..89
  "Good"
when 90..99
  "Great"
when 100
  "Perfect"
end

