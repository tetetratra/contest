# https://leetcode.com/problems/xor-queries-of-a-subarray/description/

def xor_queries(arr, queries)
  accum = [arr.first]
  arr.inject { |item, memo| (item ^ memo).tap(&accum.method(:<<)) }

  r = queries.map do |a, b|
    if a - 1 >= 0
      accum[a-1] ^ accum[b]
    else
      accum[b]
    end
  end
  r
end

# arr = [4,8,2,10]
# queries = [[2,3],[1,3],[0,0],[0,3]]

# arr = [1,3,4,8]
# queries = [
#   [0,1],
#   [1,2],
#   [0,3],
#   [3,3]
# ]

p xor_queries(arr, queries)
