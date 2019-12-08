require 'pp'

N = gets.to_i
s = gets.chomp.chars.map(&:to_i)
# p s

size = 10
a1 = Array.new(size, false)
a2 = Array.new(size) { Array.new(size, false) }
a3 = Array.new(size) { Array.new(size) { Array.new(size, false) } }

s.each do |n|
  # p a1
  # p a2
  # p a3
  # puts

  size.times do |i|
    size.times do |ii|
      if a2[i][ii]
        a3[i][ii][n] = true
      end
    end
  end

  size.times do|i|
    if a1[i]
      a2[i][n] = true
    end
  end
  a1[n] = true # 最後に
end

pp a3.flatten.count{|x|x}


# 3 17 329
