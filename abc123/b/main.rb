# abc123 B
a = []
5.times do
  a << gets.to_i
end


as = a.sort_by{|aa|i = aa.to_s[-1].to_i; i == 0 ? 9 : i }
min  = as[0]
maxs = as[1..-1]

a2 = maxs.map {|aa|
  x = aa / 10
  aa % 10 == 0 ? aa : (x+1)*10
}
# p a2
p a2.inject(:+) + min
