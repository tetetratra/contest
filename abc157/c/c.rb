require 'pp'
n, m = gets.split.map(&:to_i)

sc = []
m.times do
  sc << gets.split.map(&:to_i)
end

a = nil
case n
when 1
  a = (0..9)
when 2
  a = (10..99)
when 3
  a = (100..999)
end

a2 = a.select{|aa|
  sc.all?{|(s,c)|
    aa.to_s[s-1].to_i == c
  }
}

if a2.size == 0
  p -1
else
  p a2[0]
end

# 702 -1 -1
