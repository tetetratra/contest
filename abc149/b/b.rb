require 'pp'
a, b, k = gets.split.map(&:to_i)

if a-k >= 0
  puts [a-k, b].join(' ')
else
  puts [0, [b-( k-a ),0 ].max].join(' ')
end

