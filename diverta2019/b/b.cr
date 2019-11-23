r,g,b,n = read_line.split.map(&.to_i)
cnt = 0
(n / r + 1).to_i.times do |rr|
  (n / g + 1).to_i.times do |gg|
    next if rr*r + gg*g >= n+1
    xxx = (n - (rr*r + gg*g))
    if 0 <= xxx && xxx <= n && xxx % b == 0
      cnt += 1
    end
  end
end
p cnt
# 4 87058
