# abc151 D
H, W = gets.split.map(&:to_i)
s = H.times.map {
  gets.chomp.chars
}

puts s.map{|x| x.join }.join("\n")


u = Array.new(H) do
  Array.new(W, false)
end

def find_unused_cell(s)
  sh = nil
  sw = nil
  catch true do
    H.times do |hi|
      W.times do |wi|
        if s[hi][wi] == '.'
          sh = hi
          sw = wi
          throw true
        end
      end
    end
  end
  sh && sw ? [sh, sw] : nil
end

max = 0

loop do
  fuc = find_unused_cell(s)
  break if fuc.nil?

  p fuc
  ### 最長距離の処理


  ### usedにする処理
  sh, sw = *fuc
  stack = [ [sh, sw] ]
  s[sh][sw] = "#"

  until stack.empty?
    sta = stack.pop
    h, w = *sta
    if 0 <= h-1 && s[h-1][w] == '.'
      s[h-1][w] = "#"
      stack << [h-1, w]
    end
    if h+1 < H && s[h+1][w] == '.'
      s[h+1][w] = "#"
      stack << [h+1, w]
    end
    if 0 <= w-1 && s[h][w-1] == '.'
      s[h][w-1] = "#"
      stack << [h, w-1]
    end
    if w+1 < W && s[h][w+1] == '.'
      s[h][w+1] = "#"
      stack << [h, w+1]
    end
  end
end
p max

