require 'pp'

n = gets.to_i

arr = []
n.times do
  arr << gets.split.map(&:to_f) # x,y
end
# p arr
kyo = []
# pp arr.permutation(n).to_a



ave = []
arr.permutation(n).to_a.map{|x|
  tmp = []
  x.each_cons(2){|aa,bb|
    tmp << ((aa[0]-bb[0])**2 + (aa[1]-bb[1])**2) ** (0.5)
  }
  ave << tmp.inject(:+)

}
p (ave.inject(:+) )/ ave.size


# 2.2761423749
# 91.9238815543
# 7641.9817824387
