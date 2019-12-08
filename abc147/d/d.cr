# require 'pp'
mod = 10 ** 9 + 7
n = read_line.to_i
a = read_line.split.map{|x| Int64.new x}

# p a

def to2(n)
  res = Array.new(64, 0)
  # for(i=0;decimal>0;i++){
  # binary[i] = decimal % 2;
  # decimal = decimal / 2;
  # }
  i = 0
  while(n > 0)
    res[i] = (n % 2).to_i32
    n = (n / 2).to_i32
    i += 1
  end
  res
end

a2 =  a.map{|x| to2(x) }
# pp a2

a3 = Array.new(a2[0].size, 0)

a2.size.times do |i|
  a2[0].size.times do |ii|
    a3[ii] += a2[i][ii]
  end
end

# p a3

a4 = a3.map{|x|x * (a2.size - x)}.reverse


def mod2(i,mod)
  r = 1
  i.times do
    r = r * 2 % mod
  end
  r
end
# p a4
# p a4.map_with_index{|x, i| x * (2 ** i) % mod }
p a4.map_with_index{|x, i| x * mod2(i,mod) % mod }.reduce{|m, i| (i + m) % mod} % mod

# a3 = a2.transpose.reverse
# pp a3

# a4 = a3.map{|x| cnt = x.count{|x|x==1}; cnt * (x.size - cnt) }
# p a4
# a5 = a4.map.with_index{|x, i| x * (2 ** i) % mod }
# pp a5

# p a5.inject{|m, i| (i + m) % mod} % mod
# 1 237 103715602
