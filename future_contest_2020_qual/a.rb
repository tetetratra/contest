n,M,B = gets.split.map(&:to_i)
gy,gx = gets.split.map(&:to_i)
c = Array.new(n){Array.new(n, ' ')}
c[gy][gx] = 'G'
M.times do # [向き]
  ry,rx,cc = gets.split # ry, rx, c
  c[ry.to_i][rx.to_i] = cc
  c[ry.to_i][rx.to_i] = ' '
end

b = []
B.times do # ブロックます
  by,bx = gets.split.map(&:to_i)
  b << [bx,by]
  c[by][bx] = 'x'
end


# わかりやすくする
c = c[gy..(-1)] + c[0..(gy-1)]
c.map!{|cc|
  cc[gx..(-1)] + cc[0..(gx-1)]
}

cnt1 = 0; cnt2 = 10

cnt1.times do
  n.times do |y|
    n.times do |x|
      if [
        c[y][x],
        c[y+1] ? c[y+1][x] : c[0][x],
        c[y][x+1],
        c[y+1] ? c[y+1][x+1] : c[0][x+1]
      ].compact.count{|ccc|ccc=='x'} > 1
        c[y][x] = '*'
        if c[y+1]
          c[y+1][x] = '*'
          c[y+1][x+1] = '*'
        else
          c[0][x] = '*'
          c[0][x+1] = '*'
        end
        c[y][x+1]   = '*'
      end
    end
  end
  c.map!{|cc|cc.map!{|ccc|ccc == '*' ? 'x' : ccc}}
end

cnt2.times do
  n.times do |y|
    n.times do |x|
      next if c[y][x] == 'G'
      if (0 <= y && y < n/2)
        if (0 <= x && x < n/2) # 左上
          if (y >= x) # 左上の|\
            if c[y-1][x] == 'x' && c[y][x-1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          elsif(x >= y) # 左上の\|
            if c[y-1][x] == 'x' && c[y][x-1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          else # 左上の\の線
          end
        else # 右上
          if (y <= n-x) # 右上の/|
            if c[y-1][x] == 'x' && c[y][x+1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          elsif(y >= n-x) # 右上の|/
            if c[y-1][x] == 'x' && c[y][x+1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          else # 右上の/の線
            #
          end
        end
      else
        if (0 <= x && x < n/2) # 左下
          if (y <= n-x) # 左下の|/
            if c[y+1] && c[y+1][x] == 'x' && c[y][x-1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          elsif(y >= n-x) # 左下の/|
            if c[y+1] && c[y+1][x] == 'x' && c[y][x-1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          else # 左下の/の線
            #
          end
        else # 右下
          if (y <= x) # 右下の\|
            if c[y+1] && c[y+1][x] == 'x' && c[y][x+1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          elsif(y >= x) # 右下の|/
            if c[y+1] && c[y+1][x] == 'x' && c[y][x+1] == 'x'
              c[y][x] = '*' unless c[y][x] == 'x'
            end
          else # 右下の/の線
            #
          end
        end
      end
    end
  end
  c.map!{|cc|cc.map!{|ccc|ccc == '*' ? 'x' : ccc}}
end


n.times do |y|
  n.times do |x|
    next if c[y][x] == 'x' || c[y][x] == '*' || c[y][x] == 'G'
    if (0 <= y && y < n/2)
      if (0 <= x && x < n/2) # 左上
        if (y > x) # 左上の|\
          c[y][x] = '↑'
          c[y][x] = '←' if c[y-1][x] == 'x' || c[y-1][x] == '*'
        elsif(x>y) # 左上の\|
          c[y][x] = '←'
          c[y][x] = '↑' if c[y][x-1] == 'x' || c[y][x-1] == '*'
        else # 左上の\の線
          #
        end
      else # 右上
        if (y < n-x) # 右上の/|
          c[y][x] = '→'
          c[y][x] = '↑' if c[y-1][x] == 'x' || c[y-1][x] == '*'
        elsif(y > n-x) # 右上の|/
          c[y][x] = '↑'
          c[y][x] = '→' if c[y-1][x] == 'x' || c[y-1][x] == '*'
        else # 右上の/の線
          #
        end
      end
    else
      if (0 <= x && x < n/2) # 左下
        if (y < n-x) # 左下の|/
          c[y][x] = '↓'
          c[y][x] = '←' if c[y+1] && (c[y+1][x] == 'x' || c[y+1][x] == '*')
        elsif(y > n-x) # 左下の/|
          c[y][x] = '←'
          c[y][x] = '↓' if c[y][x-1] == 'x' || c[y][x-1] == '*'
        else # 左下の/の線
          #
        end
      else # 右下
        if (y < x) # 右下の\|
          c[y][x] = '↓'
          c[y][x] = '→' if c[y+1] && (c[y+1][x] == 'x' || c[y+1][x] == '*')
        elsif(y > x) # 右下の|/
          c[y][x] = '→'
          c[y][x] = '↓' if c[y][x+1] == 'x' || c[y][x+1] == '*'
        else # 右下の/の線
          #
        end
      end
    end
  end
end


n.times do |y|
  n.times do |x|
    if c[y][x] == ' '
      c[y][x] = ['↑', '↓', '→', '←'].sample
    end
  end
end

5.times do
  n.times do |y|
    n.times do |x|
      if c[y][x] == '→' && ( (c[y][x+1] ? c[y][x+1] : c[y][0]) == 'x' || (c[y][x+1] ? c[y][x+1] : c[y][0]) == '←')
        c[y][x] = ['↑', '↓', '←'].sample
      end
      if c[y][x] == '←' && (c[y][x-1] == 'x' || c[y][x-1] == '→')
        c[y][x] = ['↑', '↓', '→'].sample
      end
      if c[y][x] == '↑' && (c[y-1][x] == 'x' || c[y-1][x] == '↓')
        c[y][x] = ['↓', '→', '←'].sample
      end
      if c[y][x] == '↓' && ((c[y+1] ? c[y+1][x] : c[0][x]) == 'x' || (c[y+1] ? c[y+1][x] : c[0][x]) == '↑')
        c[y][x] = ['↑', '→', '←'].sample
      end
    end
  end
end




if false
  c.map!{|cc|cc.map!{|ccc|ccc == 'x' ? ' ' : ccc}}
  b.each do |(bx,by)|
    c[by][bx] = 'x'
  end
  puts '-'*n + "\n"
  puts c.map{|cc|
    cc.map{|ccc|
      if ccc == '→' || ccc == '←' || ccc == '↑' || ccc == '↓'
        "\e[31m" + ccc + "\e[0m"
      elsif ccc == 'x'
        "\e[32m" + ccc + "\e[0m"
      elsif ccc == 'G'
        "\e[33m" + ccc + "\e[0m"
      else
        ccc
      end
    }.join
  }.join("\n")
  puts '-'*n
  exit
else
  # わかりやすくするのを戻す
  c = c[(n-gy)..-1] + c[0..(n-gy-1)]
  c.map!{|cc|
    cc[(n-gx)..-1] + cc[0..(n-gx-1)]
  }
end



########################
ans = []
k = 0
n.times do |i|
  n.times do |ii|
    r = case c[i][ii]
    when '→' then 'R'
    when '←' then 'L'
    when '↑' then 'U'
    when '↓' then 'D'
    else next
    end
    ans << [i,ii,r]
    k += 1
  end
end
# p ans
p k
ans.each do |an|
  puts an.join(' ')
end
