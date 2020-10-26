class Proc
  def flip
    ->(a,b){ self.(b,a) }.curry
  end
end

module Enumerable
  def map_(b) # proc_ojb.call(&proc_ojb2) ができないため
    self.map{|x|b.(x)}
  end
end

p $<.to_a.last.split.map(&:to_i)
  .sort.each_with_index.partition(&:last.to_proc >> :odd?.to_proc)
  .map(&:map_.to_proc.flip.(:first.to_proc) >> :sum.to_proc)
  .inject(:-).abs
