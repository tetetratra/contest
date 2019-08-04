n, m = gets.split.map &:to_i # m本飲みたい
arr = []
n.times do
  arr << gets.split.map(&:to_i)
  # 金額、限度
end
arr.sort! { |a, b| a[0] != b[0] ? a[0] <=> b[0] : -(a[1] <=> b[1]) }
# 安い順、たくさん買える順
count = 0
price = 0
arr.each do |ar|
  until count == m || ar[1].zero?
    price += ar[0]
    count += 1
    ar[1] -= 1
  end
end
p price

# 12
# 130
# 100000000000000

# この前のB問題に似てる。
# n*(限度) とせずに、限度を数値のまま保って、-=1で管理しないとTLEになりそう
# 2019年6月4日21時06分
# 20分程度
