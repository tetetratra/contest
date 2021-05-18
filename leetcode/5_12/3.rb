# https://leetcode.com/problems/decode-ways/

# @param {String} s
# @return {Integer}

def num_decodings(s)
  s = s.chars
  # p s
  return 0 if s[0] == '0'
  return 1 if s.size == 1
  return 0 if [30,40,50,60,70,80,90].any? { |x| x.to_s == s[0] + s[1] }

  dp = Array.new(s.size) { 0 } # 数え上げのカウントDP
  dp[0] = 1
  dp[1] = [11,12,13,14,15,16,17,18,19, 21,22,23,24,25,26].any? { |x| x.to_s == s[0] + s[1] } ? 2 : 1

  2.upto(s.size-1) do |i|
    # p dp
    if [1,2,3,4,5,6,7,8,9].any? { |x| x.to_s == s[i] }
      dp[i] += dp[i-1]
    end
    if [*10..26].any? { |x| x.to_s == s[i-1] + s[i] }
      dp[i] += dp[i-2]
    elsif [30,40,50,60,70,80,90].any? { |x| x.to_s == s[i-1] + s[i] }
      return 0
    end
  end
  p dp
  dp[-1]
end

num_decodings("2101") # => 1
puts '---------'
num_decodings("10") # => 1
puts '---------'
num_decodings("207") # => 1
puts '---------'
num_decodings("301") # => 0
puts '---------'
num_decodings("27") # => 1

