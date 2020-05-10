# abc167 C
n, m, x = gets.split.map(&:to_i)
ca = n.times.map {
  c, *a = gets.split.map(&:to_i)
  [c, a]
}
# pp ca
#
min = 10 ** 10
# (2 ** 12) * 12 ~=> 40000
[true, false].repeated_permutation(n) { |bools|
  b = []
  mon = 0
  bools.each_with_index do |bool, i|
    next if !bool

    b << ca[i][1]
    mon += ca[i][0]
  end

  next if b.empty?

  bsum = b.transpose.map(&:sum)

  if bsum.all?{|pri|pri >= x}
    min = mon if mon < min
  end
}
p min == 10**10 ? -1 : min
