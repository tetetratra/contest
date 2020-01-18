H, W = gets.split.map(&:to_i)
c = Array.new(H)

H.times do |i|
  c[i] = gets.chomp.chars.map{|x|x == '#'}
end
# p c
# puts c.map{|x| x.map{|xx| format('%s ', xx.to_s) }.join }.join("\n")

stack1 = [] # [h,w]
stack2 = []

H.times do |h|
  W.times do |w|
    if c[h][w]
      stack1 << [h,w]
    end
  end
end

cnt = 0
while true
  until stack1.empty?
# p stack1
    s = stack1.pop
    h, w = s[0], s[1]

    if h + 1 < H && !c[h+1][w]
      stack2 << [h+1,w]
      c[h+1][w] = true
    end

    if 0 <= h - 1 && !c[h-1][w]
      stack2 << [h-1,w]
      c[h-1][w] = true
    end

    if w + 1 < W && !c[h][w+1]
      stack2 << [h,w+1]
      c[h][w+1] = true
    end

    if 0 <= w - 1 && !c[h][w-1]
      stack2 << [h,w-1]
      c[h][w-1] = true
    end

    # [
      # [h+1, w],
      # [h-1, w],
      # [h, w+1],
      # [h, w-1]
    # ].select{|(hh,ww)| 0 <= hh && hh < H && 0 <= ww && ww < W }.each do |h,w|
      # if !c[h][w]
        # stack2 << [h,w]
        # c[h][w] = true
      # end
    # end
  end

  if stack2.empty?
    break
  else
    cnt += 1
    stack2, stack1 = stack1, stack2
  end


  # until stack2.empty?
    # s = stack2.pop
    # h, w = s[0], s[1]
    # [
      # [h+1, w],
      # [h-1, w],
      # [h, w+1],
      # [h, w-1]
    # ].select{|(hh,ww)| 0 <= hh && hh < H && 0 <= ww && ww < W }.each do |h,w|
      # if !c[h][w]
        # stack1 << [h,w]
        # c[h][w] = true
      # end
    # end
  # end

  # if stack1.empty?
    # break
  # else
    # cnt += 1
  # end
end

p cnt


# puts c.map{|x| x.map{|xx| format('%s ', xx.to_s) }.join }.join("\n")






