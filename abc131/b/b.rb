# 18, 0, -1044

n, l = gets.split.map &:to_i
azi = []
n.times do |i|
  azi << l + i
end
arr = []
honazi = azi.inject(:+)
azi.size.times do |i|
  if i == 0

    arr << [
      azi[1..-1].inject(:+),
      honazi - azi[1..-1].inject(:+)
    ]
    next
  end
  arr << [
    (azi[0..(i-1)] + azi[(i+1)..-1]).inject(:+),
    honazi - (azi[0..(i-1)] + azi[(i+1)..-1]).inject(:+)
  ]
end
arr.sort_by!{|a|a[1].abs}
p arr[0][0]
