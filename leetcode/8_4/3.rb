# https://leetcode.com/problems/maximum-product-of-word-lengths/

def max_product(words)
  w = words.map { |w| c = w.chars; [c.size, c.uniq] }
  ww = w.combination(2).map do |(sa, a),(sb, b)|
    (a & b).empty? ? sa * sb : 0
  end
  ww.max
end

words = ["abcw","baz","foo","bar","xtfn","abcdef"] # 16
p max_product(words)

words = ["a","ab","abc","d","cd","bcd","abcd"] # 4
p max_product(words)

words = ["a","aa","aaa","aaaa"] # 0
p max_product(words)

