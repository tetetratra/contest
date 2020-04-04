# d
require 'pp'
n = gets.to_i



r = (1..n).to_a.repeated_permutation(n).to_a


r2 = r.uniq { |r|
  r.sort
  r.uniq.size.times do |i|
    min = r.min
    r.map!{|rr|
      rr == min ? 100+i : rr
    }
  end
}
r2.map{|rr|
  rr.map!{|x|x >= 100 ? x - 100 : x}
}



pp r2

exit

###############

pp xxx = (1..n).to_a.repeated_permutation(n).to_a

gs = []
used = Hash.new(false)
xxx.each do |xx|
  g =xx.group_by(&:itself)
  g2 = g.map{|k,v|v.size}.sort
  p g2
  gs << g2
end


gsu = gs.uniq
pp gsu

gs2 = gsu.map do |g|
  ([0] * (n - g.size)) + g
end

p gs2


gs2.each do |g|
  ind = 1
  g.uniq.each do |gg|
    g.map!{|x|x == gg ? 100 + ind : x}
    ind += 1
  end
end

gs3 = gs2.map{|x|x.map{|xx|xx-100}}

p gs3


gs4 = gs3.map{|g|
  g.map{|o|o.to_s}.join
    .gsub('1','a')
    .gsub('2','b')
    .gsub('3','c')
    .gsub('4','d')
    .gsub('5','e')
    .gsub('6','f')
    .gsub('7','g')
    .gsub('8','h')
    .gsub('9','i')
    .gsub('10','j')
}.sort

puts gs4

exit

def f(n, a)
  if n == 1
    return [a.next]
  end
  b = a + [a&.last] + [a&.last&.next]
  b.uniq!
  f(n-1, b)
end


p f(n, 0)


