require 'pp'
n,m = gets.split.map(&:to_i)

a = Array.new(n+1){ {e: [], e2: []} }
# b = Array.new(n+1){999}
m.times do
  l,r,c = gets.split.map(&:to_i) # l, r, cost
  a[r][:e] << [l,c] # l, cost
  a[l][:e2] << [r,c]
  # l.upto(r) do |i|
  #   b[i] = [b[i],c].min
  # end
end
# p n
# pp a
dp = Array.new(n+1){10**9 + 1} # n番目の店までのこすと
dp [1] = 0
1.upto(dp.size-1) do |i|
  cost = dp[i-1]
  min = a[i][:e].map{|x| dp[x[0]] >= (10**9 + 1) ? cost : dp[x[0]] + x[1] }.compact.min
  dp[i] = min if min
end
p dp

# p '--'
# pp b
# pp dp.zip(b).map{|d,bb|d+bb}

dpr = Array.new(n+1){(10**9 + 1)} # i~-1までのコスト
dpr[-1] = 0

(dpr.size-1).downto(1) do |i|
  cost = dp[i+1]
  min = a[i][:e2].map{|x| dpr[x[0]] >= (10**9 + 1) ? cost : dpr[x[0]] + x[1] }.compact.min
  dpr[i] = min if min
end
p dpr

# p '-----'




# if a[-1][:e].empty?# || a[-1][:e].select{|ee|dp[ee[0]] != 999}.empty?
#   p -1
#   exit
# end

xxx = dp.zip([(10**9 + 1)] + dpr[0..-1]).map{|s,t|s+t}
pp xxx
min = xxx.min
if min >= (10**9 + 1)
  p -1
  exit
else
  p min
end

# pp dp.zip([999] + dpr[0..-1]).map{|s,t|s+t}.min

# 5 -1 28
