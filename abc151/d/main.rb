# abc151 D
H, W = gets.split.map(&:to_i)
c = H.times.map {
  gets.chomp.chars
}

max = 0
H.times.to_a.product(W.times.to_a).each do |(sh, sw)|
  H.times.to_a.product(W.times.to_a).each do |(gh, gw)|
    u = Array.new(H){Array.new(W, false)}
    tmpmax = 0
    len = 0
    queue = [ [sh, sw, len] ]
    until queue.empty?
      s = queue.shift
      h, w, len = *s
      tmpmax = len if max < len

      [
        [h-1, w],
        [h+1, w],
        [h, w-1],
        [h, w+1]
      ].select{|hh,ww|
        0 <= hh && hh < H && 0 <= ww && ww < W \
        && c[hh][ww] == '.' && !u[hh][ww]
      }.each { |(hh, ww)|
        queue << [hh, ww, len+1]
        u[hh][ww] = true
      }
      # if 0 <= h-1 && c[h-1][w] == '.' && !u[h-1][w]
      #   queue << [h-1, w, len+1]
      #   u[h-1][w] = true
      # end
      # if h+1 < H && c[h+1][w] == '.' && !u[h+1][w]
      #   queue << [h+1, w, len+1]
      #   u[h+1][w] = true
      # end
      # if 0 <= w-1 && c[h][w-1] == '.' && !u[h][w-1]
      #   queue << [h, w-1, len+1]
      #   u[h][w-1] = true
      # end
      # if w+1 < W && c[h][w+1] == '.' && !u[h][w+1]
      #   queue << [h, w+1, len+1]
      #   u[h][w+1] = true
      # end
    end
    max = tmpmax if tmpmax > max
  end
end

p max

