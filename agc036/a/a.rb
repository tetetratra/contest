
require 'prime'
s = gets.to_i

arr = [[1,1]] + s.prime_division
arr2 = arr.flat_map{|(a,b)|[a] * b}
puts "#{s} = #{arr2.join(' * ')}"

a1 = 0
b1 = 0
a2 = 0
b2 = 0
a3 = 0
b3 = 0

#############

if s.odd?
  s1 = s/2
  s2 = s/2 + 1
else
  s1 = s/2
  s2 = s/2
end
arrs1 = [[1,1]] + s1.prime_division
arr2s1 = arrs1.flat_map{|(a,b)|[a] * b}
arr2s1 << 1 if arr2s1.size == 1
puts "#{s1} = #{arr2s1.join(' * ')}"

arrs2 = [[1,1]] + s2.prime_division
arr2s2 = arrs2.flat_map{|(a,b)|[a] * b}
puts "#{s2} = #{arr2s2.join(' * ')}"


res = []
(arr2s1.size - 1).times do |i|
  p x1 = arr2s1[0..i].inject(:*)
  p x2 = arr2s1[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end
p res
(arr2s2.size - 1).times do |i|
  p x1 = arr2s2[0..i].inject(:*)
  p x2 = arr2s2[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end

p res

if res.size == 4
  a2 = res[0]
  b2 = res[3]
  a3 = res[2]
  b3 = res[1]
  p (a2 * b3 + a3 * b2) == s
  puts [a1,b1,a2,b2,a3,b3].join(' ')
  exit
end


#############

if s.odd?
  s1 = s/2 - 1
  s2 = s/2 + 2
else
  s1 = s/2 + 1
  s2 = s/2 - 1
end
arrs1 = [[1,1]] + s1.prime_division
arr2s1 = arrs1.flat_map{|(a,b)|[a] * b}
arr2s1 << 1 if arr2s1.size == 1
puts "#{s1} = #{arr2s1.join(' * ')}"

arrs2 = [[1,1]] + s2.prime_division
arr2s2 = arrs2.flat_map{|(a,b)|[a] * b}
puts "#{s2} = #{arr2s2.join(' * ')}"


res = []
(arr2s1.size - 1).times do |i|
  p x1 = arr2s1[0..i].inject(:*)
  p x2 = arr2s1[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end
p res
(arr2s2.size - 1).times do |i|
  p x1 = arr2s2[0..i].inject(:*)
  p x2 = arr2s2[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end

p res

if res.size == 4
  a2 = res[0]
  b2 = res[3]
  a3 = res[2]
  b3 = res[1]
  p (a2 * b3 + a3 * b2) == s
  puts [a1,b1,a2,b2,a3,b3].join(' ')
  exit
end

###############

if s.odd?
  s1 = s/2 - 2
  s2 = s/2 + 3
else
  s1 = s/2 + 2
  s2 = s/2 - 2
end
arrs1 = [[1,1]] + s1.prime_division
arr2s1 = arrs1.flat_map{|(a,b)|[a] * b}
arr2s1 << 1 if arr2s1.size == 1
puts "#{s1} = #{arr2s1.join(' * ')}"

arrs2 = [[1,1]] + s2.prime_division
arr2s2 = arrs2.flat_map{|(a,b)|[a] * b}
puts "#{s2} = #{arr2s2.join(' * ')}"


res = []
(arr2s1.size - 1).times do |i|
  p x1 = arr2s1[0..i].inject(:*)
  p x2 = arr2s1[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end
p res
(arr2s2.size - 1).times do |i|
  p x1 = arr2s2[0..i].inject(:*)
  p x2 = arr2s2[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end

p res

if res.size == 4
  a2 = res[0]
  b2 = res[3]
  a3 = res[2]
  b3 = res[1]
  p (a2 * b3 + a3 * b2) == s
  puts [a1,b1,a2,b2,a3,b3].join(' ')
  exit
end

###################
if s.odd?
  s1 = s/2 - 3
  s2 = s/2 + 4
else
  s1 = s/2 + 3
  s2 = s/2 - 3
end

arrs1 = [[1,1]] + s1.prime_division
arr2s1 = arrs1.flat_map{|(a,b)|[a] * b}
arr2s1 << 1 if arr2s1.size == 1
puts "#{s1} = #{arr2s1.join(' * ')}"

arrs2 = [[1,1]] + s2.prime_division
arr2s2 = arrs2.flat_map{|(a,b)|[a] * b}
puts "#{s2} = #{arr2s2.join(' * ')}"


res = []
(arr2s1.size - 1).times do |i|
  p x1 = arr2s1[0..i].inject(:*)
  p x2 = arr2s1[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end
p res
(arr2s2.size - 1).times do |i|
  p x1 = arr2s2[0..i].inject(:*)
  p x2 = arr2s2[(i+1)..-1].inject(:*)
  if x1 <= 10**9 && x2 <= 10**9
    res << x1 << x2
    break
  end
end

p res

if res.size == 4
  a2 = res[0]
  b2 = res[3]
  a3 = res[2]
  b3 = res[1]
  p (a2 * b3 + a3 * b2) == s
  puts [a1,b1,a2,b2,a3,b3].join(' ')
  exit
end

##################








=begin
arr = [[1,1]] + s.prime_division
arr2 = arr.flat_map{|(a,b)|[a] * b}

right = []
arr2.inject(1){|i,m|right << (m*i); m*i}

left = []
arr2.reverse.inject(1){|i,m|left << (m*i); m*i}
left = left.reverse[1..-1] + [1]

p s
p arr2
p right
p left


(arr2.size - 1).times do |i|
  a = right[i]
  b = left[i]
  if a <= 10**9 && b <= 10**9
    puts '0 0 0 ' + a.to_s + ' ' + b.to_s + ' 0'
    exit
  end
end

# 314159265 358979323 846264338 327950288 419716939 937510582

#### 311114770564041497
# => 311114770564041497
=end
