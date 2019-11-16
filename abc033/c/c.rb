require 'pp'

class String
  def power
    case self
    when "*"
      2
    when "+"
      1
    else
      0
    end
  end
end

s = gets.chomp.chars

sta = []
ans = []


s.each do |ss|
  if ss.match(/\d/) # 数字の場合すぐputsして終わり
    ans << ss
    next
  end

  if sta.empty?
    sta << ss
    next
  end

  if !sta.empty? && (sta[-1].power <= ss.power)
    sta << ss
  else
    loop do
      ans << sta.pop
      sta << ss
      break if sta.empty? || (sta[-1].power >= ss.power)
    end
  end

end

until sta.empty?
  ans << sta.pop
end


#puts "---"
#p sta
#p ans


sta = []

ans.each do |an|
  #p sta
  if /\d/ === an
    sta << an
    next
  end

  case an
  when "+"
    sta << (sta.pop.to_i + sta.pop.to_i)
  when "*"
    sta << (sta.pop.to_i * sta.pop.to_i)
  end
end
p sta[0].to_i
