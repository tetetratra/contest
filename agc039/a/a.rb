require 'pp'

s = gets.chomp.chars
k = gets.to_i

# p s
#
# p (s * 2)
# (s * 2).chunk_while{|a,b|a==b}.to_a
# (s * 2).chunk_while{|a,b|a==b}.to_a.map{|a|
#   if a.size == 1
#     0
#   else
#     a.size/2
#   end
# }

res = (s * 2).chunk_while{|a,b|a==b}.to_a.map{|a|
  # return 0 if a.size == 1
  # return a.size/2 if a.size.even?
  # return a.size/2 if a.size.odd?
  if a.size == 1
    0
  else
    a.size/2
  end
}.inject(:+)
result = res * (k/2)
# result += res if k.odd?

# p res/2
if k.odd? && k != 1
  # result += res/2
  # p [s[-1]] + s
  # p ([s[-1]] + s).chunk_while{|a,b|a==b}.to_a
  result += ([s[-1]] + s).chunk_while{|a,b|a==b}.to_a.map{|a|
    if a.size == 1
      0
    else
      a.size/2
    end
  }.inject(:+)
end

if k == 1
  result += (s).chunk_while{|a,b|a==b}.to_a.map{|a|
    if a.size == 1
      0
    else
      a.size/2
    end
  }.inject(:+)

end

p result
# p k
# 1 2  3          4 5 6 7
# 4 81 8999939997 3 1 1 2
