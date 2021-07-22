# https://leetcode.com/problems/decode-xored-array/

def decode(encoded, first)
  decoded = [first]
  encoded.each do |e|
    l = decoded.last
    decoded << (l ^ e)
  end
  decoded
end

encoded = [1,2,3]
first = 1
decode(encoded, first) # [1,0,2,1]

encoded = [6,2,7,3]
first = 4
decode(encoded, first) # [4,2,0,7,4]

