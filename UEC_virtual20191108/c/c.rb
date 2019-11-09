require 'pp'
N = gets.to_i
M = gets.to_i


x = Array.new(N+1){[]}
M.times do
  a , b =  gets.split.map(&:to_i)
  x[a] << b
  x[b] << a
end

f = []
x[1].each do |xx|
  f << xx unless xx == 1
  x[xx].each do |xxx|
    f << xxx unless xxx == 1
  end
end
p f.uniq.size
