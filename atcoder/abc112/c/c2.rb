require "pp"
pp $<.to_a[1..-1]
  .map{|a|a.split.map(&:to_i)}
  .product((0..100).to_a.product((0..100).to_a))
  .group_by{|a|a[1]}.map{|(k,v)|
    { k => v.map{|a|a[0]}.map{|a|a[2] + (a[0]-k[0]).abs + (a[1]-k[1]).abs}.uniq}
  }.find{|a|a.values.first.size == 1}
    #.map{|((x,y),h)|[x,y,h]}.join(' ')
   #.tap{|a|puts a}
