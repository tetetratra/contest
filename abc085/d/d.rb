require 'pp'
n, h = gets.split.map(&:to_i)
ab = []
n.times do
  ab << gets.split.map(&:to_i)
end
cnt = 0

a_max = ab.sort_by{|x|-x[0]}[0][0]

sum = 0
ab.sort_by!{|x|-x[1]}
ab.size.times do |i|
  if sum >= h
    p cnt
    exit
  end

  break if ab[i][1] <= a_max
  sum += ab[i][1]
  cnt += 1
end


cnt += ((h-sum) / a_max.to_f).ceil

p cnt
