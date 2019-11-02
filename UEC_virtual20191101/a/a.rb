require 'time'
3.times do
x = gets.chomp.split.map(&:to_i)
t1 = x[0] * 3600 + x[1] * 60 + x[2]
t2 = x[3] * 3600 + x[4] * 60 + x[5]
t = (t2 - t1)
puts [(t / 3600),((t / 60) % 60),(t % 60)].join(' ')

end
