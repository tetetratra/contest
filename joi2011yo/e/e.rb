require 'pp'
h, w, n = gets.split.map(&:to_i)
$h = h
$w = w

c = []
h.times do
  c << gets.chomp.chars.map{|x|
    case x
    when 'X'
      -1
    when '.'
      0
    when 'S'
      10
    else
      x.to_i
    end
  }
end
$c = c.dup

puts c.map{|x| x.map{|xx|format('%2d', xx)}.join }.join("\n")


def path_len(from, to)
  fh = nil
  fw = nil
  th = nil
  tw = nil
  $h.times do |hh|
    $w.times do |ww|
      if $c[hh][ww] == from
        fh = hh
        fw = ww
      elsif $c[hh][ww] == to
        th = hh
        tw = ww
      end
    end
  end

  stack = [[fh,fw,0]]
  until stack.empty?
    s = stack.pop
    sh, sw, len = *s
    [
      [sh+1, sw],
      [sh-1, sw],
      [sh, sw+1],
      [sh, sw-1]
    ].select{|h_, w_| 0 <= h_ && h_ < $h && 0 <= w_ && w_ < $w}.each do |hh, ww|
      next if $c[hh][ww] == -1

      stack << [hh,ww,len+1]

      return len+1 if (hh == th && ww == tw)
    end

  end

end

p path_len(10,1)











