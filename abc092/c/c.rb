n = gets.to_i
a = [0] + gets.split.map(&:to_i) + [0]
aa = a.each_cons(2).map{|a,b|(b-a).abs}
left = [0]
aa.inject(0){|m,i|left << m+i; m+i}
right = []
aa.reverse.inject(0){|m,i|right << m+i; m+i}
right.reverse!; right << 0
1.upto(n) do |i|
  p left[i-1] + right[i+1] + (a[i-1] - a[i+1]).abs
end
