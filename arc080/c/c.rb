require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)

cnt4 = a.count{|x|x % 4 == 0}
cnt2 = a.count{|x|x % 4 != 0 && x.even?}
cnt1 = a.count{|x|x.odd?}
# p cnt4
# p cnt2
# p cnt1
if cnt2.even?
  puts cnt1 <= cnt4 + 1 ? 'Yes' : 'No'
else
  puts cnt1 <= cnt4 ? 'Yes' : 'No'
end
# cnt1 + 1 == cnt4 がギリギリセーフ
# cnt2が奇数なら、cnt1 == cnt4 がぎりになる



# o x o x o
