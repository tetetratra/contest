require 'pp'
n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
f = gets.split.map(&:to_i)
p a.sort!
p f.sort!.reverse!

p a.zip(f).map{|(x,y)|x*y}
pp a.zip(f).map{|(aa,bb)| [aa,aa*bb] }.sort_by!{|x|x[1]}

pp a.zip(f).map{|(aa,bb)| [aa,aa*bb] }.sort_by!{|x|x[1]}.map{|x|[x[0], x[0]]}
