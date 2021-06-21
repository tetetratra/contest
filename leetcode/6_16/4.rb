# https://leetcode.com/problems/longest-valid-parentheses/

def longest_valid_parentheses(str)
  return 0 if str == ""
  si = str.chars.map.with_index { |c,i| [c,i] }
  valid = si.map { false }
  stack = []

  until si.empty?
    # p si
    # p stack
    s, i = si.shift
    if stack.empty?
      stack << [s,i]
    elsif stack.last[0] == '(' && s == ')'
      pss, psi = stack.pop
      valid[psi] = true
      valid[i] = true
    else
      stack << [s, i]
    end
  end
  # p valid
  # p stack
  valid.chunk { |a| a }.to_a.map(&:last).select(&:first).map(&:size).max || 0
end

p longest_valid_parentheses('(()')

p longest_valid_parentheses(')()())')

p longest_valid_parentheses(')()())')

