require 'pp'
n = gets.to_i
ab = []
(n-1).times do
  ab << gets.split.map(&:to_i).map{|x|x-1}
end

# pp ab

g = Array.new(n){
  {
    e: [],
  }
}

ab.each do |(a,b)|
  g[a][:e] << [b, nil]
  g[b][:e] << [a, nil]
end

k = 0
ki = nil
g.size.times do |gi|
  if k < g[gi][:e].size
    k = g[gi][:e].size
    ki = gi
  end
end
# p k
# p ki
# pp g

stack = [ki]
until stack.empty?
  s = stack.pop
  co = 1
  usedco = nil
  g[s][:e].size.times do |ei|
    if g[s][:e][ei][1]
      usedco = g[s][:e][ei][1]+1
    end
  end

  g[s][:e].size.times do |ei|
    if g[s][:e][ei][1].nil?
      g[s][:e][ei][1] = co

      g[g[s][:e][ei][0]][:e].size.times do |eei|
        if g[g[s][:e][ei][0]][:e][eei][0] == s
          g[g[s][:e][ei][0]][:e][eei][1] = co
        end
      end

      co += 1
      co += 1 if co == usedco
      stack << g[s][:e][ei][0]
    end
  end
end
# pp g.map.with_index{|gg,i|[i,gg]}
p k
ab.each do |(a,b)|
  puts g[a][:e].find{|x|x[0] == b}[1]
end
