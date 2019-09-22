require 'pp'
h, w, a, b = gets.split.map(&:to_i)

# 絶対に"No"出して、全部waになるか確認しよう。
arr = Array.new(h) { Array.new(w, 1) }
# pp arr
b.times do |bb|
  w.times do |ww|
    arr[bb][ww] = -1
  end
end
# pp arr
h.times do |bb|
  a.times do |aa|
    arr[bb][aa] *= (-1)
  end
end
# pp arr

puts arr.map{|x|x.map{|xx| xx == 1 ? '1' : '0'}.join}.join("\n")
