require "pp"
n = gets.to_i
s = gets.split.map(&:to_i)
s.sort!
n.times do |i|
  a = s[0..(s.size/2 - 1)]
  b = s[(s.size/2)..-1]
  if a[-1] == b[0]
    if a.count(b[0]) > b.size - b.count(b[0])
      puts 'No'
      exit
    end
  end
  s = s[(s.size/2)..-1]
end
puts 'Yes'

# pp ss = s.sort.group_by(&:itself).map{|k,v|[k, v.size]}
#
# puts "\n1回目"
# pp ss[0..((ss.size/2)-1)]
# pp a = ss[0..((ss.size/2)-1)].map(&:first).inject(:+)
# pp ss[(ss.size/2)..-1]
# pp b = ss[(ss.size/2)..-1].map(&:first).inject(:+)
# p a<=b
# ss = ss[(ss.size/2)..-1]
#
# (n-1).times do |i|
#   puts "\n#{i+2}回目"
#   pp ss[0..((ss.size/2)-1)]
#   pp a = ss[0..((ss.size/2)-1)].map{|a|a[1]}.inject(:+)
#   pp ss[(ss.size/2)..-1]
#   pp b = ss[(ss.size/2)..-1].map{|a|a[1]}.inject(:+)
#   p a<=b
#   ss = ss[(ss.size/2)..-1]
# end
# Yes Yes No No
