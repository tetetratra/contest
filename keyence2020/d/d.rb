require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ab = a.zip(b)
p ab; p '========='

selects = (0..(n-2)).to_a


if ab.map{|x|x[0]} == ab.map{|x|x[0]}.sort
  p 0
  exit
end

ab_ = ab.dup
res = []
selects.repeated_permutation(5).each do |sel|
  # p sel
  ab = []
  ab_.each{|x|ab << x}
  cnt = 0
  sel.each do |s|
    ab[s][0],   ab[s+1][0], ab[s][1],   ab[s+1][1] = \
    ab[s+1][1], ab[s][1],   ab[s+1][0], ab[s][0]
    cnt += 1
    if ab.map{|x|x[0]} == ab.map{|x|x[0]}.sort
      p [ab.map{|x|x[0]}, ab.map{|x|x[0]}.sort]
      p sel
      p cnt
      res << cnt
      break
    end
  end
end

if res.empty?
  p -1
  exit
end
p res
