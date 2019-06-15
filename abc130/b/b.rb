# 1, 1, 2, 3
n = gets.to_i
if n == 1
  p 1
  exit
end

x = []
y = []
arr = []
n.times do
  g = gets.split.map(&:to_f)
  x << g[0]
  y << g[1]
  arr << [g[0], g[1]]
end

katamuki = []
arr.combination(2) do |nikono_zahyo|
  katamuki << {
    zahyo: nikono_zahyo, # 2つの座標
    kata: [nikono_zahyo[0][0] - nikono_zahyo[1][0], nikono_zahyo[0][1] - nikono_zahyo[1][1]]
    # その傾き
  }
end
sorted_katamuki = katamuki.group_by { |ka| ka[:kata] }.map { |k, v| [k, v.size] }.sort_by { |a| a[1] }
p, q = sorted_katamuki[-1][0]
arr.map! { |ar| [*ar, false] }
# p p
# p q
# pp arr
arr.size.times do |ari|
  arr.size.times do |rri|
    if arr[ari][0..1] == [arr[rri][0] - p, arr[rri][1] - q]
      arr[ari][2] = true
    end
  end
end
# pp arr
# pp sorted_katamuki
#
p arr.count{|a|a[2] == false}
# exit
# max_kata = [0,0]
# katamuki.uniq { |a| a[:kata] }.each do |kat|
#   if max_kata[1] < katamuki.count { |a| a[:kata] == kat[:kata] }
#     max_kata = [kat[:kata], katamuki.count { |a| a[:kata] == kat[:kata] }]
#   end
# end
# pp max_kata
#
#
#
# pp katamuki.select{|a|a[:kata] == max_kata[0]}
# katamuki.select{|a|a[:kata] == max_kata[0]}.each do |aaa|
#   arr.delete_if{|aa| aaa[:zahyo].any?{|az|az == aa}}
# end
# puts
# pp arr
# katamuki = []
# hoge.size.times do |i|
#   katamuki << [(hoge[i][0][0] - hoge[i][0][1]), (hoge[i][1][0] - hoge[i][1][1])]
# end
# puts
# p g_katamuki
# p n
# p n - g_katamuki.max
# puts
# p g_katamuki.max
# pp katamuki
# pp hoge
