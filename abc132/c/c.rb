n=gets.to_i
p -gets.split.map(&:to_i).min(n/2+1)[-2..-1].inject(&:-)
