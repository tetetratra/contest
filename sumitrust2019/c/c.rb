require 'pp'
n = gets.to_i

amari = n % 100
kazu  = n / 100
# p amari
# p kazu

#[100,101,102,103,104,105,106]

sum = 0
cnt = 0
while sum != amari
  if sum + 6 >= amari
    p 1
    exit
  end
  sum += 6
  cnt += 1
  if cnt == kazu
    if sum == amari
      p 1
    else
      p 0
    end
    exit
  end
end


exit
[0,1,2,3,4,5,6].repeated_combination(kazu).to_a.each do |ar|
  if ar.inject(:+) == amari
    p 1
    exit
    p ar.inject(:+)
  end
end

p 0


# 1 0
