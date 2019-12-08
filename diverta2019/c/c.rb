require 'pp'
n = gets.to_i
b_str_a = []
str_a = []
b_str = []
str = []
cnt = 0
n.times do
  ss = gets.chomp
  ss.chars.each_cons(2).each do |(a,b)|
    cnt += 1 if a == "A" && b == "B"
  end
  ss = ss.gsub('AB', '**').gsub('[C-Z]', '*')
  if ss[0] == 'B' && ss[-1] == 'A'
    b_str_a << 'B*A'
  elsif ss[0] == 'B'
    b_str << 'B*'
  elsif ss[-1] == 'A'
    str_a << '*A'
  else

  end
end

pp b_str_a
pp str_a
pp b_str
p cnt

minab = [str_a.size, b_str.size].min
maxab = [str_a.size, b_str.size].max
restab = maxab - minab
cnt += minab

cnt += [restab, b_str_a.size].min
cnt += b_str_a.size - 1
p cnt

# 2 4 4

# "ABABA + BABAB" で5こにならないといけない
