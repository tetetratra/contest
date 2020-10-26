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

n, y = gets.split.map(&:to_i)
p [*0..200].product([*0..200]).find{|(a,b)|
  c = n - a - b
  a * 1000 + b * 5000 + c * 10000 == y
}

p [*0..2].product([*0..2]).map(
  &:[].to_proc.flip.(0) >> :*.to_proc.curry.flip.(1000) \
  >> :+.to_proc.flip.(1)
)

