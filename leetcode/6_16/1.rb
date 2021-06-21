# https://leetcode.com/problems/excel-sheet-column-title/

def convert_to_title(n)
  r = ('A'..'Z').to_a
  t = r +
    r.product(r).map(&:join)
  pp t.map.with_index(1) { |a, i| [i,a] }.to_h
end

# 26  =             26^1
# 702 =      26^2 + 26^1
# ? = 26^3 + 26^2 + 26^1

# 28 = 26^1 * 1 + 26^0 * 2

convert_to_title(1) # A
puts
convert_to_title(26) # Z
puts
convert_to_title(28) # AB
puts
convert_to_title(701) # ZY
puts
convert_to_title(2147483647) # FXSHRXW
puts
convert_to_title(52) # AZ


