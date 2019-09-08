l, r = gets.split.map(&:to_i)
if r - l >= 2018
  p 0
  exit
end
arr = []
tmp = (l..r).to_a
tmp.product(tmp).select{|a|a[0] < a[1]}.each do |(a,b)|
  arr << (a*b) % 2019
end
p arr.min
