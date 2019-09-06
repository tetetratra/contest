# 2, 5, 221
n = gets.to_i
h = gets.split.map &:to_i
$count = 0
def split(arr)
  mini = arr.min
  $count += mini
  arr.map! { |a| a - mini }
  tmp = []
  t = []
  arr.each do |a|
    if a > 0
      t << a
    else
      tmp << t
      t = []
    end
  end
  tmp << t

  tmp.each do |tm|
    split(tm) unless tm.empty?
  end
end
split(h)
p $count

# 再帰処理
# 配列を条件でsplitして、それぞれにまた再帰をかける書き方↓
# arr.each do |a|
#   if a > 0
#     t << a
#   else
#     tmp << t
#     t = []
#   end
# end
# tmp << t
# Array#splitがほしい。
