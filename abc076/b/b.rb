n = gets.to_i
k = gets.to_i
p [1,2].repeated_permutation(n).map{|a| a.inject(1){|m,i|i == 1 ? m*2 : m+k} }.sort[0]
