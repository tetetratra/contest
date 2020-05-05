# abc091 C
n = gets.to_i

red = n.times.map {
  gets.split.map(&:to_i)
}.sort_by{|r|r[1]}

blue = n.times.map {
  gets.split.map(&:to_i)
}.sort_by{|b|b[1]}



# p red
# p blue

used = Array.new(n, false)

n.times do |i|
  r = red[i]
  # p r
  n.times do |i|
    b = blue[i]
    if b[0] > r[0] && b[1] > r[1] && !used[i]
      # puts "=>#{b}"
      used[i] = true
      break
    end
  end
end

# p used
p used.count(&:itself)
