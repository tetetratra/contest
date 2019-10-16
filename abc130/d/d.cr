n, k = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)
pp a

i = 0
ii = 1
cnt = 0
sum = a[0]

p sum
p [i,ii]
cnt += 1 if sum < k


until i == a.size - 1 || ii == a.size
  until sum < k || ii == a.size
    i += 1
    sum -= a[i-1]
    cnt += 1 if sum < k

    p sum
    p [i,ii]
  end

  (p '@';break) if i == a.size - 1 || ii == a.size

  until sum >= k || i == a.size - 1
    ii += 1
    sum += a[ii-1]
    cnt += 1 if sum < k

    p sum
    p [i,ii]
  end


end

until i == a.size - 1
  i += 1
  sum -= a[i-1]
  cnt += 1 if sum < k

  p sum
  p [i,ii]
end

p "---"

p cnt

# 区間 [left, right) が「条件」を満たすなら、それに含まれる区間も「条件」を満たす
# OR
# 区間 [left, right) が「条件」を満たすなら、それを含む区間も「条件」を満たす

# 2, 3, 36
