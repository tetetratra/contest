require 'pp'
n = gets.to_i
d = gets.split.map(&:to_i)

pre = d[0]
by = 0 # 0: どっちでも受け入れる, 1: increase, 2: decrease
# p d.chunk{|x|x.odd?}.to_a

tmp = 1
p d.chunk {|x|
  ret = nil
  case by
  when 0
    if x == pre
      by = 0
    elsif x > pre
      by = 1
    elsif x < pre
      by = -1
    end
    ret = true
  when 1
    if x == pre
      by = 1
      ret = true
    elsif x > pre
      by = 1
      ret = true
    elsif x < pre
      by = 0
      ret = false
    end
  when -1
    if x == pre
      by = -1
      ret = true
    elsif x > pre
      by = 0
      ret = false
    elsif x < pre
      by = -1
      ret = true
    end
  end
  # # #
  pre = x
  tmp *= -1 unless ret
  tmp
}.to_a.size

# 2 5 3
