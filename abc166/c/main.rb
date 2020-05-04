# abc166 C
n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

ab = m.times.map {
  gets.split.map(&:to_i)
}

ten = Array.new(n+1) { {rin: []} }

####

ab.each do |(a,b)|
  ten[a][:rin] << b
  ten[b][:rin] << a
end

cnt = 0

ten[1..-1].each_with_index do |t, ind|
  hh = h[ind]
  cnt += 1 if t[:rin].all? { |tr|
    h[tr-1] < hh
  }
end

p cnt


