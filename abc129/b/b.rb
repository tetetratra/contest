n = gets.to_i
w = gets.split.map &:to_i

mini = 10**5

(n-1).times do |i|
  mini = [mini, (w[0..i].inject(&:+) - w[i+1..-1].inject(&:+)).abs].min
end
p mini
