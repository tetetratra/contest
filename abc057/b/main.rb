# abc057 B
n, m = gets.split.map(&:to_i)
ab = n.times.map {
  gets.split.map(&:to_i)
}
cd = m.times.map {
  gets.split.map(&:to_i)
}

ab.each do |(a,b)|
  ind = 1
  min = (a - cd[0][0]).abs + (b - cd[0][1]).abs
  cd.each.with_index(1) do |(c,d), i|
    if min > ( r = ( (a - c).abs + (b - d).abs ) )
      min = r
      ind = i
    elsif min == r
      ind = i if i < ind
    end
  end
  p ind
end

