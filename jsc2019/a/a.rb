require 'pp'
m, d = gets.split.map &:to_i
cnt = 0
1.upto(m) do |mm|
  1.upto(d) do |dd|
    next if dd.to_s.size != 2
    next if dd.to_s[0].to_i < 2 || dd.to_s[1].to_i < 2
    cnt += 1 if dd.to_s[0].to_i * dd.to_s[1].to_i == mm
  end
end
p cnt
