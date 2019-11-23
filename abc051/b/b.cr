k,s = read_line.split.map(&.to_i)
cnt = 0
z = (0..k).to_a

0.upto(k) do |x|
  0.upto(k) do |y|
    # p [x,y]
    if zz = z.bsearch{|zz|s - x - y <= zz}
      # p zz
      cnt += 1 if zz + x + y == s
      # p ?!
    end
  end
end
p cnt
