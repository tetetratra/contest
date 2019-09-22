n, k = gets.split.map(&:to_i)
ans = 0
0.upto(k-1) do |i|
  i2 = i * 2
  if i2 % k == 0
    tmp = ((n+k) - (n%k) - k) / k
    if true # ココバグ
      tmp += 1
    end
    ans += tmp ** 3
  end
end
p ans

ans = 0
arr = (1..n).to_a
0.upto(k-1) do |i|
  i2 = i * 2
  if i2 % k == 0
    ans += arr.count{|x|x % k == i}**3
  end
end
p ans

# 9 1 27 114191
