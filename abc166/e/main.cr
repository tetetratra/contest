# abc166 E
n = read_line.to_i64
a = read_line.split.map_with_index{|gg,i|[gg.to_i64, i.to_i64]}

ap = [] of Int64

am = [] of Int64

a.each do |(h, i)|
  ap << i + h
  am << i - h
end


# pp ap
# pp am

aaa = {} of Int64 => Hash(String, Int32)


( (am.min)..(ap.max) ).reverse_each do |ii|
  aaa[ii] = {"pcnt" => 0, "mcnt" => 0}
  # aaa[ii]["pcnt"] = 0
  # aaa[ii]["mcnt"] = 0
end


ap.each do |x|
  aaa[x]["pcnt"] += 1
end

am.each do |x|
  aaa[x]["mcnt"] += 1
end

cnt = 0
aaa.each { |x, v|
  cnt += v["pcnt"] * v["mcnt"]
}
p cnt


