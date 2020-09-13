class Proc
  def flip
    ->(a,b){ self.(b,a) }.curry
  end

  def rotate
    ->(a,b,c){ self.(c,a,b) }.curry
  end
end

module Enumerable
  def mapb(b) # proc_ojb.call(&:sym) ができないため
    self.map{|x|b.(x)}
  end
end

n,a,b = gets.split.map(&:to_i)
p (1..n).select(
  &:to_s.to_proc \
  >> :chars.to_proc \
  >> :mapb.to_proc.curry(2).flip.(
    :to_i.to_proc
  ) \
  >> :sum.to_proc \
  >> :between?.to_proc.curry.rotate.(a).(b)
).sum

