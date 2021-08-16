# https://leetcode.com/problems/largest-time-for-given-digits/

# @param {Integer[]} arr
# @return {String}
def largest_time_from_digits(arr)
  arr.permutation(4).map do |(a,b,c,d)|
    # p [a,b,c,d]
    min = "#{a}#{b}"
    sec = "#{c}#{d}"
    next nil if min.to_i < 0 || 24 <= min.to_i || sec.to_i < 0 || 60 <= sec.to_i

    Time.new(2021, 1, 1, min, sec)
  end.compact.max&.strftime('%H:%M') || ""
end

arr = [1,2,3,4]
p largest_time_from_digits(arr)

arr = [5,5,5,5]
p largest_time_from_digits(arr)

arr = [0,0,0,0]
p largest_time_from_digits(arr)

arr = [0,0,1,0]
p largest_time_from_digits(arr)

arr = [2,0,0,4]
p largest_time_from_digits(arr)


