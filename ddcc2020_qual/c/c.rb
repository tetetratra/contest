require 'pp'
h,w,k = gets.split.map(&:to_i)

s = []
h.times do
  s << gets.chomp.chars
end
# pp s
# puts s.map(&:join).join("\n")


c = Array.new(h){Array.new(w,0)}
num = 0
h.times do |hh|
  next if s[hh].all?{|ss|ss == '.'}
  w.times do |ww|
    if s[hh][ww] == "#"
      num += 1
      c[hh][ww] = num
    end
  end
end

# puts c.map{|cc|cc.map{|ccc|sprintf('%3d|',ccc)}.join}.join("\n")

h.times do |hh|
  next if s[hh].all?{|ss|ss == '.'}
  w.times do |ww|
    if c[hh][ww] == 0
      c[hh][ww] = c[hh][ww-1] if 0 <= ww-1
    end
  end
  w.times do |ww|
    if c[hh][w-ww-1] == 0
      c[hh][w-ww-1] = c[hh][w-ww] if w-ww < w
    end
  end
end

# puts c.map{|cc|cc.map{|ccc|sprintf('%3d|',ccc)}.join}.join("\n")


h.times do |hh|
  w.times do |ww|
    if c[hh][ww] == 0
      hhh = hh
      until c[hhh][ww] != 0
        hhh += 1
        if hhh >= h
          until (hhh < h) && c[hhh][ww] != 0
            hhh -= 1
          end
          break
        end
      end
      n = c[hhh][ww]
      c[hh][ww] = n
    end
  end
end

# puts c.map{|cc|cc.map{|ccc|sprintf('%3d|',ccc)}.join}.join("\n")
puts c.map{|cc|cc.join(' ')}.join("\n")
