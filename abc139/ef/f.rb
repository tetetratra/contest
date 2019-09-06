require "pp"
n = gets.to_i

[true, false].repeated_permutation(n) do |arr|
  pp arr
end
