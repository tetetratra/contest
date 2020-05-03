# abc123 A
a = [gets.to_i]
a << gets.to_i
a << gets.to_i
a << gets.to_i
a << gets.to_i
k = gets.to_i

puts a.combination(2).to_a.all? {|(x,y)|
  (x - y).abs <= k
} ? 'Yay!' : ':('

