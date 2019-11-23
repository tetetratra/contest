k, s = gets.split.map(&:to_i)
cnt = 0
z = (0..k).to_a
(k+1).times do |x|
  (k+1).times do |y|
    if z.bsearch{|zz|s <=> zz + x + y}
      cnt += 1
    end
  end
end
p cnt
