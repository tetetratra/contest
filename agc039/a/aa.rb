s = gets.chomp.chars
k = gets.to_i
# p k
arr =  s.chunk_while{|a,b|a==b}.to_a
# p arr
arr2 = arr.map{|a|a.size/2}
arr3 = arr.map{|a|a.size}

# p arr2
res = arr2.inject(:+)

# p arr3[0]
# p arr3[-1]
# p arr3
if s[0] == s[-1] && arr3[0].odd? && arr3[-1].odd? && arr3.size != 1
  res += 1
  result = res * k - 1
else
  result = res * k
end

if arr3.size == 1
  result = res * k
end

p result


# 1 2  3          4 5 6 7 8 9 10 11 12
# 4 81 8999939997 3 1 1 2 5 6 6  1  2
