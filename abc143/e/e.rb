require 'pp'

n,m,l = gets.split.map(&:to_i) # まち、みち、リットル

abc = []
m.times do
  abc << gets.split.map(&:to_i) # 街、街、道の長さ
end
q = gets.to_i
st = []
q.times do
  st << gets.split.map(&:to_i) # クエリ
end

d = Array.new(n){Array.new(n,Float::INFINITY)}
abc.each do |(a,b,c)|
  d[a-1][b-1] = c if c < l
  d[b-1][a-1] = c if c < l
end
pp d

n.times do |i|
  n.times do |j|
    n.times do |k|
      d[i][j] = [d[i][j], d[i][k] + d[k][j]].min
    end
  end
end
p l
pp d

st.each do |(s,t)|
  r = d[s-1][t-1]
  p r
end
