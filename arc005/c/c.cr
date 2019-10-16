h, w = read_line.split.map(&.to_i)
c = Array(Array(Char)).new(h){Array(Char).new(w)}
h.times do |i|
  c[i] = read_line.chomp.chars
end

s_ind = [0,0]
g_ind = [0,0]
h.times do |hh|
  w.times do |ww|
    s_ind = [hh,ww] if c[hh][ww] == 's'
    g_ind = [hh,ww] if c[hh][ww] == 'g'
  end
end
# puts c.map{|cc|cc.map(&.to_s).reduce{|m,i|m+i}}.join('\n') + "\n~~~~~~~~~~~~~~~~~~~~~~~~"

queue = Array(Array(Int32)).new(0)
queue << s_ind
until queue.empty?
  q = queue.pop
  qh,qw = q[0],q[1]
  [
    [qh+1,qw],
    [qh-1,qw],
    [qh,qw+1],
    [qh,qw-1]
  ].select{|(hh,ww)|0 <= hh && hh < h && 0<= ww && ww < w}.each do |(hh,ww)|
    if c[hh][ww] == '.'
      c[hh][ww] = ','
      queue << [hh,ww]
    elsif c[hh][ww] == '#'
      c[hh][ww] = '_'
    end
  end
end
# puts c.map{|cc|cc.map(&.to_s).reduce{|m,i|m+i}}.join('\n') + "\n~~~~~~~~~~~~~~~~~~~~~~~~"

h.times do |hh|
  w.times do |ww|
    c[hh][ww] = '.' if c[hh][ww] == '_'
    c[hh][ww] = '.' if c[hh][ww] == ','
  end
end
# puts c.map{|cc|cc.map(&.to_s).reduce{|m,i|m+i}}.join('\n') + "\n~~~~~~~~~~~~~~~~~~~~~~~~"

queue = Array(Array(Int32)).new(0)
queue << s_ind
until queue.empty?
  q = queue.pop
  qh,qw = q[0],q[1]
  [
    [qh+1,qw],
    [qh-1,qw],
    [qh,qw+1],
    [qh,qw-1]
  ].select{|(hh,ww)|0 <= hh && hh < h && 0<= ww && ww < w}.each do |(hh,ww)|
    if c[hh][ww] == '.'
      c[hh][ww] = ','
      queue << [hh,ww]
    elsif c[hh][ww] == '#'
      c[hh][ww] = '_'
    end
  end
end
# puts c.map{|cc|cc.map(&.to_s).reduce{|m,i|m+i}}.join('\n') + "\n~~~~~~~~~~~~~~~~~~~~~~~~"

h.times do |hh|
  w.times do |ww|
    c[hh][ww] = '.' if c[hh][ww] == '_'
    c[hh][ww] = '.' if c[hh][ww] == ','
  end
end
# puts c.map{|cc|cc.map(&.to_s).reduce{|m,i|m+i}}.join('\n') + "\n~~~~~~~~~~~~~~~~~~~~~~~~"

queue = Array(Array(Int32)).new(0)
queue << s_ind
until queue.empty?
  q = queue.pop
  qh,qw = q[0],q[1]
  [
    [qh+1,qw],
    [qh-1,qw],
    [qh,qw+1],
    [qh,qw-1]
  ].select{|(hh,ww)|0 <= hh && hh < h && 0<= ww && ww < w}.each do |(hh,ww)|
    if c[hh][ww] == '.'
      c[hh][ww] = ','
      queue << [hh,ww]
    elsif c[hh][ww] == 'g'
      puts "YES"
      exit
    end
  end
end
puts "NO"


# queue = Array(Array(Int32)).new(0)
# queue << s_ind
# until queue.empty?
#   q = queue.pop
#   qh,qw = q[0],q[1]
#   [
#     [qh+1,qw],
#     [qh-1,qw],
#     [qh,qw+1],
#     [qh,qw-1]
#   ].select{|(hh,ww)|0 <= hh && hh < h && 0<= ww && ww < w}.each do |(hh,ww)|
#     if c[hh][ww] == '.' || c[hh][ww] == ',' || c[hh][ww] == '_'
#       c[hh][ww] = '+'
#       queue << [hh,ww]
#     elsif c[hh][ww] == '#'
#       c[hh][ww] = '_'
#     end
#   end
# end
# puts c.map{|cc|cc.map(&.to_s).reduce{|m,i|m+i}}.join('\n') + "\n~~~~~~~~~~~~~~~~~~~~~~~~"



# o o o o n
