# a
require 'pp'
H, W = gets.split.map(&:to_i)

c = []
H.times do
  c << gets.chomp.chars
end

# 1 2 0 4

# マス目作って、minなら更新する
d = Array.new(H){Array.new(W, 10**10)}


# 全通り試す
[true,false].repeated_permutation(H + W - 2).to_a.each do |arr|
  arr.each do |a|
    if a

    else

    end
  end
end




