# arc006 C
n = gets.to_i
w = n.times.map.with_index { |ind|
  gets.to_i
}.reverse

boxs = [ [w.pop] ]


(n-1).times do |i|
  ww = w.pop
  box = boxs.find { |b| b[-1] >= ww }
  if box
    box << ww
  else
    boxs << [ww]
  end
  boxs.sort_by!{|x| x[-1] }
end
p boxs.size
