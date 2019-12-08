require 'pp'

n = gets.to_i
d = gets.split.map(&:to_i)
cnt = 0
d.group_by(&:itself).map{|k,v|[k, v.size]}.each do |n, size|
  if n > size # 全消ししないと無理なとき
    cnt += size
  elsif n < size # ちょっと消せば良いとき
    cnt += size - n
  end
end
p cnt
