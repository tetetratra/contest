# a
H, W = gets.split.map(&:to_i)

c = []
H.times do
  c << gets.chomp.chars
end

# 1 2 0 4

# マス目作って、minなら更新する
d = Array.new(H){Array.new(W, 10**10)}


stack = [[0,0]]

if c[0][0] == '.'
  d[0][0] = 0
else
  d[0][0] = 1
end


until stack.empty?
  s = stack.pop
  h, w = *s
  n = d[h][w]
  now = c[h][w]
  if h + 1 < H
    if c[h+1][w] == '#' && d[h+1][w] > n + 1
      d[h+1][w] = n + 1
      d[h+1][w] -= 1 if now == '#'
      stack << [h+1, w]
    elsif c[h+1][w] == '.' && d[h+1][w] > n
      d[h+1][w] = n
      stack << [h+1, w]
    end
  end

  if w + 1 < W
    if c[h][w+1] == '#' && d[h][w+1] > n + 1
      d[h][w+1] = n + 1
      d[h][w+1] -= 1 if now == '#'
      stack << [h, w+1]
    elsif c[h][w+1] == '.' && d[h][w+1] > n
      d[h][w+1] = n
      stack << [h, w+1]
    end
  end
end

puts c.map(&:join)
puts d.map(&:join)
p d[-1][-1]








