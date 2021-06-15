# https://leetcode.com/problems/possible-bipartition/description/
def possible_bipartition(n, dislikes)
  nodes = Array.new(n) { [] }
  dislikes.each do |(d1, d2)|
    nodes[d1-1] << d2 - 1
    nodes[d2-1] << d1 - 1
  end
  nodes.each.with_index { |n, i| p({i => n}) };puts

  color = Array.new(n, nil)
  color[0] = 1
  solved = Array.new(n, false)
  c = 1
  stack = [0]
  until stack.empty?
    p stack
    p color
    p solved
    puts
    s = stack.pop
    c = color[s] ? -color[s] : 1
    nodes[s].each do |e|
      if color[e] == -c
        return false
      end
      color[e] = c
      stack << e unless solved[e]
    end
    solved[s] = true

    if stack.empty? && !solved.all?
      # p :here
      fi = solved.find_index { |s| !s }
      stack << fi
    end
  end
  true
end


# n = 4
# dislikes = [[1,2],[1,3],[2,4]]
# p possible_bipartition(n, dislikes) # T

puts '-----------------'
n = 3
dislikes = [[1,2],[1,3],[2,3]]
p possible_bipartition(n, dislikes) # F

# puts '-----------------'
# n = 5
# dislikes = [[1,2],[2,3],[3,4],[4,5],[1,5]]
# p possible_bipartition(n, dislikes) # F

# puts '-----------------'
# n =  5
# dislikes =  [[1,2],[3,4],[4,5],[3,5]]
# p possible_bipartition(n, dislikes) # F

