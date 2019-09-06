n = gets.to_i
a = []
n.times do |i|
  a << [gets.to_i, i+1] # [番, 添]
end
# p a
a.sort!{|aa,bb|aa[0] != bb[0] ? aa[0] <=> bb[0] : aa[1] <=> bb[1]}
# p a
color = []
arr = []
a.size.times do |i|
  # puts
  if arr.empty?
    arr << a[i]
    # p arr
    # p color
    next
  end
  f = false
  arr.size.times do |ii|
    if arr[ii][0] < a[i][0] && arr[ii][1] < a[i][1]
      arr[ii] = a[i]
      f = true
    end
  end
  if f == false # 変更無かったら
    arr << a[i]
  end

  # p arr
  # p color

  if arr.size > 1 && arr.all?{ |a| a == arr[0] } # 全部更新されてたら
    color << arr.size
    arr = []
  end

end
# p arr
# p color
if color.empty?
  p arr.size
else
  p color.max
end
