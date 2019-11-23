d, g = gets.split.map(&:to_i)
pc = []
d.times do |i|
  pc << [(i+1) * 100,*gets.split.map(&:to_i)]
end
# p pc
cnts = []
[true,false].repeated_permutation(d).each do |bools|
  sum = 0
  cnt = 0
  pc.size.times do |i|
    if bools[i]
      sum += pc[i][0] * pc[i][1] + pc[i][2]
      cnt += pc[i][1]
    end
  end
  if sum >= g
    cnts << cnt
    next
  end
  until sum >= g
    (pc.size-1).downto(0) do |i|
      next if bools[i]
      tmpflag = false
      pc[i][1].times do |ii|
        sum += pc[i][0]
        cnt += 1
        if sum >= g
          tmpflag = true
          break
        end
      end
      break if tmpflag
    end
  end

  cnts << cnt
end
p cnts.sort[0]

# 3 7 2 66
