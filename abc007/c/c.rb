require 'pp'
r,c = gets.split.map(&:to_i)
sy,sx = gets.split.map(&:to_i)
gy,gx = gets.split.map(&:to_i)
sy -= 1
sx -= 1
gy -= 1
gx -= 1

arr = []
r.times do
  arr << gets.chomp.chars
end
r.times do |rr|
  c.times do |cc|
    arr[rr][cc] = arr[rr][cc] == '#' ? -1 : nil
  end
end



arr[sy][sx] = 0
queue = [[sy,sx,0]]
while !queue.empty?
  q = queue.pop
  y = q[0]
  x = q[1]
  te = q[2]
  [
    [y+1,x],
    [y-1,x],
    [y,x+1],
    [y,x-1]
  ].select{|(yy,xx)| 0 <= yy && yy < r && 0 <= xx && xx < c }.each{ |(yy,xx)|
    next unless arr[yy][xx] == nil
    arr[yy][xx] = te + 1
    queue.unshift([yy,xx,te+1])
  }
end
p arr[gy][gx]
