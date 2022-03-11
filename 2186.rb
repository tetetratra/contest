def min_steps(s, t)
  sh = Hash.new { 0 }
  sm = s.chars.map { |a| a + (sh[a] += 1).to_s }
  th = Hash.new { 0 }
  tm = t.chars.map { |a| a + (th[a] += 1).to_s }
  # p sm
  # p tm
  # p sm - tm
  # p tm - sm
  # (sm - tm).size + (tm - sm).size
  ((sm | tm) - (sm & tm)).size
end

s = "leetcode"
t = "coats"
p min_steps(s,t) # 7

# s = "night"
# t = "thing"
# p min_steps(s,t) # 0

# s = "cotxazilut"
# t = "nahrrmcchxwrieqqdwdpneitkxgnt"
# p min_steps(s,t) # 27


