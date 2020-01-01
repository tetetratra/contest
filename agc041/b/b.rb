require 'pp'
# 問題数、審査員、票数、勝ち残り数
n, m, v, p = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
siki = a.group_by(&:itself).map{|k,v|k}[-p]
p siki
a_ok = a.select{|x|x >= siki}
p a_ok
a_ch = a.reject{|x|x >= siki}
p a_ch
a_ok.map{|x|
  if m <= a_ch.size
    x
  else # m > a_ch.size
    x + (m - a_ch.size) * v
  end
}


# 5 3 8



