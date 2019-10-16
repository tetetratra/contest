n = gets.to_i
v = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
p v.zip(c).map{|(a,b)|a-b}.sort.select{|x|x>=0}.inject(:+) || 0
