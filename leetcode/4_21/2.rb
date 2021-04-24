# https://leetcode.com/problems/bitwise-and-of-numbers-range/description/

def range_bitwise_and(left, right)
  right_bits = ([0] * 31).zip(right.to_s(2).chars.map(&:to_i).reverse).map(&:compact.to_proc >> :last.to_proc).reverse
  left_bits = ([0] * 31).zip(left.to_s(2).chars.map(&:to_i).reverse).map(&:compact.to_proc >> :last.to_proc).reverse
  puts
  # p right_bits
  # p left_bits
  ands = (0..30).to_a.map do |d|
    l = 2**d

    if l <= (right - left) || # 0と1の境界を必ずまたぐ場合
        right_bits[-d - 1].zero? || left_bits[-d - 1].zero? # 左右どちらかが0の場合
      0
    else
      1
    end
  end.reverse
  # p ands
  ands.join.to_i(2)
end

# p range_bitwise_and(5,7)
# p range_bitwise_and(0,0)
# p range_bitwise_and(1,2147483647)
# p range_bitwise_and(2,2)
# p range_bitwise_and(1,2)

=begin
0 0000
1 0001
2 0010
3 0011
4 0100
5 0101
6 0110
7 0111
8 1000
------
| 8421
=end
