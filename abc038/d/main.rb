# abc038 D
n = gets.to_i
wh = n.times.map {
  gets.split.map(&:to_i)
}

whs = wh.sort{|(w1,h1), (w2,h2)| w1 == w2 ? h1 <=> h2 : w1 <=> w2 }.reverse
# p whs
# p whs[0]
cnt = 1
whs.inject { |(mw, mh), (w,h)|
  if w < mw && h < mh
    cnt += 1
    # p [w,h]
    [w,h]
  else
    [mw,mh]
  end
}
p cnt


