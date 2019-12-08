require 'pp'
n = gets.to_f
r =  (n/(1.08))

1.upto(50000) do |i|
  if (i * 1.08).floor == n
    p i
    exit
  end
  if i >= n
    puts ":("
    exit
  end
end
