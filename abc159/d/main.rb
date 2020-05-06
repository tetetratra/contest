# abc159 D
n = gets.to_i
a = gets.split.map(&:to_i)

agroup = {}

a.group_by(&:itself).each{|k,v| agroup[k] = v.size  }

# p agroup

agroup2 = {}
agroup.each { |key, val|
  agroup2[key] = val * (val-1) / 2
}
sum = agroup2.map{|k,v|v}.inject(:+)

# puts "sum: #{sum}"

a.each do |aa|
  val = agroup[aa]
  p sum - ( val * (val-1) / 2 )  + ( (val-1) * (val-2) / 2 )
end







