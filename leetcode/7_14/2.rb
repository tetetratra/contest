# https://leetcode.com/problems/repeated-string-match/

def repeated_string_match(a, b)
  p a
  p b
  p sc = b.scan(a)
  p sp = b.split(a)
  p sc.size + sp.reject(&:empty?).select { |x| a.start_with?(x) || a.end_with?(x) }.size
end

a = "abcd"
b = "cdabcdab"
repeated_string_match(a,b)
p 3
puts
a = "a"
b = "aa"
repeated_string_match(a,b)
p 2
puts
a = "a"
b = "a"
repeated_string_match(a,b) # 1
p 1
puts
a = "abc"
b = "wxyz"
repeated_string_match(a,b) # -1
p -1
puts
a = "aa"
b = "a"
repeated_string_match(a,b) # 1
p 1
puts
a = "abc"
b = "cabcabca"
repeated_string_match(a,b) # 4
p 4
puts
a = "aaaaaaaaaaaaaaaaaaaaaab"
b = "ba"
repeated_string_match(a,b) # 2
p 2
puts
a = "abcd"
b = "abcdb"
repeated_string_match(a,b) # -1
p -1
