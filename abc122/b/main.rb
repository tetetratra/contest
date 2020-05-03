# abc122 B
s = gets.chomp
ss = s.scan(/[ACGT]+/).map(&:size).sort
p ss[-1].to_i
