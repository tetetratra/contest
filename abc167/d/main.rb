# abc167 D
n, k = gets.split.map(&:to_i)
a = gets.split.map{|x|x.to_i - 1}

s = [1]

visited = Array.new(n, 0)
visited[0] = 1


# pos = 0
# n.times do
#   s << a[pos]
#   pos = a[pos] - 1
# end
# p s

pos = 0
loop_cnt = 1
b = [0]
loop do
  b << a[pos]
  pos = a[pos]
  if visited[pos] == 2
    break
  end
  visited[pos] += 1

  loop_cnt += 1
end
b.pop
bs = b.map(&:succ)
bs2 = bs.map{|bss|[bss,visited[bss-1]]}
one = bs2.select{|x| x[1] == 1}
two = bs2.select{|x| x[1] == 2}
if k < one.size
  p one[k][0]
else
  p two[(k - one.size) % two.size][0]
end



