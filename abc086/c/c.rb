puts (['0 0 0']+$<.to_a[1..-1]).map{|x|
  x.split.map(&:to_i)
}.each_cons(2).all?{|((t1,x1,y1),(t2,x2,y2))|
  (x2-x1).abs + (y2-y1).abs <= t2-t1 && ((x2-x1).abs+(y2-y1).abs) % 2 == (t2-t1) % 2
} ? 'Yes' : 'No'
