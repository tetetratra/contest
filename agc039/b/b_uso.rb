start_time = Time.now.to_f
n = gets.to_i
s = (1..n).map{|a|gets.chomp.chars.map(&:to_i)}
#######
result = -1
nodes = Array.new(n+1){
  {
    sides: [],
    limit: nil, # nilはallOK, []はallNG
    kotei: nil, # 固定したら
    visit: false,
  }
}
n.times do |i|
  n.times do |ii|
    nodes[i+1][:sides] << ii+1 if s[i][ii] == 1
  end
end



n.times do |ifirst| #############
  n.times do |i|
    nodes[i+1][:limit] = nil
    nodes[i+1][:kotei] = nil
    nodes[i+1][:visit] = false
  end
  first = ifirst+1
  nodes[first][:limit] = [1]
  queue = [first]
  while !queue.empty?
    ind = queue.shift # とるときshift, 入れるとき<<(push)
    next if nodes[ind][:visit]
    kotei = nodes[ind][:limit].max # できるだけ大きい値で固定
    if kotei.nil?
      break
    end
    nodes[ind][:kotei] = kotei
    nodes[ind][:sides].each do |side| # sideは周りのnodesのindex
      if nodes[side][:limit].nil?
        nodes[side][:limit] = [nodes[ind][:kotei]-1, nodes[ind][:kotei]+1]
      else
        nodes[side][:limit] = nodes[side][:limit] & [nodes[ind][:kotei]-1, nodes[ind][:kotei]+1]
        if nodes[side][:limit].empty?
          puts '-1'
          exit
        end
      end
      queue << side if nodes[side][:visit] == false
    end
    nodes[ind][:visit] = true
  end
  if nodes[1..-1].map{|a|a[:kotei]}.none?{|a|a.nil?}
    tmpmax = nodes[1..-1].map{|a|a[:kotei]}.max
    if result < tmpmax
      result = tmpmax
    end
  end
  if Time.now.to_f - start_time > 1.8
    p result
    exit
  end
end ##################
p result
