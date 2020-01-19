require 'pp'
n = gets.to_i
k = n.to_s.size
cnt = 0

1.upto n do |i|
  f = i.to_s[0]
  l = i.to_s[-1]
  len = i.to_s.size

  next if l == '0' || f == '0'

  if len == 1
    cnt += 1
    z = f

    z += f
    while z.to_i <= n
      z += f
      cnt += 1
    end

  elsif len == 2
    if l == f
      cnt += 2
    else
      if (l + f).to_i <= n
        cnt += 1
      end
    end
  else # 3keta izyo
    next if (l + ('0' * (len-2)) + f).to_i > n

    if (l + ('9' * (len-2)) + f).to_i <= n
      if l == f
        cnt += 10 ** (len-1)
      else
        cnt += 10 ** (len-2)
      end
    else
      (l + ('0' * (len-2)) + f).to_i.upto((l + ('9' * (len-2)) + f).to_i)
    end
  end
end
p cnt

# 17, 1, 108, 40812, 400000008
=begin
1,2,3,4,5,6,7,8,9,9,12,12,12,12,12,12,12,12,12,12,14,17,17,17,17,17,17,17,17,17,19,21,24,24,24,24,24,24,24,24,26,28,30,33,33,33,33,33,33,33,35,37,39,41,44,44,44,44,44,44,46,48,50,52,54,57,57,57,57,57,59,61,63,65,67,69,72,72,72,72,74,76,78,80,82,84,86,89,89,89,91,93,95,97,99,101,103,105,108,108
=end
