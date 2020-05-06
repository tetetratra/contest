# abc160 C
k, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

aaa = a.each_cons(2).to_a.map { |x,y|
  y-x
} + [ a[0] + (k - a[-1]) ]


p aaa.inject(:+) - aaa.max


