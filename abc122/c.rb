n, q = gets.split.map &:to_i
s = gets.chomp
begin_count = 0
begin_count_arr = Array.new(n+10, 0)

0.upto(n-2) do |i|
  if (s[i] + s[i+1]) == 'AC'
    begin_count += 1
  end
  begin_count_arr[i] = begin_count
end
q.times do
  l, r = gets.split.map(&:to_i)
  p begin_count_arr[r-2] - begin_count_arr[l-2]
end

# 黒板の最大公約数の問題とおなじで、左から順に加えていった和を保存して、
# 和 - 和 で目的のを求める。累積和？って昔qiitaで見た。
# 20~30分ちょっとでAC
# 2019/06/04
