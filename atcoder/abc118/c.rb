gets
a = gets.split.map &:to_i
loop do # N
  a.sort! # logN
  a = a[0..0] + a[1..-1].map { |aa| aa = aa % a[0] } # N
  a.delete_if { |aa| aa == 0 } # N
  break if a.size == 1
end
p a[0]
# 2
# 1
# 1000000000

# 配列のある１つ以外のループ、の書き方が難しい
# a.sort! # logN
# a = a[0..0] + a[1..-1].map{|aa|aa = aa % a[0]} # N
