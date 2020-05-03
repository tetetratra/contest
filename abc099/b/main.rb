# abc099 B
a, b = gets.split.map(&:to_i)

tou = [1]

(2).upto(999) do |i|
  tou[i-1] = tou[i-2] + i
end
tou.each_cons(2) do |x,y|
  if y-x == b-a
    p x - a
    exit
  end
end
