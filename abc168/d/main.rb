# abc168 D
n, m = gets.split.map(&:to_i)
ab = m.times.map {
  gets.split.map(&:to_i).map{|x|x-1}
}


nodes = Array.new(n){ [] }
ab.each do |(a,b)|
  nodes[a] << b
  nodes[b] << a
end

lens = Array.new(n, 0)

# pp nodes

sirube = Array.new(n, nil)

stack = [ 0 ] # index, len

until stack.empty?
  s = stack.shift
  nodes[s].size.times do |ind|
    tonari_ind = nodes[s][ind]
    if sirube[tonari_ind].nil?
      sirube[tonari_ind] = s
      stack << tonari_ind
    end
  end

end

# p sirube

if sirube[1..-1].any? {|x|x.nil?}
  puts 'No'
else
  puts 'Yes'
  puts sirube[1..-1].map{|x|x+1}.join("\n")
end



