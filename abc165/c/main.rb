# abc165 C
n, m, q = gets.split.map(&:to_i)
abcd = q.times.map {
  gets.split.map(&:to_i)
}


as = []

stack = [ *(1..m).map{ |x| [x] } ]

until stack.empty?
  aa = stack.pop
  next if aa.size > n

  last = aa[-1]
  as << aa if aa.size == n

  (last..m).each do |l|
    stack << aa + [l]
  end
end
# as.sort!

max = 0
as.each do |a|
  sum = 0
  abcd.each do |aa,bb,cc,dd|
    if a[bb-1] - a[aa-1] == cc
      sum += dd
    end
  end
  max = sum if max < sum
end
p max
