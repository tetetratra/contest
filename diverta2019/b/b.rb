r,g,b,n = gets.split.map(&:to_i)
# p [r,g,b,n]

bb = (0..(n / b))
# p bb
# puts
cnt = 0
(n / r + 1).times do |rr|
  (n / g + 1).times do |gg|
    # p [rr * r,gg*g]
    next if rr*r + gg*g >= n+1
    if 0 <= (n - (rr*r + gg*g))/b && (n - (rr*r + gg*g))/b <= (n / b) && (n - (rr*r + gg*g)) % b == 0 
      cnt += 1
    end
    # if x = bb.bsearch{|x| x*b >= n - (rr*r + gg*g)}
    #   cnt += 1 if x*b == n - (rr*r + gg*g)
    # end
  end
end
p cnt
# 4 87058
