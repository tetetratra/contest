require 'pp'
n = gets.to_i

xl = []
n.times do
  xl << gets.split.map(&:to_i) # x, l
end

xl.sort_by!{|z|z[0] + z[1]}
line = xl[0][0] + xl[0][1]
# p xl

cnt = 0
i = 1
while true
  break if xl[i].nil?
  if line > (xl[i][0] - xl[i][1])
    cnt += 1
    i += 1
    next
  end
  line = xl[i][0] + xl[i][1]
  i += 1
end


p n - cnt
# 3 1 5
