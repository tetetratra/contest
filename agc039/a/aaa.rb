s = gets.chomp.chars
k = gets.to_i

arr = (s * 2).chunk_while{|a,b|a==b}.to_a
# p arr
res = arr.map{|a|
  a.size/2
}.inject(:+) # S2つ分の書き換える量

if arr[0][0] == arr[-1][-1] && arr[0].size.odd? && arr[-1].size.odd?
  res += 1
end
result = res * (k/2)
result += res/2 if k.odd? # 調整分


result -= 1 if arr[0][0] == arr[-1][-1] && arr[0].size.odd? && arr[-1].size.odd?


# result += res if k.odd?
# p res
# p res/2

p result
#                       # #
# 1 2  3          4 5 6 7 8 9 10 11 12
# 4 81 8999939997 3 1 1 2 5 6 6  1  2
