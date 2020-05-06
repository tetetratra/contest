# abc159 E
h, w, k = gets.split.map(&:to_i)
s = h.times.map {
  gets.chomp.chars.map(&:to_i)
}

puts s.map{|ss|ss.join}.join("\n")

# どこで横を切るか全探索(2**10 ~= 10**3)
[true,false].repeated_permutation(h-1).each do |hs|
  # 左から右に貪欲に切る
  range_left  = 0
  range_right = 0
  ranges = []
  hs.each do |h|
    if h
      ranges << (range_left..range_right)
      range_right += 1
      range_left   = range_right
    else
      range_right += 1
    end
  end
  ranges << (range_left..range_right)
  p ranges

end


