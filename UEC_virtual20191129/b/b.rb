require 'pp'
n = gets.to_i

t = Array.new(n, 0)


((n * (n-1)) / 2).times do
  a, b, ap, bp = gets.split.map(&:to_i) # a, b, ap, bp
  if ap == bp
    t[a-1] += 1
    t[b-1] += 1
  elsif ap > bp
    t[a-1] += 3
  elsif ap < bp
    t[b-1] += 3
  end
end
cnt = 0
hoge = t.map.with_index{|x, i|[x, i]}.sort_by{|x|x[0]}
prescore = nil

arr = []
hoge.sort_by{|x|x[0]}.map do |(score, ind)|
  cnt += 1 if prescore != score
  prescore = score
  arr << [score, ind, cnt]
end
pp arr
arr.sort_by{|x|x[1]}.each do |(a1,a2,a3)|
  p a3
end
