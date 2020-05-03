# abc081 B
n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0

while a.all?(&:even?)
  a = a.map{|x|x/2}
  cnt += 1
end
p cnt
