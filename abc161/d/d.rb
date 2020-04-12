# d
require 'pp'
k = gets.to_i

stack = [1,2,3,4,5,6,7,8,9].reverse
ans = []



while true
  s = stack.pop
  ans << s
  ss = s.to_s
  if ss[-1] == ?0
    stack.unshift (ss + '1').to_i
    stack.unshift (ss + '0').to_i
  elsif ss[-1] == ?9
    stack.unshift (ss + '8').to_i
    stack.unshift (ss + '9').to_i
  else
    stack.unshift (ss + (ss[-1].to_i - 1).to_s).to_i
    stack.unshift (ss + (ss[-1].to_i + 1).to_s).to_i
    stack.unshift (ss + (ss[-1].to_i    ).to_s).to_i
  end
  break if ans.size >= 10 ** 5 * 2
end
ans.sort!
p ans[k-1]
# 23 1 21 3234566667

