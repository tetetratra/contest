# abc160 E
x, y, redsize, bluesize, whitesize = gets.split.map(&:to_i)
red   = gets.split.map(&:to_i).sort
blue  = gets.split.map(&:to_i).sort
white = gets.split.map(&:to_i).sort

puts "x:#{x}, y:#{y}"
p red
p blue
p white

red_used  = Array.new(redsize, false)
blue_used = Array.new(bluesize, false)



