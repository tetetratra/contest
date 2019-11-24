require 'pp'
x,y = gets.split.map(&:to_i)
sum = 0
sum += 300000 if x == 1
sum += 300000 if y == 1
sum += 200000 if x == 2
sum += 200000 if y == 2
sum += 100000 if x == 3
sum += 100000 if y == 3
sum += 400000 if x == 1 && y == 1
p sum
