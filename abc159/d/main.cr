# abc159 D
n = read_line.to_i
a = read_line.split.map(&.to_i)

agroup = a.group_by(&.itself).map{|k,v| { k => v.size } }.reduce{|m,i|m.merge(i)}

# p agroup

agroup2 = agroup.map { |a|
  key = a.to_a[0]
  val = a.to_a[1]
  {
    key => val * (val-1) / 2
  }
}.reduce{|m,i|m.merge(i)}

# p agroup2

sum = agroup2.map{|k,v|v}.reduce{|m,i|m + i}
# puts "sum: #{sum}"




a.each do |aa|
  val = agroup[aa]
  r = sum -  ( val * (val-1) / 2 )  + ( (val-1) * (val-2) / 2 )
  p r.to_i
end
