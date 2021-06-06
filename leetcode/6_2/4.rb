# https://leetcode.com/problems/different-ways-to-add-parentheses/

Node = Struct.new(:left, :value, :right)

def diff_ways_to_compute(expression)
  s = expression.chars
  root = Node.new(
    Node.new(nil, s[0], nil),
    s[1],
    node = Node.new(nil,nil,nil)
  )
  s = s[2..-1]
  s.size.times do |i|
    if i.even?
      node.left = Node.new(nil, s[i], nil)
    else # odd
      node.value = s[i]
      new = Node.new(nil, nil, nil)
      node.right = new
      node = new
    end
  end
  root
end


expression = "2-1-1"
[0,2]
pp diff_ways_to_compute(expression)
puts "------"
=begin
  -
2   -
   1 1
=end

# expression = "2*3-4*5"
# [-34,-14,-10,-10,10]
# p diff_ways_to_compute(expression)
# puts "------"

