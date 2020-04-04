# a
H, W = gets.split.map(&:to_i)

c = []
H.times do
  c << gets.chomp.chars
end

# 1 2 0 4

if c[0][0] == '.'
  stack = [[0,0,0]] # 0,0には0回で行ける
else
  stack = [[0,0,1]] # 0,0には1回で行ける
end


ans = []

until stack.empty?
  s = stack.pop
  h, w, n = *s

  if h + 1 < H
    if c[h+1][w] == '#' # 黒
      stack << [h+1, w, n+1]
      if [h+1, w] == [H-1, W-1]
        ans << n+1
      end
    else # 白
      stack << [h+1, w, n]
      if [h+1, w] == [H-1, W-1]
        ans << n
      end
    end
  end

  if w + 1 < W
    if c[h][w+1] == '#' # 黒
      stack << [h, w+1, n+1]
      if [h, w+1] == [H-1, W-1]
        ans << n+1
      end
    else # 白
      stack << [h, w+1, n]
      if [h, w+1] == [H-1, W-1]
        ans << n
      end
    end
  end
end

p ans.min


