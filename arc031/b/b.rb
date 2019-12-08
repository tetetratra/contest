require 'pp'
cc = []
10.times do
  cc << gets.chomp.chars
end


10.times do |fillh|
  10.times do |fillw|
    c = Array.new(10){Array.new(10)}
    10.times do |i|
      10.times do |ii|
        c[i][ii] = cc[i][ii]
      end
    end

    c[fillh][fillw] = '@'
    stack = [[fillh,fillw]]
    until stack.empty?
      s = stack.pop
      h = s[0]
      w = s[1]
      [
        [h+1,w],
        [h-1,w],
        [h,w+1],
        [h,w-1]
      ].select{|(hh,ww)| 0 <= hh && hh < 10 && 0 <= ww && ww < 10 }.each do |(hh,ww)|
        if c[hh][ww] == 'o'
          c[hh][ww] = '@'
          stack << [hh,ww]
        else
        end
      end
    end
    # pp c
    if c.flatten.none?{|x|x=='o'}
      puts 'YES'
      exit
    end
  end
end
puts 'NO'
