# abc151 C
n, m = gets.split.map(&:to_i)

ps = m.times.map {
  pp, xx = *gets.split
  [pp.to_i, xx == "AC"]
}

ps2 = ps.group_by{|(pp,ss)|pp}
ac = ps2.select{|k,v|v.any?{|vv|vv[1]}}.size
wa = ps2.map{|(k,v)| v.find_index{|vv|vv[1]} || 0 }.inject(:+) || 0
puts [ac,wa].join(' ')

# ans = s.match?(//)

# puts (ans) ? 'Yes' : 'No'

# puts (ans) ? 'YES' : 'NO'

# puts c.map{|x| x.map{|xx| format("%2d",xx) }.join }.join("\n")

