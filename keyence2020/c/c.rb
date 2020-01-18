require 'pp'
n, k, s = gets.split.map(&:to_i)


ans = Array.new(n, s+1)

if s == 10 ** 9
  ans = Array.new(n, 1)
end

k.times do |kk|
  ans[kk] = s
end

# ans[0] = s

# p ans
puts ans.join(' ')

