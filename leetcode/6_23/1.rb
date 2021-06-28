# https://leetcode.com/problems/isomorphic-strings/

def is_isomorphic(s, t)
  h = Hash.new { [] }
  s.chars.zip(t.chars).each{ |(a,b)| h[a] += [b] }
  # p h
  ans1 = h.all? { |k,v| v.uniq.size == 1 }

  s, t = t, s
  h = Hash.new { [] }
  s.chars.zip(t.chars).each{ |(a,b)| h[a] += [b] }
  # p h
  ans2 = h.all? { |k,v| v.uniq.size == 1 }
  ans1 && ans2
end
s = "egg"
t = "add"
p is_isomorphic(s,t)

s = "foo"
t = "bar"
p is_isomorphic(s,t)

s = "paper"
t = "title"
p is_isomorphic(s,t)

s = "badc"
t = "baba"
p is_isomorphic(s,t)

