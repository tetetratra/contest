require 'pp'
n, k = gets.split.map(&:to_i)
r, s, p = gets.split.map(&:to_i)
t = gets.chomp.chars


# p t
pre = nil
score = 0
n.times do |i|
  pre = t[i-k] if (i-k >= 0)
  # p pre
  if t[i] == 'r'
    if pre != 'r'
      score += p
    else
      t[i] = nil
    end
  elsif t[i] == 's'
    if pre != 's'
      score += r
    else
      t[i] = nil
    end
  elsif t[i] == 'p'
    if pre != 'p'
      score += s
    else
      t[i] = nil
    end
  end
  # p score
  # puts
end
p score

# 27 211 4996

