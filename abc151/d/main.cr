# abc151 D

hhh, www = read_line.split.map(&.to_i)
c = hhh.times.to_a.map {
  read_line.chomp.chars.map{|cc|cc == '.'}
}

max = 0
u = Array.new(hhh){Array.new(www, false)}
hhh.times do |sh|
  www.times do |sw|
    next if !c[sh][sw]

    u.map! {|uu|uu.map! {|uuu| false }}

    tmpmax = 0
    len = 0
    queue = [ [sh, sw, len] ]
    u[sh][sw] = true

    until queue.empty?
      s = queue.shift
      h, w, len = s[0], s[1], s[2]
      tmpmax = len if max < len

      if 0 <= h-1 && c[h-1][w] && !u[h-1][w]
        queue << [h-1, w, len+1]
        u[h-1][w] = true
      end
      if h+1 < hhh && c[h+1][w] && !u[h+1][w]
        queue << [h+1, w, len+1]
        u[h+1][w] = true
      end
      if 0 <= w-1 && c[h][w-1] && !u[h][w-1]
        queue << [h, w-1, len+1]
        u[h][w-1] = true
      end
      if w+1 < www && c[h][w+1] && !u[h][w+1]
        queue << [h, w+1, len+1]
        u[h][w+1] = true
      end
    end
    max = tmpmax if tmpmax > max
  end
end
p max
