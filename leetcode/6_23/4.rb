# https://leetcode.com/problems/distinct-subsequences/

def calc(s, t, indent = 0)
  # print '  ' * indent
  # p [s, t]
  inds = s.chars.map.with_index { |ss, i| [ss,i] }.select { |(ss,i)| ss == t[0] }.map(&:last)

  $count += 1 if t.empty?
  inds.each do |ind|
    calc(s[ind.next..-1], t[1..-1], indent + 1)
  end
end

def num_distinct(s,t)
  $count = 0
  calc(s,t)
  $count
end

s = "rabbbit"
t = "rabbit"
num_distinct(s, t)
p $count


$count = 0
s = "babgbag"
t = "bag"
num_distinct(s, t)
p $count

