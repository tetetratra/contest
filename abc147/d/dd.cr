# 1 237 103715602
mod = 10 ** 9 + 7
n = read_line.to_i
a = read_line.split.map(&.to_i64)
p a
a2 = a.map{|aa|
  tmp = Array(Int32).new(60)
  60.times do |i|
    tmp[i] = (aa % 2)
    aa /= 2
  end
  tmp

}

p a2
