l, r = gets.split.map{|a|a.to_i}
if r - l >= 2019 || (l % 2019) > (r % 2019)
  p 0
  exit
end
p ((l % 2019)..(r % 2019)).to_a
.product(
  ((l % 2019)..(r % 2019)).to_a
)
.select{|a|a[0] < a[1]}
.map {|a|a.inject(&:*)}.min
