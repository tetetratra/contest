
n = gets.to_i

lr = []
n.times do |i|
  l, r = gets.split.map(&:to_i)
  lr << [l, r]# l r
end

# pp lr
res = 0
lrsl = lr.sort{|a,b|a[0] == b[0] ? b[1] <=> a[1] : a[0] <=> b[0]} # l

# p lrsl

rmin = [lrsl[0][1]]
lrsl.map{|x|x[1]}.inject do |m,i|
  min = m < i ? m : i
  rmin << min
  min
end
# p rmin

rminr = [lrsl[-1][1]]
lrsl.reverse.map{|x|x[1]}.inject do |m,i|
  min = m < i ? m : i
  rminr << min
  min
end
rminr.reverse!
# p rminr

(n-1).times do |i|
  # puts '-----'
  lll = lrsl[i][0]
  rrr = rmin[i]
  #p rrr = lrsl[0..i].map{|x|x[1]}.min
  fast = rrr - lll + 1
  # puts '-'
  lll = lrsl[-1][0]
  rrr = rminr[i+1]
  #p rrr = lrsl[(i+1)..(n-1)].map{|x|x[1]}.min
  last = rrr - lll + 1
  # puts '-'
  r = fast + last
  res = r if r > res
end

p res
exit
# p '----------------------------------------------'

res2 = 0

lrsr = lr.sort_by{|x|x[1]} # r

lmax = [lrsr[0][0]]
lrsr.map{|x|x[0]}.inject do |m,i|
  max = m > i ? m : i
  lmax << max
  max
end

lmaxr = [lrsr[-1][0]]
lrsr.reverse.map{|x|x[0]}.inject do |m,i|
  max = m > i ? m : i
  lmaxr << max
  max
end
lmaxr.reverse!

lmax, lmaxr = lmaxr, lmax
# p lmax
# p lmaxr



(n-1).times do |i|
  # p lrsr[0..i]
  # lll = lrsr[0..i].map{|x|x[0]}.max
  lll = lmaxr[i]
  rrr = lrsr[0][1]
  # p [lll,rrr]
  fast = rrr - lll + 1

  # p lrsr[(i+1)..-1]
  # lll = lrsr[(i+1)..-1].map{|x|x[0]}.max
  lll = lmax[i+1]
  rrr = lrsr[i+1][1]
  # p [lll,rrr]
  last = rrr - lll + 1

  r = fast + last
  res2 = r if r > res2
end


p [res,res2].max


# 6 34 540049931
