
n = read_line.to_i

amari = n % 100
kazu  = n / 100
# p amari
# p kazu

[0,1,2,3,4,5,6].repeated_combinations(kazu).to_a.each do |ar|
  if ar.inject(:+) == amari
    p 1
    exit
  end
end

p 0


# 1 0
