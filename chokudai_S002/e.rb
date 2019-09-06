N = gets
res = 0
while g = gets&.split(' ')&.map(&:to_i)
  pan = g[0]
  kat = g[1]
  if pan == kat * 2
    res += kat
  elsif pan < kat * 2 && pan.even?
    res += pan/2
  elsif pan > kat * 2 && pan.even?
    res += kat
  elsif pan < kat * 2 && pan.odd?
    res += pan/2
  elsif pan > kat * 2 && pan.odd?
    res += kat
  end
end

puts res
