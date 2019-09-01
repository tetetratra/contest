$<.to_a.map{|i|i.split.map(&:to_i)}.tap{|((n,t),x)|break n==1 ? t : x.each_cons(2).to_a.map{|(a,b)| b-a-t <= 0 ? b-a : t}.inject(&:+)+t}.tap{|x|p x}
