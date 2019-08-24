$<.to_a[1..-1]
  .map{|a|a.split.map(&:to_i)}
  .product((0..100).to_a.product((0..100).to_a))
  .group_by{|a|a[1]}.map{|(k,v)|
    {k =>v.flatten(1).select{|a|a.size==3}.select{|x|x[2]!=0}}
  }
  .find{|a|
    a.values.flatten(1).map{|b| b[2] + (a.keys.flatten[0] - b[0]).abs + (a.keys.flatten[1] - b[1]).abs}
    .uniq.size == 1
  }.flat_map{|k,v|
    [*k, v.first[2] + (k[0] - v.first[0]).abs + (k[1] - v.first[1]).abs]
  }.join(' ').tap{|a|puts a}
