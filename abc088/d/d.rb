require 'pp'
H,W = gets.split.map(&:to_i)

c = []
H.times do
  c << gets.chomp.chars
end

score = c.flatten.count('.')
# p score

c[0][0] = 0

# puts c.map(&:join).join("\n")

stack = [[0,0,0]]


until stack.empty?
  s = stack.shift
  break if s.nil?
  h, w = s[0], s[1]
  cnt = c[h][w]
  [
    [h + 1,w],
    [h - 1,w],
    [h,w + 1],
    [h,w - 1]
  ].select{|(hh,ww)| 0 <= hh && hh < H && 0 <= ww && ww < W}.each do |(hh,ww)|
    if c[hh][ww] == '.'
      stack << [hh,ww]
      c[hh][ww] = cnt+1 if c[hh][ww] == '.' || c[hh][ww] > cnt+1
    end
  end
end


c2 = c.map{|x|x.map{|x|format('%3s ', x.to_s)}.join}.join("\n")

# puts c2
# p c[-1][-1]
if c[-1][-1] == '.'
  p -1
else
  p score - c[-1][-1] - 1
end


