class Proc
  def flip
    ->(a,b){ self.(b,a) }.curry
  end
end

class Object
  def _?
    ->(a,b){self ? a : b}.curry
  end
end

p($<.to_a.last.split.map(&:to_i.to_proc >> :to_s.to_proc.curry(2).flip.(2) >> :reverse.to_proc >> :index.to_proc.flip.('1')).min)
