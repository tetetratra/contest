n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!.reverse!
p a
# puts "---------------"

p a[0..(a.size / 2)].inject(:+) - a[(a.size / 2 +1)..-1].inject(:+)

ans = 0
anss = []
if a.size.even?
  aa = a[-1]
  a.pop
  (a.size).times do |i|
    if i.even?
      anss << [a[0], aa]
      if a.size == 1
        ans = (a[0] - aa)
        break
      end
      aa = a[0] - aa
      a.shift
    else
      anss << [a[-1], aa]
      aa = a[-1] - aa
      a.pop
    end
    # p a
    # puts '----'
  end
else
  aa = a[-1]
  a.pop
  (a.size).times do |i|
    if i.even?
      anss << [aa, a[0]]
      aa = aa - a[0]
      a.shift
    else
      anss << [a[0], aa]
      if a.size == 1
        ans = (a[0] - aa)
        break
      end
      aa = a[0] - aa
      a.pop
    end
    # p a
    # puts '----'
  end
end

p ans
puts anss.map{|x|x.join(' ')}.join("\n")
